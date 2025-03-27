unit CAD_UN_R_ITE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, vcl.wwdblook, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Data.DB, frxClass, frxExportXLS, frxExportPDF, frxDBSet, enFunc, JvExExtCtrls,
  JvExtComponent, JvPanel, Datasnap.DBClient,Math;

type
  TCAD_FM_R_ITE = class(TPAD_FM_X_REL)
    cboxSituacaoItem: TComboBox;
    Label1: TLabel;
    cboxCodImp: TComboBox;
    Label2: TLabel;
    pcFiltros: TPageControl;
    tsGrupoEst: TTabSheet;
    tsFornec: TTabSheet;
    Label4: TLabel;
    cboxOrdenacao: TComboBox;
    Label5: TLabel;
    lboxGru: TListBox;
    Label6: TLabel;
    lboxFor: TListBox;
    pmExcluirGru: TPopupMenu;
    Retirarregistro1: TMenuItem;
    tsNCM: TTabSheet;
    tsUnidades: TTabSheet;
    Label7: TLabel;
    lboxNCM: TListBox;
    Label8: TLabel;
    lboxUnd: TListBox;
    lboxUndSel: TListBox;
    Label9: TLabel;
    Label10: TLabel;
    txtLocRua: TEdit;
    CAD_DB_R_ITE: TfrxDBDataset;
    PAD_PD_C_REL: TfrxPDFExport;
    PAD_XL_C_REL: TfrxXLSExport;
    CAD_FR_R_ITE_FOR: TfrxReport;
    CAD_FR_R_ITE_GRU: TfrxReport;
    CAD_FR_R_ITE_NCM: TfrxReport;
    CAD_FR_R_ITE_TPO: TfrxReport;
    CAD_FR_R_ITE_GER: TfrxReport;
    pmSelTodasUnid: TPopupMenu;
    MenuItem1: TMenuItem;
    pmExcluirFor: TPopupMenu;
    btnRetirarRegistroFor: TMenuItem;
    pmExcluirNcm: TPopupMenu;
    btnRetirarRegistroNcm: TMenuItem;
    pmExcluirTodasUnid: TPopupMenu;
    btnExcluirTodasUnid: TMenuItem;
    cbxPreco: TCheckBox;
    Label11: TLabel;
    cbbPerfil: TComboBox;
    lblPerfil: TLabel;
    cdsCondPreco: TClientDataSet;
    cdsCondPreconome_cpg: TStringField;
    cdsCondPrecopreco: TCurrencyField;
    CAD_DB_R_ITE_PRC: TfrxDBDataset;
    cdsCondPrecoid_sequencia: TIntegerField;
    CAD_FR_R_ITE_PRC: TfrxReport;
    CAD_DB_R_ITE_PRC_FIN: TfrxDBDataset;
    chbExibirSaldo: TCheckBox;
    CAD_FR_R_ITE_PRC_fin: TfrxReport;
    cbbTipoSaldo: TComboBox;
    lblTipoSaldo: TLabel;
    CAD_FR_R_ITE_PRC_FIN2: TfrxReport;
    CAD_DB_R_ITE_PRC_MNL: TfrxDBDataset;
    CAD_CD_R_ITE_PRC_MNL: TClientDataSet;
    CAD_CD_R_ITE_PRC_MNLid_item: TIntegerField;
    CAD_CD_R_ITE_PRC_MNLid_perfil_cli: TIntegerField;
    CAD_CD_R_ITE_PRC_MNLpreco_avista: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco1: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco2: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco3: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLpreco4: TCurrencyField;
    CAD_CD_R_ITE_PRC_MNLint_desc_pec: TStringField;
    CAD_FR_R_ITE_FOR_PRF: TfrxReport;
    CAD_FR_R_ITE_NCM_PRF: TfrxReport;
    CAD_FR_R_ITE_GRU_PRF: TfrxReport;
    CAD_FR_R_ITE_GER_PRF: TfrxReport;
    lblCusto: TLabel;
    cbbCusto: TComboBox;
    CAD_FR_R_ITE_PRC_FIN2_AVP: TfrxReport;
    CAD_FR_R_ITE_PRC_AVP: TfrxReport;
    CAD_FR_R_ITE_PRC_FIN_AVP: TfrxReport;
    CAD_FR_R_ITE_PRC_FIN2_CAT: TfrxReport;
    CAD_FR_R_ITE_PRC_FIN_CAT: TfrxReport;
    CAD_FR_R_ITE_PRC_CAT: TfrxReport;
    chbExibirCusto: TCheckBox;
    tsTipoItem: TTabSheet;
    lboxTipo: TListBox;
    lboxTipoSel: TListBox;
    Label12: TLabel;
    Label13: TLabel;
    pmSelTipoItem: TPopupMenu;
    pmExcluirItem: TPopupMenu;
    btnSelTipos: TMenuItem;
    btnExcluirTipoItem: TMenuItem;
    tsCategoria: TTabSheet;
    lboxCat: TListBox;
    lboxCatSel: TListBox;
    Label3: TLabel;
    Label14: TLabel;
    pmSelCategoria: TPopupMenu;
    pmExcluirCategoria: TPopupMenu;
    btnSelCategoria: TMenuItem;
    btnExcluirCategoria: TMenuItem;
    CAD_CD_R_ITE_PRC_CAT: TClientDataSet;
    CAD_DB_R_ITE_PRC_CAT: TfrxDBDataset;
    CAD_FR_R_ITE_PRC_SER_CAT: TfrxReport;
    CAD_FR_R_ITE_PRC_SER_CAT2: TfrxReport;
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Retirarregistro1Click(Sender: TObject);
    procedure lboxGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxNCMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxUndDblClick(Sender: TObject);
    procedure lboxUndSelDblClick(Sender: TObject);
    procedure CAD_DB_R_ITECheckEOF(Sender: TObject; var Eof: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnRetirarRegistroForClick(Sender: TObject);
    procedure btnRetirarRegistroNcmClick(Sender: TObject);
    procedure btnExcluirTodasUnidClick(Sender: TObject);
    procedure chbExibirSaldoClick(Sender: TObject);
    procedure chbExibirCustoClick(Sender: TObject);
    procedure btnSelTiposClick(Sender: TObject);
    procedure btnExcluirTipoItemClick(Sender: TObject);
    procedure lboxTipoDblClick(Sender: TObject);
    procedure lboxTipoSelDblClick(Sender: TObject);
    procedure btnSelCategoriaClick(Sender: TObject);
    procedure btnExcluirCategoriaClick(Sender: TObject);
    procedure lboxCatDblClick(Sender: TObject);
    procedure lboxCatSelDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    //procedure TestePreco(fastreport:TfrxReport;memoa,memob :string);
    procedure TestePreco(fastreport: TfrxReport; memoa, memob: string);
    procedure TornarCamposPrecoInvisivel(indexPrc:integer);
    procedure CalcularPrecoPerfil(id_item:String);
    var
      xOpcoes,xCondGru,xCondFor,xCondNCM,xCondLocRua,xCondUnd,xCondTipoItem,xCondCat: string;
      rPerfil:STRING;
      fastreport: TfrxReport;
      childPreco:  TfrxChild;
      VisChildCondPreco, VisChildPrecoFinan,VisChildPrecoManual,VisChildPrecoCat:Boolean;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_ITE: TCAD_FM_R_ITE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_GRU, PSQ_UN_X_NCM, enConstantes;


procedure TCAD_FM_R_ITE.CalcularPrecoPerfil(id_item:String);
var
  fazCorrPerfilFamilia:Boolean;
  indexPrc:Integer;
begin
  // Se houve alguma alteração no calculo de preço dever ser feito a alteração no EST_FM_R_ISM;
      dmgeral.BusItens(0,id_item);
      //dmGeral.BUS_CD_C_ITE.Locate('ID_ITEM',id_item,[]);

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
      //dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_ITEM',id_item,[]);

      CAD_CD_R_ITE_PRC_MNL.EmptyDataSet;
      dmGeral.BUS_CD_C_PEC.First;
      while not dmGeral.BUS_CD_C_PEC.eof do
        begin

          if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = true) and
               dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsString,[])) or
               (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = false)  then
            begin
              CAD_CD_R_ITE_PRC_MNL.Insert;
              CAD_CD_R_ITE_PRC_MNL.FieldByName('id_perfil_cli').AsInteger := dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger;
              CAD_CD_R_ITE_PRC_MNL.FieldByName('int_desc_pec').AsString := dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;
              if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                 dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                 ((dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsString <> '') or (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean=true) ) then
                begin
                   CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency := dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;

                end
              ELSE
                begin
                   CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency :=
                       dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                    fazCorrPerfilFamilia := true;
                   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                    begin
                      fazCorrPerfilFamilia := false;
                      if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                        begin
                         if dmGeral.BUS_CD_C_FAM.Locate('ID_FAMILIA', dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString,[]) and
                            (not dmGeral.BUS_CD_C_FAM_EMP.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                              begin
                                 fazCorrPerfilFamilia :=
                                                dmGeral.BUS_CD_C_FAM_EMP.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;
                              end;
                          {dmGeral.BUS_CD_C_FAM.Close;
                          dmGeral.BUS_CD_C_FAM.Data :=
                          dmGeral.BUS_CD_C_FAM.DataRequest(
                                     VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                           if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                              (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                              begin
                                fazCorrPerfilFamilia :=
                                                dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                              end;
                          dmGeral.BUS_CD_C_FAM.Close;}
                        end;
                    end;


                  if (fazCorrPerfilFamilia = true) and  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean=true) then
                    begin
                      if dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                         begin
                           if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                              begin
                                 CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency :=
                                     roundTo(
                                         (dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                          dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                              end;

                           if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                              begin
                                 CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency :=
                                    roundTo(
                                         (dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                          dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                              end;
                         end;
                    end;
                end;

                for indexPrc := 1 to 4 do
                  begin

                    if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                      ((dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsString <> '')  or (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean=true) ) then
                       begin
                          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                       dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency;
                       end
                    else
                      begin
                          CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                          dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                            begin
                              fazCorrPerfilFamilia := false;
                              if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                begin
                                  if dmGeral.BUS_CD_C_FAM.Locate('ID_FAMILIA', dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString,[]) and
                                    (not dmGeral.BUS_CD_C_FAM_EMP.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                      begin
                                         fazCorrPerfilFamilia :=
                                                        dmGeral.BUS_CD_C_FAM_EMP.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;
                                      end;

                                 { dmGeral.BUS_CD_C_FAM.Close;
                                  dmGeral.BUS_CD_C_FAM.Data :=
                                  dmGeral.BUS_CD_C_FAM.DataRequest(
                                             VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                  if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                     (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                    begin
                                      fazCorrPerfilFamilia :=
                                                dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                    end;
                                  dmGeral.BUS_CD_C_FAM.Close;}
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
                                             roundTo(
                                                 (dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                                                  dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                      end;

                                   if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                      begin
                                         CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                            roundTo(
                                                 (dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                  dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
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
                                       Power(1+(dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                  end;
                               if dmGeral.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then
                                  begin
                                    CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                             roundTo( CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                                       Power(1-(dmGeral.BUS_CD_C_PEC_EMP.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                  end;
                              end;
                       end;

                  end;
              CAD_CD_R_ITE_PRC_MNL.Post;
          end;

          dmGeral.BUS_CD_C_PEC.Next;
        end;


        CAD_CD_R_ITE_PRC_MNL.First;

end;

procedure TCAD_FM_R_ITE.TornarCamposPrecoInvisivel(indexPrc:integer);
var
    mmCabPrc,mmPrc: TfrxmemoView;
begin
   if (indexPrc<7) then
     begin
       while (indexPrc<7) do
         begin
          mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := False;
          mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := False;

          mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := False;
          mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := False;

          mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
          mmCabPrc.Visible := False;
          mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
          mmPrc.Visible := False;

          indexPrc := indexPrc +1;
         end;
     end;
end;


procedure TCAD_FM_R_ITE.btnExcluirCategoriaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxCatSel.ClearSelection;

  if lboxCatSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para excluir.');
       exit;
     end;

  if lboxCatSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCatSel.Items.Count - 1 do
           begin
             lboxCat.Items.Add(lboxCatSel.Items[i]);
             lboxCatSel.Items.Delete(lboxCatSel.ItemIndex);
           end;
       lboxCatSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.btnExcluirTipoItemClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipoSel.ClearSelection;

  if lboxTipoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para excluir.');
       exit;
     end;

  if lboxTipoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoSel.Items.Count - 1 do
           begin
             lboxTipo.Items.Add(lboxTipoSel.Items[i]);
             lboxTipoSel.Items.Delete(lboxTipoSel.ItemIndex);
           end;
       lboxTipoSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.btnExcluirTodasUnidClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxUndSel.ClearSelection;

  if lboxUndSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para excluir.');
       exit;
     end;

  if lboxUndSel.Items.Count > 0 then
     begin
       for i := 0 to lboxUndSel.Items.Count - 1 do
           begin
             lboxUnd.Items.Add(lboxUndSel.Items[i]);
             lboxUndSel.Items.Delete(lboxUndSel.ItemIndex);
           end;
       lboxUndSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.btnImprimirClick(Sender: TObject);
begin
  inherited;

  ExibirRel;
end;

procedure TCAD_FM_R_ITE.btnRetirarRegistroForClick(Sender: TObject);
begin
  inherited;
  if lboxFor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxFor.DeleteSelected;
end;

procedure TCAD_FM_R_ITE.btnRetirarRegistroNcmClick(Sender: TObject);
begin
  inherited;
  if lboxNCM.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxNCM.DeleteSelected;
end;

procedure TCAD_FM_R_ITE.btnSelTiposClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipo.ClearSelection;

  if lboxTipo.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipo.Items.Count > 0 then
     begin
       for i := 0 to lboxTipo.Items.Count - 1 do
           begin
             lboxTipoSel.Items.Add(lboxTipo.Items[i]);
             lboxTipo.Items.Delete(lboxTipo.ItemIndex);
           end;
       lboxTipo.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.CAD_DB_R_ITECheckEOF(Sender: TObject; var Eof: Boolean);
var
  preco_anterior:currency;
  seq_anterior:integer;
  indexPrc,i:integer;
begin
  inherited;
  if cbbCusto.ItemIndex = 0 then
    begin
      CAD_FR_R_ITE_PRC_AVP.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_FIN_AVP.Variables['DescCusto'] := QuotedStr('Custo Médio');

      CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_FIN_CAT.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_CAT.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_FIN2.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC.Variables['DescCusto'] := QuotedStr('Custo Médio');

      CAD_FR_R_ITE_GER.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_GER_PRF.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_FOR.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_FOR_PRF.Variables['DescCusto'] := QuotedStr('Custo Médio');

      CAD_FR_R_ITE_GRU.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_GRU_PRF.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_NCM.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_NCM_PRF.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_TPO.Variables['DescCusto'] := QuotedStr('Custo Médio');
      CAD_FR_R_ITE_PRC_FIN.Variables['DescCusto'] := QuotedStr('Custo Médio');
    end
  else
    begin
      CAD_FR_R_ITE_PRC_AVP.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_FIN_AVP.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');

      CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_FIN_CAT.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_CAT.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_FIN2.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');


      CAD_FR_R_ITE_GER.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_GER_PRF.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_FOR.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_FOR_PRF.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');

      CAD_FR_R_ITE_GRU.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_GRU_PRF.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_NCM.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_NCM_PRF.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_TPO.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
      CAD_FR_R_ITE_PRC_FIN.Variables['DescCusto'] := QuotedStr('Custo Últ. Compra');
    end;

  cdsCondPreco.EmptyDataSet;
  if cbxPreco.Checked then
     begin
      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> 'Listagem de Preço') and
         (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> 'Listagem de Preço por Categoria') and
         (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> 'Listagem de Preço por Categoria (Em Colunas)') and
         (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> 'Avaliação de Preço') then
         begin
          { if ((fastreport.Name='CAD_FR_R_ITE_GER') or (fastreport.Name='CAD_FR_R_ITE_FOR') or
               (fastreport.Name='CAD_FR_R_ITE_GRU') or (fastreport.Name='CAD_FR_R_ITE_NCM')) then
             begin
              TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible:=VisChildCondPreco;
              TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible :=VisChildPrecoFinan;
              TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := VisChildPrecoManual;
              TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := VisChildPrecoCat;
              TfrxMasterData(fastreport.FindComponent('MasterData1')).Child := childPreco;
             end; }
          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
             begin
               dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
               dmGeral.BUS_CD_C_PAR_CPG_INF.Data :=
                   dmGeral.BUS_CD_C_PAR_CPG_INF.DataRequest(
                         VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
               dmGeral.BUS_CD_C_PAR_CPG_INF.Open;

               dmGeral.BUS_CD_C_PAR_CPG_INF.Cancel;
               seq_anterior := 0;

               while (not dmGeral.BUS_CD_C_PAR_CPG_INF.EOF) do
                  begin
                     if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger <> seq_anterior) then
                       begin
                         if (seq_anterior <> 0) then
                           begin
                             cdsCondPreco.Post;
                           end;
                         cdsCondPreco.Insert;
                         cdsCondPreco.FieldByName('ID_SEQUENCIA').AsInteger := dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger;
                         cdsCondPreco.FieldByName('NOME_CPG').AsString := dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString;

                         cdsCondPreco.FieldByName('PRECO').AsCurrency :=  dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                         seq_anterior := dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger;
                       end
                     else
                       begin
                        if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger = seq_anterior) then
                          begin
                           cdsCondPreco.FieldByName('PRECO').AsCurrency := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                          end;
                        end;
                    preco_anterior := cdsCondPreco.FieldByName('PRECO').AsCurrency;

                    dmGeral.BUS_CD_C_PAR_CPG_INF.Next;
                  end;

                if cdsCondPreco.State in [dsInsert] then
                  begin
                    cdsCondPreco.Post;
                  end;
                cdsCondPreco.IndexFieldNames := 'ID_SEQUENCIA';
               dmGeral.BUS_CD_C_PAR_CPG_INF.Close;

             end;

          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
            begin
              if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True) or
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) and
                  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = true)) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = true) then
                 begin


                  CalcularPrecoPerfil(trim(dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString));

                   if cbbPerfil.Text <> 'Todos' then
                        begin
                             if (CAD_CD_R_ITE_PRC_MNL.RecordCount > 0) then
                               begin

                                fastreport.Variables['camp1'] := QuotedStr(CAD_CD_R_ITE_PRC_MNL.FieldByName('INT_DESC_PEC').AsString);
                                fastreport.Variables['camp2'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency;
                                fastreport.Variables['camp3'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco1').AsCurrency;
                                fastreport.Variables['camp4'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco2').AsCurrency;
                                fastreport.Variables['camp5'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco3').AsCurrency;
                                fastreport.Variables['camp6'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco4').AsCurrency;
                               end
                             else
                               begin
                                fastreport.Variables['camp1'] := QuotedStr('');
                                fastreport.Variables['camp2'] := 0.0;
                                fastreport.Variables['camp3'] := 0.0;
                                fastreport.Variables['camp4'] := 0.0;
                                fastreport.Variables['camp5'] := 0.0;
                                fastreport.Variables['camp6'] := 0.0;
                               end;

                             if (chbExibirSaldo.Visible=true) and (chbExibirSaldo.Checked=true) then
                               begin
                                fastreport.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                               end;
                         end;
                 end;
            end;

         {if  ((fastreport.Name='CAD_FR_R_ITE_GER') or (fastreport.Name='CAD_FR_R_ITE_FOR') or
             (fastreport.Name='CAD_FR_R_ITE_GRU') or (fastreport.Name='CAD_FR_R_ITE_NCM')) then
            begin
              if ((dmGeral.CAD_CD_R_ITE.FieldBYName('int_tipoite').AsString='09') and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean=true)) then
                 begin
                    TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible:=false;
                    TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible :=false;
                    TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible :=false;
                    TfrxMasterData(fastreport.FindComponent('MasterData1')).Child :=
                                TfrxChild (fastreport.FindComponent('ChildPrecoCat'));

                    TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista')).Visible :=false;
                    TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo')).Visible :=false;
                    if xCondCat<>'' then
                      BEGIN
                       CAD_CD_R_ITE_PRC_CAT.Close;
                       CAD_CD_R_ITE_PRC_CAT.Data :=
                       CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                     VarArrayOf([0, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString,xCondCat]));
                      END
                    else
                      begin
                        CAD_CD_R_ITE_PRC_CAT.Close;
                        CAD_CD_R_ITE_PRC_CAT.Data :=
                        CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                     VarArrayOf([1, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString]));
                      end;

                    if (not CAD_CD_R_ITE_PRC_CAT.IsEmpty) then
                      begin
                         TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible :=true;
                      end;
                 end
               else
                 begin
                    TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista')).Visible :=true;
                    TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo')).Visible :=true;
                 end;
             end; }

          if  ((fastreport.Name='CAD_FR_R_ITE_GER') or (fastreport.Name='CAD_FR_R_ITE_FOR') or
             (fastreport.Name='CAD_FR_R_ITE_GRU') or (fastreport.Name='CAD_FR_R_ITE_NCM')) then
            begin
              if ((xCondTipoItem='''09''') and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean=true)) then
                 begin
                    if xCondCat<>'' then
                      BEGIN
                       CAD_CD_R_ITE_PRC_CAT.Close;
                       CAD_CD_R_ITE_PRC_CAT.Data :=
                       CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                     VarArrayOf([0, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString,xCondCat]));
                      END
                    else
                      begin
                        CAD_CD_R_ITE_PRC_CAT.Close;
                        CAD_CD_R_ITE_PRC_CAT.Data :=
                        CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                     VarArrayOf([1, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString]));
                      end;

                    if (not CAD_CD_R_ITE_PRC_CAT.IsEmpty) then
                      begin
                         TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible :=true;
                      end
                    else
                      begin
                        TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible :=false;
                      end;
                 end;
             end;

         end
      else
        begin
         if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria (Em Colunas)') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Avaliação de Preço') then
          begin
             indexPrc := 1;
             if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
               begin
                 dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
                 dmGeral.BUS_CD_C_PAR_CPG_INF.Data :=
                    dmGeral.BUS_CD_C_PAR_CPG_INF.DataRequest(
                         VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
                 dmGeral.BUS_CD_C_PAR_CPG_INF.Open;
                 dmGeral.BUS_CD_C_PAR_CPG_INF.Cancel;
                 seq_anterior := 0;
                 while ((not dmGeral.BUS_CD_C_PAR_CPG_INF.EOF) and (indexPrc<7)) do
                  begin
                    if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger <> seq_anterior) then
                      begin
                       if (seq_anterior <> 0) then
                         begin
                           indexPrc := indexPrc+1;
                         end;

                       if (indexPrc<7) then
                          begin
                           CAD_FR_R_ITE_PRC.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr(dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString);
                           CAD_FR_R_ITE_PRC.Variables['prc'+indexPrc.ToString(indexPrc)] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);

                           CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr(dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString);
                           CAD_FR_R_ITE_PRC_AVP.Variables['prc'+indexPrc.ToString(indexPrc)] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);

                           CAD_FR_R_ITE_PRC_CAT.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr(dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString);
                           CAD_FR_R_ITE_PRC_CAT.Variables['prc'+indexPrc.ToString(indexPrc)] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);

                           preco_anterior := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                           seq_anterior := dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger;
                          end;
                      end
                    else
                      begin
                       if (dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('SEQUENCIA').AsInteger = seq_anterior) then
                        begin
                         CAD_FR_R_ITE_PRC.Variables['prc'+indexPrc.ToString(indexPrc)] := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                         CAD_FR_R_ITE_PRC_AVP.Variables['prc'+indexPrc.ToString(indexPrc)] := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                         CAD_FR_R_ITE_PRC_CAT.Variables['prc'+indexPrc.ToString(indexPrc)] := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                         preco_anterior := preco_anterior*(1+dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency/100.0);
                        end;
                      end;
                    dmGeral.BUS_CD_C_PAR_CPG_INF.Next;
                 end;
                 dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
                 TornarCamposPrecoInvisivel(indexPrc+1);
               end
             else
               begin
                  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex]='Listagem de Preço por Categoria') or
                      (lbxRelatorios.Items[lbxRelatorios.ItemIndex]='Listagem de Preço por Categoria (Em Colunas)')  then
                     begin
                        if xCondCat<>'' then
                          BEGIN
                           CAD_CD_R_ITE_PRC_CAT.Close;
                           CAD_CD_R_ITE_PRC_CAT.Data :=
                           CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                         VarArrayOf([0, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString,xCondCat]));
                          END
                        else
                          begin
                            CAD_CD_R_ITE_PRC_CAT.Close;
                            CAD_CD_R_ITE_PRC_CAT.Data :=
                            CAD_CD_R_ITE_PRC_CAT.DataRequest(
                                         VarArrayOf([1, dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString]));
                          end;


                       if (lbxRelatorios.Items[lbxRelatorios.ItemIndex]='Listagem de Preço por Categoria (Em Colunas)') then
                          begin
                             i := 1;

                             while (I<4) do
                              begin
                               CAD_FR_R_ITE_PRC_SER_CAT2.Variables['CAT'+IntToStr(i)] := QuotedStr('');
                               CAD_FR_R_ITE_PRC_SER_CAT2.Variables['PRC'+IntToStr(i)] := QuotedStr('');
                               inc(i);
                              end;

                            i := 1;
                            CAD_CD_R_ITE_PRC_CAT.First;
                            while (not CAD_CD_R_ITE_PRC_CAT.eof) AND (I<4) do
                              begin
                                CAD_FR_R_ITE_PRC_SER_CAT2.Variables['CAT'+IntToStr(i)] := QuotedStr(CAD_CD_R_ITE_PRC_CAT.FieldByName('INT_NOMECAT').AsString);
                                CAD_FR_R_ITE_PRC_SER_CAT2.Variables['PRC'+IntToStr(i)] :=  QuotedStr(FormatCurr('###,###,##0.00' ,CAD_CD_R_ITE_PRC_CAT.FieldByName('PRECO').AsCurrency));
                                CAD_CD_R_ITE_PRC_CAT.Next;
                                INC(I);
                              end;
                          end;






                     end
                  else
                     begin
                      if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) or
                          ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) and
                          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = true)) or
                          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = true)  then
                        begin

                          CalcularPrecoPerfil(trim(dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString));



                         if cbbPerfil.Text <> 'Todos' then
                            begin

                                if (CAD_CD_R_ITE_PRC_MNL.RecordCount > 0) then
                                  begin
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp1'] := QuotedStr(CAD_CD_R_ITE_PRC_MNL.FieldByName('INT_DESC_PEC').AsString);
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp2'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp3'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco1').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp4'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco2').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp5'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco3').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp6'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco4').AsCurrency;

                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp1'] := QuotedStr(CAD_CD_R_ITE_PRC_MNL.FieldByName('INT_DESC_PEC').AsString);
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp2'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp3'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco1').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp4'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco2').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp5'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco3').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp6'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco4').AsCurrency;

                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp1'] := QuotedStr(CAD_CD_R_ITE_PRC_MNL.FieldByName('INT_DESC_PEC').AsString);
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp2'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('PRECO_AVISTA').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp3'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco1').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp4'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco2').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp5'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco3').AsCurrency;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp6'] := CAD_CD_R_ITE_PRC_MNL.FieldByName('preco4').AsCurrency;
                                  end
                                else
                                  begin
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp1'] := QuotedStr('');
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp2'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp3'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp4'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp5'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2.Variables['camp6'] := 0.0;

                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp1'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp2'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp3'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp4'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp5'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['camp6'] := 0.0;

                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp1'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp2'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp3'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp4'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp5'] := 0.0;
                                     CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['camp6'] := 0.0;
                                  end;


                                 if chbExibirSaldo.Checked then
                                   begin
                                    CAD_FR_R_ITE_PRC_FIN2.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                                    CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                                    CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                                   end;

                             end;
                        end
                      {else if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true then
                         begin
                            dmGeral.CAD_CD_R_ITE_PRC_FIN.Close;
                            dmGeral.CAD_CD_R_ITE_PRC_FIN.Data :=
                            dmGeral.CAD_CD_R_ITE_PRC_FIN.DataRequest(VarArrayOf([0, trim(dmGeral.CAD_CD_R_ITE.FieldByName('ID_ITEM').AsString),rPerfil]));
                            dmGeral.CAD_CD_R_ITE_PRC_FIN.First;

                            if cbbPerfil.Text <> 'Todos' then
                               begin
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp1'] := QuotedStr(dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('DESCRICAO').AsString);
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp2'] := dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('AVISTA').AsCurrency;
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp3'] := dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('p30').AsCurrency;
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp4'] := dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('p60').AsCurrency;
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp5'] := dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('p90').AsCurrency;
                                 CAD_FR_R_ITE_PRC_FIN2.Variables['camp6'] := dmGeral.CAD_CD_R_ITE_PRC_FIN.FieldByName('p120').AsCurrency;

                                 if chbExibirSaldo.Checked then
                                   begin
                                    CAD_FR_R_ITE_PRC_FIN2.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsInteger;
                                   end;

                               end;
                         end }
                      else
                        begin
                          indexPrc := 3;
                          CAD_FR_R_ITE_PRC.Variables['cabPrc1'] := QuotedStr('Preço à Vista');
                          CAD_FR_R_ITE_PRC.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency;
                          CAD_FR_R_ITE_PRC.Variables['cabPrc2'] := QuotedStr('Preço à Prazo');
                          CAD_FR_R_ITE_PRC.Variables['prc2'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_APRAZO').AsCurrency;

                          CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc1'] := QuotedStr('Preço à Vista');
                          CAD_FR_R_ITE_PRC_AVP.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency;
                          CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc2'] := QuotedStr('Preço à Prazo');
                          CAD_FR_R_ITE_PRC_AVP.Variables['prc2'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_APRAZO').AsCurrency;

                          CAD_FR_R_ITE_PRC_CAT.Variables['cabPrc1'] := QuotedStr('Preço à Vista');
                          CAD_FR_R_ITE_PRC_CAT.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_AVISTA').AsCurrency;
                          CAD_FR_R_ITE_PRC_CAT.Variables['cabPrc2'] := QuotedStr('Preço à Prazo');
                          CAD_FR_R_ITE_PRC_CAT.Variables['prc2'] := dmGeral.CAD_CD_R_ITE.FieldByName('PRC_APRAZO').AsCurrency;

                          if chbExibirSaldo.Checked then
                            begin
                             CAD_FR_R_ITE_PRC.Variables['cabPrc3'] := QuotedStr('Saldo');
                             CAD_FR_R_ITE_PRC.Variables['prc3'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;

                             CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc3'] := QuotedStr('Saldo');
                             CAD_FR_R_ITE_PRC_AVP.Variables['prc3'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;

                             CAD_FR_R_ITE_PRC_CAT.Variables['cabPrc3'] := QuotedStr('Saldo');
                             CAD_FR_R_ITE_PRC_CAT.Variables['prc3'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                             inc(indexPrc);
                            end;
                          TornarCamposPrecoInvisivel(indexPrc);
                        end;
                      end;


               end;
          end;
        end;
     end
  else
    begin
      if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) or
         (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = true) or
         (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true) or
         (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = true))  and
               (chbExibirSaldo.Checked = true) then
         begin
            if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço') or
               (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria') or
               (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Avaliação de Preço') then
              begin
                 if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) then
                    begin
                       if cbbPerfil.Text <> 'Todos' then
                         begin
                          CAD_FR_R_ITE_PRC_FIN2.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                          CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                          CAD_FR_R_ITE_PRC_FIN2_CAT.Variables['campSaldo'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                         end;
                    end
                 else
                    begin
                      CAD_FR_R_ITE_PRC.Variables['cabPrc1'] := QuotedStr('Saldo');
                      CAD_FR_R_ITE_PRC.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;

                      CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc1'] := QuotedStr('Saldo');
                      CAD_FR_R_ITE_PRC_AVP.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;

                      CAD_FR_R_ITE_PRC_CAT.Variables['cabPrc1'] := QuotedStr('Saldo');
                      CAD_FR_R_ITE_PRC_CAT.Variables['prc1'] := dmGeral.CAD_CD_R_ITE.FieldByName('INT_SALDO').AsFloat;
                    end;
              end;
         end;
    end;









  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem Geral' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_GER.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_GER.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_GER.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Fornecedor' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_FOR.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_FOR.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_FOR.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Grupo' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_GRU.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_GRU.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_GRU.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por NCM' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_NCM.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_NCM.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_NCM.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Tipo do item' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_TPO.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_TPO.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_TPO.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_PRC.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_PRC.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_PRC.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_PRC_CAT.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_PRC_CAT.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_PRC_CAT.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Avaliação de Preço' then
     begin
       case cboxCodImp.ItemIndex of
          0: CAD_FR_R_ITE_PRC_AVP.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('ID_ITEM').Text);
          1: CAD_FR_R_ITE_PRC_AVP.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_BARRA').Text);
          2: CAD_FR_R_ITE_PRC_AVP.Variables['CodigoItem'] := QuotedStr(CAD_DB_R_ITE.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
end;

procedure TCAD_FM_R_ITE.chbExibirCustoClick(Sender: TObject);
begin
  inherited;
  if chbExibirCusto.Checked then
    begin
      lblCusto.Visible := true;
      cbbCusto.Visible := true;
    end
  else
    begin
      lblCusto.Visible := false;
      cbbCusto.Visible := false;
    end;
end;

procedure TCAD_FM_R_ITE.chbExibirSaldoClick(Sender: TObject);
begin
  inherited;
  if chbExibirSaldo.Checked then
    begin
      lblTipoSaldo.Visible := true;
      cbbTipoSaldo.Visible := true;
    end
  else
    begin
      lblTipoSaldo.Visible := false;
      cbbTipoSaldo.Visible := false;
    end;
end;

procedure TCAD_FM_R_ITE.ExibirRel;
var
  rAtivo, rTipo, rOrdenacao,rTipoSaldo,rCusto,PathImg: String;
  precoPorFilial,corrPorGrupo:String;
  LogoEmpresa: TfrxPictureView;
  indexPrc:integer;
begin
  if lbxRelatorios.ItemIndex = -1 then
    Showmessage('Nenhum relatório foi selecionado.');

  //parametros
  // 0 - ATIVO
  // 1 - GRUPO
  // 2 - FORNECEDOR
  // 3 - NCM
  // 4 - UND VENDA
  // 5 - LOCA_RUA
  // 6 - tipo

  // Situação do item
  rAtivo := '';
  if cboxSituacaoItem.Text = 'Ativos' then
    rAtivo := 'true'
  else if cboxSituacaoItem.Text = 'Inativos' then
    rAtivo := 'false';

  

  // Ordenação
  rOrdenacao := copy(cboxOrdenacao.Text,1,1);

  // Perfil
  rPerfil := '';
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True) or
      ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) and
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = true)) or
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = true) then
    begin
      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and (cbbPerfil.Text <> 'Todos')  then
        begin
          rPerfil := copy(cbbPerfil.Text,1,3);
        end;
    end;

  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) and
     (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = true)) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = true)) then
    precoPorFilial := 'true'
  else
    precoPorFilial := 'false';

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('correcao_prc_por_grupo').AsBoolean = true) then
    corrPorGrupo := 'true'
  else
    corrPorGrupo := 'false';


  rTipoSaldo := '';
  if ((chbExibirSaldo.Visible = true) and (chbExibirSaldo.Checked = true)) then
    begin
      rTipoSaldo := IntToStr(cbbTipoSaldo.ItemIndex);
    end;

  // Custo
  rCusto := IntToStr(cbbCusto.ItemIndex);

  PreencherCondicao;

  CAD_CD_R_ITE_PRC_CAT.Close;
  CAD_CD_R_ITE_PRC_CAT.Data :=
                  CAD_CD_R_ITE_PRC_CAT.DataRequest(VarArrayOf([1, '0']));


  if (not (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria')) and
     (not (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria (Em Colunas)')) then
    begin
      dmGeral.CAD_CD_R_ITE.Close;
      dmGeral.CAD_CD_R_ITE.Data :=
        dmGeral.CAD_CD_R_ITE.DataRequest(
          VarArrayOf([rAtivo,xCondGru,xCondFor,xCondNCM,xCondUnd,xCondLocRua,xCondTipoItem,rOrdenacao,rPerfil,
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsString,
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean,
            dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,rTipoSaldo,rCusto,'',precoPorFilial,corrPorGrupo]));
    end
  else
    begin
      dmGeral.CAD_CD_R_ITE.Close;
      dmGeral.CAD_CD_R_ITE.Data :=
        dmGeral.CAD_CD_R_ITE.DataRequest(
          VarArrayOf([rAtivo,xCondGru,xCondFor,xCondNCM,xCondUnd,xCondLocRua,xCondTipoItem,'11'{era 10},rPerfil,
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsString,
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean,
            dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,rTipoSaldo,rCusto,xCondCat,precoPorFilial,corrPorGrupo]));
    end;


  

  if not dmGeral.CAD_CD_R_ITE.IsEmpty then
    begin
      //CAD_FR_C_ITE_GER.Variables['CodigoItem'] := QuotedStr(cboxCodImp.Text);
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem Geral' then
        begin
          if (rPerfil = '') or ((rPerfil<>'') and (cbxPreco.Checked=false)) then
            begin
              dmgeral.BusPerfil(1,'%');
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_GER.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);

              CAD_FR_R_ITE_GER.Variables['prc_finan'] := false;
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean and
                dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean then
                begin
                  CAD_FR_R_ITE_GER.Variables['prc_finan'] := true;
                end;

              TestePreco(CAD_FR_R_ITE_GER,'memo8','memo9');
              fastreport := CAD_FR_R_ITE_GER;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_GER.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_GER.ShowReport();
            end
          else
            begin
              dmgeral.BusPerfil(0, rPerfil);
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_GER_PRF.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_GER_PRF.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_GER_PRF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_GER_PRF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_GER_PRF.Variables['Opcoes'] := QuotedStr(xOpcoes);
              TestePreco(CAD_FR_R_ITE_GER_PRF,'','');
              fastreport := CAD_FR_R_ITE_GER_PRF;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_GER_PRF.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_GER_PRF.ShowReport();
            end;
        end;
      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Fornecedor' then
        begin
          if (rPerfil = '') or ((rPerfil<>'') and (cbxPreco.Checked=false)) then
            begin
              dmgeral.BusPerfil(1,'%');
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_FOR.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_FOR.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);

              TfrxMemoView (CAD_FR_R_ITE_FOR.FindComponent('mmCamSaldo')).Visible := chbExibirSaldo.Checked;
              TfrxMemoView (CAD_FR_R_ITE_FOR.FindComponent('mmCabSaldo')).Visible := chbExibirSaldo.Checked;


              TestePreco(CAD_FR_R_ITE_FOR,'Memo8','Memo9');
              fastreport := CAD_FR_R_ITE_FOR;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_FOR.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_FOR.ShowReport();
            end
          else
            begin
              dmgeral.BusPerfil(0,rPerfil);
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_FOR_PRF.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_FOR_PRF.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_FOR_PRF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_FOR_PRF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_FOR_PRF.Variables['Opcoes'] := QuotedStr(xOpcoes);
              TestePreco(CAD_FR_R_ITE_FOR_PRF,'','');
              fastreport := CAD_FR_R_ITE_FOR_PRF;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_FOR_PRF.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_FOR_PRF.ShowReport();
            end;
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Grupo' then
        begin
          if (rPerfil = '') or ((rPerfil<>'') and (cbxPreco.Checked=false)) then
            begin
              dmgeral.BusPerfil(1,'%');
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_GRU.FindObject('imgEmpresa3'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_GRU.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_GRU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_GRU.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_GRU.Variables['Opcoes'] := QuotedStr(xOpcoes);


              TestePreco(CAD_FR_R_ITE_GRU,'Memo8','Memo9');
              fastreport := CAD_FR_R_ITE_GRU;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_GRU.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_GRU.ShowReport();
            end
          else
            begin
              dmgeral.BusPerfil(0, rPerfil);
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_GRU_PRF.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_GRU_PRF.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_GRU_PRF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_GRU_PRF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_GRU_PRF.Variables['Opcoes'] := QuotedStr(xOpcoes);
              TestePreco(CAD_FR_R_ITE_GRU_PRF,'','');
              fastreport := CAD_FR_R_ITE_GRU_PRF;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_GRU_PRF.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_GRU_PRF.ShowReport();
            end;
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por NCM' then
        begin
          if (rPerfil = '') or ((rPerfil<>'') and (cbxPreco.Checked=false)) then
            begin
              dmgeral.BusPerfil(1,'%');
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_NCM.FindObject('imgEmpresa4'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_NCM.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_NCM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_NCM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_NCM.Variables['Opcoes'] := QuotedStr(xOpcoes);

              TestePreco(CAD_FR_R_ITE_NCM,'Memo7','Memo8');
              fastreport := CAD_FR_R_ITE_NCM;

              Screen.Cursor := crHourGlass;
              try
                 CAD_FR_R_ITE_NCM.PrepareReport();
              finally
                 Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_NCM.ShowReport();
            end
          else
            begin
              dmgeral.BusPerfil(0, rPerfil);
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_NCM_PRF.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_NCM_PRF.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_NCM_PRF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_NCM_PRF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_NCM_PRF.Variables['Opcoes'] := QuotedStr(xOpcoes);
              TestePreco(CAD_FR_R_ITE_NCM_PRF,'','');
              fastreport := CAD_FR_R_ITE_NCM_PRF;

              Screen.Cursor := crHourGlass;
              try
                CAD_FR_R_ITE_NCM_PRF.PrepareReport();
              finally
                Screen.Cursor := crDefault;
              end;
              CAD_FR_R_ITE_NCM_PRF.ShowReport();
            end;
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Tipo do item' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_TPO.FindObject('imgEmpresa5'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_TPO.Name,xCodLme,xRevLme,nil);
          CAD_FR_R_ITE_TPO.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CAD_FR_R_ITE_TPO.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CAD_FR_R_ITE_TPO.Variables['Opcoes'] := QuotedStr(xOpcoes);

          TestePreco(CAD_FR_R_ITE_TPO,'Memo7','Memo8');

          Screen.Cursor := crHourGlass;
          try
            CAD_FR_R_ITE_TPO.PrepareReport();
          finally
            Screen.Cursor := crDefault;
          end;
          CAD_FR_R_ITE_TPO.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço' then
        begin
          if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) or
             ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
              (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean = true))  or
            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = true))  then
            BEGIN
              if cbbPerfil.Text = 'Todos' then
                begin
                  dmgeral.BusPerfil(1,'%');
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_FIN.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_FIN.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_ITE_PRC_FIN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_ITE_PRC_FIN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_ITE_PRC_FIN.Variables['Opcoes'] := QuotedStr(xOpcoes);

                  TestePreco(CAD_FR_R_ITE_PRC_FIN,'','');

                  Screen.Cursor := crHourGlass;
                  try
                    CAD_FR_R_ITE_PRC_FIN.PrepareReport();
                  finally
                    Screen.Cursor := crDefault;
                  end;
                  CAD_FR_R_ITE_PRC_FIN.ShowReport();
                end
              else
                begin
                  dmgeral.BusPerfil(0, rPerfil);
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_FIN2.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_FIN2.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_ITE_PRC_FIN2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_ITE_PRC_FIN2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_ITE_PRC_FIN2.Variables['Opcoes'] := QuotedStr(xOpcoes);

                  TestePreco(CAD_FR_R_ITE_PRC_FIN2,'','');

                  Screen.Cursor := crHourGlass;
                  try
                    CAD_FR_R_ITE_PRC_FIN2.PrepareReport();
                  finally
                    Screen.Cursor := crDefault;
                  end;
                  CAD_FR_R_ITE_PRC_FIN2.ShowReport();
                end;
            END
          ELSE
            BEGIN
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC.FindObject('imgEmpresa6'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

              indexPrc := 1;
              while (indexPrc < 7) do
                begin
                  CAD_FR_R_ITE_PRC.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr('');
                  CAD_FR_R_ITE_PRC.Variables['prc'+indexPrc.ToString(indexPrc)] := QuotedStr('');
                  indexPrc := indexPrc+1;
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_PRC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_PRC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_PRC.Variables['Opcoes'] := QuotedStr(xOpcoes);

              TestePreco(CAD_FR_R_ITE_PRC,'','');

              Screen.Cursor := crHourGlass;
               try
                 CAD_FR_R_ITE_PRC.PrepareReport();
               finally
                 Screen.Cursor := crDefault;
               end;
              CAD_FR_R_ITE_PRC.ShowReport();
            END;
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria' then
        begin
            if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_SER_CAT.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;


            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_SER_CAT.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_ITE_PRC_SER_CAT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_ITE_PRC_SER_CAT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_ITE_PRC_SER_CAT.Variables['Opcoes'] := QuotedStr(xOpcoes);
            TestePreco(CAD_FR_R_ITE_PRC_SER_CAT,'','');

            Screen.Cursor := crHourGlass;
             try
               CAD_FR_R_ITE_PRC_SER_CAT.PrepareReport();
             finally
               Screen.Cursor := crDefault;
             end;
            CAD_FR_R_ITE_PRC_SER_CAT.ShowReport();


        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria (Em Colunas)' then
        begin
            if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_SER_CAT2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;


            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_SER_CAT2.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_ITE_PRC_SER_CAT2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_ITE_PRC_SER_CAT2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_ITE_PRC_SER_CAT2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            TestePreco(CAD_FR_R_ITE_PRC_SER_CAT2,'','');
            fastreport := CAD_FR_R_ITE_PRC_SER_CAT2;
            Screen.Cursor := crHourGlass;
             try
               CAD_FR_R_ITE_PRC_SER_CAT2.PrepareReport();
             finally
               Screen.Cursor := crDefault;
             end;
            CAD_FR_R_ITE_PRC_SER_CAT2.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Avaliação de Preço' then
        begin
          if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) or
             ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
             (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean = true)) )  then
            BEGIN
              if cbbPerfil.Text = 'Todos' then
                begin
                  dmgeral.BusPerfil(1,'%');
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_FIN_AVP.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_FIN_AVP.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_ITE_PRC_FIN_AVP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_ITE_PRC_FIN_AVP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_ITE_PRC_FIN_AVP.Variables['Opcoes'] := QuotedStr(xOpcoes);

                  TestePreco(CAD_FR_R_ITE_PRC_FIN_AVP,'','');

                  Screen.Cursor := crHourGlass;
                  try
                    CAD_FR_R_ITE_PRC_FIN_AVP.PrepareReport();
                  finally
                   Screen.Cursor := crDefault;
                  end;

                  CAD_FR_R_ITE_PRC_FIN_AVP.ShowReport();
                end
              else
                begin
                  dmgeral.BusPerfil(0, rPerfil);
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_FIN2_AVP.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_FIN2_AVP.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_ITE_PRC_FIN2_AVP.Variables['Opcoes'] := QuotedStr(xOpcoes);

                  TestePreco(CAD_FR_R_ITE_PRC_FIN2_AVP,'','');

                  Screen.Cursor := crHourGlass;
                  try
                    CAD_FR_R_ITE_PRC_FIN2_AVP.PrepareReport();
                  finally
                    Screen.Cursor := crDefault;
                  end;
                  CAD_FR_R_ITE_PRC_FIN2_AVP.ShowReport();
                end;
            END
          ELSE
            BEGIN
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_ITE_PRC_AVP.FindObject('imgEmpresa6'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

              indexPrc := 1;
              while (indexPrc < 7) do
                begin
                  CAD_FR_R_ITE_PRC_AVP.Variables['cabPrc'+indexPrc.ToString(indexPrc)] := QuotedStr('');
                  CAD_FR_R_ITE_PRC_AVP.Variables['prc'+indexPrc.ToString(indexPrc)] := QuotedStr('');
                  indexPrc := indexPrc+1;
                end;
              dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ITE_PRC_AVP.Name,xCodLme,xRevLme,nil);
              CAD_FR_R_ITE_PRC_AVP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              CAD_FR_R_ITE_PRC_AVP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              CAD_FR_R_ITE_PRC_AVP.Variables['Opcoes'] := QuotedStr(xOpcoes);

              TestePreco(CAD_FR_R_ITE_PRC_AVP,'','');

              Screen.Cursor := crHourGlass;
              try
                 CAD_FR_R_ITE_PRC_AVP.PrepareReport();
              finally
                 Screen.Cursor := crDefault;
              end;

              CAD_FR_R_ITE_PRC_AVP.ShowReport();
            END;
        end;
    end
  else
    ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCAD_FM_R_ITE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_ITE);
