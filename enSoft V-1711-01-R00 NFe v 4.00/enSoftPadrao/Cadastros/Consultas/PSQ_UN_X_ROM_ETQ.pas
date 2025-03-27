unit PSQ_UN_X_ROM_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_ROM_ETQ = class(TPAD_FM_X_PSQ)
    BUS_CD_M_ETQ: TClientDataSet;
    BUS_CD_M_ETQid_opr: TIntegerField;
    BUS_CD_M_ETQid_item: TIntegerField;
    BUS_CD_M_ETQid_cor: TIntegerField;
    BUS_CD_M_ETQid_tamanho: TIntegerField;
    BUS_CD_M_ETQcod_barra: TWideStringField;
    BUS_CD_M_ETQsequencia: TIntegerField;
    BUS_CD_M_ETQdta_criacao: TDateField;
    BUS_CD_M_ETQhor_criacao: TTimeField;
    BUS_CD_M_ETQimpressa: TBooleanField;
    BUS_CD_M_ETQint_und_venda: TWideStringField;
    BUS_CD_M_ETQint_nomecor: TWideStringField;
    BUS_CD_M_ETQint_nometam: TWideStringField;
    BUS_CD_M_ETQid_etq: TIntegerField;
    BUS_CD_M_ETQdta_entrada_est: TDateField;
    BUS_CD_M_ETQhor_entrada_est: TTimeField;
    BUS_CD_M_ETQid_funcionario_est: TIntegerField;
    BUS_CD_M_ETQhor_impressa: TTimeField;
    BUS_CD_M_ETQdta_impressa: TDateField;
    BUS_CD_M_ETQid_func_impressa: TIntegerField;
    BUS_CD_M_ETQid_opr_origem: TIntegerField;
    BUS_CD_M_ETQint_selecao: TBooleanField;
    BUS_CD_M_ETQint_medidaite: TWideStringField;
    BUS_CD_M_ETQint_etiq_recomendacoes1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_recomendacoes2ite: TWideStringField;
    BUS_CD_M_ETQint_nomecue: TWideStringField;
    BUS_CD_M_ETQint_nomeseloetq: TWideStringField;
    BUS_CD_M_ETQint_etiq_modelo: TWideStringField;
    BUS_CD_M_ETQint_fteetq: TIntegerField;
    BUS_CD_M_ETQint_impselo: TBooleanField;
    BUS_CD_M_ETQint_impmsgetq: TBooleanField;
    BUS_CD_M_ETQint_modeloftq_etq: TIntegerField;
    BUS_CD_M_ETQint_nome_layout_etq: TWideStringField;
    BUS_CD_M_ETQcod_int_etq: TWideStringField;
    BUS_CD_M_ETQcod_int_etq_rev: TWideStringField;
    BUS_CD_M_ETQdescricao: TWideStringField;
    BUS_CD_M_ETQetq_tecnica: TBooleanField;
    BUS_CD_M_ETQespecificacoes: TWideStringField;
    BUS_CD_M_ETQtexto_livre1: TWideStringField;
    BUS_CD_M_ETQtexto_livre2: TWideStringField;
    BUS_CD_M_ETQid_fte_etq: TIntegerField;
    BUS_CD_M_ETQmodelo_etq: TIntegerField;
    BUS_CD_M_ETQid_fte: TIntegerField;
    BUS_CD_M_ETQcod_lme: TWideStringField;
    BUS_CD_M_ETQrev_lme: TWideStringField;
    BUS_CD_M_ETQrequisitos: TWideStringField;
    BUS_CD_M_ETQinf_contato: TWideStringField;
    BUS_CD_M_ETQinf_remocao: TWideStringField;
    BUS_CD_M_ETQinf_sac: TWideStringField;
    BUS_CD_M_ETQid_empresa: TIntegerField;
    BUS_CD_M_ETQdta_saida: TDateField;
    BUS_CD_M_ETQhor_saida: TTimeField;
    BUS_CD_M_ETQid_ors_saida: TIntegerField;
    BUS_CD_M_ETQid_rom_saida: TIntegerField;
    BUS_CD_M_ETQid_funcionario_sai: TWideStringField;
    BUS_CD_M_ETQint_impetqsimples: TBooleanField;
    BUS_CD_M_ETQint_pathetqsimples: TWideStringField;
    BUS_CD_M_ETQid_epp: TIntegerField;
    BUS_CD_M_ETQpcp_obs_item: TWideStringField;
    BUS_CD_M_ETQint_nomeite_pers: TWideStringField;
    BUS_CD_M_ETQint_nomeite: TWideStringField;
    BUS_CD_M_ETQint_etiq_marca: TWideStringField;
    BUS_CD_M_ETQint_num_lote_opr: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma2ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma3ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma4ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma5ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma6ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_madeiraite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento2ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento3ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento4ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento5ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento6ite: TWideStringField;
    BUS_CD_M_ETQint_nomecle: TWideStringField;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbParametroSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      xTelaOrigROM_ETQ: String;
  end;

