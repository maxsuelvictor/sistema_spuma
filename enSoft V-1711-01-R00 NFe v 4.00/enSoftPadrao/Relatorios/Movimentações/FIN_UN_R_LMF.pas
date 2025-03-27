unit FIN_UN_R_LMF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, Data.DB, Datasnap.DBClient, frxClass,
  frxExportPDF, frxExportXLS, frxDBSet;

type
  TFIN_FM_R_LMF = class(TPAD_FM_X_REL)
    cbbSituacao: TComboBox;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    dtaIni: TJvDateEdit;
    dtaFin: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    Label4: TLabel;
    Label5: TLabel;
    lboxFunSel: TListBox;
    lboxPctDisp: TListBox;
    lboxPctSel: TListBox;
    Label6: TLabel;
    Label7: TLabel;
    lboxTifDisp: TListBox;
    lboxTifSel: TListBox;
    Label8: TLabel;
    Label9: TLabel;
    lboxContaSel: TListBox;
    lboxContaDisp: TListBox;
    Label10: TLabel;
    Label11: TLabel;
    pmEmpSel: TPopupMenu;
    pmTifSel: TPopupMenu;
    pmFunDel: TPopupMenu;
    pmCtcSel: TPopupMenu;
    pmPctSel: TPopupMenu;
    pmEmpDel: TPopupMenu;
    pmPctDel: TPopupMenu;
    pmTifDel: TPopupMenu;
    pmCtcDel: TPopupMenu;
    Label12: TLabel;
    FIN_CD_R_LMF_MOV: TClientDataSet;
    FIN_CD_R_LMF_EXT: TClientDataSet;
    FIN_DB_R_LMF_MOV: TfrxDBDataset;
    FIN_XL_R_LMF: TfrxXLSExport;
    FIN_PD_R_LMF: TfrxPDFExport;
    FIN_FR_R_LMF_MOV: TfrxReport;
    FIN_FR_R_LMF_EXT: TfrxReport;
    FIN_DB_R_LMF_EXT: TfrxDBDataset;
    btnSelTodasEmp: TMenuItem;
    btnDelTodasEmp: TMenuItem;
    btnSelTodosPlano: TMenuItem;
    btnSelTodosTif: TMenuItem;
    btnSelTodasContas: TMenuItem;
    btnDelTodosPlano: TMenuItem;
    btnDelTodosTif: TMenuItem;
    btnDelTodosConta: TMenuItem;
    btnDelFun: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxPctSelDblClick(Sender: TObject);
    procedure lboxPctDispDblClick(Sender: TObject);
    procedure lboxTifDispDblClick(Sender: TObject);
    procedure lboxTifSelDblClick(Sender: TObject);
    procedure lboxContaDispDblClick(Sender: TObject);
    procedure lboxContaSelDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxFunSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnDelTodasEmpClick(Sender: TObject);
    procedure btnSelTodosPlanoClick(Sender: TObject);
    procedure btnSelTodosTifClick(Sender: TObject);
    procedure btnSelTodasContasClick(Sender: TObject);
    procedure btnDelTodosPlanoClick(Sender: TObject);
    procedure btnDelTodosTifClick(Sender: TObject);
    procedure btnDelTodosContaClick(Sender: TObject);
    procedure btnDelFunClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function  TestarCampos: Boolean;
    var
      xOpcoes,xCondEmp,xCondPlano,xCondTif,xCondConta,xCondFun:String;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_LMF: TFIN_FM_R_LMF;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_FUN;

