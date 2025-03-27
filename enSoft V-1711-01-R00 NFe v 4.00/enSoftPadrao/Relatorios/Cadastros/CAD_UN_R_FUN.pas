unit CAD_UN_R_FUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls, enFunc,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_FUN = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsCidade: TTabSheet;
    tsCargo: TTabSheet;
    lboxCidade: TListBox;
    Label2: TLabel;
    lboxCargoDisp: TListBox;
    lboxCargoSel: TListBox;
    lblCargoDisp: TLabel;
    lblCargoSel: TLabel;
    lblSituacao: TLabel;
    lblTipos: TLabel;
    cboxSituacao: TComboBox;
    cboxTipo: TComboBox;
    CAD_PD_R_FUN: TfrxPDFExport;
    CAD_XL_R_FUN: TfrxXLSExport;
    CAD_FR_R_FUN: TfrxReport;
    CAD_DB_R_FUN: TfrxDBDataset;
    CAD_DB_R_FUN_CRG: TfrxDBDataset;
    pmSelTodasCargo: TPopupMenu;
    btnSelecionarTodos: TMenuItem;
    pmExcluirCidade: TPopupMenu;
    btnRemoverCidade: TMenuItem;
    ckboxExibirCargo: TCheckBox;
    CAD_CD_R_FUN: TClientDataSet;
    CAD_CD_R_FUNid_funcionario: TIntegerField;
    CAD_CD_R_FUNativo: TBooleanField;
    CAD_CD_R_FUNnome: TWideStringField;
    CAD_CD_R_FUNendereco: TWideStringField;
    CAD_CD_R_FUNcep: TWideStringField;
    CAD_CD_R_FUNnumero: TWideStringField;
    CAD_CD_R_FUNtel_fixo: TWideStringField;
    CAD_CD_R_FUNtel_movel: TWideStringField;
    CAD_CD_R_FUNdoc_cpf: TWideStringField;
    CAD_CD_R_FUNdoc_identidade: TWideStringField;
    CAD_CD_R_FUNbairro: TWideStringField;
    CAD_CD_R_FUNid_cidade: TWideStringField;
    CAD_CD_R_FUNestado: TWideStringField;
    CAD_CD_R_FUNemail: TWideStringField;
    CAD_CD_R_FUNsexo: TIntegerField;
    CAD_CD_R_FUNdta_nascimento: TDateField;
    CAD_CD_R_FUNdta_cadastro: TDateField;
    CAD_CD_R_FUNlogin: TWideStringField;
    CAD_CD_R_FUNsenha: TWideStringField;
    CAD_CD_R_FUNdta_senha_expira: TDateField;
    CAD_CD_R_FUNid_perfil_seg: TIntegerField;
    CAD_CD_R_FUNseg_alt_lim_cli: TBooleanField;
    CAD_CD_R_FUNseg_alt_sit_cli: TBooleanField;
    CAD_CD_R_FUNseg_alt_pre_pro: TBooleanField;
    CAD_CD_R_FUNseg_hab_bot_exc: TBooleanField;
    CAD_CD_R_FUNcod_lme: TWideStringField;
    CAD_CD_R_FUNrev_lme: TWideStringField;
    CAD_CD_R_FUNint_nomecid: TWideStringField;
    CAD_CD_R_FUNCAD_SQ_R_FUN_CRG: TDataSetField;
    CAD_CD_R_FUN_CRG: TClientDataSet;
    CAD_CD_R_FUN_CRGid_funcionario: TIntegerField;
    CAD_CD_R_FUN_CRGid_cargo: TIntegerField;
    CAD_CD_R_FUN_CRGint_nomecrg: TWideStringField;
    CAD_CD_R_FUN_CRGint_tipocrg: TWideMemoField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSelecionarTodosClick(Sender: TObject);
    procedure lboxCargoDispDblClick(Sender: TObject);
    procedure lboxCargoSelDblClick(Sender: TObject);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure CAD_FR_R_FUNBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
      xOpcoes,xCondSit,xCondCid,xCondCargo,xTipoFunc:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_FUN: TCAD_FM_R_FUN;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CID, enConstantes;

procedure TCAD_FM_R_FUN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_FUN);
end;

procedure TCAD_FM_R_FUN.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  dmGeral.BUS_CD_C_CRG.Close;
  dmGeral.BUS_CD_C_CRG.Data := dmGeral.BUS_CD_C_CRG.DataRequest(VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_CRG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CRG.First;
       while not dmGeral.BUS_CD_C_CRG.eof do
        begin
          lboxCargoDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_CRG.FieldByName('ID_CARGO').AsFloat,3,0) +
                              ' - ' + dmGeral.BUS_CD_C_CRG.FieldByName('DESCRICAO').AsString);
          dmGeral.BUS_CD_C_CRG.Next;
        end;
   end;
   dmGeral.BUS_CD_C_CRG.Close;
