unit FIN_UN_R_PRC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, frxClass, frxExportXLS, frxExportPDF, frxDBSet, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus;

type
  TFIN_FM_R_PRC = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    lboxFunSel: TListBox;
    TabSheet3: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    lboxPctDisp: TListBox;
    lboxPctSel: TListBox;
    FIN_DB_R_PRC: TfrxDBDataset;
    FIN_PD_R_PRC: TfrxPDFExport;
    FIN_XL_R_PRC: TfrxXLSExport;
    FIN_FR_R_PRC: TfrxReport;
    FIN_CD_R_PRC: TClientDataSet;
    dtaFin: TJvDateEdit;
    Label2: TLabel;
    dtaIni: TJvDateEdit;
    Label3: TLabel;
    FIN_CD_R_PRC_DET: TClientDataSet;
    FIN_DB_R_PRC_DET: TfrxDBDataset;
    pmEmpSel: TPopupMenu;
    pmEmpDel: TPopupMenu;
    pmFunDel: TPopupMenu;
    pmPctSel: TPopupMenu;
    pmPctDel: TPopupMenu;
    btnSelTodasEmp: TMenuItem;
    btnSelTodosPlano: TMenuItem;
    btnDelTodasEmp: TMenuItem;
    btnDelTodosPlano: TMenuItem;
    btnDelFun: TMenuItem;
    FIN_CD_R_PRCFIN_SQ_R_PRC_DET: TDataSetField;
    FIN_CD_R_PRC_DETid_prc: TIntegerField;
    FIN_CD_R_PRC_DETid_tipo_financeiro: TIntegerField;
    FIN_CD_R_PRC_DETid_tipo_titulo: TIntegerField;
    FIN_CD_R_PRC_DETid_plano: TWideStringField;
    FIN_CD_R_PRC_DETid_conta: TIntegerField;
    FIN_CD_R_PRC_DETvlr_prestacao: TFMTBCDField;
    FIN_CD_R_PRC_DEThistorico: TWideStringField;
    FIN_CD_R_PRC_DETid_tipo_financeiro_cp: TIntegerField;
    FIN_CD_R_PRC_DETid_sequencia: TIntegerField;
    FIN_CD_R_PRC_DETint_nomepct: TWideStringField;
    FIN_CD_R_PRC_DETint_nometif: TWideStringField;
    FIN_CD_R_PRC_DETint_nometif_cp: TWideStringField;
    FIN_CD_R_PRC_DETint_nomefpg: TWideStringField;
    FIN_CD_R_PRC_DETint_nomectc: TWideStringField;
    FIN_CD_R_PRCid_prc: TIntegerField;
    FIN_CD_R_PRCid_lmf: TIntegerField;
    FIN_CD_R_PRCvlr_total_prc: TFMTBCDField;
    FIN_CD_R_PRCid_empresa: TIntegerField;
    FIN_CD_R_PRCdta_prestacao: TDateField;
    FIN_CD_R_PRCdta_movimento: TDateField;
    FIN_CD_R_PRCvlr_movimento: TFMTBCDField;
    FIN_CD_R_PRCvlr_saldo: TFMTBCDField;
    FIN_CD_R_PRCid_funcionario: TIntegerField;
    FIN_CD_R_PRCint_nomefun: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxPctDispDblClick(Sender: TObject);
    procedure lboxPctSelDblClick(Sender: TObject);
    procedure lboxFunSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnSelTodosPlanoClick(Sender: TObject);
    procedure btnDelTodasEmpClick(Sender: TObject);
    procedure btnDelTodosPlanoClick(Sender: TObject);
    procedure btnDelFunClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos: Boolean;
    procedure ExibirRel;
    procedure PreencherCondicao;
    VAR
      xOpcoes,xCondEmp,xCondPlano,xCondFun:String;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_PRC: TFIN_FM_R_PRC;

implementation

{$R *.dfm}

uses PSQ_UN_X_FUN, uDmGeral, enFunc, enConstantes;


function TFIN_FM_R_PRC.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((dtaIni.Text = '  /  /    ') or (dtaFin.Text = '  /  /    ')) then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end
  else
      begin
        if (dtaIni.Date >  dtaFin.Date) then
            begin
              mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
            end;
      end;

 if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;

end;


procedure TFIN_FM_R_PRC.PreencherCondicao;
var
  i:Integer;
  opcoesEmp,opcoesFun,opcoesPlano:String;
