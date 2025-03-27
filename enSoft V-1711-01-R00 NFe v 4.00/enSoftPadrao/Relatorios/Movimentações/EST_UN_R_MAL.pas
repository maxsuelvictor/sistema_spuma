unit EST_UN_R_MAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_MAL = class(TPAD_FM_X_REL)
    Label1: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label2: TLabel;
    PageControl1: TPageControl;
    tsAlmoxarifado: TTabSheet;
    tsTipoEstoque: TTabSheet;
    tsSetor: TTabSheet;
    tsResponsavel: TTabSheet;
    tsCCusto: TTabSheet;
    tsEquip: TTabSheet;
    lboxAlmDisp: TListBox;
    lboxAlmSel: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    lboxTmeDisp: TListBox;
    lboxTmeSel: TListBox;
    Label5: TLabel;
    Label6: TLabel;
    lboxCustoDisp: TListBox;
    lboxCustoSel: TListBox;
    Label7: TLabel;
    Label8: TLabel;
    lboxSetorDisp: TListBox;
    lboxSetorSel: TListBox;
    Label9: TLabel;
    Label10: TLabel;
    lboxEquipSel: TListBox;
    Label11: TLabel;
    lboxRespSel: TListBox;
    Label12: TLabel;
    pmExcluirAlm: TPopupMenu;
    btnExcluirAlm: TMenuItem;
    pmExcluirTme: TPopupMenu;
    btnExcluirTme: TMenuItem;
    pmExcluirCusto: TPopupMenu;
    btnExcluirCusto: TMenuItem;
    pmExcluirResp: TPopupMenu;
    btnExcluirResp: TMenuItem;
    pmExcluirEquip: TPopupMenu;
    btnExcluirEquip: TMenuItem;
    pmSelAlm: TPopupMenu;
    btnSelAlm: TMenuItem;
    pmSelCusto: TPopupMenu;
    btnSelCusto: TMenuItem;
    pmSelTme: TPopupMenu;
    btnSelTme: TMenuItem;
    pmSelSetor: TPopupMenu;
    btnSelSetor: TMenuItem;
    pmExcluirSetor: TPopupMenu;
    btnExcluirSetor: TMenuItem;
    EST_XL_R_MOV: TfrxXLSExport;
    EST_PD_R_MOV: TfrxPDFExport;
    EST_DB_R_MAL: TfrxDBDataset;
    EST_FR_R_MAL_ALM: TfrxReport;
    EST_CD_R_MAL: TClientDataSet;
    tsEmpresa: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    Label13: TLabel;
    Label14: TLabel;
    pmExcluirEmp: TPopupMenu;
    btnExcluirEmp: TMenuItem;
    pmSelEmp: TPopupMenu;
    btnSelEmp: TMenuItem;
    EST_FR_R_MAL_CCU: TfrxReport;
    EST_FR_R_MAL_GER: TfrxReport;
    tsGrupo: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    lboxGruposSelecionados: TListBox;
    lboxGruposDisponiveis: TListBox;
    pmSelGrupoItem: TPopupMenu;
    MenuItemGruposItens: TMenuItem;
    pmRemoverTodosGrupos: TPopupMenu;
    btnRemoverTodosGrupos: TMenuItem;
    CTC_DB_R_OBR_CRG: TfrxDBDataset;
    CTC_DB_R_OBR_EQP: TfrxDBDataset;
    CTC_CD_R_OBR_CRG: TClientDataSet;
    CTC_CD_R_OBR_EQP: TClientDataSet;
    CTC_CD_R_OBR_CRGint_nomteobr: TWideStringField;
    CTC_CD_R_OBR_CRGid_obra: TIntegerField;
    CTC_CD_R_OBR_CRGid_cargo: TIntegerField;
    CTC_CD_R_OBR_CRGqtde_func: TIntegerField;
    CTC_CD_R_OBR_CRGvalor: TFMTBCDField;
    CTC_CD_R_OBR_CRGint_nomecrg: TWideStringField;
    CTC_CD_R_OBR_EQPid_obra: TIntegerField;
    CTC_CD_R_OBR_EQPid_obra_seq: TIntegerField;
    CTC_CD_R_OBR_EQPid_meq: TIntegerField;
    CTC_CD_R_OBR_EQPvalor: TFMTBCDField;
    CTC_CD_R_OBR_EQPint_nomeeqp: TWideStringField;
    EST_FR_R_MAL_ALM_2: TfrxReport;
    CTC_CD_R_OBR_EQPint_nomteobr: TWideStringField;
    CTC_CD_R_OBR_ITE: TClientDataSet;
    CTC_CD_R_OBR: TClientDataSet;
    CTC_CD_R_OBRid_obra: TIntegerField;
    CTC_CD_R_OBRid_cliente: TIntegerField;
    CTC_CD_R_OBRdescricao: TWideStringField;
    CTC_CD_R_OBRativo: TBooleanField;
    CTC_CD_R_OBRendereco: TWideStringField;
    CTC_CD_R_OBRid_cidade: TWideStringField;
    CTC_CD_R_OBRcep: TWideStringField;
    CTC_CD_R_OBRtel_fixo: TWideStringField;
    CTC_CD_R_OBRfax: TWideStringField;
    CTC_CD_R_OBRobs: TWideStringField;
    CTC_CD_R_OBRdta_entrega: TDateField;
    CTC_CD_R_OBRcod_lme: TWideStringField;
    CTC_CD_R_OBRrev_lme: TWideStringField;
    CTC_CD_R_OBRid_tpr: TIntegerField;
    CTC_CD_R_OBR_EQPdta_ini_contrato: TDateField;
    CTC_CD_R_OBR_EQPdta_fim_contrato: TDateField;
    CTC_CD_R_OBR_EQPobs: TWideStringField;
    CTC_CD_R_OBR_CRGdta_ini_contrato: TDateField;
    CTC_CD_R_OBR_CRGdta_fim_contrato: TDateField;
    CTC_CD_R_OBR_CRGobs: TWideStringField;
    CTC_CD_R_OBR_CRGid_obra_crg: TIntegerField;
    CTC_CD_R_OBR_ITEint_nomteobr: TWideStringField;
    CTC_CD_R_OBR_ITEid_obra: TIntegerField;
    CTC_CD_R_OBR_ITEid_obra_ite: TIntegerField;
    CTC_CD_R_OBR_ITEid_item: TIntegerField;
    CTC_CD_R_OBR_ITEdta_ini_contrato: TDateField;
    CTC_CD_R_OBR_ITEdta_fim_contrato: TDateField;
    CTC_CD_R_OBR_ITEobs: TWideStringField;
    CTC_CD_R_OBR_ITEvalor: TFMTBCDField;
    CTC_CD_R_OBR_ITEint_nomeite: TWideStringField;
    CTC_CD_R_OBR_ITEint_undvenda: TWideStringField;
    CTC_DB_R_OBR: TfrxDBDataset;
    CTC_DB_R_OBR_ITE: TfrxDBDataset;
    EST_FR_R_MAL_MEQ: TfrxReport;
    EST_FR_R_MAL_CCU_2: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEquipSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxRespSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxAlmDispDblClick(Sender: TObject);
    procedure lboxAlmSelDblClick(Sender: TObject);
    procedure lboxTmeSelDblClick(Sender: TObject);
    procedure lboxSetorSelDblClick(Sender: TObject);
    procedure lboxCustoSelDblClick(Sender: TObject);
    procedure lboxTmeDispDblClick(Sender: TObject);
    procedure lboxSetorDispDblClick(Sender: TObject);
    procedure lboxCustoDispDblClick(Sender: TObject);
    procedure btnExcluirAlmClick(Sender: TObject);
    procedure btnSelAlmClick(Sender: TObject);
    procedure btnSelCustoClick(Sender: TObject);
    procedure btnSelTmeClick(Sender: TObject);
    procedure btnSelSetorClick(Sender: TObject);
    procedure btnExcluirSetorClick(Sender: TObject);
    procedure btnExcluirCustoClick(Sender: TObject);
    procedure btnExcluirTmeClick(Sender: TObject);
    procedure btnExcluirEquipClick(Sender: TObject);
    procedure btnExcluirRespClick(Sender: TObject);
    procedure btnExcluirEmpClick(Sender: TObject);
    procedure btnSelEmpClick(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGruposSelecionadosDblClick(Sender: TObject);
    procedure MenuItemGruposItensClick(Sender: TObject);
    procedure btnRemoverTodosGruposClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function VerificarCampos:Boolean;
    var
      xFiltroSel_CabecalhoSup: String;
      xCondEmp,xCondAlmoxarifado,xCondTipoEstoque,xCondSetor,xCondResp,xCondEquip,
      xCondCentroCusto,xOpcoes,xCondGrupoItem:string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_MAL: TEST_FM_R_MAL;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_MEQ, PSQ_UN_X_FUN, enConstantes;



procedure TEST_FM_R_MAL.btnExcluirAlmClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxAlmSel.ClearSelection;

  if lboxAlmSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxAlmSel.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmSel.Items.Count - 1 do
           begin
             lboxAlmDisp.Items.Add(lboxAlmSel.Items[i]);
             lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
           end;
       lboxAlmSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnExcluirCustoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxCustoSel.ClearSelection;

  if lboxCustoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCustoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCustoSel.Items.Count - 1 do
           begin
             lboxCustoDisp.Items.Add(lboxCustoSel.Items[i]);
             lboxCustoSel.Items.Delete(lboxCustoSel.ItemIndex);
           end;
       lboxCustoSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnExcluirEmpClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpSel.ClearSelection;

  if lboxEmpSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpSel.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Items.Count - 1 do
           begin
             lboxEmpDisp.Items.Add(lboxEmpSel.Items[i]);
             lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
           end;
       lboxEmpSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnExcluirEquipClick(Sender: TObject);
begin
  inherited;
  if lboxEquipSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxEquipSel.DeleteSelected;
end;

procedure TEST_FM_R_MAL.btnExcluirRespClick(Sender: TObject);
begin
  inherited;
  if lboxRespSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxRespSel.DeleteSelected;
end;

procedure TEST_FM_R_MAL.btnExcluirSetorClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxSetorSel.ClearSelection;

  if lboxSetorSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSetorSel.Items.Count > 0 then
     begin
       for i := 0 to lboxSetorSel.Items.Count - 1 do
           begin
             lboxSetorDisp.Items.Add(lboxSetorSel.Items[i]);
             lboxSetorSel.Items.Delete(lboxSetorSel.ItemIndex);
           end;
       lboxSetorSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnExcluirTmeClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTmeSel.ClearSelection;

  if lboxTmeSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTmeSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTmeSel.Items.Count - 1 do
           begin
             lboxTmeDisp.Items.Add(lboxTmeSel.Items[i]);
             lboxTmeSel.Items.Delete(lboxTmeSel.ItemIndex);
           end;
       lboxTmeSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if VerificarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TEST_FM_R_MAL.btnRemoverTodosGruposClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGruposSelecionados.ClearSelection;
  if lboxGruposSelecionados.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruposSelecionados.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposSelecionados.Items.Count - 1 do
           begin
             lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[i]);
             lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
           end;
       lboxGruposSelecionados.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnSelAlmClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxAlmDisp.ClearSelection;

  if lboxAlmDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxAlmDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmDisp.Items.Count - 1 do
           begin
             lboxAlmSel.Items.Add(lboxAlmDisp.Items[i]);
             lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
           end;
       lboxAlmDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnSelCustoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCustoDisp.ClearSelection;

  if lboxCustoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxCustoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCustoDisp.Items.Count - 1 do
           begin
             lboxCustoSel.Items.Add(lboxCustoDisp.Items[i]);
             lboxCustoDisp.Items.Delete(lboxCustoDisp.ItemIndex);
           end;
       lboxCustoDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnSelEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxEmpDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpDisp.Items.Count - 1 do
           begin
             lboxEmpSel.Items.Add(lboxEmpDisp.Items[i]);
             lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
           end;
       lboxEmpDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnSelSetorClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxSetorDisp.ClearSelection;

  if lboxSetorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxSetorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSetorDisp.Items.Count - 1 do
           begin
             lboxSetorSel.Items.Add(lboxSetorDisp.Items[i]);
             lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
           end;
       lboxSetorDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.btnSelTmeClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTmeDisp.ClearSelection;

  if lboxTmeDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxTmeDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTmeDisp.Items.Count - 1 do
           begin
             lboxTmeSel.Items.Add(lboxTmeDisp.Items[i]);
             lboxTmeDisp.Items.Delete(lboxTmeDisp.ItemIndex);
           end;
       lboxTmeDisp.Items.Clear;
     end;
