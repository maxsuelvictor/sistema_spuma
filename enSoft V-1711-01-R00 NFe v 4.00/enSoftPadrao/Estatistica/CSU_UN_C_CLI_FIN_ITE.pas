unit CSU_UN_C_CLI_FIN_ITE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons,System.IniFiles;

type
  TCSU_FM_C_CLI_FIN_ITE = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlDados: TPanel;
    dso: TwwDataSource;
    grdItens: TwwDBGrid;
    btnSair: TcxButton;
    lblNomeCliente: TLabel;
    lblNumNota: TLabel;
    txtNumNota: TLabel;
    txtNomeCliente: TLabel;
    txtVlrLiquido: TEdit;
    lblVlrLiquido: TLabel;
    txtVlrDesc: TEdit;
    lblVlrDesc: TLabel;
    txtVlrMercadoria: TEdit;
    lblVlrMercadoria: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
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
  CSU_FM_C_CLI_FIN_ITE: TCSU_FM_C_CLI_FIN_ITE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_CLI_FIN_ITE.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_CLI_FIN_ITE.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TCSU_FM_C_CLI_FIN_ITE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCSU_FM_C_CLI_FIN_ITE.FormShow(Sender: TObject);
begin
    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

    dmGeral.AtualizarGridItens(grdItens,'int_desc_item',18,7);

    txtNomeCliente.Caption := dmGeral.CAD_CD_C_CLI.FieldByName('NOME').AsString;
    txtNumNota.Caption := dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;

    txtVlrMercadoria.Text := '0.00';
    txtVlrDesc.Text := '0.00';
    txtVlrLiquido.Text := '0.00';

    if dmGeral.BUS_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsString <> '' then
       begin
          txtVlrMercadoria.Text := FormatCurr('###,###,###,###,##0.00',dmGeral.BUS_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency);
       end;

    if dmGeral.BUS_CD_M_NFE.FieldByName('VLR_DESCONTO').AsString <> '' then
       begin
          txtVlrDesc.Text := FormatCurr('###,###,###,###,##0.00',dmGeral.BUS_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency);
       end;

    if dmGeral.BUS_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsString <> '' then
       begin
         txtVlrLiquido.Text := FormatCurr('###,###,###,###,##0.00',dmGeral.BUS_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency);
       end;

end;

procedure TCSU_FM_C_CLI_FIN_ITE.carregaCores;
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
    pnlTop.Color := codCor;
end;

end.
