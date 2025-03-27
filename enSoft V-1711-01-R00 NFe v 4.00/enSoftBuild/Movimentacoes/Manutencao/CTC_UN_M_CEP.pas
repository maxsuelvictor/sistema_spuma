unit CTC_UN_M_CEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.Mask, vcl.Wwdbedit, JvExMask, JvToolEdit,
  JvDBControls, Vcl.DBCtrls, Vcl.Buttons, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Datasnap.DBClient;

type
  TCTC_FM_M_CEP = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TwwDBEdit;
    lbldata: TLabel;
    lblfuncionario: TLabel;
    lblresponsavel: TLabel;
    cbbfuncionario: TwwDBLookupCombo;
    txtresponsavel: TwwDBEdit;
    dpkData: TJvDBDateEdit;
    gbItens: TGroupBox;
    pnlItens: TPanel;
    btnaddIten: TBitBtn;
    dgItens: TwwDBGrid;
    dsoItens: TwwDataSource;
    dgItensIButton: TwwIButton;
    txtItem: TJvDBComboEdit;
    txtItendescricao: TDBText;
    txtMarca: TwwDBEdit;
    txtModelo: TwwDBEdit;
    txtCA: TwwDBEdit;
    lblIten: TLabel;
    lblmodelo: TLabel;
    lblmarca: TLabel;
    lblCA: TLabel;
    CTC_FR_M_CEP: TfrxReport;
    CTC_XL_M_CEP: TfrxXLSExport;
    CTC_PD_M_CEP: TfrxPDFExport;
    CTC_DB_M_CEP: TfrxDBDataset;
    CTC_DB_M_CEP_EPI: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    txtqtde: TwwDBEdit;
    dpkEntrega: TJvDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbfuncionarioEnter(Sender: TObject);
    procedure btnaddItenClick(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtCAExit(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure cbbfuncionarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_CEP: TCTC_FM_M_CEP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_EPI, uDmCtc, PSQ_UN_X_ITE;

procedure TCTC_FM_M_CEP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CEP);
  pnlItens.Enabled  := False;
  cbbfuncionario.SetFocus;
end;

procedure TCTC_FM_M_CEP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CEP) then
      begin
        inherited;
        pnlItens.Enabled  := False;
        cbbfuncionario.SetFocus;
      end;
end;

procedure TCTC_FM_M_CEP.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CEP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbfuncionario.SetFocus;
     end;
end;

procedure TCTC_FM_M_CEP.acExcluirExecute(Sender: TObject);
begin
  Inherited;
 Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CEP);
end;

procedure TCTC_FM_M_CEP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_CEP.FieldByName('ID_CEP').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_CEP);
  inherited;
  dmCtc.CTC_CD_M_CEP.Close;
  dmCtc.CTC_CD_M_CEP.Data :=
  dmCtc.CTC_CD_M_CEP.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_CEP.btnaddItenClick(Sender: TObject);
begin
      dmCtc.CTC_CD_M_CEP_EPI.Insert;
      pnlItens.Enabled  := true;
      txtItem.SetFocus;
end;

procedure TCTC_FM_M_CEP.btnFiltroClick(Sender: TObject);
begin
  Inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_CEP.Close;
    dmCtc.CTC_CD_M_CEP.Data :=
    dmCtc.CTC_CD_M_CEP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_CEP.btnImprimeClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
  cargos: String;
begin
  inherited;
  if not dmCtc.CTC_CD_M_CEP.IsEmpty then
      begin
        codigo := dmCtc.ctc_cd_m_cepid_cep.text;

        dmCtc.CTC_CD_M_CEP.Close;
        dmCtc.CTC_CD_M_CEP.Data :=
        dmCtc.CTC_CD_M_CEP.DataRequest(VarArrayOf([0, codigo]));

        if not dmCtc.CTC_CD_M_CEP.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(CTC_FR_M_CEP.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      begin
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                end;
            cargos := '';



            dmGeral.CAD_CD_C_FUN.Close;
            dmGeral.CAD_CD_C_FUN.Data :=
                   dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0, dmCtc.CTC_CD_M_CEP.FieldByName('id_responsavel').AsString]));
            dmGeral.CAD_CD_C_FUN_CRG.First;
            if dmGeral.CAD_CD_C_FUN_CRG.IsEmpty then
               begin
                 CTC_FR_M_CEP.Variables['ft_cargo'] := QuotedStr('');
               end
            else
               begin
                 while not dmGeral.CAD_CD_C_FUN_CRG.eof do
                    begin
                      if trim(cargos) = '' then
                         cargos := dmGeral.CAD_CD_C_FUN_CRG.FieldByName('int_nomecrg').AsString
                      else
                         cargos := cargos + ' / ' + dmGeral.CAD_CD_C_FUN_CRG.FieldByName('int_nomecrg').AsString;
                      dmGeral.CAD_CD_C_FUN_CRG.Next;
                    end;
                 CTC_FR_M_CEP.Variables['ft_cargo'] := QuotedStr(cargos);
               end;
             dmGeral.CAD_CD_C_FUN.Close;

             CTC_FR_M_CEP.PrepareReport();
             CTC_FR_M_CEP.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TCTC_FM_M_CEP.cbbfuncionarioEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_FUN.Close;
  dmgeral.BUS_CD_C_FUN.Data :=
  dmgeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1,'']));
  cbbfuncionario.DropDown;
