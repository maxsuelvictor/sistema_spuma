unit EST_UN_R_ISM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, Data.DB, Datasnap.DBClient,Math;

type
  TEST_FM_R_ISM = class(TPAD_FM_X_REL)
    Label1: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    EST_CD_R_ISM: TClientDataSet;
    EST_DB_R_ISM: TfrxDBDataset;
    EST_XL_R_ISM: TfrxXLSExport;
    EST_PD_R_ISM: TfrxPDFExport;
    TabSheet1: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    lboxGrupoDisp: TListBox;
    lboxGrupoSel: TListBox;
    TabSheet2: TTabSheet;
    lboxFamiliaDisp: TListBox;
    lboxFamiliaSel: TListBox;
    lblFamiliaDisp: TLabel;
    lblFamiliaSel: TLabel;
    pmSelGrupo: TPopupMenu;
    btnGrupoSel: TMenuItem;
    pmRemoverGrupo: TPopupMenu;
    btnRemoverGrupos: TMenuItem;
    pmExcluirFamilia: TPopupMenu;
    btnExcluirFamilia: TMenuItem;
    pmSelFamilia: TPopupMenu;
    btnSelFamilia: TMenuItem;
    txtDias: TEdit;
    EST_CD_R_ISMid_item: TIntegerField;
    EST_CD_R_ISMdescricao: TWideStringField;
    EST_CD_R_ISMid_und_venda: TWideStringField;
    EST_CD_R_ISMint_nomegru: TWideStringField;
    EST_CD_R_ISMsaldo_fisico: TFloatField;
    EST_CD_R_ISMvlr_custo: TFMTBCDField;
    CAD_CD_R_ITE_PRC_MNL: TClientDataSet;
    CAD_CD_R_ITE_PRC_MNLid_item: TIntegerField;
    CAD_CD_R_ITE_PRC_MNLid_perfil_cli: TIntegerField;
    CAD_CD_R_ITE_PRC_MNLpreco_avista: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco1: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco2: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco3: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco4: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLint_desc_pec: TStringField;
    cbxPreco: TCheckBox;
    chbExibirSaldo: TCheckBox;
    cbxPrecoCusto: TCheckBox;
    Label3: TLabel;
    cbbCusto: TComboBox;
    CAD_DB_R_ITE_PRC_MNL: TfrxDBDataset;
    EST_FR_R_ISM: TfrxReport;
    EST_CD_R_ISMpreco_avista: TFMTBCDField;
    EST_CD_R_ISMpreco_aprazo: TFMTBCDField;
    frxReport1: TfrxReport;
    EST_CD_R_ISMid_grupo: TWideStringField;
    EST_CD_R_ISMdias_sem_compra: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxGrupoDispDblClick(Sender: TObject);
    procedure lboxGrupoSelDblClick(Sender: TObject);
    procedure lboxFamiliaDispDblClick(Sender: TObject);
    procedure lboxFamiliaSelDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnGrupoSelClick(Sender: TObject);
    procedure btnRemoverGruposClick(Sender: TObject);
    procedure btnSelFamiliaClick(Sender: TObject);
    procedure btnExcluirFamiliaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure EST_DB_R_ISMCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure cbxPrecoCustoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    procedure ExibirRel;
    procedure TornarCamposPrecoInvisivel(indexPrc:integer);
    procedure CalcularPrecoPerfil(id_item:String);
    procedure TestePreco(fastreport: TfrxReport; memoa, memob: string);
    var
      xCondEmpresa,xCondGrupo,xCondFamilia,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_ISM: TEST_FM_R_ISM;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, uProxy, enFunc;

procedure TEST_FM_R_ISM.btnExcluirFamiliaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxFamiliaSel.ClearSelection;

  if lboxFamiliaSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFamiliaSel.Items.Count > 0 then
     begin
       for i := 0 to lboxFamiliaSel.Items.Count - 1 do
           begin
             lboxFamiliaDisp.Items.Add(lboxFamiliaSel.Items[i]);
             lboxFamiliaSel.Items.Delete(lboxFamiliaSel.ItemIndex);
           end;
       lboxFamiliaSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.btnGrupoSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGrupoDisp.ClearSelection;
  if lboxGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoDisp.Items.Count - 1 do
           begin
             lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[i]);
             lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
           end;
       lboxGrupoDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
       ExibirRel;
     end;
