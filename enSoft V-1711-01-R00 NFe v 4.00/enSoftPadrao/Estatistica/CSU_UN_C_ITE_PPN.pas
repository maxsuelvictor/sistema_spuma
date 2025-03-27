unit CSU_UN_C_ITE_PPN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TCSU_FM_C_ITE_PPN = class(TForm)
    Label6: TLabel;
    grdPedidosPend: TwwDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    grdPedidosItensPend: TwwDBGrid;
    dsPedPend: TwwDataSource;
    BUS_CD_M_PED_PEN: TClientDataSet;
    BUS_CD_M_PED_PENid_pedido: TIntegerField;
    BUS_CD_M_PED_PENint_num_lote_opr: TWideStringField;
    BUS_CD_M_PED_PENdta_pedido: TDateField;
    BUS_CD_M_PED_PENid_cliente: TIntegerField;
    BUS_CD_M_PED_PENint_nomecli: TWideStringField;
    BUS_CD_M_PED_PENvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PENcubagem: TFloatField;
    BUS_CD_M_PED_PENint_selecao: TBooleanField;
    BUS_CD_M_PED_PENid_empresa: TIntegerField;
    BUS_CD_M_PED_PENid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_PENid_vendedor: TIntegerField;
    BUS_CD_M_PED_PENobs: TWideStringField;
    BUS_CD_M_PED_PENvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PENvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PENper_desconto: TFloatField;
    BUS_CD_M_PED_PENhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_PENid_condicao_pag: TIntegerField;
    BUS_CD_M_PED_PENpcp_obs: TWideStringField;
    BUS_CD_M_PED_PENpcp_id_opr: TIntegerField;
    BUS_CD_M_PED_PENsituacao: TIntegerField;
    BUS_CD_M_PED_PENsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_PENid_atendente: TIntegerField;
    BUS_CD_M_PED_PENid_responsavel: TIntegerField;
    BUS_CD_M_PED_PENtipo_restricao: TWideStringField;
    BUS_CD_M_PED_PENid_almoxarifado: TIntegerField;
    BUS_CD_M_PED_PENjustificativa: TWideStringField;
    BUS_CD_M_PED_PENid_usuario_lib: TIntegerField;
    BUS_CD_M_PED_PENcod_lme: TWideStringField;
    BUS_CD_M_PED_PENrev_lme: TWideStringField;
    BUS_CD_M_PED_PENorigem: TIntegerField;
    BUS_CD_M_PED_PENdispositivo: TWideStringField;
    BUS_CD_M_PED_PENgps_latitude: TFloatField;
    BUS_CD_M_PED_PENgps_longitude: TFloatField;
    BUS_CD_M_PED_PENid_orcamento: TIntegerField;
    BUS_CD_M_PED_PENenvia_carga: TBooleanField;
    BUS_CD_M_PED_PENdta_prev_entrega: TDateField;
    BUS_CD_M_PED_PENid_abertura: TIntegerField;
    BUS_CD_M_PED_PENdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_PENoffline: TBooleanField;
    BUS_CD_M_PED_PENconferido: TBooleanField;
    BUS_CD_M_PED_PENid_conf: TIntegerField;
    BUS_CD_M_PED_PENdta_conf: TDateField;
    BUS_CD_M_PED_PENhor_conf: TTimeField;
    BUS_CD_M_PED_PENresultado_conf: TIntegerField;
    BUS_CD_M_PED_PENid_resp_conf: TIntegerField;
    BUS_CD_M_PED_PENint_nometme: TWideStringField;
    BUS_CD_M_PED_PENint_nomefun: TWideStringField;
    BUS_CD_M_PED_PENint_nomecpg: TWideStringField;
    BUS_CD_M_PED_PENint_nomeate: TWideStringField;
    BUS_CD_M_PED_PENint_nome_rcn: TWideStringField;
    BUS_CD_M_PED_PENint_nomeres: TWideStringField;
    BUS_CD_M_PED_PENint_nomecid: TWideStringField;
    BUS_CD_M_PED_PENint_nomeest: TWideStringField;
    BUS_CD_M_PED_PENint_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_PENint_pessoacli: TIntegerField;
    BUS_CD_M_PED_PENint_id_perfil: TIntegerField;
    BUS_CD_M_PED_PENid_ors: TIntegerField;
    BUS_CD_M_PED_PENint_sitaprov: TWideStringField;
    BUS_CD_M_PED_PENint_sitped: TWideStringField;
    BUS_CD_M_PED_PENint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_PENint_nomereg: TWideStringField;
    BUS_CD_M_PED_PENBUS_SQ_M_PED_ITE: TDataSetField;
    BUS_CD_M_PED_PEN_ITE: TClientDataSet;
    BUS_CD_M_PED_PEN_ITEid_item: TIntegerField;
    BUS_CD_M_PED_PEN_ITEint_nomeite: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_id_und_venda: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_nomecor: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_nometam: TWideStringField;
    BUS_CD_M_PED_PEN_ITEqtde: TFloatField;
    BUS_CD_M_PED_PEN_ITEvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEid_pedido: TIntegerField;
    BUS_CD_M_PED_PEN_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEvlr_desconto: TFMTBCDField;
    dsPedPendItens: TwwDataSource;
    BUS_CD_M_PED_PEN_ITEid_cor: TIntegerField;
    BUS_CD_M_PED_PEN_ITEid_tamanho: TIntegerField;
    cdsOpr: TClientDataSet;
    dsOpr: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure grdPedidosItensPendCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_PPN: TCSU_FM_C_ITE_PPN;
  xTela_CSU_FM_C_ITE_PPN: String;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_M_OPR_ADM;

