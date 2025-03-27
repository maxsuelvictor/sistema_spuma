unit thBloqSistema;

interface

uses
   Winapi.Windows,System.Classes,System.Json,System.SysUtils,System.Variants,Vcl.Forms,Vcl.Dialogs,System.IniFiles,Data.SqlExpr,Datasnap.DBClient,Datasnap.Provider, Data.DB,ShellAPI,IdHTTP;

type
  BloqSistema = class(TThread)

  public
   // constructor Create(CreateSuspended:Boolean;horario:String);

  private
    { Private declarations }
    procedure Verificar;
    function MascaraCNPJ(cnpj:String):String;
    function RemoverMascaraCNPJ(cnpj:String):String;

  protected
    procedure Execute; override;


  end;

implementation

uses enSM;


function BloqSistema.MascaraCNPJ(cnpj:String):String;
begin
  if Length(cnpj)=14 then
    begin
      Result := copy(cnpj,1,2)+'.'+copy(cnpj,3,3)+'.'+copy(cnpj,6,3)+'/'+copy(cnpj,9,4)+'-'+copy(cnpj,13,2);
    end
  else
    begin
      Result := cnpj;
    end;
end;


function BloqSistema.RemoverMascaraCNPJ(cnpj:String):String;
var
  texto:String;
begin
    texto := cnpj;
    texto := StringReplace(texto,'.','',[rfReplaceAll, rfIgnoreCase]);
    texto := StringReplace(texto,'/','',[rfReplaceAll, rfIgnoreCase]);
    texto := StringReplace(texto,'-','',[rfReplaceAll, rfIgnoreCase]);

    Result := texto;

end;


procedure BloqSistema.Verificar;
var
  agora:TDateTime;
  lHTTP: TIdHTTP;
  lStream: TStringStream;
  json:String;
  VJSONArray: TJSONArray;
  JsonRegistro: TJSONValue;
  JSONCampo:TJSONPair;
  sm: TSM;
  CAD_CD_C_PAR,CAD_CD_C_PAR_CTR,BUS_CD_C_FUN:TClientDataSet;
  code,cnpj,notify_deb,notify_bloq,data:String;
  codeHttp:Integer;

  sResponse: string;
  JsonToSend: TStringStream;
