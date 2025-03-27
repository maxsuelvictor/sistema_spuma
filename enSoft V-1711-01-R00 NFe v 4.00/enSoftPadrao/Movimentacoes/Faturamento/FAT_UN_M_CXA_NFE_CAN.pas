unit FAT_UN_M_CXA_NFE_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Buttons, Data.DB, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFAT_FM_M_CXA_NFE_CAN = class(TForm)
    lblTitulo: TLabel;
    btnNfc: TBitBtn;
    BitBtn1: TBitBtn;
    dso: TDataSource;
    dbGrid: TwwDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    lblAberto: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlAberto: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    pmApoio: TPopupMenu;
    Cancelarnotafiscalsomentenosistema1: TMenuItem;
    CancelarnotafiscalsomentenaSEFAZ1: TMenuItem;
    btnVerificaServico: TButton;
    btnConsultaNfe: TButton;
    lblChave: TLabel;
    txtChave: TDBEdit;
    lblProtocolo: TLabel;
    txtProtocolo: TDBEdit;
    txtPedido: TDBEdit;
    lblPedido: TLabel;
    Button1: TButton;
    txtNumero: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNfcClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Cancelarnotafiscalsomentenosistema1Click(Sender: TObject);
    procedure CancelarnotafiscalsomentenaSEFAZ1Click(Sender: TObject);
    procedure btnVerificaServicoClick(Sender: TObject);
    procedure btnConsultaNfeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure CancelarNotaDiaAnt(tipo: integer);
    procedure AtualizarTelaNfeCan;
    var
      notaServico:Boolean;
  end;

var
  FAT_FM_M_CXA_NFE_CAN: TFAT_FM_M_CXA_NFE_CAN;

implementation

{$R *.dfm}

uses uDmGeral, FAT_UN_M_CXA_NFE;

procedure TFAT_FM_M_CXA_NFE_CAN.AtualizarTelaNfeCan;
begin
  dmGeral.BUS_CD_M_NFE_CXA.Close;
      dmGeral.BUS_CD_M_NFE_CXA.Data :=
            dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([96,3,''''+ dmGeral.CAD_CD_C_PARid_empresa.AsString +'''',
                                   DateToStr(dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime-1),
                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_funcionario').AsString]));


end;

procedure TFAT_FM_M_CXA_NFE_CAN.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFAT_FM_M_CXA_NFE_CAN.btnConsultaNfeClick(Sender: TObject);
begin
  FAT_FM_M_CXA_NFE.btnConsultaNfeClick(sender);
end;

procedure TFAT_FM_M_CXA_NFE_CAN.btnNfcClick(Sender: TObject);
var
  id_fiscal: String;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('IND_NF').AsInteger = 2 then
     FAT_FM_M_CXA_NFE.CancelarNFSDiaAnterior
  else
    FAT_FM_M_CXA_NFE.CancelarNotaDiaAnt(3);

  AtualizarTelaNfeCan;
  if id_fiscal <> '' then
     dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;

procedure TFAT_FM_M_CXA_NFE_CAN.btnVerificaServicoClick(Sender: TObject);
begin
  FAT_FM_M_CXA_NFE.btnVerificaServicoClick(Sender);
end;

procedure TFAT_FM_M_CXA_NFE_CAN.Button1Click(Sender: TObject);
begin

  if trim(txtNumero.text) = '' then
     begin
        ShowMessage('Nenhum número de nota fsical foi especificado!');
        abort;
     end;

  dmGeral.BUS_CD_M_NFE_CXA.Close;
      dmGeral.BUS_CD_M_NFE_CXA.Data :=
            dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([96,5,''''+ dmGeral.CAD_CD_C_PARid_empresa.AsString +'''',
                                   DateToStr(dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime-1),
                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_funcionario').AsString,txtNumero.text]));
end;

procedure TFAT_FM_M_CXA_NFE_CAN.CancelarNotaDiaAnt(tipo: integer);
begin


end;

procedure TFAT_FM_M_CXA_NFE_CAN.CancelarnotafiscalsomentenaSEFAZ1Click(
  Sender: TObject);
var
  id_fiscal: String;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_FM_M_CXA_NFE.CancelarNotaDiaAnt(2);
  AtualizarTelaNfeCan;
  if id_fiscal <> '' then
     dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

end;

procedure TFAT_FM_M_CXA_NFE_CAN.Cancelarnotafiscalsomentenosistema1Click(
  Sender: TObject);
var
  id_fiscal: String;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_FM_M_CXA_NFE.CancelarNotaDiaAnt(1);
  AtualizarTelaNfeCan;
  if id_fiscal <> '' then
     dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;

procedure TFAT_FM_M_CXA_NFE_CAN.dbGridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = 'legenda' then
     begin
       {  *** ATENÇÃO ****

          Caso este código abaixo seja alterado , você deverá alterar o código
          do Grid de Notas Fiscais da tela FAT_FM_M_CXA e FAT_FM_M_CXA_CAN e da tela NFCe também para que os
          códigos fiquem iguais.

          Maxsuel Victor
        }

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

        // Situação de NFe FATURADA normnal. Cor Verde
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and

          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3)
             ) then
          begin
            Abrush.Color := clGreen;
          end;

       // Situação de NFe Inutilizada. Cor Marrom  -
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
          begin
            Abrush.Color := clMaroon;
          end;

       // Situação de NFe CANCELADA. Cor Vermelho
       if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
          begin
            Abrush.Color := clRed;
          end;

       // Situação de NFe DENEGADA. Cor Roxa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
          begin
            Abrush.Color := clPurple;
          end;

       // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            Abrush.Color := $00B56AFF;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_CAN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
end;

procedure TFAT_FM_M_CXA_NFE_CAN.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
  dmGeral.BUS_CD_M_NFE_CXA.Filter := 'ind_nf=2';
  AtualizarTelaNfeCan;;
  if notaServico then
    begin

      dbGrid.PopupMenu := nil;
      lblTitulo.Caption := 'Cancelar NFS avulsa do dia anterior';
      btnConsultaNfe.Visible := false;
      btnVerificaServico.Visible := false;
      lblChave.Visible := false;
      txtChave.Visible := false;
      lblProtocolo.Visible := false;
      txtProtocolo.Visible := false;
    end;
end;
end.
