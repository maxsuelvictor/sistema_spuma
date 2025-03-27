unit PCP_UN_M_OPB_OPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Buttons, vcl.wwdblook,
  JvDBControls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, JvExMask,
  JvToolEdit, Vcl.Mask, vcl.Wwdbedit, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel,
  cxButtons, Vcl.ExtCtrls;

type
  TPCP_FM_M_OPB_OPE = class(TPAD_FM_X_FRM)
    lblNOrdemProducao: TLabel;
    txtNOrdemProducao: TwwDBEdit;
    lblEmissao: TLabel;
    txtDataEmissao: TJvDBDateEdit;
    lblResponsavel: TLabel;
    txtResponsavel: TwwDBEdit;
    gbBlocos: TGroupBox;
    dgBlocos: TwwDBGrid;
    pnlBlocos: TPanel;
    txtBlocos: TJvDBComboEdit;
    txtDescricaoBlocos: TwwDBEdit;
    txtUnd: TwwDBEdit;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    txtNLote: TwwDBEdit;
    txtQtde: TwwDBEdit;
    btnAddBlocos: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    lblAutomatica: TLabel;
    lblManual: TLabel;
    gbItens: TGroupBox;
    dgItens: TwwDBGrid;
    Panel3: TPanel;
    txtCodIte: TJvDBComboEdit;
    txtDescricaoIte: TwwDBEdit;
    txtUndIte: TwwDBEdit;
    cbbCorIte: TwwDBLookupCombo;
    cbbTamanhoIte: TwwDBLookupCombo;
    txtQtdeIte: TwwDBEdit;
    BitBtn1: TBitBtn;
    lblQtde: TLabel;
    lblNLote: TLabel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    lblUnd: TLabel;
    lblBloco: TLabel;
    gbOrdensPro: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    lblQtdeIte: TLabel;
    lblTamahoIte: TLabel;
    lblCorIte: TLabel;
    lblUndIte: TLabel;
    lblItens: TLabel;
    dgBlocosIButton: TwwIButton;
    dgItensIButton: TwwIButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPB_OPE: TPCP_FM_M_OPB_OPE;

implementation

{$R *.dfm}

end.