begin
  lHTTP := TIdHTTP.Create(nil);
  lStream := TStringStream.Create;
  try
    sm  := TSM.Create(nil);
    CAD_CD_C_PAR := TClientDataSet.Create(nil);
    CAD_CD_C_PAR.SetProvider(sm.CAD_DP_C_PAR);
    CAD_CD_C_PAR.Close;
    CAD_CD_C_PAR.Data :=
    CAD_CD_C_PAR.DataRequest(VarArrayOf([1,'%']));

    CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
    CAD_CD_C_PAR_CTR.DataSetField     := TDataSetField(CAD_CD_C_PAR.FieldByName('CAD_SQ_C_PAR_CTR'));



    CAD_CD_C_PAR.First;

    while not CAD_CD_C_PAR.EOF do
      begin
         CAD_CD_C_PAR_CTR.First;
         CAD_CD_C_PAR_CTR.Edit;
         CAD_CD_C_PAR_CTR.FieldByName('status_internet').AsBoolean := false;
         CAD_CD_C_PAR_CTR.post;
         CAD_CD_C_PAR.Next;
      end;

    if CAD_CD_C_PAR.ChangeCount > 0 then
       CAD_CD_C_PAR.ApplyUpdates(0);

    data := DateToStr(now);
    CAD_CD_C_PAR.First;
    while not CAD_CD_C_PAR.EOF do
      begin



        try
          if (CAD_CD_C_PAR_CTR.FieldByName('id_fun_aviso_debito').AsInteger>0) then
            begin
               BUS_CD_C_FUN := TClientDataSet.Create(nil);
               BUS_CD_C_FUN.SetProvider(sm.CAD_DP_C_FUN);
               BUS_CD_C_FUN.Close;
               BUS_CD_C_FUN.Data :=
               BUS_CD_C_FUN.DataRequest(VarArrayOf([0,CAD_CD_C_PAR_CTR.FieldByName('id_fun_aviso_debito').AsString]));


               Json := '{"cnpj":"' +  MascaraCNPJ(trim(CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString))+'",' +
                    '"usuario":"' + BUS_CD_C_FUN.FieldByName('nome').AsString +'",' +
                    '"observacoes":"' + 'Confirmacao do aviso dos titulos a vencer - '+
                                         CAD_CD_C_PAR_CTR.FieldByName('data_aviso_debito').AsString+' '+
                                         CAD_CD_C_PAR_CTR.FieldByName('horario_aviso_debito').AsString +'"}';



               JsonToSend := TStringStream.Create(Utf8Encode(Json));


               lHTTP.Request.ContentType := 'application/json';
               lHTTP.Request.CharSet := 'utf-8';

              try
                lHTTP.Post('http://sup.e-north.net.br/api/v1/clientes/log/novo/', JsonToSend);
                codeHttp := lHTTP.ResponseCode;

                if codeHttp=200 then
                  begin
                      CAD_CD_C_PAR_CTR.Edit;
                      CAD_CD_C_PAR_CTR.FieldByName('id_fun_aviso_debito').AsString := '';
                      CAD_CD_C_PAR_CTR.FieldByName('horario_aviso_debito').AsString := '';
                      CAD_CD_C_PAR_CTR.FieldByName('data_aviso_debito').AsString := '';
                      CAD_CD_C_PAR_CTR.Post;
                  end;


              except
                on E: Exception do
                  ShowMessage('Error on request: '#13#10 + e.Message);
              end;
            end;
        finally

        end;




        try
          lStream.Clear;
          lHTTP.Get('http://sup.e-north.net.br/api/v1/clientes/consulta-situacao/?cnpj='+MascaraCNPJ(trim(CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString)), lStream);
          lStream.Position := 0;
          json := lStream.ReadString(lStream.Size);

          JsonRegistro :=  TJSONObject.ParseJSONValue(
                     TEncoding.ASCII.GetBytes(json),0) as TJSONValue;

          code := '0';
          cnpj := '';
          notify_deb := '';
          notify_bloq := '';
          for JsonCampo in TJSONObject(JsonRegistro) do
            begin
               if JsonCampo.JsonString.Value = 'code' then
                 begin
                   code := JsonCampo.JsonValue.Value;
                 end;
               if JsonCampo.JsonString.Value = 'cnpj' then
                 begin
                   cnpj :=RemoverMascaraCNPJ(JsonCampo.JsonValue.Value);
                 end;
                if JsonCampo.JsonString.Value = 'avisar_debito_existente' then
                 begin
                   notify_deb := JsonCampo.JsonValue.Value;
                 end;
                if JsonCampo.JsonString.Value = 'avisar_cliente_congelamento' then
                 begin
                   notify_bloq := JsonCampo.JsonValue.Value;
                 end;
            end;




          CAD_CD_C_PAR_CTR.Edit;
          CAD_CD_C_PAR_CTR.FieldByName('chave_bloqueio').AsString :=
               sm.enMD5(code+cnpj+notify_deb+notify_bloq);

          CAD_CD_C_PAR_CTR.FieldByName('status_internet').AsBoolean := true;
          CAD_CD_C_PAR_CTR.post;
        except

            CAD_CD_C_PAR_CTR.Edit;
            CAD_CD_C_PAR_CTR.FieldByName('status_internet').AsBoolean := false;
            CAD_CD_C_PAR_CTR.post;
        end;

        CAD_CD_C_PAR.Next;
      end;
    if CAD_CD_C_PAR.ChangeCount > 0 then
       CAD_CD_C_PAR.ApplyUpdates(0);

  finally
    BUS_CD_C_FUN.Free;
    JsonToSend.Free;
    FreeAndNil(lHTTP);
    FreeAndNil(lStream);
    CAD_CD_C_PAR.Free;
    CAD_CD_C_PAR_CTR.Free;
    FreeAndNil(sm);
  end;
end;




procedure BloqSistema.Execute;
begin
  inherited;
   if not Terminated then
      Synchronize(Verificar);

end;

end.