end;

procedure TCTC_FM_M_CEP.cbbfuncionarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_CEP.FieldByName('id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Funcionário" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_CEP.FieldByName('id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Funcionário não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_CEP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_CEP.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgItensIButton.Enabled := false;
     if dmCtc.CTC_CD_M_CEP_EPI.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_CEP_EPI.Delete;
     dmCtc.CTC_CD_M_CEP_EPI.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_M_CEP.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = false then
     pnlItens.Enabled := true;

  dmCtc.CTC_CD_M_CEP_EPI.cancel;

  if dmCtc.CTC_CD_M_CEP_EPI.IsEmpty then
     begin
       dmCtc.CTC_CD_M_CEP_EPI.Append;
       pnlItens.Enabled := true;
       txtItem.SetFocus;
     end
  else
     begin
       dmCtc.CTC_CD_M_CEP_EPI.Edit;
       pnlItens.Enabled := true;
       txtItem.SetFocus;
     end;
end;

procedure TCTC_FM_M_CEP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_CEP.Close;
  FreeAndNil(CTC_FM_M_CEP);
end;

procedure TCTC_FM_M_CEP.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_CEP.Close;
  dmCtc.CTC_CD_M_CEP.Data := dmCtc.CTC_CD_M_CEP.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_CEP.Open;
end;

procedure TCTC_FM_M_CEP.FormShow(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_FUN.Close;
  dmgeral.BUS_CD_C_FUN.Data :=
  dmgeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1,'']));
end;

procedure TCTC_FM_M_CEP.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnaddIten.Focused) or (dgItens.Focused) or
     (not dgItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmCtc.CTC_CD_M_CEP_EPI.Cancel;
        dmCtc.CTC_CD_M_CEP_EPI.edit;

        finally
           pnLItens.Enabled := false;
        end;
      end;
end;

procedure TCTC_FM_M_CEP.txtCAExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtItem.Focused or txtmarca.Focused or txtmodelo.Focused or
     dgItens.Focused then
     begin
       exit;
     end;

  dmCtc.CTC_CD_M_CEP_EPI.Post;

  pnlItens.Enabled := false;
  btnaddIten.SetFocus;
end;

procedure TCTC_FM_M_CEP.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  // Comentado por Maxsuel Victor, depois de conversar com Mariel e Telma, em
  // 10/05/2017 as 10:30

  { PSQ_FM_X_EPI := TPSQ_FM_X_EPI.Create(Self);
   PSQ_FM_X_EPI.ShowModal;

      if not dmCtc.CTC_CD_M_CEP_EPI.IsEmpty then
         begin
           dmCtc.CTC_CD_M_CEP_EPI.FieldByName('ID_EPI').AsInteger:=
             PSQ_FM_X_EPI.BUS_CD_C_EPI.FieldByName('ID_ITEM').AsInteger;

           dmCtc.CTC_CD_M_CEP_EPI.FieldByName('INT_NOMEEPI').AssTRING:=
             PSQ_FM_X_EPI.BUS_CD_C_EPI.FieldByName('DESCRICAO').AssTRING;
         end;
   PSQ_FM_X_EPI.Free;}

   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   xFormRespPSQ_ITE := CTC_FM_M_CEP.Name;
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmCtc.CTC_CD_M_CEP_EPI.FieldByName('ID_EPI').AsInteger:=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmCtc.CTC_CD_M_CEP_EPI.FieldByName('INT_NOMEEPI').AssTRING:=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_M_CEP.txtItemExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_CEP_EPI.FieldByName('id_epi').Text) = '' then
     begin
       ShowMessage('O campo "Item" não foi preenchido.');
       exit;
     end;

  dmgeral.BUS_CD_C_ITE.Close;
  dmgeral.BUS_CD_C_ITE.Data :=
  dmgeral.BUS_CD_C_ITE.DataRequest(
     VarArrayOf([0, dmCtc.CTC_CD_M_CEP_EPI.FieldByName('id_epi').Text]));

  if dmgeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Item não cadastrado.');
     end
  else
    begin
      if (dmgeral.BUS_CD_C_ITE.FieldByName('INT_CTC_EPI').IsNull) or
         (dmgeral.BUS_CD_C_ITE.FieldByName('INT_CTC_EPI').AsBoolean  = false) then
          begin
            ShowMessage('Só é permitido item de grupo de estoque de tipo EPI.');
            dmgeral.BUS_CD_C_ITE.close;
            abort;
          end;
      dmCtc.CTC_CD_M_CEP_EPI.FieldByName('INT_NOMEEPI').AssTRING:=
        dmgeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AssTRING;
    end;
  dmgeral.BUS_CD_C_ITE.close;
end;

procedure TCTC_FM_M_CEP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;
end.