procedure TCSU_FM_C_ITE_PPN.FormShow(Sender: TObject);
begin
  if xTela_CSU_FM_C_ITE_PPN = 'CSU_FM_C_ITE' then
     begin
       BUS_CD_M_PED_PEN.Close;
           BUS_CD_M_PED_PEN.Data :=
                BUS_CD_M_PED_PEN.DataRequest(
                          VarArrayOf([5,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                        dmGeral.BUS_CD_M_FES.FieldByName('id_item').AsString,
                                        dmGeral.BUS_CD_M_FES.FieldByName('id_cor').AsString,
                                        dmGeral.BUS_CD_M_FES.FieldByName('id_tamanho').AsString]));
     end;

  if xTela_CSU_FM_C_ITE_PPN = 'CSU_FM_M_OPR_ADM' then
     begin
       BUS_CD_M_PED_PEN.Close;
           BUS_CD_M_PED_PEN.Data :=
                BUS_CD_M_PED_PEN.DataRequest(
                          VarArrayOf([5,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                        CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_item').AsString,
                                        CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_cor').AsString,
                                        CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_tamanho').AsString]));
     end;
end;

procedure TCSU_FM_C_ITE_PPN.grdPedidosItensPendCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if xTela_CSU_FM_C_ITE_PPN = 'CSU_FM_C_ITE' then
     begin
        if (BUS_CD_M_PED_PEN_ITE.FieldByName('id_item').AsString     = dmGeral.BUS_CD_M_FES.FieldByName('id_item').AsString) and
           (BUS_CD_M_PED_PEN_ITE.FieldByName('id_cor').AsString      = dmGeral.BUS_CD_M_FES.FieldByName('id_cor').AsString)  and
           (BUS_CD_M_PED_PEN_ITE.FieldByName('id_tamanho').AsString  = dmGeral.BUS_CD_M_FES.FieldByName('id_tamanho').AsString) then
           begin
              aFont.Color := clMaroon;
              aFont.Style := [fsBold];
           end;
     end;

  if xTela_CSU_FM_C_ITE_PPN = 'CSU_FM_M_OPR_ADM' then
     begin
        if (BUS_CD_M_PED_PEN_ITE.FieldByName('id_item').AsString     = CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_item').AsString) and
           (BUS_CD_M_PED_PEN_ITE.FieldByName('id_cor').AsString      = CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_cor').AsString)  and
           (BUS_CD_M_PED_PEN_ITE.FieldByName('id_tamanho').AsString  = CSU_FM_M_OPR_ADM.BUS_CD_M_EST_ALM_PEN.FieldByName('id_tamanho').AsString) then
           begin
              aFont.Color := clMaroon;
              aFont.Style := [fsBold];
           end;
     end;

end;

end.