begin
   // Empresas ------------------------------------------------------------------
  xCondEmp := '';
  if lboxEmpSel.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Count - 1 do
          begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp +'                             '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp + lboxEmpSel.Items[i] + #13+#10;
               end;
          end;
     end;

  // Fuuncionario --------------------------------------------------------------
  xCondFun := '';
  if lboxFunSel.Count > 0 then
     begin
       for i := 0 to lboxFunSel.Count - 1 do
          begin
            if xCondFun <> '' then
               begin
                 xCondFun :=
                 xCondFun+ ',' +''''+trim(copy(lboxFunSel.Items[i],1,6))+'''';
                 opcoesFun :=
                 opcoesFun +'                             '+lboxFunSel.Items[i] + #13+#10;
               end;
            if xCondFun = '' then
               begin
                 xCondFun :=
                 xCondFun +''''+trim(copy(lboxFunSel.Items[i],1,6))+'''';
                 opcoesFun :=
                 opcoesFun + lboxFunSel.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesFun := 'Todos';
      end;


  // Plano de Contas ----------------------------------------------------------------
  xCondPlano := '';
  if lboxPctSel.Count > 0 then
  begin
    if lboxPctDisp.Count <> 0 then
     begin
       for i := 0 to lboxPctSel.Count - 1 do
          begin
            if xCondPlano <> '' then
               begin
                 xCondPlano :=
                 xCondPlano + ',' +''''+trim(copy(lboxPctSel.Items[i],1,9))+'''';
                 opcoesPlano :=
                 opcoesPlano +'                             '+lboxPctSel.Items[i] + #13+#10;
               end;
            if xCondPlano = '' then
               begin
                 xCondPlano :=
                 xCondPlano +''''+trim(copy(lboxPctSel.Items[i],1,9))+'''';
                 opcoesPlano :=
                 opcoesPlano + lboxPctSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesPlano:= 'Todos';
        End;
  end
   else
     begin
      opcoesPlano:= 'Todos';
     end;



   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + dtaIni.Text + ' à ' + dtaFin.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmp+#13+#10;
   xOpcoes := xOpcoes + 'Funcionário................: ' + opcoesFun+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas............: ' + opcoesPlano+#13+#10;

end;



procedure TFIN_FM_R_PRC.btnSelTodasEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
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

procedure TFIN_FM_R_PRC.btnSelTodosPlanoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxPctDisp.ClearSelection;

  if lboxPctDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPctDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxPctDisp.Items.Count - 1 do
           begin
             lboxPctSel.Items.Add(lboxPctDisp.Items[i]);
             lboxPctDisp.Items.Delete(lboxPctDisp.ItemIndex);
           end;
       lboxPctDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PRC.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');


   // Período
   rDtaIni := dtaIni.Text;
   rDtaFin := dtaFin.Text;


   PreencherCondicao;


   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Prestação de Contas') then
     begin
       FIN_CD_R_PRC.Active:= False;
       FIN_CD_R_PRC.Close;
       FIN_CD_R_PRC.Data :=
         FIN_CD_R_PRC.DataRequest(
              VarArrayOf([rDtaIni, rDtaFin, xCondEmp, xCondFun, xCondPlano]));


       if not FIN_CD_R_PRC.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_PRC.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PRC.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_PRC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_PRC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_PRC.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_PRC.PrepareReport();
            FIN_FR_R_PRC.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;
     end;

end;


procedure TFIN_FM_R_PRC.btnDelFunClick(Sender: TObject);
begin
  inherited;
   if lboxFunSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFunSel.DeleteSelected;
end;

procedure TFIN_FM_R_PRC.btnDelTodasEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_PRC.btnDelTodosPlanoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPctSel.ClearSelection;

  if lboxPctSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPctSel.Items.Count > 0 then
     begin
       for i := 0 to lboxPctSel.Items.Count - 1 do
           begin
             lboxPctDisp.Items.Add(lboxPctSel.Items[i]);
             lboxPctSel.Items.Delete(lboxPctSel.ItemIndex);
           end;
       lboxPctSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PRC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;



procedure TFIN_FM_R_PRC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_PRC);
end;

procedure TFIN_FM_R_PRC.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;

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
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;


  // Plano de Contas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPctDisp.Items.Add(trim(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString) +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
end;

procedure TFIN_FM_R_PRC.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PRC.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PRC.lboxFunSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFunSel,6,StrZero( PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxFunSel.Items.Add(StrZero( PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFIN_FM_R_PRC.lboxPctDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxPctDisp.ItemIndex > - 1 then
     begin
       lboxPctSel.Items.Add(lboxPctDisp.Items[lboxPctDisp.ItemIndex]);
       lboxPctDisp.Items.Delete(lboxPctDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PRC.lboxPctSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxPctSel.ItemIndex > -1 then
     begin
       lboxPctDisp.Items.Add(lboxPctSel.Items[lboxPctSel.ItemIndex]);
       lboxPctSel.Items.Delete(lboxPctSel.ItemIndex);
     end;
end;

end.