var
  PSQ_FM_X_ROM_ETQ: TPSQ_FM_X_ROM_ETQ;


implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_ROM_ETQ.btnPesquisaClick(Sender: TObject);
begin
  inherited;

  // xTelaOrigROM_ETQ -  '' = chamada de outras telas
  //                      0 - Entrada de Produto Acabado (PCP_UN_M_EPP)
  //                      1 - Caonferência da Carga (PCP_UN_M_ROM_COF)
  //                      2 - Contagem de Produto Acabado (PCP_UN_M_CPA)


  if xTelaOrigROM_ETQ = '' then
     begin
        BUS_CD_M_ETQ.Close;
        BUS_CD_M_ETQ.Data :=
            BUS_CD_M_ETQ.DataRequest(VarArrayOf([cmbParametro.ItemIndex+5,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
             edtPesquisa.Text]));
        dbGrid.SetFocus;
     end
  else
      if xTelaOrigROM_ETQ = '0' then
         begin
            BUS_CD_M_ETQ.Close;
            BUS_CD_M_ETQ.Data :=
                BUS_CD_M_ETQ.DataRequest(VarArrayOf([cmbParametro.ItemIndex+9,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                 edtPesquisa.Text,0]));
            dbGrid.SetFocus;
         end
      else
         if xTelaOrigROM_ETQ = '1' then
           begin
              // Maxsuel Victor, em 25/08/17, O itemindex+5 , deverá mudar para ItemIndex+9 quando o estoque da Globo
              //    for feito Inventário.
              BUS_CD_M_ETQ.Close;
              BUS_CD_M_ETQ.Data :=
                  BUS_CD_M_ETQ.DataRequest(VarArrayOf([cmbParametro.ItemIndex+5,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                   edtPesquisa.Text,1]));
              dbGrid.SetFocus;
           end
         else
            if xTelaOrigROM_ETQ = '2' then
               begin
                  BUS_CD_M_ETQ.Close;
                  BUS_CD_M_ETQ.Data :=
                      BUS_CD_M_ETQ.DataRequest(VarArrayOf([cmbParametro.ItemIndex+14,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                       edtPesquisa.Text,1]));
                  dbGrid.SetFocus;
               end
end;

procedure TPSQ_FM_X_ROM_ETQ.cmbParametroSelect(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';
  edtPesquisa.NumbersOnly := false;
  if cmbParametro.ItemIndex in [0,1] then
     edtPesquisa.NumbersOnly := true;

end;

procedure TPSQ_FM_X_ROM_ETQ.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_M_ETQ.Close;
  BUS_CD_M_ETQ.Data :=
      BUS_CD_M_ETQ.DataRequest(VarArrayOf([0,'']));
  dmGeral.AtualizarGridItens(dbGrid,'int_nomeite_pers',20,10);

end;

end.