end;

procedure TCAD_FM_R_ITE.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FAM_EMP.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
  dmGeral.BUS_CD_C_PEC_EMP.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  chbExibirSaldo.Visible := false;
  lblTipoSaldo.Visible := false;
  cbbTipoSaldo.Visible := false;
  lblCusto.Visible := false;
  cbbCusto.Visible := false;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=true) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true)) then
    begin
      chbExibirSaldo.Visible := true;
    end;


  lbxRelatorios.ItemIndex := 0;
  lbxRelatoriosClick(self);

  cdsCondPreco.CreateDataSet;
  CAD_CD_R_ITE_PRC_MNL.CreateDataSet;

  txtLocRua.Text := '';

  dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
  dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));

  dmGeral.CAD_CD_C_UND.Close;
  dmGeral.CAD_CD_C_UND.Data :=
  dmGeral.CAD_CD_C_UND.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.CAD_CD_C_UND.IsEmpty then
     begin
       dmGeral.CAD_CD_C_UND.First;
       while not dmGeral.CAD_CD_C_UND.eof do
          begin
            lboxUnd.Items.Add(GeraEspEsq(trim(dmGeral.CAD_CD_C_UND.FieldByName('ID_UNIDADE').AsString),3) +
                                    ' - ' + dmGeral.CAD_CD_C_UND.FieldByName('DESCRICAO').AsString);
            dmGeral.CAD_CD_C_UND.Next;
          end;
     end;
 dmGeral.CAD_CD_C_UND.Close;


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
     begin
      dmGeral.BUS_CD_C_PEC.Close;
      dmGeral.BUS_CD_C_PEC.Data :=
      dmGeral.BUS_CD_C_PEC.DataRequest(
          VarArrayOf([1, '%']));

      if not dmGeral.BUS_CD_C_PEC.IsEmpty then
       begin
        dmGeral.BUS_CD_C_PEC.First;
        while not dmGeral.BUS_CD_C_PEC.eof do
          begin
            cbbPerfil.Items.Add(StrZero(dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PEC.Next;
          end;
        cbbPerfil.ItemIndex := 0;
       end;
      dmGeral.BUS_CD_C_PEC.Close;

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = True) then
        begin
          cbbPerfil.Items.Add('Todos');
          cbbPerfil.ItemIndex := 0;
        end;

      lblPerfil.Visible := true;
      cbbPerfil.Visible := true;
    end;
    dmgeral.BusFamilia(1,'%');

    {dmGeral.BUS_CD_C_ITE_PRC.Close;
      dmGeral.BUS_CD_C_ITE_PRC.Data :=
      dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                   VarArrayOf(['','']));}

  lboxTipo.Items.Add('00 - Mercadoria para Revenda');
  lboxTipo.Items.Add('01 - Matéria Prima');
  lboxTipo.Items.Add('02 - Embalagem');
  lboxTipo.Items.Add('03 - Produto em Processo');
  lboxTipo.Items.Add('04 - Produto Acabado');
  lboxTipo.Items.Add('05 - Subproduto');
  lboxTipo.Items.Add('06 - Produto Intermediário');
  lboxTipo.Items.Add('07 - Material de Uso e Consumo');
  lboxTipo.Items.Add('08 - Ativo Imobilizado');
  lboxTipo.Items.Add('09 - Serviços');
  lboxTipo.Items.Add('10 - Outros Insumos');
  lboxTipo.Items.Add('99 - Outros Insumos');



  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = True) then
     begin
      dmGeral.BUS_CD_C_CAT.Close;
      dmGeral.BUS_CD_C_CAT.Data :=
      dmGeral.BUS_CD_C_CAT.DataRequest(
          VarArrayOf([1, '%']));

      if not dmGeral.BUS_CD_C_CAT.IsEmpty then
       begin
        dmGeral.BUS_CD_C_CAT.First;
        while not dmGeral.BUS_CD_C_CAT.eof do
          begin
            lboxCat.Items.Add(StrZero(dmGeral.BUS_CD_C_CAT.FieldByName('ID_CAT').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CAT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CAT.Next;
          end;

       end;
      dmGeral.BUS_CD_C_CAT.Close;
    end
  else
    begin
      tsCategoria.TabVisible := false;
    end;



end;

procedure TCAD_FM_R_ITE.lboxCatDblClick(Sender: TObject);
begin
  inherited;
  if lboxCat.ItemIndex > -1 then
     begin
       lboxCatSel.Items.Add(lboxCat.Items[lboxCat.ItemIndex]);
       lboxCat.Items.Delete(lboxCat.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lboxCatSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCatSel.ItemIndex > -1 then
     begin
       lboxCat.Items.Add(lboxCatSel.Items[lboxCatSel.ItemIndex]);
       lboxCatSel.Items.Delete(lboxCatSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lboxForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFor,6,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                    ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TCAD_FM_R_ITE.lboxGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
        PSQ_FM_X_GRU.ShowModal;
        if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxGru,8,PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) then
                begin
                  lboxGru.Items.Add(trim(PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) +
                                 ' - ' + PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_GRU.Free;
     end;
end;

procedure TCAD_FM_R_ITE.lboxNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_NCM := TPSQ_FM_X_NCM.Create(Self);
        PSQ_FM_X_NCM.ShowModal;
        if not PSQ_FM_X_NCM.BUS_CD_C_NCM.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxNCM,8,PSQ_FM_X_NCM.BUS_CD_C_NCM.FieldByName('ID_NCM').AsString) then
                begin
                  lboxNCM.Items.Add(StrZero(PSQ_FM_X_NCM.BUS_CD_C_NCM.FieldByName('ID_NCM').AsFloat,8,0) +
                                    ' - ' + PSQ_FM_X_NCM.BUS_CD_C_NCM.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_NCM.Free;
     end;
end;

procedure TCAD_FM_R_ITE.lboxTipoDblClick(Sender: TObject);
begin
  inherited;
   if lboxTipo.ItemIndex > -1 then
     begin
       lboxTipoSel.Items.Add(lboxTipo.Items[lboxTipo.ItemIndex]);
       lboxTipo.Items.Delete(lboxTipo.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lboxTipoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoSel.ItemIndex > -1 then
     begin
       lboxTipo.Items.Add(lboxTipoSel.Items[lboxTipoSel.ItemIndex]);
       lboxTipoSel.Items.Delete(lboxTipoSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lboxUndDblClick(Sender: TObject);
begin
  inherited;
  if lboxUnd.ItemIndex > -1 then
     begin
       lboxUndSel.Items.Add(lboxUnd.Items[lboxUnd.ItemIndex]);
       lboxUnd.Items.Delete(lboxUnd.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lboxUndSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxUndSel.ItemIndex > -1 then
     begin
       lboxUnd.Items.Add(lboxUndSel.Items[lboxUndSel.ItemIndex]);
       lboxUndSel.Items.Delete(lboxUndSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ITE.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  // EST_CD_L_ITE
  // parâmetros
       // 0 - ATIVO
       // 1 - GRUPO
       // 2 - FORNECEDOR
       // 3 - NCM
       // 4 - UND VENDA
       // 5 - LOCA_RUA
       // 6 - tipo
   {Input[7] = 0
          ' order by ite.id_item ';
   Input[7] = 1
          ' order by ite.id_grupo, ite.id_item ';
   Input[7] = 2
          ' order by ite.id_grupo, ite.descricao ';
   Input[7] = 3
          ' order by ite.id_fornecedor, ite.id_item ';
   Input[7] = 4
          ' order by ite.id_fornecedor, ite.descricao  ';
   Input[7] = 5
          ' order by ite.id_ncm, ite.id_item  ';
   Input[7] = 6
          ' order by ite.id_ncm, ite.descricao  ';
   Input[7] = 7
          ' order by gru.tipo, ite.id_item  ';
   Input[7] = 8
          ' order by gru.tipo, ite.descricao  ';
   Input[7] = 9
          ' order by ite.descricao  '; }
   chbExibirSaldo.Visible := false;
   lblTipoSaldo.Visible := false;
   cbbTipoSaldo.Visible := false;

   chbExibirCusto.Visible := true;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem Geral' then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('0 - Código do item');
        cboxOrdenacao.Items.Add('9 - Descrição do item');
      end;
   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Fornecedor' then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('3 - Cód. do fornecedor/Cód. do item');
        cboxOrdenacao.Items.Add('4 - Cód. do fornecedor/Descrição do item');

        if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True) or
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = True)) then
           begin
              chbExibirSaldo.Visible := true;
              if chbExibirSaldo.Checked then
                begin
                  lblTipoSaldo.Visible := true;
                  cbbTipoSaldo.Visible := true;
                end;
           end;

      end;
   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Grupo' then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('1 - Cód. do grupo/Cód. do item');
        cboxOrdenacao.Items.Add('2 - Cód. do grupo/Descrição do item');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por NCM' then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('5 - Cód. do NCM/Cód. do item');
        cboxOrdenacao.Items.Add('6 - Cód. do NCM/Descrição do item');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Tipo do item' then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('7 - Tipo item/Cód. do item');
        cboxOrdenacao.Items.Add('8 - Tipo item/Descrição do item');
      end;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço') {or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria')} then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('1 - Cód. do grupo/Cód. do item');
        cboxOrdenacao.Items.Add('2 - Cód. do grupo/Descrição do item');

        if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
            (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
            (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True) or
            (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = True)) then
           begin
              chbExibirSaldo.Visible := true;
              if chbExibirSaldo.Checked then
                begin
                  lblTipoSaldo.Visible := true;
                  cbbTipoSaldo.Visible := true;
                end;
           end;
      end;

  if  (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço por Categoria') then
      begin
        cboxOrdenacao.Items.Clear;
        cboxOrdenacao.Items.Add('1 - Cód. do grupo/Cód. do item');
        cboxOrdenacao.Items.Add('2 - Cód. do grupo/Descrição do item');

        chbExibirSaldo.Visible := false;
        chbExibirCusto.Visible := false;

        chbExibirSaldoClick(self);
        chbExibirCustoClick(self);
      end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Avaliação de Preço' then
    begin
      if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
          (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
          (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True) or
          (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').ASBoolean = True)) then
        begin
          chbExibirSaldo.Visible := true;
          if chbExibirSaldo.Checked then
            begin
              lblTipoSaldo.Visible := true;
              cbbTipoSaldo.Visible := true;
            end;
        end;
    end;
  cboxOrdenacao.ItemIndex := 0;
end;

procedure TCAD_FM_R_ITE.MenuItem1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxUnd.ClearSelection;

  if lboxUnd.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxUnd.Items.Count > 0 then
     begin
       for i := 0 to lboxUnd.Items.Count - 1 do
           begin
             lboxUndSel.Items.Add(lboxUnd.Items[i]);
             lboxUnd.Items.Delete(lboxUnd.ItemIndex);
           end;
       lboxUnd.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.btnSelCategoriaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxCat.ClearSelection;

  if lboxCat.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCat.Items.Count > 0 then
     begin
       for i := 0 to lboxCat.Items.Count - 1 do
           begin
             lboxCatSel.Items.Add(lboxCat.Items[i]);
             lboxCat.Items.Delete(lboxCat.ItemIndex);
           end;
       lboxCat.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ITE.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesGrupo,opcoesFornecedor,opcoesNCM,opcoesUnidades,opcoesTiposItem,opcoesCat:string;
begin
  // Grupos de Estoque ---------------------------------------------------------
  xCondGru := '';
  if lboxGru.Count > 0 then
     begin
       for i := 0 to lboxGru.Count - 1 do
          begin
            if xCondGru <> '' then
               begin
                 xCondGru :=
                 xCondGru + ',' +trim(copy(lboxGru.Items[i],1,pos(' - ',lboxGru.Items[i])-1));
                 opcoesGrupo :=
                 opcoesGrupo +'                             '+lboxGru.Items[i] + #13+#10;
               end;
            if xCondGru = '' then
               begin
                 xCondGru :=
                 xCondGru +trim(copy(lboxGru.Items[i],1,pos(' - ',lboxGru.Items[i])-1));
                 opcoesGrupo :=
                 opcoesGrupo + lboxGru.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesGrupo := 'Todos';
    end;
    // Fornecedores ------------------------------------------------------------
  xCondFor := '';
  if lboxFor.Count > 0 then
     begin
       for i := 0 to lboxFor.Count - 1 do
          begin
            if xCondFor <> '' then
               begin
                 xCondFor :=
                 xCondFor + ',' +''''+trim(copy(lboxFor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                             '+lboxFor.Items[i] + #13+#10;
               end;
            if xCondFor = '' then
               begin
                 xCondFor :=
                 xCondFor +''''+trim(copy(lboxFor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lboxFor.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesFornecedor := 'Todos';
    end;
     // NCM --------------------------------------------------------------------
  xCondNCM := '';
  if lboxNCM.Count > 0 then
     begin
       for i := 0 to lboxNCM.Count - 1 do
          begin
            if xCondNCM <> '' then
               begin
                 xCondNCM :=
                 xCondNCM + ',' +''''+trim(copy(lboxNCM.Items[i],1,8))+'''';
                 opcoesNCM :=
                 opcoesNCM +'                             '+lboxNCM.Items[i] + #13+#10;
               end;
            if xCondNCM = '' then
               begin
                 xCondNCM :=
                 xCondNCM +''''+ trim(copy(lboxNCM.Items[i],1,8))+'''';
                 opcoesNCM :=
                 opcoesNCM + lboxNCM.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesNCM := 'Todos';
    end;

  xCondLocRua := '';
  if trim(txtLocRua.text) <> '' then
     begin
       xCondLocRua := QuotedStr(txtLocRua.text)
     end;
   // Unidades -----------------------------------------------------------------
  xCondUnd := '';
  if lboxUndSel.Count > 0 then
     begin
      if lboxUnd.Count > 0 then
        begin
          for i := 0 to lboxUndSel.Count - 1 do
            begin
              if xCondUnd <> '' then
               begin
                 xCondUnd :=
                 xCondUnd + ',' +''''+ trim(copy(lboxUndSel.Items[i],1,3))+'''';
                 opcoesUnidades :=
                 opcoesUnidades +'                            '+lboxUndSel.Items[i] + #13+#10;
               end;
              if xCondUnd = '' then
               begin
                 xCondUnd :=
                 xCondUnd +''''+ trim(copy(lboxUndSel.Items[i],1,3))+'''';
                 opcoesUnidades :=
                 opcoesUnidades + lboxUndSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesUnidades := 'Todos';
      End;
     end
  else
    begin
      opcoesUnidades := 'Todos';
    end;


   // Tipos de item -----------------------------------------------------------------
  xCondTipoItem := '';
  if lboxTipoSel.Count > 0 then
     begin
      if lboxTipo.Count > 0 then
        begin
          for i := 0 to lboxTipoSel.Count - 1 do
            begin
              if xCondTipoItem <> '' then
               begin
                 xCondTipoItem :=
                 xCondTipoItem + ',' +''''+ trim(copy(lboxTipoSel.Items[i],1,2))+'''';
                 opcoesTiposItem :=
                 opcoesTiposItem +'                            '+lboxTipoSel.Items[i] + #13+#10;
               end;
              if xCondTipoItem = '' then
               begin
                 xCondTipoItem :=
                 xCondTipoItem +''''+ trim(copy(lboxTipoSel.Items[i],1,2))+'''';
                 opcoesTiposItem :=
                 opcoesTiposItem + lboxTipoSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesTiposItem := 'Todos';
      End;
     end
  else
    begin
      opcoesTiposItem := 'Todos';
    end;


  // Categoria -----------------------------------------------------------------
  xCondCat := '';
  if lboxCatSel.Count > 0 then
     begin
      if lboxCat.Count > 0 then
        begin
          for i := 0 to lboxCatSel.Count - 1 do
            begin
              if xCondCat <> '' then
               begin
                 xCondCat :=
                 xCondCat + ',' +''''+ trim(copy(lboxCatSel.Items[i],1,6))+'''';
                 opcoesCat :=
                 opcoesCat +'                            '+lboxCatSel.Items[i] + #13+#10;
               end;
              if xCondCat = '' then
               begin
                 xCondCat :=
                 xCondCat +''''+ trim(copy(lboxCatSel.Items[i],1,6))+'''';
                 opcoesCat :=
                 opcoesCat + lboxCatSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesCat := 'Todos';
      End;
     end
  else
    begin
      opcoesCat := 'Todos';
    end;



  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Código a imprimir..........: ' + cboxCodImp.Text + #13+#10;
   xOpcoes := xOpcoes + 'Situação do item...........: ' + cboxSituacaoItem.Text + #13+#10;
   xOpcoes := xOpcoes + 'Localização rua............: ' + txtLocRua.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação..................: ' + cboxOrdenacao.Text + #13+#10;

   if cbxPreco.Checked then
     begin
       xOpcoes := xOpcoes + 'Exibir Preço...............: Sim '+ #13+#10;
     end
   else
     begin
       xOpcoes := xOpcoes + 'Exibir Preço...............: Não '+ #13+#10;
     end;

   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
      begin
        if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem por Fornecedor') or
           (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Preço') then
           begin
             if chbExibirSaldo.Checked then
               begin
                  xOpcoes := xOpcoes + 'Exibir Saldo...............: ' + cbbTipoSaldo.Text + #13+#10;
               end
             else
               begin
                  xOpcoes := xOpcoes + 'Exibir Saldo...............: Nenhum '+ #13+#10;
               end;
           end;
        xOpcoes := xOpcoes + 'Perfil.....................: ' + cbbPerfil.Text + #13+#10;

      end;
   xOpcoes := xOpcoes + 'Grupo de Estoque...........: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor.................: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'NCM........................: ' + opcoesNCM+#13+#10;
   xOpcoes := xOpcoes + 'Unidades...................: ' + opcoesUnidades+#13+#10;
   xOpcoes := xOpcoes + 'Tipo do item...............: ' + opcoesTiposItem + #13+#10;
   xOpcoes := xOpcoes + 'Categoria..................: ' + opcoesCat+ #13+#10;
end;

procedure TCAD_FM_R_ITE.Retirarregistro1Click(Sender: TObject);
begin
  inherited;
  if lboxGru.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxGru.DeleteSelected;
end;


procedure TCAD_FM_R_ITE.TestePreco(fastreport: TfrxReport; memoa, memob: string);
var
memo1, memo2, memo3, memo4: TfrxmemoView;
child,child2: TfrxChild;
masterData: TfrxMasterData;
mmCabPrc,mmPrc: TfrxmemoView;
indexPrc:integer;
begin
  if (fastreport.Name <> 'CAD_FR_R_ITE_PRC') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_CAT') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_fin') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_FIN_CAT') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_FIN2') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_FIN2_CAT') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_AVP') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_FIN_AVP') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_FIN2_AVP') and
      (fastreport.Name <> 'CAD_FR_R_ITE_GER_PRF') and
      (fastreport.Name <> 'CAD_FR_R_ITE_FOR_PRF') and
      (fastreport.Name <> 'CAD_FR_R_ITE_GRU_PRF') and
      (fastreport.Name <> 'CAD_FR_R_ITE_NCM_PRF') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_SER_CAT') and
      (fastreport.Name <> 'CAD_FR_R_ITE_PRC_SER_CAT2') then
      begin
        if cbxPreco.Checked then
           begin
             if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) then
                 begin
                   memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
                   memo1.Visible := True;
                   memo2 := TfrxMemoView (fastreport.FindComponent(memob));
                   memo2.Visible := True;
                   memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
                   memo3.Visible := True;
                   memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
                   memo4.Visible := True;
                   child := TfrxChild (fastreport.FindComponent('ChildCondPreco'));
                   child.Visible := False;
                   child2 := TfrxChild (fastreport.FindComponent('ChildPrecoFinan'));
                   child2.Visible := False;
                   TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
                   TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := false;
                 end;

             if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
                 begin
                   memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
                   memo1.Visible := False;
                   memo2 := TfrxMemoView (fastreport.FindComponent(memob));
                   memo2.Visible := False;
                   memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
                   memo3.Visible := False;
                   memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
                   memo4.Visible := False;
                   child := TfrxChild (fastreport.FindComponent('ChildCondPreco'));
                   child.Visible := True;
                   child2 := TfrxChild (fastreport.FindComponent('ChildPrecoFinan'));
                   child2.Visible := False;
                   TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
                   TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := false;
                   masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
                   masterData.Child := child;
                 end;
             if  (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True) or
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = True) and
                  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = True)))  then
                 begin
                   memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
                   memo1.Visible := False;
                   memo2 := TfrxMemoView (fastreport.FindComponent(memob));
                   memo2.Visible := False;
                   memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
                   memo3.Visible := False;
                   memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
                   memo4.Visible := False;
                   child := TfrxChild (fastreport.FindComponent('ChildCondPreco'));
                   child.Visible := False;
                   {TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
                   child2 := TfrxChild (fastreport.FindComponent('ChildPrecoFinan'));
                   child2.Visible := True;}

                   TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
                   child2 := TfrxChild (fastreport.FindComponent('ChildPrecoManual'));
                   child2.Visible := true;
                   TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := false;
                   masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
                   masterData.Child := child2;
                 end;


           if  ((fastreport.Name='CAD_FR_R_ITE_GER') or (fastreport.Name='CAD_FR_R_ITE_FOR') or
                (fastreport.Name='CAD_FR_R_ITE_GRU') or (fastreport.Name='CAD_FR_R_ITE_NCM')) then
               begin
                 if ((xCondTipoItem='''09''') and
                     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean=true)) then
                    begin
                      TfrxMemoView (fastreport.FindComponent(memoa)).Visible := False;
                      TfrxMemoView (fastreport.FindComponent(memob)).Visible := False;
                      TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista')).Visible := False;
                      TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo')).Visible := False;

                      TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible := False;
                      TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := False;
                      TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
                      TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := true;
                      TfrxMasterData(fastreport.FindComponent('MasterData1')).Child :=
                              TfrxChild (fastreport.FindComponent('ChildPrecoCat'));
                    end;
              end;

               { if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                   (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = True) then
                  begin
                   memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
                   memo1.Visible := False;
                   memo2 := TfrxMemoView (fastreport.FindComponent(memob));
                   memo2.Visible := False;
                   memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
                   memo3.Visible := False;
                   memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
                   memo4.Visible := False;
                   TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible := false;

                   TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
                   child := TfrxChild (fastreport.FindComponent('ChildPrecoManual'));
                   child.Visible := True;

                   masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
                   masterData.Child := child;
                 end; }

           end
       else
         begin
           memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
           memo1.Visible := False;
           memo2 := TfrxMemoView (fastreport.FindComponent(memob));
           memo2.Visible := False;
           memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
           memo3.Visible := False;
           memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
           memo4.Visible := False;
           TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible := false;
           TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
           TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
           TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := false;
        end;
      // TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible := false;

      if (chbExibirCusto.Visible=true) and (chbExibirCusto.Checked=true) then
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := True;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := True;
          end
       else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := False;
          end;
       { VisChildCondPreco :=  TfrxChild (fastreport.FindComponent('ChildCondPreco')).Visible;
        VisChildPrecoFinan :=  TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible;
        VisChildPrecoManual :=  TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible;
        VisChildPrecoCat :=  TfrxChild (fastreport.FindComponent('ChildPrecoCat')).Visible;
        childPreco := TfrxMasterData(fastreport.FindComponent('MasterData1')).Child;  }
     end;

   if (fastreport.Name = 'CAD_FR_R_ITE_PRC') or (fastreport.Name = 'CAD_FR_R_ITE_PRC_AVP') or
      (fastreport.Name = 'CAD_FR_R_ITE_PRC_CAT') then
     begin
        indexPrc := 1;
       if cbxPreco.Checked then
         begin
            while (indexPrc <7) do
             begin
               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := True;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := True;

               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := True;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := True;

               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := True;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := True;

               indexPrc := indexPrc +1;
             end;

         end
       else
         begin
            while (indexPrc <7) do
             begin
               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := False;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := False;

               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := False;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := False;

               mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmCabPrc'+indexPrc.ToString(indexPrc)));
               mmCabPrc.Visible := False;
               mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmPrc'+indexPrc.ToString(indexPrc)));
               mmPrc.Visible := False;

               indexPrc := indexPrc +1;
             end;

            if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) or
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = true) or
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true) or
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = true))  and
               (chbExibirSaldo.Checked = true) then
               begin
                  mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmCabPrc1'));
                  mmCabPrc.Visible := True;
                  mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC.FindComponent('mmPrc1'));
                  mmPrc.Visible := True;

                  mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmCabPrc1'));
                  mmCabPrc.Visible := True;
                  mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_AVP.FindComponent('mmPrc1'));
                  mmPrc.Visible := True;

                  mmCabPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmCabPrc1'));
                  mmCabPrc.Visible := True;
                  mmPrc := TfrxMemoView (CAD_FR_R_ITE_PRC_CAT.FindComponent('mmPrc1'));
                  mmPrc.Visible := True;
               end;
         end;

       if (chbExibirCusto.Visible=true) and (chbExibirCusto.Checked=true) then
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := True;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := True;
          end
       else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := False;
          end;
     end;

    if (fastreport.Name = 'CAD_FR_R_ITE_PRC_fin') or (fastreport.Name = 'CAD_FR_R_ITE_PRC_FIN_AVP') or
      (fastreport.Name = 'CAD_FR_R_ITE_PRC_FIN_CAT')then
     begin
        if cbxPreco.Checked then
         begin
           {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = true) then
              begin
                 TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
                 child := TfrxChild (fastreport.FindComponent('ChildPrecoManual'));
                 child.Visible := true;
                 masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
                 masterData.Child := child;
              end
           else
              begin
                 TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
                 child := TfrxChild (fastreport.FindComponent('ChildPrecoFinan'));
                 child.Visible := true;
                 masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
                 masterData.Child := child;
              end; }

           TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
           child := TfrxChild (fastreport.FindComponent('ChildPrecoManual'));
           child.Visible := true;
           masterData := TfrxMasterData(fastreport.FindComponent('MasterData1'));
           masterData.Child := child;
         end
        else
          begin
            TfrxChild (fastreport.FindComponent('ChildPrecoFinan')).Visible := false;
            TfrxChild (fastreport.FindComponent('ChildPrecoManual')).Visible := false;
          end;

        if chbExibirSaldo.Checked then
         begin
           memo2 := TfrxMemoView (fastreport.FindComponent('mmSaldo'));
           memo2.Visible := True;
           memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEint_saldo'));
           memo3.Visible := True;
         end
        else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmSaldo'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEint_saldo'));
            memo3.Visible := False;
          end;

       if (chbExibirCusto.Visible=true) and (chbExibirCusto.Checked=true) then
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := True;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := True;
          end
       else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := False;
          end;
     end;


    if (fastreport.Name = 'CAD_FR_R_ITE_PRC_FIN2') OR
       (fastreport.Name = 'CAD_FR_R_ITE_PRC_FIN2_AVP') OR
       (fastreport.Name = 'CAD_FR_R_ITE_PRC_FIN2_CAT') OR
       (fastreport.Name = 'CAD_FR_R_ITE_GER_PRF') OR
       (fastreport.Name = 'CAD_FR_R_ITE_FOR_PRF') OR
       (fastreport.Name = 'CAD_FR_R_ITE_GRU_PRF') OR
       (fastreport.Name = 'CAD_FR_R_ITE_NCM_PRF') then
     begin
       indexPrc := 1;
       if  cbxPreco.Checked then
           begin
              while (indexPrc <7) do
               begin
                 mmCabPrc := TfrxMemoView (fastreport.FindComponent('cab'+indexPrc.ToString(indexPrc)));
                 mmCabPrc.Visible := True;
                 mmPrc := TfrxMemoView (fastreport.FindComponent('camp'+indexPrc.ToString(indexPrc)));
                 mmPrc.Visible := True;
                 indexPrc := indexPrc +1;
               end;

           end
         else
           begin
              while (indexPrc <7) do
               begin
                 mmCabPrc := TfrxMemoView (fastreport.FindComponent('cab'+indexPrc.ToString(indexPrc)));
                 mmCabPrc.Visible := False;
                 mmPrc := TfrxMemoView (fastreport.FindComponent('camp'+indexPrc.ToString(indexPrc)));
                 mmPrc.Visible := False;
                 indexPrc := indexPrc +1;
               end;
           END;

        if (chbExibirSaldo.Visible=true) and (chbExibirSaldo.Checked=true) then
         begin
           memo2 := TfrxMemoView (fastreport.FindComponent('capSaldo'));
           memo2.Visible := True;
           memo3 := TfrxMemoView (fastreport.FindComponent('campSaldo'));
           memo3.Visible := True;
         end
        else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('capSaldo'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('campSaldo'));
            memo3.Visible := False;
          end;

       if (chbExibirCusto.Visible=true) and (chbExibirCusto.Checked=true) then
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := True;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := True;
          end
       else
          begin
            memo2 := TfrxMemoView (fastreport.FindComponent('mmlblCusto'));
            memo2.Visible := False;
            memo3 := TfrxMemoView (fastreport.FindComponent('mmCusto'));
            memo3.Visible := False;
          end;
     end;

   if (fastreport.Name = 'CAD_FR_R_ITE_PRC_SER_CAT') then
     begin
       TfrxChild (fastreport.FindComponent('ChildPreco')).Visible := cbxPreco.Checked;
     end;

   if (fastreport.Name = 'CAD_FR_R_ITE_PRC_SER_CAT2') then
     begin
       TfrxMemoView (fastreport.FindComponent('mmCat1')).Visible := cbxPreco.Checked;
       TfrxMemoView (fastreport.FindComponent('mmCat2')).Visible := cbxPreco.Checked;
       TfrxMemoView (fastreport.FindComponent('mmCat3')).Visible := cbxPreco.Checked;

       TfrxMemoView (fastreport.FindComponent('mmPrc1')).Visible := cbxPreco.Checked;
       TfrxMemoView (fastreport.FindComponent('mmPrc2')).Visible := cbxPreco.Checked;
       TfrxMemoView (fastreport.FindComponent('mmPrc3')).Visible := cbxPreco.Checked;
     end;
end;

{procedure TCAD_FM_R_ITE.TestePreco(fastreport: TfrxReport; memoa, memob: string);
var
memo1, memo2, memo3, memo4: TfrxmemoView;
begin
  if cbxPreco.Checked then
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := True;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := True;
      memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
      memo3.Visible := True;
      memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
      memo4.Visible := True;
    end
  else
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := False;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := False;
      memo3 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_aprazo'));
      memo3.Visible := False;
      memo4 := TfrxMemoView (fastreport.FindComponent('CAD_DB_R_ITEprc_avista'));
      memo4.Visible := False;
    end;
end;  }

end.