end;

procedure  TEST_FM_R_MAL.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     begin
       Showmessage('Nenhum relatório foi selecionado.');
       exit;
     end;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Por Almoxarifado/Grupo') and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = false)  then
     begin
       ShowMessage('O sistema está configurado para não utilização por almoxarifado.');
       exit;
     end;




   // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

   PreencherCondicao;

   EST_CD_R_MAL.Close;
   EST_CD_R_MAL.Data :=
   EST_CD_R_MAL.DataRequest(
                    VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin,xCondEmp,
                    xCondAlmoxarifado,xCondTipoEstoque, xCondSetor, xCondResp,
                    xCondCentroCusto,xCondEquip,xCondGrupoItem]));


   if not EST_CD_R_MAL.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MAL_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MAL_GER.Name,xCodLme,xRevLme,nil);

            if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               EST_FR_R_MAL_GER.Variables['ativa_cor'] := true
             else
               EST_FR_R_MAL_GER.Variables['ativa_cor'] := false;

             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               EST_FR_R_MAL_GER.Variables['ativa_tamanho'] := true
             else
               EST_FR_R_MAL_GER.Variables['ativa_tamanho'] := false;


            EST_FR_R_MAL_GER.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
            EST_FR_R_MAL_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_MAL_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_MAL_GER.PrepareReport();
            EST_FR_R_MAL_GER.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Por Almoxarifado/Grupo' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MAL_ALM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

             dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MAL_ALM.Name,xCodLme,xRevLme,nil);

              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
                 begin
                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                     EST_FR_R_MAL_ALM_2.Variables['ativa_cor'] := true
                   else
                     EST_FR_R_MAL_ALM_2.Variables['ativa_cor'] := false;

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                     EST_FR_R_MAL_ALM_2.Variables['ativa_tamanho'] := true
                   else
                     EST_FR_R_MAL_ALM_2.Variables['ativa_tamanho'] := false;

                   dmGeral.BusAlmox(91,xCondAlmoxarifado);

                   if dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString <> '' then
                      begin
                         CTC_CD_R_OBR.Close;
                         CTC_CD_R_OBR.Data :=
                               CTC_CD_R_OBR.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString]));

                         CTC_CD_R_OBR_CRG.Close;
                         CTC_CD_R_OBR_CRG.Data :=
                               CTC_CD_R_OBR_CRG.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_EQP.Close;
                         CTC_CD_R_OBR_EQP.Data :=
                               CTC_CD_R_OBR_EQP.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_ITE.Close;
                         CTC_CD_R_OBR_ITE.Data :=
                               CTC_CD_R_OBR_ITE.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                          deInicial.text,deFinal.text]));
                      end;

                   dmGeral.BUS_CD_C_ALM.close;
                   EST_FR_R_MAL_ALM_2.Variables['ft_Cabecalho1'] :=  QuotedStr(xFiltroSel_CabecalhoSup);
                   EST_FR_R_MAL_ALM_2.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                   EST_FR_R_MAL_ALM_2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   EST_FR_R_MAL_ALM_2.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   EST_FR_R_MAL_ALM_2.PrepareReport();
                   EST_FR_R_MAL_ALM_2.ShowReport();
                 end
              else
                 begin
                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                     EST_FR_R_MAL_ALM.Variables['ativa_cor'] := true
                   else
                     EST_FR_R_MAL_ALM.Variables['ativa_cor'] := false;

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                     EST_FR_R_MAL_ALM.Variables['ativa_tamanho'] := true
                   else
                     EST_FR_R_MAL_ALM.Variables['ativa_tamanho'] := false;


                   EST_FR_R_MAL_ALM.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                   EST_FR_R_MAL_ALM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   EST_FR_R_MAL_ALM.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   EST_FR_R_MAL_ALM.PrepareReport();
                   EST_FR_R_MAL_ALM.ShowReport();
                 end;
           end;

         if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Centro de Custo/Grupo' then
            begin
             if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MAL_CCU.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;


             if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
                begin
                   dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MAL_CCU_2.Name,xCodLme,xRevLme,nil);

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                     EST_FR_R_MAL_CCU_2.Variables['ativa_cor'] := true
                   else
                     EST_FR_R_MAL_CCU_2.Variables['ativa_cor'] := false;

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                     EST_FR_R_MAL_CCU_2.Variables['ativa_tamanho'] := true
                   else
                     EST_FR_R_MAL_CCU_2.Variables['ativa_tamanho'] := false;

                   dmGeral.BusAlmox(91,xCondAlmoxarifado);

                   if dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString <> '' then
                      begin
                         CTC_CD_R_OBR.Close;
                         CTC_CD_R_OBR.Data :=
                               CTC_CD_R_OBR.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString]));

                         CTC_CD_R_OBR_CRG.Close;
                         CTC_CD_R_OBR_CRG.Data :=
                               CTC_CD_R_OBR_CRG.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_EQP.Close;
                         CTC_CD_R_OBR_EQP.Data :=
                               CTC_CD_R_OBR_EQP.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_ITE.Close;
                         CTC_CD_R_OBR_ITE.Data :=
                               CTC_CD_R_OBR_ITE.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                          deInicial.text,deFinal.text]));
                      end;

                   dmGeral.BUS_CD_C_ALM.close;
                   EST_FR_R_MAL_CCU_2.Variables['ft_Cabecalho1'] :=  QuotedStr(xFiltroSel_CabecalhoSup);
                   EST_FR_R_MAL_CCU_2.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                   EST_FR_R_MAL_CCU_2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   EST_FR_R_MAL_CCU_2.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   EST_FR_R_MAL_CCU_2.PrepareReport();
                   EST_FR_R_MAL_CCU_2.ShowReport();
                end
             else
                begin
                   dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MAL_CCU.Name,xCodLme,xRevLme,nil);

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                     EST_FR_R_MAL_CCU.Variables['ativa_cor'] := true
                   else
                     EST_FR_R_MAL_CCU.Variables['ativa_cor'] := false;

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                     EST_FR_R_MAL_CCU.Variables['ativa_tamanho'] := true
                   else
                     EST_FR_R_MAL_CCU.Variables['ativa_tamanho'] := false;

                   EST_FR_R_MAL_CCU.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                   EST_FR_R_MAL_CCU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   EST_FR_R_MAL_CCU.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   EST_FR_R_MAL_CCU.PrepareReport();
                   EST_FR_R_MAL_CCU.ShowReport();
                end;
            end;

         if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '3 - Por Equipamentos/Grupo' then
            begin
             if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MAL_MEQ.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;


             if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
                begin
                   dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MAL_MEQ.Name,xCodLme,xRevLme,nil);

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                     EST_FR_R_MAL_MEQ.Variables['ativa_cor'] := true
                   else
                     EST_FR_R_MAL_MEQ.Variables['ativa_cor'] := false;

                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                     EST_FR_R_MAL_MEQ.Variables['ativa_tamanho'] := true
                   else
                     EST_FR_R_MAL_MEQ.Variables['ativa_tamanho'] := false;

                   dmGeral.BusAlmox(91,xCondAlmoxarifado);

                   if dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString <> '' then
                      begin
                         CTC_CD_R_OBR.Close;
                         CTC_CD_R_OBR.Data :=
                               CTC_CD_R_OBR.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString]));

                         CTC_CD_R_OBR_CRG.Close;
                         CTC_CD_R_OBR_CRG.Data :=
                               CTC_CD_R_OBR_CRG.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_EQP.Close;
                         CTC_CD_R_OBR_EQP.Data :=
                               CTC_CD_R_OBR_EQP.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                               deInicial.text,deFinal.text]));

                         CTC_CD_R_OBR_ITE.Close;
                         CTC_CD_R_OBR_ITE.Data :=
                               CTC_CD_R_OBR_ITE.DataRequest(
                                          VarArrayOf([dmGeral.BUS_CD_C_ALM.FieldByName('id_obra').AsString,
                                          deInicial.text,deFinal.text]));
                      end;

                   dmGeral.BUS_CD_C_ALM.close;

                   EST_FR_R_MAL_MEQ.Variables['ft_Cabecalho1'] :=  QuotedStr(xFiltroSel_CabecalhoSup);

                   EST_FR_R_MAL_MEQ.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                   EST_FR_R_MAL_MEQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   EST_FR_R_MAL_MEQ.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   EST_FR_R_MAL_MEQ.PrepareReport();
                   EST_FR_R_MAL_MEQ.ShowReport();
                end ;
            end;
      end
    else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;