end;

procedure TEST_FM_R_ISM.btnRemoverGruposClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxGrupoSel.ClearSelection;

  if lboxGrupoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoSel.Items.Count - 1 do
           begin
             lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[i]);
             lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
           end;
       lboxGrupoSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.btnSelFamiliaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxFamiliaDisp.ClearSelection;

  if lboxFamiliaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFamiliaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxFamiliaDisp.Items.Count - 1 do
           begin
             lboxFamiliaSel.Items.Add(lboxFamiliaDisp.Items[i]);
             lboxFamiliaDisp.Items.Delete(lboxFamiliaDisp.ItemIndex);
           end;
       lboxFamiliaDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.CalcularPrecoPerfil(id_item: String);
var
  fazCorrPerfilFamilia:Boolean;
  indexPrc:Integer;
begin
  // Se houve alguma alteração no calculo de preço dever ser feito a alteração no EST_FM_R_ISM;
  dmGeral.BUS_CD_C_ITE.Close;
  dmgeral.BusItens(0,id_item);

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = false) then
    begin
     dmGeral.BUS_CD_C_ITE_PRC.Close;
     dmGeral.BUS_CD_C_ITE_PRC.Data :=
     dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
               VarArrayOf([id_item,'','0']));
    end
  else
    begin
     dmGeral.BUS_CD_C_ITE_PRC.Close;
     dmGeral.BUS_CD_C_ITE_PRC.Data :=
     dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
               VarArrayOf([id_item,'',dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
    end;
  CAD_CD_R_ITE_PRC_MNL.EmptyDataSet;
  dmGeral.BUS_CD_C_PEC.First;
  while not dmGeral.BUS_CD_C_PEC.eof do
    begin
      CAD_CD_R_ITE_PRC_MNL.Insert;
      CAD_CD_R_ITE_PRC_MNL.FieldByName('id_perfil_cli').AsInteger := dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger;
      CAD_CD_R_ITE_PRC_MNL.FieldByName('int_desc_pec').AsString := dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
        dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
        (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsString <> '') then
        begin
          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency := dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;
        end
      else
        begin
          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency := dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
          fazCorrPerfilFamilia := true;
          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
            begin
              fazCorrPerfilFamilia := false;
              if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                begin
                  if dmGeral.BUS_CD_C_FAM.Locate('ID_FAMILIA', dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString,[]) and
                    (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                    begin
                      fazCorrPerfilFamilia := dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;
                    end;
                end;
            end;
          if (fazCorrPerfilFamilia = true) and  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean=true) then
            begin
              if dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                begin
                  if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                    begin
                      CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency :=
                        roundTo((dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                          dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                    end;
                  if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                    begin
                      CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency :=
                        roundTo((dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                          dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                    end;
                end;
            end;
        end;
      for indexPrc := 1 to 3 do
        begin
          if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
            (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsString <> '') then
            begin
              CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency := dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency;
            end
          else
            begin
              CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency := dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                begin
                  fazCorrPerfilFamilia := false;
                  if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                    begin
                      if dmGeral.BUS_CD_C_FAM.Locate('ID_FAMILIA', dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString,[]) and
                        (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                        begin
                          fazCorrPerfilFamilia := dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;
                        end;
                    end;
                end;
              if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = False)) or
                ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                (fazCorrPerfilFamilia = True) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True))   then
                begin
                  if dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                    begin
                      if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                        begin
                          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                            roundTo((dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                            dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                        end;
                      if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                        begin
                          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                            roundTo((dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                              dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                        end;
                    end;
                end;
              if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
                begin
                  if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then
                    begin
                      CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                        roundTo( CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                          Power(1+(dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                    end;
                  if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then
                    begin
                      CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                        roundTo( CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                          Power(1-(dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                    end;
                end;
            end;
        end;
      CAD_CD_R_ITE_PRC_MNL.Post;
      dmGeral.BUS_CD_C_PEC.Next;
    end;
  CAD_CD_R_ITE_PRC_MNL.First;
end;

procedure TEST_FM_R_ISM.cbxPrecoCustoClick(Sender: TObject);
begin
  inherited;
  if cbxPrecoCusto.Checked then
    begin
      Label3.Enabled := True;
      cbbCusto.Enabled := True;
    end
  else
    begin
      Label3.Enabled := False;
      cbbCusto.Enabled := False;
    end;
end;

procedure TEST_FM_R_ISM.EST_DB_R_ISMCheckEOF(Sender: TObject; var Eof: Boolean);
var
  preco_anterior:currency;
  seq_anterior:integer;
  indexPrc:integer;
begin
  inherited;
  indexPrc := 1;
  if cbxPreco.Checked then
    begin
      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
        begin
          dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
          dmGeral.BUS_CD_C_PAR_CPG_INF.Open;
          dmGeral.BUS_CD_C_PAR_CPG_INF.Cancel;
          seq_anterior := 0;

          while ((not dmGeral.BUS_CD_C_PAR_CPG_INF.EOF) and (indexPrc<3)) do
            begin
              if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger <> seq_anterior) then
                begin
                  if (seq_anterior <> 0) then
                    begin
                      indexPrc := indexPrc+1;
                    end;

                  if (indexPrc<3) then
                    begin
                      EST_FR_R_ISM.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr(dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString);
                      EST_FR_R_ISM.Variables['prc'+indexPrc.ToString(indexPrc)] := EST_CD_R_ISM.FieldByName('PRECO_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                      preco_anterior := EST_CD_R_ISM.FieldByName('PRECO_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                      seq_anterior := dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger;
                    end;
                end // if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger <> seq_anterior) then
              else
                begin
                  if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger = seq_anterior) then
                    begin
                      EST_FR_R_ISM.Variables['prc'+indexPrc.ToString(indexPrc)] := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                      preco_anterior := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                    end;
                end;
              dmGeral.BUS_CD_C_PAR_CPG_INF.Next;
            end; // while ((not dmGeral.BUS_CD_C_PAR_CPG_INF.EOF) and (indexPrc<2)) do
          dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
          TornarCamposPrecoInvisivel(indexPrc+1);
        end // if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
      else
        begin
          if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) or
            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) then
            begin
              CalcularPrecoPerfil(trim(EST_CD_R_ISM.FieldByName('ID_ITEM').AsString));

              EST_FR_R_ISM.Variables['cabPrc1'] := QuotedStr('Preço à Vista');
              EST_FR_R_ISM.Variables['prc1'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency;
              EST_FR_R_ISM.Variables['cabPrc2'] := QuotedStr('Preço à Prazo');
              EST_FR_R_ISM.Variables['prc2'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco1').AsCurrency;
            end
          else
            begin
              indexPrc := 3;
              EST_FR_R_ISM.Variables['cabPrc1'] := QuotedStr('Preço à Vista');
              EST_FR_R_ISM.Variables['prc1'] := EST_CD_R_ISM.FieldByName('PRECO_AVISTA').AsCurrency;
              EST_FR_R_ISM.Variables['cabPrc2'] := QuotedStr('Preço à Prazo');
              EST_FR_R_ISM.Variables['prc2'] := EST_CD_R_ISM.FieldByName('PRECO_APRAZO').AsCurrency;

              inc(indexPrc);
              TornarCamposPrecoInvisivel(indexPrc);
            end;
        end;
    end
  else // if cbxPreco.Checked then, transferido pata evento  "TestePreco"
    begin
      {if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and
        (chbExibirSaldo.Checked = true) then
        begin
          if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = False) then
            begin
              EST_FR_R_ISM.Variables['cabPrc1'] := QuotedStr('');
              EST_FR_R_ISM.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsInteger;
            end;
        end;}
    end;
end;

procedure TEST_FM_R_ISM.ExibirRel;
var
  rCusto, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
      exit;
    end;

  rCusto := '0';
  if cbbCusto.Enabled then
    rCusto := IntToStr(cbbCusto.ItemIndex);

  PreencherCondicao;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Itens Sem Movimento') then
    begin
      EST_CD_R_ISM.Active:= False;
      EST_CD_R_ISM.Close;
      EST_CD_R_ISM.Data :=
        EST_CD_R_ISM.DataRequest(VarArrayOf([xCondEmpresa,txtdias.Text,xCondgrupo,xCondFamilia,rCusto]));

      if (not EST_CD_R_ISM.IsEmpty) then
        begin
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(EST_FR_R_ISM.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_ISM.Name,xCodLme,xRevLme,nil);
          EST_FR_R_ISM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          EST_FR_R_ISM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          EST_FR_R_ISM.Variables['Opcoes'] := QuotedStr(xOpcoes);

          TestePreco(EST_FR_R_ISM,'','');
          EST_FR_R_ISM.PrepareReport();
          EST_FR_R_ISM.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure TEST_FM_R_ISM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_ISM);
end;

procedure TEST_FM_R_ISM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  CAD_CD_R_ITE_PRC_MNL.CreateDataSet;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
    begin
      dmGeral.BUS_CD_C_PEC.Close;
      dmGeral.BUS_CD_C_PEC.Data :=
        dmGeral.BUS_CD_C_PEC.DataRequest(
          VarArrayOf([1, '%']));
    end;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  // Grupo ---------------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGrupoDisp.Items.Add(trim(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString));
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;
 dmGeral.BUS_CD_C_GRU.Close;

 // Familia --------------------------------------------------------------------
 dmGeral.BUS_CD_C_FAM.Close;
  dmGeral.BUS_CD_C_FAM.Data :=
         dmGeral.BUS_CD_C_FAM.DataRequest(
              VarArrayOf([1,'']));
   if not dmGeral.BUS_CD_C_FAM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FAM.First;

       while not dmGeral.BUS_CD_C_FAM.eof do
          begin
            lboxFamiliaDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_FAM.FieldByName('ID_FAMILIA').AsFloat,5,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FAM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FAM.Next;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
    dmGeral.BUS_CD_C_FAM.First
  else
    dmGeral.BUS_CD_C_FAM.Close;
end;

procedure TEST_FM_R_ISM.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.lboxFamiliaDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxFamiliaDisp.ItemIndex > - 1 then
     begin
       lboxFamiliaSel.Items.Add(lboxFamiliaDisp.Items[lboxFamiliaDisp.ItemIndex]);
       lboxFamiliaDisp.Items.Delete(lboxFamiliaDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.lboxFamiliaSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFamiliaSel.ItemIndex > -1 then
     begin
       lboxFamiliaDisp.Items.Add(lboxFamiliaSel.Items[lboxFamiliaSel.ItemIndex]);
       lboxFamiliaSel.Items.Delete(lboxFamiliaSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.lboxGrupoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoDisp.ItemIndex > - 1 then
     begin
       lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[lboxGrupoDisp.ItemIndex]);
       lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.lboxGrupoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoSel.ItemIndex > -1 then
     begin
       lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[lboxGrupoSel.ItemIndex]);
       lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_ISM.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;

procedure TEST_FM_R_ISM.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesGrupo,opcoesFamilia:string;
begin
  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                       '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;

  // Grupos de Itens -----------------------------------------------------------
  xCondGrupo := '';
  if lboxGrupoSel.Count > 0 then
    begin
      if lboxGrupoDisp.Count > 0 then
        begin
          for i := 0 to lboxGrupoSel.Count - 1 do
            begin
              if xCondGrupo <> '' then
                begin
                  xCondGrupo :=
                  xCondGrupo + ',' +''''+trim(copy(lboxGrupoSel.Items[i],1,8))+'''';
                  opcoesGrupo :=
                  opcoesGrupo +'                       '+lboxGrupoSel.Items[i] + #13+#10;
                end;
                if xCondGrupo = '' then
                  begin
                    xCondGrupo :=
                    xCondGrupo +''''+trim(copy(lboxGrupoSel.Items[i],1,8))+'''';
                    opcoesGrupo :=
                    opcoesGrupo + lboxGrupoSel.Items[i] + #13+#10;
                  end;
            end;
        end
      else
        begin
          opcoesGrupo := 'Todos'+ #13+#10;
        end;
    end
  else
    begin
      opcoesGrupo := 'Todos'+ #13+#10;
    end;

  // Familia -----------------------------------------------------------
  xCondFamilia:= '';
  if lboxFamiliaSel.Count > 0 then
    begin
      if lboxFamiliaDisp.Count > 0 then
        begin
          for i := 0 to lboxFamiliaSel.Count - 1 do
            begin
              if xCondFamilia <> '' then
                begin
                  xCondFamilia :=
                  xCondFamilia + ','+''''+trim(copy(lboxFamiliaSel.Items[i],1,6))+'''';
                  opcoesFamilia :=
                  opcoesFamilia +'                       '+lboxFamiliaSel.Items[i] + #13+#10;
                end;
                if xCondFamilia = '' then
                  begin
                    xCondFamilia :=
                    xCondFamilia +''''+trim(copy(lboxFamiliaSel.Items[i],1,6))+'''';
                    opcoesFamilia :=
                    opcoesFamilia + lboxFamiliaSel.Items[i] + #13+#10;
                  end;
            end;
        end
      else
        begin
          opcoesFamilia := 'Todos'+ #13+#10;
        end;
    end
  else
    begin
      opcoesFamilia := 'Todos'+ #13+#10;
    end;

  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Dias sem movimento...: ' + txtdias.Text + #13+#10;
  xOpcoes := xOpcoes + 'Empresa..............: ' + opcoesEmpresa ;
  xOpcoes := xOpcoes + 'Grupo................: ' + opcoesGrupo ;
  xOpcoes := xOpcoes + 'Familia..............: ' + opcoesFamilia ;

end;

function TEST_FM_R_ISM.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if txtDias.Text = '' then
    begin
       mens := mens +  '.Dias sem movimento deve ser preenchido.' + #13;
    end;

  if lboxEmpresaSelecionada.Count = 0 then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
    end;
end;

procedure TEST_FM_R_ISM.TestePreco(fastreport: TfrxReport; memoa, memob: string);
var
memo1, memo2, memo3, memo4: TfrxmemoView;
child,child2: TfrxChild;
masterData: TfrxMasterData;
mmCabPrc,mmPrc,mmSaldo,mmCusto,mmSaldov,mmCustov: TfrxmemoView;
indexPrc:integer;
begin
  indexPrc := 1;
  if cbxPreco.Checked then
    begin
      while (indexPrc <3) do
        begin
          mmCabPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := True;
          mmPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := True;
          indexPrc := indexPrc +1;
        end;
    end
  else
    begin
      while (indexPrc <3) do
        begin
          mmCabPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := False;
          mmPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := False;
          indexPrc := indexPrc +1;
        end;

      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and
        (chbExibirSaldo.Checked = true) then
        begin
          mmCabPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmCabPrc1'));
          mmCabPrc.Visible := True;
          mmPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmPrc1'));
          mmPrc.Visible := True;
        end;
    end;

  if chbExibirSaldo.Checked then
    begin
      EST_FR_R_ISM.Variables['DescSaldo'] := QuotedStr('Saldo');
      mmSaldo := TfrxMemoView (EST_FR_R_ISM.FindComponent('Memo7'));
      mmSaldo.Visible := True
    end
  else
    begin
      EST_FR_R_ISM.Variables['DescSaldo'] := QuotedStr('');
      mmSaldo := TfrxMemoView (EST_FR_R_ISM.FindComponent('Memo7'));
      mmSaldo.Visible := False;
    end;

  if cbxPrecoCusto.Checked then
    begin
      mmCusto := TfrxMemoView (EST_FR_R_ISM.FindComponent('Memo9'));
      mmCusto.Visible := True;
      if cbbCusto.ItemIndex = 0 then
        EST_FR_R_ISM.Variables['DescCusto'] := QuotedStr('Custo Médio')
      else
        EST_FR_R_ISM.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra')
    end
  else
    begin
      EST_FR_R_ISM.Variables['DescCusto'] := QuotedStr('');
      mmCusto := TfrxMemoView (EST_FR_R_ISM.FindComponent('Memo9'));
      mmCusto.Visible := False;
    end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and
    (chbExibirSaldo.Checked = true) then
    begin
      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = False) then
        begin
          EST_FR_R_ISM.Variables['cabPrc1'] := QuotedStr('');
        end;
    end;
end;

procedure TEST_FM_R_ISM.TornarCamposPrecoInvisivel(indexPrc: integer);
var
  mmCabPrc,mmPrc: TfrxmemoView;
begin
  if (indexPrc<3) then
    begin
      while (indexPrc<3) do
        begin
          mmCabPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := False;
          mmPrc := TfrxMemoView (EST_FR_R_ISM.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := False;
          indexPrc := indexPrc +1;
        end;
    end;
end;

end.
