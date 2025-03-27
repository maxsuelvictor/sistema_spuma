unit CSU_UN_C_FOR_FIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.ImgList;

type
  TCSU_FM_C_FOR_FIN = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dgTitulos: TwwDBGrid;
    dgPagamentos: TwwDBGrid;
    lblPagamentos: TLabel;
    lblTotalAberto: TLabel;
    lblTotalVencer: TLabel;
    lblTotalVencido: TLabel;
    lblTotalQuitado: TLabel;
    lblTotalGeral: TLabel;
    lblCreditoDisponivel: TLabel;
    dso: TwwDataSource;
    dsoPagamentos: TwwDataSource;
    txtTotalAberto: TEdit;
    txtTotalVencer: TEdit;
    txtTotalVercido: TEdit;
    txtTotalQuitado: TEdit;
    txtTotalGeral: TEdit;
    txtCreditoDisponivel: TEdit;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    ImgPequena: TImageList;
    txtPesquisa: TEdit;
    btnFiltro: TcxButton;
    txtTotalPago: TEdit;
    Label4: TLabel;
    lblTotSubstituido: TLabel;
    lblTotalJurosPago: TLabel;
    txtTotalSubst: TEdit;
    txtTotalJurosPg: TEdit;
    Panel4: TPanel;
    lblBxaSubst: TLabel;
    lblIdBaixa: TLabel;
    txtIdBaixa: TDBText;
    Label5: TLabel;
    txtEmpresaBxa: TDBText;
    txtIdEmpB: TDBText;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure dgTitulosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dgPagamentosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_FOR_FIN: TCSU_FM_C_FOR_FIN;

implementation

{$R *.dfm}

uses uDmGeral, CSU_RN_C_FIN,uProxy,UApplayClassProxy;

procedure TCSU_FM_C_FOR_FIN.btnFiltroClick(Sender: TObject);
var
  txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral:String;
  SMPrincipal : TSMClient;
begin
  if cbbPesquisa.ItemIndex = 0 then
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
                dmGeral.BUS_CD_M_PAG_TIT.DataRequest(
                    VarArrayOf([94,dmgeral.BUS_CD_C_FOR.FieldByName('id_fornecedor').Text,txtPesquisa.text]));
        CalTotalForFin(txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral);

        txtTotalAberto.text := txtTotAberto;
        txtTotalVencer.text := txtTotAVencer;
        txtTotalVercido.text := txtTotVencido;
        txtTotalSubst.Text := txtTotSubst;
        txtTotalJurosPg.Text := txtTotJurosPg;
        txtTotalPago.text := txtTotPago;
        txtTotalQuitado.text := txtTotQuitado;
        txtTotalGeral.text :=  txtTotGeral;

        //Busca sequencia no servidor
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          txtCreditoDisponivel.text := FormatCurr('###,###,##0.00' ,( SMPrincipal.enVerCreditoForn(dmgeral.BUS_CD_C_FORid_fornecedor.AsString)));
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;
end;

procedure TCSU_FM_C_FOR_FIN.dgPagamentosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (dmGeral.BUS_CD_M_PAG_TIT_PAG.FieldByName('com_substituicao').AsBoolean) then
     begin
       aFont.Color := $000065CA;
     end;
end;

procedure TCSU_FM_C_FOR_FIN.dgTitulosCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if (xDataSis = dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;
end;

procedure TCSU_FM_C_FOR_FIN.FormCreate(Sender: TObject);
var
  txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral:String;
  SMPrincipal : TSMClient;
begin
      CalTotalForFin(txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral);

      txtTotalAberto.text := txtTotAberto;
      txtTotalVencer.text := txtTotAVencer;
      txtTotalVercido.text := txtTotVencido;
      txtTotalSubst.text   := txtTotSubst;
      txtTotalJurosPg.text := txtTotJurosPg;
      txtTotalPago.text := txtTotPago;
      txtTotalQuitado.text := txtTotQuitado;
      txtTotalGeral.text :=  txtTotGeral;

       //Busca sequencia no servidor
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    txtCreditoDisponivel.text := FormatCurr('###,###,##0.00' ,( SMPrincipal.enVerCreditoForn(dmgeral.BUS_CD_C_FORid_fornecedor.AsString)));
  finally
    FreeAndNil(SMPrincipal);
end;

end;

procedure TCSU_FM_C_FOR_FIN.FormShow(Sender: TObject);
begin
  txtPesquisa.SetFocus;
end;

end.