end;

procedure TEST_FM_R_MAL.PreencherCondicao;
var
  i: integer;
  opcoesEmp,opcoesAlmoxarifado,opcoesTipoEstoque,opcoesSetor,opcoesResp,opcoesCusto,
  opcoesEquip,opcoesCentroCusto,opcoesGrupo:string;
begin

   opcoesAlmoxarifado := 'O sistema está configurado para não utilização por almoxarifado.';

  xFiltroSel_CabecalhoSup := '';
   // Empresa ----------------------------------------------------------
  xCondEmp := '';
  if lboxEmpSel.Count > 0 then
     begin
       if lboxEmpDisp.Count > 0 then
         begin
          for i := 0 to lboxEmpSel.Count - 1 do
           begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp +'                    '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp + lboxEmpSel.Items[i] + #13+#10;
               end;
           end;
         end
       else
        begin
         opcoesEmp := 'Todos';
        end;
    end
  else
    begin
      opcoesEmp := 'Todos';
    end;




  // Almoxarifados -------------------------------------------------------------

  xCondAlmoxarifado := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       xCondAlmoxarifado := '';
       opcoesAlmoxarifado := '';
       if lboxAlmSel.Count > 0 then
         begin
          if lboxAlmDisp.Count > 0 then
            begin
             for i := 0 to lboxAlmSel.Count - 1 do
              begin
                if xCondAlmoxarifado <> '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado + ',' +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +'                    '+lboxAlmSel.Items[i] + #13+#10;
                   end;
                if xCondAlmoxarifado = '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +lboxAlmSel.Items[i] + #13+#10;
                   end;
              end;
         end
         else
          begin
             opcoesAlmoxarifado := 'Todos';
          end;
         end
       else
       begin
          opcoesAlmoxarifado := 'Todos';
       end;
    end;


  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lboxTmeSel.Count > 0 then
     begin
       if lboxTmeDisp.Count > 0 then
        begin
          for i := 0 to lboxTmeSel.Count - 1 do
           begin
            if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lboxTmeSel.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque  +'                    '+lboxTmeSel.Items[i] + #13+#10;
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lboxTmeSel.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + lboxTmeSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesTipoEstoque := 'Todos';
     end;
     end
   else
    begin
      opcoesTipoEstoque := 'Todos';
    end;

  // Grupos de Itens -----------------------------------------------------------
  xCondGrupoItem := '';
  if lboxGruposSelecionados.Count > 0 then
     begin
      if lboxGruposDisponiveis.Count > 0 then
        begin
          for i := 0 to lboxGruposSelecionados.Count - 1 do
            begin
             if xCondGrupoItem <> '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem + ',' +''''+trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
                 opcoesGrupo :=
                 opcoesGrupo +'                 '+lboxGruposSelecionados.Items[i] + #13+#10;
               end;
            if xCondGrupoItem = '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem +''''+trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
                 opcoesGrupo :=
                 opcoesGrupo + lboxGruposSelecionados.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesGrupo := 'Todos';
     end;
     end
   else
    begin
       opcoesGrupo := 'Todos';
    end;

   // Responsavel ---------------------------------------------------------
  xCondResp := '';
  if lboxRespSel.Count > 0 then
     begin
       for i := 0 to lboxRespSel.Count - 1 do
          begin
            if xCondResp <> '' then
               begin
                 xCondResp :=
                 xCondResp + ',' +''''+trim(copy(lboxRespSel.Items[i],1,6))+'''';
                 opcoesResp :=
                 opcoesResp  +'                    '+lboxRespSel.Items[i] + #13+#10;
               end;
            if xCondResp = '' then
               begin
                 xCondResp :=
                 xCondResp +''''+trim(copy(lboxRespSel.Items[i],1,6))+'''';
                 opcoesResp :=
                 opcoesResp +lboxRespSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesResp :=  'Todos';
     end;


    // Equipamento ---------------------------------------------------------
  xCondEquip := '';
  if lboxEquipSel.Count > 0 then
     begin
       for i := 0 to lboxEquipSel.Count - 1 do
          begin
            if xCondEquip <> '' then
               begin
                 xCondEquip :=
                 xCondEquip + ',' +''''+trim(copy(lboxEquipSel.Items[i],1,6))+'''';
                 opcoesEquip :=
                 opcoesEquip  +'                    '+lboxEquipSel.Items[i] + #13+#10;
               end;
            if xCondEquip = '' then
               begin
                 xCondEquip :=
                 xCondEquip +''''+trim(copy(lboxEquipSel.Items[i],1,6))+'''';
                 opcoesEquip :=
                 opcoesEquip +lboxEquipSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesEquip :=  'Todos';
     end;



   // Setor ---------------------------------------------------------
  xCondSetor := '';
  if lboxSetorSel.Count > 0 then
     begin
       if lboxSetorDisp.Count > 0 then
         begin
            for i := 0 to lboxSetorSel.Count - 1 do
              begin
                if xCondSetor <> '' then
                   begin
                     xCondSetor :=
                     xCondSetor + ',' +''''+trim(copy(lboxSetorSel.Items[i],1,4))+'''';
                     opcoesSetor :=
                     opcoesSetor  +'                    '+lboxSetorSel.Items[i] + #13+#10;
                   end;
                if xCondSetor = '' then
                   begin
                     xCondSetor :=
                     xCondSetor +''''+trim(copy(lboxSetorSel.Items[i],1,4))+'''';
                     opcoesSetor :=
                     opcoesSetor +lboxSetorSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
         begin
            opcoesSetor :=  'Todos';
         end;
     end
   else
     begin
        opcoesSetor :=  'Todos';
     end;



   // Centros de Custos ---------------------------------------------------------
  xCondCentroCusto := '';
  if lboxCustoSel.Count > 0 then
     begin
       if lboxCustoDisp.Count > 0 then
     begin

       for i := 0 to lboxCustoSel.Count - 1 do
          begin
            if xCondCentroCusto <> '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto + ',' +''''+trim(copy(lboxCustoSel.Items[i],1,4))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto  +'                    '+lboxCustoSel.Items[i] + #13+#10;
               end;
            if xCondCentroCusto = '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto +''''+trim(copy(lboxCustoSel.Items[i],1,4))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto +lboxCustoSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmp + #13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado......: ' + opcoesAlmoxarifado + #13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque...: ' + opcoesTipoEstoque +#13+#10;
   xOpcoes := xOpcoes + 'Setor.............: ' + opcoesSetor + #13+#10;
   xOpcoes := xOpcoes + 'Grupo de Item.....: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Responsável.......: ' + opcoesResp +#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo...: ' + opcoesCentroCusto+#13+#10;
   xOpcoes := xOpcoes + 'Equipamento.......: ' + opcoesEquip +#13+#10;

   xFiltroSel_CabecalhoSup := 'Período: ' + deInicial.Text + ' a ' + deFinal.Text + ' - ' +
                              'Empresa: ' + opcoesEmp + ' - ' + 'Almoxarifado: ' + opcoesAlmoxarifado + ' - ' +
                              'Equipamento: ' + opcoesEquip;