end;

procedure TCAD_FM_R_FUN.lboxCargoDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxCargoDisp.ItemIndex > -1 then
     begin
       lboxCargoSel.Items.Add(lboxCargoDisp.Items[lboxCargoDisp.ItemIndex]);
       lboxCargoDisp.Items.Delete(lboxCargoDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_FUN.lboxCargoSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxCargoSel.ItemIndex > -1 then
     begin
       lboxCargoDisp.Items.Add(lboxCargoSel.Items[lboxCargoSel.ItemIndex]);
       lboxCargoSel.Items.Delete(lboxCargoSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_FUN.lboxCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
        PSQ_FM_X_CID.ShowModal;
        if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCidade,10,PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString) then
                begin
                  lboxCidade.Items.Add(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString+' - '+
                                         PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString+'-'+
                                         PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString);
                end;
           end;
         PSQ_FM_X_CID.Free;
     end;
end;

procedure TCAD_FM_R_FUN.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_FUN.btnRemoverCidadeClick(Sender: TObject);
begin
  inherited;
  if lboxCidade.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxCidade.DeleteSelected;
end;

procedure TCAD_FM_R_FUN.btnSelecionarTodosClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxCargoDisp.ClearSelection;

  if lboxCargoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCargoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCargoDisp.Items.Count - 1 do
           begin
             lboxCargoSel.Items.Add(lboxCargoDisp.Items[i]);
             lboxCargoDisp.Items.Delete(lboxCargoDisp.ItemIndex);
           end;
       lboxCargoDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_FUN.CAD_FR_R_FUNBeforePrint(Sender: TfrxReportComponent);
var
  exibirCargo:string;
begin
  inherited;
  exibirCargo := 'false';
  if ckboxExibirCargo.Checked then
    begin
      exibirCargo := 'true';
    end;

  CAD_FR_R_FUN.Variables['ft_exibirCargo'] := QuotedStr(exibirCargo);
end;

procedure TCAD_FM_R_FUN.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

   CAD_CD_R_FUN.Close;

   CAD_CD_R_FUN.Data :=
   CAD_CD_R_FUN.DataRequest(
                     VarArrayOf([xCondSit,xCondCid,xCondCargo,xTipoFunc]));


   if not CAD_CD_R_FUN.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Funcionários' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_FUN.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_FUN.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_FUN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_FUN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_FUN.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CAD_FR_R_FUN.PrepareReport();
            CAD_FR_R_FUN.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;

procedure TCAD_FM_R_FUN.PreencherCondicao;
var
i: integer;
exibirCargo:string;
begin
  xCondCid := '';
  if lboxCidade.Count > 0 then
     begin
       for i := 0 to lboxCidade.Count - 1 do
          begin
            if xCondCid <> '' then
               begin
                 xCondCid :=
                 xCondCid + ',' +''''+trim(copy(lboxCidade.Items[i],1,10))+'''';
               end;
            if xCondCid = '' then
               begin
                 xCondCid :=
                 xCondCid +''''+trim(copy(lboxCidade.Items[i],1,10))+'''';
               end;
          end;
   end;


  xCondCargo := '';

   if lboxCargoSel.Count > 0 then
     begin
       for i := 0 to lboxCargoSel.Count - 1 do
          begin
            if xCondCargo <> '' then
               begin
                 xCondCargo :=
                 xCondCargo + ',' +''''+copy(lboxCargoSel.Items[i],1,3)+'''';
               end;
            if xCondCargo = '' then
               begin
                 xCondCargo :=
                 xCondCargo +''''+copy(lboxCargoSel.Items[i],1,3)+'''';
               end;
          end;
     end;

   xCondSit := '';
   if cboxSituacao.Text <> 'Todos' then
     begin
       if cboxSituacao.Text = 'Ativos' then
         begin
           xCondSit := 'true';
         end
       else
         if cboxSituacao.Text = 'Inativos' then
           begin
             xCondSit := 'false';
           end;
   end;

   xTipoFunc := '';
   if cboxTipo.Text <> 'Todos' then
     begin
       xTipoFunc := copy(cboxTipo.Text,1,1);
     end;

   exibirCargo := 'Não';
   if ckboxExibirCargo.Checked then
     begin
       exibirCargo := 'Sim';
     end;

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Exibir Cargos...........: ' + exibirCargo + #13+#10;
   xOpcoes := xOpcoes + 'Situação................: ' + cboxSituacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Tipo....................: ' + cboxTipo.Text + #13+#10;

end;


end.
