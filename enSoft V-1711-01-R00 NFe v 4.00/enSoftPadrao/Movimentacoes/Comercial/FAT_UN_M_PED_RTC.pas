unit FAT_UN_M_PED_RTC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,System.IniFiles,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit,
  Data.DB, vcl.wwdatsrc;

type
  TFAT_FM_M_PED_RTC = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlDados: TPanel;
    pnlPrincipal: TPanel;
    btnSair: TcxButton;
    gbRestricoes: TGroupBox;
    lbxRestricoes: TListBox;
    gbCancelamento: TGroupBox;
    lblUsuario: TLabel;
    lblDataCanc: TLabel;
    lblMotivoCanc: TLabel;
    dsoNFECanc: TwwDataSource;
    txtUsuarioCanc: TEdit;
    GroupBox1: TGroupBox;
    txtJustificativa: TMemo;
    txtDataCan: TJvDateEdit;
    mmTextoCanc: TMemo;
    txtHora: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     procedure carregaCores;
     var
      xCorSistema:string;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED_RTC: TFAT_FM_M_PED_RTC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_PED_RTC.btnSairClick(Sender: TObject);
begin
   Close;
end;


procedure TFAT_FM_M_PED_RTC.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    lblTitulo.Color := codCor;
end;

procedure TFAT_FM_M_PED_RTC.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TFAT_FM_M_PED_RTC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;
  if (key= char(9)) then
     key := #0;
end;

procedure TFAT_FM_M_PED_RTC.FormShow(Sender: TObject);
var
  restricoes:string;
begin
    pnlPrincipal.top := (pnlDados.Height div 2) - (pnlPrincipal.height div 2);
    pnlPrincipal.left := (pnlDados.Width div 2) - (pnlPrincipal.width div 2);
    restricoes := dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').text;
    txtJustificativa.Text :=  dmGeral.FAT_CD_M_PED.FieldByName('JUSTIFICATIVA').text;
    lbxRestricoes.Items.Clear;

   if pos('A',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Cliente sem limite de crédito');
      end;
   if pos('B',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Cliente com débito na empresa');
      end;
   if pos('C',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Produto com estoque negativo');
      end;
   if pos('D',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Cliente com credito encerrado');
      end;
   if pos('E',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Pedido com preço alterado pelo vendedor');
      end;
   if pos('F',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Venda com carga');
      end;
   if pos('G',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Pedido reaberto (Momento de cancalemento de nota fiscal de venda)');
      end;
   if pos('H',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Item com desconto acima do limite');
      end;
   if pos('I',restricoes) <> 0 then
      begin
        lbxRestricoes.Items.Add('Pedido gerado pelo Mobile');
      end;

   dmGeral.FAT_CD_M_NFE.Close;
        dmGeral.FAT_CD_M_NFE.Data :=
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([15,dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString]));

   if ((not dmGeral.FAT_CD_M_NFE.IsEmpty) and (dmGeral.FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString <> '')) then
     begin
       txtDataCan.Text  := dmGeral.FAT_CD_M_NFE.FieldByName('canc_data').AsString;
       mmTextoCanc.Text := dmGeral.FAT_CD_M_NFE.FieldByName('canc_motivo').AsString;

       dmGeral.BusFuncionario(0,dmGeral.FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString);
       if not dmGeral.BUS_CD_C_FUN.IsEmpty then
         begin
           txtUsuarioCanc.Text := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
     end;

   if dmGeral.FAT_CD_M_NFE.IsEmpty then
      begin
        txtDataCan.Text  := dmGeral.FAT_CD_M_PED.FieldByName('can_data').AsString;
        txtHora.Text     := dmGeral.FAT_CD_M_PED.FieldByName('can_hora').AsString;
        mmTextoCanc.Text := dmGeral.FAT_CD_M_PED.FieldByName('can_motivo').AsString;

        dmGeral.BusFuncionario4(0,dmGeral.FAT_CD_M_PED.FieldByName('CAN_USUARIO').AsString);
        if not dmGeral.BUS_CD_C_FU4.IsEmpty then
           begin
              txtUsuarioCanc.Text := dmGeral.FAT_CD_M_PED.FieldByName('CAN_USUARIO').AsString + ' - ' +
                                     dmGeral.BUS_CD_C_FU4.FieldByName('NOME').AsString;
           end;
      end;
end;

end.