end;

function TEST_FM_R_MAL.VerificarCampos:Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
     begin
       mens := mens +  '.O período deve ser preenchido.' + #13;
     end
  else
    if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;

  if lboxEmpSel.Count = 0 then
     mens := mens +  '.É necessário selecionar pelo menos 1 empresa' + #13;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
     begin
       if lboxAlmSel.Count = 0 then
          mens := mens +  '.É necessário selecionar 1 almoxarifado' + #13;
     end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end
  else
      begin
        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
           begin
             if lboxAlmSel.Count <> 1 then
                begin
                  ShowMessage('Só é permitido selecionar 1 almoxarifado por vez');
                  result := false;
                  exit;
                end;
           end;
      end;
end;


procedure TEST_FM_R_MAL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_MAL);
end;

procedure TEST_FM_R_MAL.FormShow(Sender: TObject);
begin
  inherited;


   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean or
       dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean then
     tsSetor.TabVisible := true
   else
     tsSetor.TabVisible := false;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean then
      begin
        tsEquip.TabVisible := true;
        lbxRelatorios.Items.Clear;
        lbxRelatorios.Items.Add('0 - Geral');
        lbxRelatorios.Items.Add('1 - Por Almoxarifado/Grupo');
        lbxRelatorios.Items.Add('2 - Por Centro de Custo/Grupo');
        lbxRelatorios.Items.Add('3 - Por Equipamentos/Grupo');
      end
   else
     begin
        tsEquip.TabVisible := false;
        lbxRelatorios.Items.Clear;
        lbxRelatorios.Items.Add('0 - Geral');
        lbxRelatorios.Items.Add('1 - Por Almoxarifado/Grupo');
        lbxRelatorios.Items.Add('2 - Por Centro de Custo/Grupo');
     end;


   if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     tsAlmoxarifado.TabVisible := true
   else
     tsAlmoxarifado.TabVisible := false;

   EST_FR_R_MAL_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_MAL_ALM.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_MAL_ALM_2.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_MAL_CCU.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_MAL_CCU_2.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_MAL_MEQ.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);


   // Empresa -------------------------------------------------------------
    dmGeral.BUS_CD_C_PAR.Close;
    dmGeral.BUS_CD_C_PAR.Data :=
    dmGeral.BUS_CD_C_PAR.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;



   // Almoxarifados -------------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
    dmGeral.BUS_CD_C_ALM.Close;
    dmGeral.BUS_CD_C_ALM.Data :=
    dmGeral.BUS_CD_C_ALM.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            lboxAlmDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;
  end;

  // Tipos de Estoque ----------------------------------------------------------
  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TME.First;

       while not dmGeral.BUS_CD_C_TME.eof do
          begin
            lboxTmeDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TME.Next;
          end;
     end;

  dmGeral.BUS_CD_C_TME.Close;

  // Setor ----------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean or
     dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean then
    begin
      dmGeral.BUS_CD_C_SET.Close;
      dmGeral.BUS_CD_C_SET.Data :=
      dmGeral.BUS_CD_C_SET.DataRequest(VarArrayOf([1,'%']));

      if not dmGeral.BUS_CD_C_SET.IsEmpty then
         begin
           dmGeral.BUS_CD_C_SET.First;

           while not dmGeral.BUS_CD_C_SET.eof do
              begin
                lboxSetorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_SET.FieldByName('ID_SETOR').AsInteger,4,0) +
                                        ' - ' + dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_SET.Next;
              end;
         end;

        dmGeral.BUS_CD_C_SET.Close;
      end;

  // Grupo de Itens ------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGruposDisponiveis.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_GRU.Close;

  // Centro de Custo ----------------------------------------------------------
  dmGeral.BUS_CD_C_CCU.Close;
  dmGeral.BUS_CD_C_CCU.Data :=
  dmGeral.BUS_CD_C_CCU.DataRequest(VarArrayOf([1,'%']));

  if not dmGeral.BUS_CD_C_CCU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CCU.First;

       while not dmGeral.BUS_CD_C_CCU.eof do
          begin
            lboxCustoDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_CCU.FieldByName('ID_CCUSTO').AsInteger,4,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CCU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CCU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_CCU.Close;

