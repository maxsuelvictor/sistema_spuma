unit CAD_UN_C_CTR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  cxButtons, Vcl.ExtCtrls, Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.ComCtrls;

type
  TCAD_FM_C_CTR = class(TPAD_FM_X_PAD)
    CAD_CD_C_CTR: TClientDataSet;
    CAD_CD_C_CTRid_ctr: TIntegerField;
    CAD_CD_C_CTRid_cst_ibs_cbs: TWideStringField;
    CAD_CD_C_CTRdescricao_cst_ibs_cbs: TWideMemoField;
    CAD_CD_C_CTRcclasstrib: TWideStringField;
    CAD_CD_C_CTRnome_cclasstrib: TWideMemoField;
    CAD_CD_C_CTRdescricao_cclasstrib: TWideMemoField;
    CAD_CD_C_CTRlc_redacao: TWideMemoField;
    CAD_CD_C_CTRlc_214_25: TWideMemoField;
    CAD_CD_C_CTRtipo_aliquota: TWideStringField;
    CAD_CD_C_CTRper_red_ibs: TFMTBCDField;
    CAD_CD_C_CTRper_red_cbs: TFMTBCDField;
    CAD_CD_C_CTRind_redutor_bc: TWideStringField;
    CAD_CD_C_CTRind_gtrib_regular: TSmallintField;
    CAD_CD_C_CTRind_gcred_pres_oper: TSmallintField;
    CAD_CD_C_CTRind_gmono_padrao: TSmallintField;
    CAD_CD_C_CTRind_gmono_reten: TSmallintField;
    CAD_CD_C_CTRind_gmono_ret: TSmallintField;
    CAD_CD_C_CTRind_gmono_dif: TSmallintField;
    CAD_CD_C_CTRind_gestorno_cred: TSmallintField;
    CAD_CD_C_CTRdta_ini_vig: TDateField;
    CAD_CD_C_CTRdta_fim_vig: TDateField;
    CAD_CD_C_CTRdta_atualizacao: TDateField;
    CAD_CD_C_CTRind_nfe_abi: TSmallintField;
    CAD_CD_C_CTRind_nfe: TSmallintField;
    CAD_CD_C_CTRind_nfce: TSmallintField;
    CAD_CD_C_CTRind_cte: TSmallintField;
    CAD_CD_C_CTRind_cte_os: TSmallintField;
    CAD_CD_C_CTRind_bpe: TSmallintField;
    CAD_CD_C_CTRind_bpe_ta: TSmallintField;
    CAD_CD_C_CTRind_bpe_tm: TSmallintField;
    CAD_CD_C_CTRind_nf3e: TSmallintField;
    CAD_CD_C_CTRind_nfse: TSmallintField;
    CAD_CD_C_CTRind_nfse_via: TSmallintField;
    CAD_CD_C_CTRind_nfcom: TSmallintField;
    CAD_CD_C_CTRind_nfag: TSmallintField;
    CAD_CD_C_CTRind_nfgas: TSmallintField;
    CAD_CD_C_CTRind_dere: TSmallintField;
    CAD_CD_C_CTRanexo: TWideMemoField;
    CAD_CD_C_CTRlink: TWideMemoField;
    CAD_CD_C_CTRcod_lme: TWideStringField;
    CAD_CD_C_CTRrev_lme: TWideStringField;
    CAD_CD_C_CTRint_nome_ibs_cbs_ibc: TWideStringField;
    txtCodigo: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    Label2: TLabel;
    pgInformacoes: TPageControl;
    tbDados: TTabSheet;
    tbComplemento: TTabSheet;
    lblCodigo: TLabel;
    txtFornNome: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtCodIBS_CBS: TJvDBComboEdit;
    txtDescricaoCClassTrib: TDBMemo;
    txtLcRedacao: TDBMemo;
    CAD_CD_C_CTRidx_tipo_aliquota: TSmallintField;
    ind_gTribRegular: TDBCheckBox;
    txtTipoAliquotaa: TwwDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    txtPercIBS: TwwDBEdit;
    Label9: TLabel;
    txtPercCBS: TwwDBEdit;
    Label97: TLabel;
    Label10: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    Label11: TLabel;
    txtCClassTrib: TDBMemo;
    txtDescricaoIBS_CBS: TDBMemo;
    txtNomeCClassTrib: TDBMemo;
    txtLc214_25: TDBMemo;
    BUS_CD_C_IBC: TClientDataSet;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure CAD_CD_C_CTRNewRecord(DataSet: TDataSet);
    procedure CAD_CD_C_CTRBeforePost(DataSet: TDataSet);
    procedure txtCodIBS_CBSButtonClick(Sender: TObject);
    procedure txtCodIBS_CBSExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CTR: TCAD_FM_C_CTR;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,uValidacoes, PSQ_UN_X_IBC;