procedure TFIN_FM_R_LMF.PreencherCondicao;
var
  i:Integer;
  opcoesEmp,opcoesFun,opcoesPlano,opcoesTif,opcoesConta:String;
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



  // Tipo Financeiro ----------------------------------------------------------------
  xCondTif := '';
  if lboxTifSel.Count > 0 then
  begin
    if lboxTifDisp.Count <> 0 then
     begin
       for i := 0 to lboxTifSel.Count - 1 do
          begin
            if xCondTif <> '' then
               begin
                 xCondTif :=
                 xCondTif + ',' +''''+trim(copy(lboxTifSel.Items[i],1,6))+'''';
                 opcoesTif :=
                 opcoesTif +'                             '+lboxTifSel.Items[i] + #13+#10;
               end;
            if xCondTif = '' then
               begin
                 xCondTif :=
                 xCondTif +''''+trim(copy(lboxTifSel.Items[i],1,9))+'''';
                 opcoesTif :=
                 opcoesTif + lboxTifSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesTif:= 'Todos';
        End;
  end
   else
     begin
      opcoesTif:= 'Todos';
     end;



  // Conta Corrente ----------------------------------------------------------------
  xCondConta := '';
  if lboxContaSel.Count > 0 then
  begin
    if lboxContaDisp.Count <> 0 then
     begin
       for i := 0 to lboxContaSel.Count - 1 do
          begin
            if xCondConta <> '' then
               begin
                 xCondConta :=
                 xCondConta + ',' +''''+trim(copy(lboxContaSel.Items[i],1,6))+'''';
                 opcoesConta :=
                 opcoesConta +'                             '+lboxContaSel.Items[i] + #13+#10;
               end;
            if xCondConta = '' then
               begin
                 xCondConta :=
                 xCondConta +''''+trim(copy(lboxContaSel.Items[i],1,6))+'''';
                 opcoesConta :=
                 opcoesConta + lboxContaSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesConta:= 'Todos';
        End;
  end
   else
     begin
      opcoesConta:= 'Todos';
     end;


   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + dtaIni.Text + ' à ' + dtaFin.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmp+#13+#10;
   xOpcoes := xOpcoes + 'Funcionário................: ' + opcoesFun+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas............: ' + opcoesPlano+#13+#10;
   xOpcoes := xOpcoes + 'Tipo Financeiro............: ' + opcoesTif+#13+#10;
   xOpcoes := xOpcoes + 'Conta Corrente.............: ' + opcoesConta+#13+#10;

end;

function TFIN_FM_R_LMF.TestarCampos: Boolean;
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



procedure TFIN_FM_R_LMF.btnDelFunClick(Sender: TObject);
begin
  inherited;
   if lboxFunSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFunSel.DeleteSelected;
end;

procedure TFIN_FM_R_LMF.btnDelTodasEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_LMF.btnDelTodosContaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxContaSel.ClearSelection;

  if lboxContaSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxContaSel.Items.Count > 0 then
     begin
       for i := 0 to lboxContaSel.Items.Count - 1 do
           begin
             lboxContaDisp.Items.Add(lboxContaSel.Items[i]);
             lboxContaSel.Items.Delete(lboxContaSel.ItemIndex);
           end;
       lboxContaSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_LMF.btnDelTodosPlanoClick(Sender: TObject);
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

procedure TFIN_FM_R_LMF.btnDelTodosTifClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTifSel.ClearSelection;

  if lboxTifSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTifSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTifSel.Items.Count - 1 do
           begin
             lboxTifDisp.Items.Add(lboxTifSel.Items[i]);
             lboxTifSel.Items.Delete(lboxTifSel.ItemIndex);
           end;
       lboxTifSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_LMF.btnImprimirClick(Sender: TObject);
begin
  inherited;
 if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_LMF.btnSelTodasContasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxContaDisp.ClearSelection;

  if lboxContaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxContaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxContaDisp.Items.Count - 1 do
           begin
             lboxContaSel.Items.Add(lboxContaDisp.Items[i]);
             lboxContaDisp.Items.Delete(lboxContaDisp.ItemIndex);
           end;
       lboxContaDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_LMF.btnSelTodasEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_LMF.btnSelTodosPlanoClick(Sender: TObject);
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

