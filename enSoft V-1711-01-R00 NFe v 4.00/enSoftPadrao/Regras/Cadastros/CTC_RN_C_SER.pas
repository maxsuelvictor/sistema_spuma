unit CTC_RN_C_SER;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcValidaSer(DataSet:TDataSet);
procedure CtcNovoSer(DataSet:TDataSet);

implementation

uses uDmGeral, enConstantes, uProxy, uDmCtc;

procedure CtcValidaSer(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_C_SER.FieldByName('descricao').AsString)='' then
     xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;

  if trim(dmCtc.CTC_CD_C_SER.FieldByName('id_unidade').AsString)='' then
     xMensErro:= xMensErro + '.Unidade deve ser informada.'+ #13;

  if trim(dmCtc.CTC_CD_C_SER.FieldByName('descricao').AsString)='' then
     xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;

  if trim(dmCtc.CTC_CD_C_SER_COM.FieldByName('id_ser').AsString)='' then
     xMensErro:= xMensErro + '.Ao menos um item deve ser informado.'+ #13;


  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure CtcNovoSer(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_C_SER.FieldByName('ID').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_C_SER');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

end.