procedure TCAD_FM_C_CTR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_CTR);
  pgInformacoes.ActivePage := tbDados;
  txtCClassTrib.SetFocus;
end;

procedure TCAD_FM_C_CTR.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_CTR);
  pgInformacoes.ActivePage := tbDados;
  txtCClassTrib.SetFocus;
end;

procedure TCAD_FM_C_CTR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_CTR) then
     begin
       inherited;
       pgInformacoes.TabIndex := 0;
       dbGrid.SetFocus;
     end

end;

procedure TCAD_FM_C_CTR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_CTR);
end;

procedure TCAD_FM_C_CTR.acGravarExecute(Sender: TObject);
begin
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       DmGeral.Grava(CAD_CD_C_CTR);
       pgInformacoes.TabIndex := 0;
       inherited;
     end
  else
     begin
       txtCClassTrib.SetFocus;
     end;

end;

procedure TCAD_FM_C_CTR.btnFiltroClick(Sender: TObject);
begin
  if trim(txtPesquisa.text) = '' then
     begin
       ShowMessage('Digite pelo menos 1 caractere para fazer a busca!');
       exit;
     end;

  Screen.Cursor := crHourGlass;
  try
    inherited;
    CAD_CD_C_CTR.Close;
    CAD_CD_C_CTR.Data :=
    CAD_CD_C_CTR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CTR.CAD_CD_C_CTRBeforePost(DataSet: TDataSet);
begin
  ValidaCAD_CD_C_CTR(DataSet);
  inherited;
end;