end;

procedure TEST_FM_R_MAL.lboxAlmDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmDisp.ItemIndex > - 1 then
     begin
       lboxAlmSel.Items.Add(lboxAlmDisp.Items[lboxAlmDisp.ItemIndex]);
       lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxAlmSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmSel.ItemIndex > -1 then
     begin
       lboxAlmDisp.Items.Add(lboxAlmSel.Items[lboxAlmSel.ItemIndex]);
       lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxCustoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCustoDisp.ItemIndex > - 1 then
     begin
       lboxCustoSel.Items.Add(lboxCustoDisp.Items[lboxCustoDisp.ItemIndex]);
       lboxCustoDisp.Items.Delete(lboxCustoDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxCustoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCustoSel.ItemIndex > -1 then
     begin
       lboxCustoDisp.Items.Add(lboxCustoSel.Items[lboxCustoSel.ItemIndex]);
       lboxCustoSel.Items.Delete(lboxCustoSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxEquipSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
        PSQ_FM_X_MEQ.ShowModal;
        if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxEquipSel,3,StrZero(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsInteger,6,0)) then
                begin
                  lboxEquipSel.Items.Add(StrZero(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_MEQ.Free;
     end;
end;

procedure TEST_FM_R_MAL.lboxRespSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxRespSel,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
                begin
                  lboxRespSel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TEST_FM_R_MAL.lboxSetorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorDisp.ItemIndex > - 1 then
     begin
       lboxSetorSel.Items.Add(lboxSetorDisp.Items[lboxSetorDisp.ItemIndex]);
       lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxSetorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorSel.ItemIndex > -1 then
     begin
       lboxSetorDisp.Items.Add(lboxSetorSel.Items[lboxSetorSel.ItemIndex]);
       lboxSetorSel.Items.Delete(lboxSetorSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxTmeDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTmeDisp.ItemIndex > - 1 then
     begin
       lboxTmeSel.Items.Add(lboxTmeDisp.Items[lboxTmeDisp.ItemIndex]);
       lboxTmeDisp.Items.Delete(lboxTmeDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxTmeSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTmeSel.ItemIndex > -1 then
     begin
       lboxTmeDisp.Items.Add(lboxTmeSel.Items[lboxTmeSel.ItemIndex]);
       lboxTmeSel.Items.Delete(lboxTmeSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.MenuItemGruposItensClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGruposDisponiveis.ClearSelection;

  if lboxGruposDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGruposDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposDisponiveis.Items.Count - 1 do
           begin
             lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[i]);
             lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
           end;
       lboxGruposDisponiveis.Items.Clear;
     end;
end;

procedure TEST_FM_R_MAL.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_MAL.lboxGruposSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposSelecionados.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[lboxGruposSelecionados.ItemIndex]);
       lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
     end;
end;

end.
