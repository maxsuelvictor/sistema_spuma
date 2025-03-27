unit PSQ_UN_X_ORS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_ORS = class(TPAD_FM_X_PSQ)
    BUS_CD_M_ORS: TClientDataSet;
    BUS_CD_M_ORS_ITE: TClientDataSet;
    BUS_CD_M_ORSid_ors: TIntegerField;
    BUS_CD_M_ORSid_empresa: TIntegerField;
    BUS_CD_M_ORSdta_emissao: TDateField;
    BUS_CD_M_ORSid_responsavel: TIntegerField;
    BUS_CD_M_ORSobservacao: TWideStringField;
    BUS_CD_M_ORSid_pedido: TIntegerField;
    BUS_CD_M_ORSint_nomeres: TWideStringField;
    BUS_CD_M_ORScod_lme: TWideStringField;
    BUS_CD_M_ORSrev_lme: TWideStringField;
    BUS_CD_M_ORSid_motorista: TIntegerField;
    BUS_CD_M_ORSint_nomemta: TWideStringField;
    BUS_CD_M_ORSint_nomecli: TWideStringField;
    BUS_CD_M_ORSint_telfixo: TWideStringField;
    BUS_CD_M_ORSPCP_SQ_M_ORS_TIT: TDataSetField;
    BUS_CD_M_ORSPCP_SQ_M_ORS_ITE: TDataSetField;
    BUS_CD_M_ORS_ITEid_ors: TIntegerField;
    BUS_CD_M_ORS_ITEid_item: TIntegerField;
    BUS_CD_M_ORS_ITEid_cor: TIntegerField;
    BUS_CD_M_ORS_ITEid_tamanho: TIntegerField;
    BUS_CD_M_ORS_ITEqtde: TFloatField;
    BUS_CD_M_ORS_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_ORS_ITEvlr_total: TFMTBCDField;
    BUS_CD_M_ORS_ITEint_nomeite: TWideStringField;
    BUS_CD_M_ORS_ITEint_nomecor: TWideStringField;
    BUS_CD_M_ORS_ITEint_nometam: TWideStringField;
    BUS_CD_M_ORS_ITEid_sequencia: TIntegerField;
    BUS_CD_M_ORS_ITEid_sequencia_ped: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    dbGridIte: TwwDBGrid;
    dsoIte: TwwDataSource;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_ORS: TPSQ_FM_X_ORS;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_ORS.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if not (edtPesquisa.Text = '') then
      begin
        if cmbParametro.ItemIndex = 0 then
          begin
            BUS_CD_M_ORS.Close;
            BUS_CD_M_ORS.Data :=
            BUS_CD_M_ORS.DataRequest(
                    VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

            dbGrid.SetFocus;
          end
        else
          begin
            BUS_CD_M_ORS.Close;
            BUS_CD_M_ORS.Data :=
            BUS_CD_M_ORS.DataRequest(
                    VarArrayOf([cmbParametro.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text,edtPesquisa.Text]));

            dbGrid.SetFocus;
          end;
      end
    else
      begin
        ShowMessage('Ao menos um caracter dever ser informado no filtro de Pesquisa');
        edtPesquisa.SetFocus;
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_ORS.FormShow(Sender: TObject);
begin
  inherited;
  cmbParametro.SetFocus;
end;

end.