procedure TCAD_FM_C_CTR.CAD_CD_C_CTRNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_CD_C_CTR.FieldByName('id_ctr').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_CTR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_CTR',xCodLme,xRevLme,CAD_CD_C_CTR);

  {
  "id_ctr" int4 DEFAULT nextval('cad_tb_c_ctr_id_ctr_seq'::regclass) NOT NULL,
  "id_cst_ibs_cbs" varchar(10) COLLATE "default" DEFAULT ''::character varying NOT NULL,
  "descricao_cst_ibs_cbs" text COLLATE "default",
  "cclasstrib" varchar(10) COLLATE "default" NOT NULL,
  "nome_cclasstrib" text COLLATE "default",
  "descricao_cclasstrib" text COLLATE "default",
  "lc_redacao" text COLLATE "default",
  "lc_214_25" text COLLATE "default",}
  CAD_CD_C_CTR.FieldByName('tipo_aliquota').AsString        := '';
  CAD_CD_C_CTR.FieldByName('per_red_ibs').AsInteger         := 0;
  CAD_CD_C_CTR.FieldByName('per_red_cbs').AsCurrency        := 0;
  CAD_CD_C_CTR.FieldByName('ind_redutor_bc').AsString       := '';
  CAD_CD_C_CTR.FieldByName('ind_gtrib_regular').AsInteger   := 0;
  CAD_CD_C_CTR.FieldByName('ind_gcred_pres_oper').AsInteger := 0;
  CAD_CD_C_CTR.FieldByName('ind_gmono_padrao').AsInteger    := 0;
  CAD_CD_C_CTR.FieldByName('ind_gmono_reten').AsInteger     := 0;
  CAD_CD_C_CTR.FieldByName('ind_gmono_ret').AsInteger       := 0;
  CAD_CD_C_CTR.FieldByName('ind_gmono_dif').AsInteger       := 0;
  CAD_CD_C_CTR.FieldByName('ind_gestorno_cred').AsInteger   := 0;
  // CAD_CD_C_CTR.FieldByName('dta_ini_vig" date,
  // CAD_CD_C_CTR.FieldByName('dta_fim_vig" date,
  // CAD_CD_C_CTR.FieldByName('dta_atualizacao" date,
  CAD_CD_C_CTR.FieldByName('ind_nfe_abi').AsInteger  := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfe').AsInteger      := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfce').AsInteger     := 0;
  CAD_CD_C_CTR.FieldByName('ind_cte').AsInteger      := 0;
  CAD_CD_C_CTR.FieldByName('ind_cte_os').AsInteger   := 0;
  CAD_CD_C_CTR.FieldByName('ind_bpe').AsInteger      := 0;
  CAD_CD_C_CTR.FieldByName('ind_bpe_ta').AsInteger   := 0;
  CAD_CD_C_CTR.FieldByName('ind_bpe_tm').AsInteger   := 0;
  CAD_CD_C_CTR.FieldByName('ind_nf3e').AsInteger     := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfse').AsInteger     := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfse_via').AsInteger := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfcom').AsInteger    := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfag').AsInteger     := 0;
  CAD_CD_C_CTR.FieldByName('ind_nfgas').AsInteger    := 0;
  CAD_CD_C_CTR.FieldByName('ind_dere').AsInteger     := 0;
end;

procedure TCAD_FM_C_CTR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2,3] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_CTR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_CTR.Close;
  FreeAndNil(CAD_FM_C_CTR);
end;

procedure TCAD_FM_C_CTR.FormCreate(Sender: TObject);
begin
  inherited;
  CAD_CD_C_CTR.Close;
  CAD_CD_C_CTR.Data :=
     CAD_CD_C_CTR.DataRequest(VarArrayOf([0,'']));
  CAD_CD_C_CTR.Open;
end;

procedure TCAD_FM_C_CTR.txtCodIBS_CBSButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_IBC := TPSQ_FM_X_IBC.Create(Self);
   PSQ_FM_X_IBC.ShowModal;
      if not PSQ_FM_X_IBC.BUS_CD_C_IBC.IsEmpty then
         begin
           dmGeral.FAT_CD_M_ORC.FieldByName('int_nome_ibs_cbs_ibc').Text :=
                PSQ_FM_X_IBC.BUS_CD_C_IBC.FieldByName('descricao').AsString;
           dmGeral.FAT_CD_M_ORC.FieldByName('id_cst_ibs_cbs').AsInteger :=
                PSQ_FM_X_IBC.BUS_CD_C_IBC.FieldByName('int_nome_ibs_cbs_ibc').AsInteger;
         end;
   PSQ_FM_X_IBC.Free;
end;

procedure TCAD_FM_C_CTR.txtCodIBS_CBSExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  CAD_CD_C_CTR.FieldByName('int_nome_ibs_cbs_ibc').Text := '';

  BUS_CD_C_IBC.Close;
  BUS_CD_C_IBC.Data :=
      BUS_CD_C_IBC.DataRequest(VarArrayOf([0, txtCodIBS_CBS.Text]));

  if not BUS_CD_C_IBC.IsEmpty then
     begin
       CAD_CD_C_CTR.FieldByName('int_nome_ibs_cbs_ibc').Text :=
               BUS_CD_C_IBC.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
       showMessage('Código de situação tributária IBS/CBS.');
       CAD_CD_C_CTR.FieldByName('id_cst_ibs_cbs').Text := '';
     end;
end;

end.
