unit PCP_UN_R_LME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,enFunc,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_LME = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsMestre: TTabSheet;
    lboxListaMestre: TListBox;
    Label1: TLabel;
    PCP_FR_R_LME: TfrxReport;
    PCP_XL_R_LME: TfrxXLSExport;
    PCP_PD_R_LME: TfrxPDFExport;
    PCP_DB_R_LME: TfrxDBDataset;
    PCP_DB_R_LME_DOC: TfrxDBDataset;
    PCP_DB_R_LME_DRP: TfrxDBDataset;
    PCP_DB_R_LME_DRV: TfrxDBDataset;
    PCP_DB_R_LME_DPG: TfrxDBDataset;
    pmExcluirListaMestre: TPopupMenu;
    btnRemoverRegistroListaMestre: TMenuItem;
    PCP_CD_R_LME: TClientDataSet;
    PCP_CD_R_LMEid_lme: TIntegerField;
    PCP_CD_R_LMEdata: TDateField;
    PCP_CD_R_LMEid_responsavel: TIntegerField;
    PCP_CD_R_LMEobservacao: TWideStringField;
    PCP_CD_R_LMEcod_lme: TWideStringField;
    PCP_CD_R_LMErev_lme: TWideStringField;
    PCP_CD_R_LMEint_nomeres: TWideStringField;
    PCP_CD_R_LMEPCP_SQ_R_LME_DOC: TDataSetField;
    PCP_CD_R_LME_DOC: TClientDataSet;
    PCP_CD_R_LME_DOCid_lme: TIntegerField;
    PCP_CD_R_LME_DOCid_lme_d: TIntegerField;
    PCP_CD_R_LME_DOCid_tlm: TIntegerField;
    PCP_CD_R_LME_DOCorigem: TIntegerField;
    PCP_CD_R_LME_DOCdescricao: TWideStringField;
    PCP_CD_R_LME_DOCcodigo: TWideStringField;
    PCP_CD_R_LME_DOCrevisao: TWideStringField;
    PCP_CD_R_LME_DOCdata_aprovacao: TDateField;
    PCP_CD_R_LME_DOCid_setor: TIntegerField;
    PCP_CD_R_LME_DOCdistribuicao_tipo: TIntegerField;
    PCP_CD_R_LME_DOCobservacao: TWideStringField;
    PCP_CD_R_LME_DOCid_setor_1: TIntegerField;
    PCP_CD_R_LME_DOCdescricao_1: TWideStringField;
    PCP_CD_R_LME_DOClote_controla: TBooleanField;
    PCP_CD_R_LME_DOCtipo: TIntegerField;
    PCP_CD_R_LME_DOCcod_lme: TWideStringField;
    PCP_CD_R_LME_DOCrev_lme: TWideStringField;
    PCP_CD_R_LME_DOCint_descsetor: TWideStringField;
    PCP_CD_R_LME_DOCPCP_SQ_R_LME_DRV: TDataSetField;
    PCP_CD_R_LME_DOCPCP_SQ_R_LME_DRP: TDataSetField;
    PCP_CD_R_LME_DOCPCP_SQ_R_LME_DPG: TDataSetField;
    PCP_CD_R_LME_DPG: TClientDataSet;
    PCP_CD_R_LME_DPGid_lme: TIntegerField;
    PCP_CD_R_LME_DPGid_lme_d: TIntegerField;
    PCP_CD_R_LME_DPGid_lme_dp: TIntegerField;
    PCP_CD_R_LME_DPGdata_cadastro: TDateField;
    PCP_CD_R_LME_DPGnome_formulario: TWideStringField;
    PCP_CD_R_LME_DRP: TClientDataSet;
    PCP_CD_R_LME_DRPid_lme: TIntegerField;
    PCP_CD_R_LME_DRPid_lme_d: TIntegerField;
    PCP_CD_R_LME_DRPid_lme_dr: TIntegerField;
    PCP_CD_R_LME_DRPdata: TDateField;
    PCP_CD_R_LME_DRPsituacao: TWideStringField;
    PCP_CD_R_LME_DRV: TClientDataSet;
    PCP_CD_R_LME_DRVid_lme: TIntegerField;
    PCP_CD_R_LME_DRVid_lme_d: TIntegerField;
    PCP_CD_R_LME_DRVid_lme_dv: TIntegerField;
    PCP_CD_R_LME_DRVdata_revisao: TDateField;
    PCP_CD_R_LME_DRVrevisao: TIntegerField;
    PCP_CD_R_LME_DRVhistorico_alteracao: TWideStringField;
    PCP_CD_R_LME_DOCint_desctlm: TWideStringField;
    PCP_CD_R_LME_DOCint_origem: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxListaMestreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroListaMestreClick(Sender: TObject);
  private
    procedure PreencherCondicao;
    var
      xCondLme: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_R_LME: TPCP_FM_R_LME;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_LME;

procedure TPCP_FM_R_LME.btnImprimirClick(Sender: TObject);
var
  xCondLme1, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin


  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

   PCP_CD_R_LME.Close;
   PCP_CD_R_LME.Data :=
   PCP_CD_R_LME.DataRequest(
                   VarArrayOf([xCondLme]));

   if not PCP_CD_R_LME.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Lista Mestra' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_LME.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_LME.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_LME.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            PCP_FR_R_LME.PrepareReport();
            PCP_FR_R_LME.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TPCP_FM_R_LME.PreencherCondicao;
var
  i: integer;
  Cond: String;
begin

  // Lista Mestre ----------------------------------------------------------------
  xCondLme := '';
  if lboxListaMestre.Count > 0 then
     begin
       for i := 0 to lboxListaMestre.Count - 1 do
          begin
            if xCondLme <> '' then
               begin
                 xCondLme :=
                 xCondLme + ',' +''''+trim(copy(lboxListaMestre.Items[i],1,6))+'''';
               end;
            if xCondLme = '' then
               begin
                 xCondLme :=
                 xCondLme +''''+trim(copy(lboxListaMestre.Items[i],1,6))+'''';
               end;
          end;
     end;

end;


procedure TPCP_FM_R_LME.btnRemoverRegistroListaMestreClick(Sender: TObject);
begin
  inherited;
  if lboxListaMestre.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxListaMestre.DeleteSelected;
end;

procedure TPCP_FM_R_LME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_LME);
end;

procedure TPCP_FM_R_LME.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_LME.lboxListaMestreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_LME := TPSQ_FM_X_LME.Create(Self);
        PSQ_FM_X_LME.ShowModal;
        if not PSQ_FM_X_LME.BUS_CD_C_LME.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxListaMestre,6,PSQ_FM_X_LME.BUS_CD_C_LME.FieldByName('ID_LME').AsString) then
                begin
                  lboxListaMestre.Items.Add(StrZero(PSQ_FM_X_LME.BUS_CD_C_LME.FieldByName('ID_LME').AsFloat,6,0) +
                                    ' - ' + PSQ_FM_X_LME.BUS_CD_C_LME.FieldByName('OBSERVACAO').AsString);
                end;
           end;
         PSQ_FM_X_LME.Free;
     end;
end;

end.