procedure TFIN_FM_R_LMF.btnSelTodosTifClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTifDisp.ClearSelection;

  if lboxTifDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTifDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTifDisp.Items.Count - 1 do
           begin
             lboxTifSel.Items.Add(lboxTifDisp.Items[i]);
             lboxTifDisp.Items.Delete(lboxTifDisp.ItemIndex);
           end;
       lboxTifDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_LMF.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin,rStatus,PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');


   // Período
   rDtaIni := dtaIni.Text;
   rDtaFin := dtaFin.Text;


   rStatus := '';

   if cbbSituacao.ItemIndex<3 then
     rStatus := IntToStr(cbbSituacao.ItemIndex);

   PreencherCondicao;


   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Movimento Simples') then
     begin
       FIN_CD_R_LMF_EXT.Close;
       FIN_CD_R_LMF_MOV.Active:= False;
       FIN_CD_R_LMF_MOV.Close;
       FIN_CD_R_LMF_MOV.Data :=
         FIN_CD_R_LMF_MOV.DataRequest(
              VarArrayOf([rTipoData, rDtaIni, rDtaFin,rStatus,xCondEmp, xCondFun, xCondPlano,xCondTif, xCondConta]));


       if not FIN_CD_R_LMF_MOV.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_LMF_MOV.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_LMF_MOV.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_LMF_MOV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_LMF_MOV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_LMF_MOV.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_LMF_MOV.PrepareReport();
            FIN_FR_R_LMF_MOV.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;
     end;


   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Extrato do Funcionário') then
     begin
       FIN_CD_R_LMF_MOV.Close;
       FIN_CD_R_LMF_EXT.Active:= False;
       FIN_CD_R_LMF_EXT.Close;
       FIN_CD_R_LMF_EXT.Data :=
         FIN_CD_R_LMF_EXT.DataRequest(
              VarArrayOf([rTipoData, rDtaIni, rDtaFin,rStatus,xCondEmp, xCondFun, xCondPlano,xCondTif, xCondConta]));


       if not FIN_CD_R_LMF_EXT.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_LMF_EXT.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_LMF_EXT.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_LMF_EXT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_LMF_EXT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_LMF_EXT.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_LMF_EXT.PrepareReport();
            FIN_FR_R_LMF_EXT.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;
     end;

end;



procedure TFIN_FM_R_LMF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_LMF);
end;

procedure TFIN_FM_R_LMF.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);

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

  // Tipo financeiro ------------------------------------------------------------------
  dmGeral.BUS_CD_C_TIF.Close;
  dmGeral.BUS_CD_C_TIF.Data :=
  dmGeral.BUS_CD_C_TIF.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TIF.First;

       while not dmGeral.BUS_CD_C_TIF.eof do
          begin
            lboxTifDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TIF.FieldByName('ID_TIPO_FINANCEIRO').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TIF.Next;
          end;
     end;
  dmGeral.BUS_CD_C_TIF.Close;

   // Conta Corrente ------------------------------------------------------------------
  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.BUS_CD_C_CTC.Data :=
  dmGeral.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([4, '%']));

  if not dmGeral.BUS_CD_C_CTC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CTC.First;

       while not dmGeral.BUS_CD_C_CTC.eof do
          begin
            lboxContaDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CTC.Next;
          end;
     end;
  dmGeral.BUS_CD_C_CTC.Close;


end;

procedure TFIN_FM_R_LMF.lboxContaDispDblClick(Sender: TObject);
begin
  inherited;
 if lboxContaDisp.ItemIndex > - 1 then
     begin
       lboxContaSel.Items.Add(lboxContaDisp.Items[lboxContaDisp.ItemIndex]);
       lboxContaDisp.Items.Delete(lboxContaDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxContaSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxContaSel.ItemIndex > -1 then
     begin
       lboxContaDisp.Items.Add(lboxContaSel.Items[lboxContaSel.ItemIndex]);
       lboxContaSel.Items.Delete(lboxContaSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxFunSelKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_R_LMF.lboxPctDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxPctDisp.ItemIndex > - 1 then
     begin
       lboxPctSel.Items.Add(lboxPctDisp.Items[lboxPctDisp.ItemIndex]);
       lboxPctDisp.Items.Delete(lboxPctDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxPctSelDblClick(Sender: TObject);
begin
  inherited;
 if lboxPctSel.ItemIndex > -1 then
     begin
       lboxPctDisp.Items.Add(lboxPctSel.Items[lboxPctSel.ItemIndex]);
       lboxPctSel.Items.Delete(lboxPctSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxTifDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTifDisp.ItemIndex > - 1 then
     begin
       lboxTifSel.Items.Add(lboxTifDisp.Items[lboxTifDisp.ItemIndex]);
       lboxTifDisp.Items.Delete(lboxTifDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lboxTifSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTifSel.ItemIndex > -1 then
     begin
       lboxTifDisp.Items.Add(lboxTifSel.Items[lboxTifSel.ItemIndex]);
       lboxTifSel.Items.Delete(lboxTifSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_LMF.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  //lbxRelatorios
end;

end.
