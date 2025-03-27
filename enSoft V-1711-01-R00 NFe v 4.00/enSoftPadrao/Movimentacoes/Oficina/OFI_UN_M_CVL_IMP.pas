unit OFI_UN_M_CVL_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit,frxClass;

type
  TOFI_FM_M_CVL_IMP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtDtaInicio: TJvDateEdit;
    txtDtaFinal: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    txtPlaca: TJvComboEdit;
    Label4: TLabel;
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
  private
    { Private declarations }
    codMeq:String;
  public
    { Public declarations }
  end;

var
  OFI_FM_M_CVL_IMP: TOFI_FM_M_CVL_IMP;

implementation

{$R *.dfm}

uses PSQ_UN_X_MEQ, uDmGeral, OFI_UN_M_CVL, enConstantes;

procedure TOFI_FM_M_CVL_IMP.Button1Click(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  mens:String;
begin
   mens := '';
   if (trim(txtPlaca.Text) = '') then
    begin
      mens := 'O campo "Placa" deve ser preenchido.';
      txtPlaca.SetFocus;
      exit;
    end;

  if ((txtDtaInicio.Text = '  /  /    ') or (txtDtaFinal.Text = '  /  /    ')) then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end
  else
      begin
        if (txtDtaInicio.Date >  txtDtaFinal.Date) then
            begin
              mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
            end;
      end;

   if trim(mens) <> '' then
     begin
      ShowMessage('Atenção!' + #13 + mens);
      exit;
     end;

   txtPlaca.text := UpperCase(trim(txtPlaca.text));

   dmGeral.BUS_CD_C_MEQ.Close;
   dmGeral.BUS_CD_C_MEQ.Data :=
   dmGeral.BUS_CD_C_MEQ.DataRequest(
         VarArrayOf([7,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPlaca.Text]));


  if dmGeral.BUS_CD_C_MEQ.IsEmpty then
     begin
       ShowMessage('Placa não encontrado.');
       txtPlaca.SetFocus;
       Exit;
     end;



   dmGeral.OFI_CD_M_CVL.Close;
   dmGeral.OFI_CD_M_CVL.Data :=
   dmGeral.OFI_CD_M_CVL.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text,
                                                   dmgeral.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString,txtDtaInicio.Text,txtDtaFinal.Text]));
    if not dmGeral.OFI_CD_M_CVL.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FM_M_CVL.OFI_FR_M_CVL.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_CVL.OFI_FR_M_CVL.Name,xCodLme,xRevLme,nil);
        OFI_FM_M_CVL.OFI_FR_M_CVL.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FM_M_CVL.OFI_FR_M_CVL.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FM_M_CVL.OFI_FR_M_CVL.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FM_M_CVL.OFI_FR_M_CVL.PrepareReport();
        OFI_FM_M_CVL.OFI_FR_M_CVL.ShowReport();
      end
    else
      begin
        ShowMessage('Nenhum registro encontrado');
      end;


end;

procedure TOFI_FM_M_CVL_IMP.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TOFI_FM_M_CVL_IMP.txtPlacaButtonClick(Sender: TObject);
begin
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.xFormCall := OFI_FM_M_CVL.Name;
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
        txtPlaca.Text :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_placa').AsString;
        codMeq := PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString;
     end;
   PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
   PSQ_FM_X_MEQ.Free;
end;

procedure TOFI_FM_M_CVL_IMP.txtPlacaExit(Sender: TObject);
begin


   if trim(txtPlaca.Text)<>'' then
     begin
       txtPlaca.text := UpperCase(trim(txtPlaca.text));

       dmGeral.BUS_CD_C_MEQ.Close;
       dmGeral.BUS_CD_C_MEQ.Data :=
       dmGeral.BUS_CD_C_MEQ.DataRequest(
             VarArrayOf([7,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,trim(txtPlaca.Text)]));


      if dmGeral.BUS_CD_C_MEQ.IsEmpty then
         begin
           ShowMessage('Placa não encontrado.');
           txtPlaca.SetFocus;
           Exit;
         end;
     end;
end;

end.
