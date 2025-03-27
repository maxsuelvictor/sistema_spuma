unit CSU_UN_M_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Datasnap.DBClient,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, JvToolEdit, Vcl.Mask, JvExMask,
  Vcl.ComCtrls, JvgPage, frxClass, frxDBSet;

type
  TCSU_FM_M_ETQ = class(TPAD_FM_X_FRM)
    Panel8: TPanel;
    jpgGerencial: TJvgPageControl;
    tbFiltro: TTabSheet;
    Panel2: TPanel;
    gbxFiltro: TGroupBox;
    rgConsEtiqueta: TRadioGroup;
    pnCodbarraEtq: TPanel;
    Label9: TLabel;
    txtCodBarraEtq: TEdit;
    cxButton2: TcxButton;
    pnItem: TPanel;
    txtCodItem: TJvComboEdit;
    txtDescItem: TEdit;
    txtCodCor: TJvComboEdit;
    txtDescCor: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    txtUnd: TEdit;
    Label8: TLabel;
    lblPeriodo: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    txtPeriodoIni: TJvDateEdit;
    txtPeriodoFinal: TJvDateEdit;
    chkIncluirPeriodo: TCheckBox;
    Label10: TLabel;
    cboxSituacaoItem: TComboBox;
    Label11: TLabel;
    chkIncluirOP: TCheckBox;
    wwDBGrid3: TwwDBGrid;
    Label12: TLabel;
    PCP_CD_M_ETQ: TClientDataSet;
    txtNroLoteOP: TEdit;
    btnSairTela: TButton;
    Label1: TLabel;
    cbSitEtiquetas: TComboBox;
    lblQtdeEtiq: TLabel;
    Label3: TLabel;
    tbGerEtiq: TTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    lblQtdeEtiqInf: TLabel;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Label22: TLabel;
    cbConsEtqEntr: TcxButton;
    cbSitEtiq: TComboBox;
    wwDBGrid1: TwwDBGrid;
    cbTodosProdutos: TCheckBox;
    gpItens: TGroupBox;
    Label14: TLabel;
    txtCodItemInf: TJvComboEdit;
    txtDescItemInf: TEdit;
    txtUndInf: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    txtCodCorInf: TJvComboEdit;
    txtDescCorInf: TEdit;
    frxEtiq: TfrxReport;
    frxDB_EtiqSnt: TfrxDBDataset;
    frxEtiqSemEnt: TfrxReport;
    cbImprimir: TcxButton;
    dsoEtqSemEnt: TDataSource;
    PCP_CD_M_ETQ_SNT: TClientDataSet;
    cxButton3: TcxButton;
    frxDB_Etiq: TfrxDBDataset;
    procedure rgConsEtiquetaClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure chkIncluirPeriodoClick(Sender: TObject);
    procedure chkIncluirOPClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairTelaClick(Sender: TObject);
    procedure txtCodItemButtonClick(Sender: TObject);
    procedure txtCodCorButtonClick(Sender: TObject);
    procedure txtCodItemExit(Sender: TObject);
    procedure txtCodCorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSitEtiquetasChange(Sender: TObject);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure cboxSituacaoItemChange(Sender: TObject);
    procedure cbConsEtqEntrClick(Sender: TObject);
    procedure cbTodosProdutosClick(Sender: TObject);
    procedure jpgGerencialChange(Sender: TObject);
    procedure txtCodItemInfExit(Sender: TObject);
    procedure txtCodCorInfExit(Sender: TObject);
    procedure cbImprimirClick(Sender: TObject);
    procedure frxDB_EtiqSntCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_ETQ: TCSU_FM_M_ETQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_COR, enSoftMenu;

procedure TCSU_FM_M_ETQ.btnSairTelaClick(Sender: TObject);
begin
  inherited;
  frmSoftMenu.rbMenu.ShowTabGroups := true;
  close;
end;

procedure TCSU_FM_M_ETQ.cboxSituacaoItemChange(Sender: TObject);
begin
  inherited;
  if cboxSituacaoItem.ItemIndex = 1 then
     begin
       Showmessage('Não é permitido escolher essa opção para a situação de etiqueta escolhida.');
       cboxSituacaoItem.OnChange := nil;
       cboxSituacaoItem.ItemIndex := 0;
       cboxSituacaoItem.OnChange  := cboxSituacaoItemChange;
     end;

end;

procedure TCSU_FM_M_ETQ.cbSitEtiquetasChange(Sender: TObject);
begin
  inherited;
   if cbSitEtiquetas.itemindex = 0 then
      cboxSituacaoItem.Enabled := true;

   if cbSitEtiquetas.ItemIndex in [1,2] then
      begin
        cboxSituacaoItem.ItemIndex := 2;
        cboxSituacaoItem.Enabled := false;
      end;
   if cbSitEtiquetas.ItemIndex = 3 then
      begin
        cboxSituacaoItem.ItemIndex := 0;
        cboxSituacaoItem.Enabled := false;
      end;
   if cbSitEtiquetas.ItemIndex = 4 then
      begin
        cboxSituacaoItem.ItemIndex := 1;
        cboxSituacaoItem.Enabled := false;
      end;
   if cbSitEtiquetas.ItemIndex = 5 then
      begin
        cboxSituacaoItem.ItemIndex := 0;
        cboxSituacaoItem.Enabled := true;
      end;

end;

procedure TCSU_FM_M_ETQ.cbTodosProdutosClick(Sender: TObject);
begin
  inherited;
  gpItens.Enabled := true;
  if cbTodosProdutos.Checked then
     begin
       txtCodItemInf.text := '';
       txtDescItemInf.Text := '';
       txtUndInf.Text      := '';

       txtCodCorInf.Text := '';
       txtDescCorInf.Text := '';

       gpItens.Enabled := false;
     end;
end;

procedure TCSU_FM_M_ETQ.chkIncluirOPClick(Sender: TObject);
begin
  inherited;

  if chkIncluirOP.Checked then
     begin
       txtNroLoteOP.Enabled := true;
       txtNroLoteOP.color   := clWhite;
     end
  else
     begin
       txtNroLoteOP.Text     := '';
       txtNroLoteOP.Enabled := false;
       txtNroLoteOP.color   := $00DADADA;
     end;
end;

procedure TCSU_FM_M_ETQ.chkIncluirPeriodoClick(Sender: TObject);
begin
  inherited;
  if chkIncluirPeriodo.Checked then
     begin
       txtPeriodoIni.enabled    := true;
       txtPeriodoFinal.enabled  := true;

       txtPeriodoIni.color      := clWhite;
       txtPeriodoFinal.color    := clWhite;

       cboxSituacaoItem.Enabled := true;

       cboxSituacaoItem.Enabled := true;

       if cbSitEtiquetas.ItemIndex in [1,2] then
          begin
            cboxSituacaoItem.ItemIndex := 2;
            cboxSituacaoItem.Enabled := false;
          end;
       if cbSitEtiquetas.ItemIndex = 3 then
          begin
            cboxSituacaoItem.ItemIndex := 0;
            cboxSituacaoItem.Enabled := false;
          end;
        if cbSitEtiquetas.ItemIndex = 4 then
          begin
            cboxSituacaoItem.ItemIndex := 1;
            cboxSituacaoItem.Enabled := false;
          end;
     end
  else
     begin
        txtPeriodoIni.Text    := '';
        txtPeriodoFinal.Text  := '';
        txtPeriodoIni.enabled    := false;
        txtPeriodoFinal.enabled  := false;
        txtPeriodoIni.color      := $00DADADA;
        txtPeriodoFinal.color    := $00DADADA;
        cboxSituacaoItem.Enabled := false;
     end;
end;

procedure TCSU_FM_M_ETQ.cxButton1Click(Sender: TObject);
var
  rIncluiPer, rIncluiOpr: String;
  mens: string;
begin
  inherited;

  mens := '';

  if (trim(txtCodItem.Text) = '') or (trim(txtCodItem.Text) = '0') then
     begin
       ShowMessage('O campo código do item deve ser preenchido.');
       exit;
     end;

  if (trim(txtCodCor.Text) = '') or (trim(txtCodCor.Text) = '0') then
     begin
       ShowMessage('O campo código da cor deve ser preenchido.');
       exit;
     end;

  rIncluiPer := 'N';
  if chkIncluirPeriodo.Checked then
     begin
       rIncluiPer := 'S';

       if (txtPeriodoIni.Text = '  /  /    ') or (txtPeriodoFinal.Text = '  /  /    ') then
           begin
             mens := mens +  '.O período deve ser preenchido.' + #13;
           end
       else
          if (txtPeriodoIni.Date >  txtPeriodoFinal.Date) then
           begin
             mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
           end;

       if trim(mens) <> '' then
          begin
            Showmessage(mens);
            exit;
          end;

     end;

  rIncluiOpr := 'N';
  if chkIncluirOP.Checked then
     begin
       if trim(txtNroLoteOP.Text) = '' then
          begin
            Showmessage('O número da O.P deve ser informado.');
            exit;
          end;

       rIncluiOpr := 'S';
     end;

  PCP_CD_M_ETQ.Close;
     PCP_CD_M_ETQ.Data :=
        PCP_CD_M_ETQ.DataRequest(
              VarArrayOf([19,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                          txtCodItem.Text, txtCodCor.Text,rIncluiPer, inttostr(cboxSituacaoItem.ItemIndex), txtPeriodoIni.Text,
                          txtPeriodoFinal.Text, rIncluiOpr, txtNroLoteOP.Text,inttostr(cbSitEtiquetas.ItemIndex)]));
  lblQtdeEtiq.Caption := 'Quantidade de etiquetas encontrada:  ' + inttostr(PCP_CD_M_ETQ.RecordCount);
end;

procedure TCSU_FM_M_ETQ.cxButton2Click(Sender: TObject);
begin
  inherited;


  if trim(txtCodBarraEtq.Text) = '' then
     begin
       ShowMessage('O campo código de barra deve ser preenchido.');
       exit;
     end;


  PCP_CD_M_ETQ.Close;
     PCP_CD_M_ETQ.Data :=
        PCP_CD_M_ETQ.DataRequest(
              VarArrayOf([0,txtCodBarraEtq.text]));

  lblQtdeEtiq.Caption := 'Quantidade de etiquetas encontrada:  ' + inttostr(PCP_CD_M_ETQ.RecordCount);
end;

procedure TCSU_FM_M_ETQ.cxButton3Click(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;

   if PCP_CD_M_ETQ.IsEmpty then
      begin
        ShowMessage('Não há registro para impressão!');
        exit;
      end;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(frxEtiqSemEnt.FindObject('imgEmpresa1'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;

   frxEtiq.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

   frxEtiq.PrepareReport();
   frxEtiq.ShowReport();



end;

procedure TCSU_FM_M_ETQ.cbConsEtqEntrClick(Sender: TObject);
var
  rIncluiPer, rIncluiOpr: String;
  mens: string;
  TodosProd: String;
begin
  inherited;

  mens := '';

  TodosProd := 'S';

  if cbTodosProdutos.Checked = false then
     begin
        TodosProd := 'N';
        if (trim(txtCodItemInf.Text) = '') or (trim(txtCodItemInf.Text) = '0') then
           begin
             ShowMessage('O campo código do item deve ser preenchido.');
             exit;
           end;
     end;

  PCP_CD_M_ETQ_SNT.Close;
     PCP_CD_M_ETQ_SNT.Data :=
        PCP_CD_M_ETQ_SNT.DataRequest(
              VarArrayOf([1,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,TodosProd,
                          txtCodItemInf.Text, txtCodCorInf.Text,inttostr(cbSitEtiq.ItemIndex)]));

  lblQtdeEtiqInf.Caption := 'Quantidade de etiquetas encontrada:  ' + inttostr(PCP_CD_M_ETQ_SNT.RecordCount);
end;

procedure TCSU_FM_M_ETQ.cbImprimirClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;


  if PCP_CD_M_ETQ_SNT.IsEmpty then
     begin
       ShowMessage('Não há registro para impressão!');
       exit;
     end;


  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(frxEtiqSemEnt.FindObject('imgEmpresa2'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;

   frxEtiqSemEnt.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

   frxEtiqSemEnt.PrepareReport();
   frxEtiqSemEnt.ShowReport();

end;

procedure TCSU_FM_M_ETQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  PCP_CD_M_ETQ.Close;
  FreeAndNil(CSU_FM_M_ETQ);
end;

procedure TCSU_FM_M_ETQ.FormShow(Sender: TObject);
begin
  inherited;
  rgConsEtiqueta.ItemIndex := 0;
  rgConsEtiquetaClick(self);


  PCP_CD_M_ETQ_SNT.Close;
     PCP_CD_M_ETQ_SNT.Data :=
        PCP_CD_M_ETQ_SNT.DataRequest(
              VarArrayOf([0,'']));

  frmSoftMenu.rbMenu.ShowTabGroups := false;

  cbTodosProdutos.Checked := true;

end;

procedure TCSU_FM_M_ETQ.frxDB_EtiqSntCheckEOF(Sender: TObject; var Eof: Boolean);
var
   qtde_dias: Currency;
begin
  inherited;

  qtde_dias := date - PCP_CD_M_ETQ_SNT.FieldByName('dta_impressa').AsDateTime;
  frxEtiqSemEnt.Variables['qtde_dias'] := QuotedStr(currtostr(qtde_dias));
end;

procedure TCSU_FM_M_ETQ.jpgGerencialChange(Sender: TObject);
begin
  inherited;

  if not (PCP_CD_M_ETQ.IsEmpty) then
     PCP_CD_M_ETQ.EmptyDataSet;

   if not (PCP_CD_M_ETQ_SNT.IsEmpty) then
     PCP_CD_M_ETQ_SNT.EmptyDataSet;

   {PCP_CD_M_ETQ.Close;
     PCP_CD_M_ETQ.Data :=
        PCP_CD_M_ETQ.DataRequest(
              VarArrayOf([0,'-1']));}
end;

procedure TCSU_FM_M_ETQ.txtCodItemInfExit(Sender: TObject);
begin
  inherited;
  if (trim(txtCodItemInf.Text) <> '0') and (trim(txtCodItemInf.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_ITE.Close;
        dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, trim(txtCodItemInf.Text)]));

        if not dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
            txtDescItemInf.Text := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
            txtUndInf.Text      := dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
          end
        else
          begin
            showMessage('Item não cadastrado.');
            txtDescItemInf.Text := '';
            txtUndInf.Text      := '';
          end;
      end
  else
     begin
       txtCodItemInf.Text  := '';
       txtDescItemInf.Text := '';
       txtUndInf.Text      := '';
     end;
end;

procedure TCSU_FM_M_ETQ.rgConsEtiquetaClick(Sender: TObject);
begin
  inherited;

  if rgConsEtiqueta.ItemIndex = 0 then
     begin
       pnCodbarraEtq.Enabled := true;
       pnCodbarraEtq.color   := clWhite;

       pnItem.Enabled        := false;
       txtCodItem.color      := $00DADADA;
       txtCodItem.text       := '';
       txtDescItem.Text      := '';
       txtUnd.Text           := '';
       txtCodCor.color      := $00DADADA;
       txtCodCor.text        := '';
       txtDescCor.Text       := '';

       txtPeriodoIni.Text    := '';
       txtPeriodoFinal.Text  := '';
       txtNroLoteOP.Text     := '';

       txtPeriodoIni.enabled    := false;
       txtPeriodoFinal.enabled  := false;
       txtPeriodoIni.color      := $00DADADA;
       txtPeriodoFinal.color    := $00DADADA;
       cboxSituacaoItem.Enabled := false;

       txtNroLoteOP.Enabled := false;
       txtNroLoteOP.color   := $00DADADA;

       chkIncluirPeriodo.Checked := false;
       chkIncluirOP.Checked      := false;
     end
  else
     begin

       txtCodBarraEtq.Text   := '';
       pnCodbarraEtq.Enabled := false;
       pnCodbarraEtq.color   :=  $00DADADA;

       pnItem.Enabled        := true;
       txtCodItem.color      := clWhite;
       txtCodCor.color       := clWhite;
     end;
end;

procedure TCSU_FM_M_ETQ.txtCodCorButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_COR := TPSQ_FM_X_COR.Create(Self);
  PSQ_FM_X_COR.ShowModal;
  if not PSQ_FM_X_COR.BUS_CD_C_COR.IsEmpty then
     begin
       txtCodCor.Text :=
               PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('id_cor').AsString;

       txtDescCor.text :=
               PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;

     end;
   PSQ_FM_X_COR.Free;
end;

procedure TCSU_FM_M_ETQ.txtCodCorExit(Sender: TObject);
begin
  inherited;
  if (trim(txtCodCor.Text) <> '0') and (trim(txtCodCor.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_COR.Close;
        dmGeral.BUS_CD_C_COR.Data :=
          dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([0, trim(txtCodCor.Text)]));

        if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            txtDescCor.Text := dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
          end
        else
          begin
            showMessage('Cor não cadastrado.');
            txtDescCor.Text := '';
          end;
      end
  else
     begin
       txtCodCor.Text  := '';
       txtDescCor.Text := '';
     end;
end;

procedure TCSU_FM_M_ETQ.txtCodCorInfExit(Sender: TObject);
begin
  inherited;
  if (trim(txtCodCorInf.Text) <> '0') and (trim(txtCodCorInf.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_COR.Close;
        dmGeral.BUS_CD_C_COR.Data :=
          dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([0, trim(txtCodCorInf.Text)]));

        if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            txtDescCorInf.Text := dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
          end
        else
          begin
            showMessage('Cor não cadastrado.');
            txtDescCorInf.Text := '';
          end;
      end
  else
     begin
       txtCodCorInf.Text  := '';
       txtDescCorInf.Text := '';
     end;
end;

procedure TCSU_FM_M_ETQ.txtCodItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  xFormRespPSQ_ITE := CSU_FM_M_ETQ.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       txtCodItem.Text :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

       txtDescItem.text :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

       txtUnd.text :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
     end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCSU_FM_M_ETQ.txtCodItemExit(Sender: TObject);
begin
  inherited;
  if (trim(txtCodItem.Text) <> '0') and (trim(txtCodItem.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_ITE.Close;
        dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, trim(txtCodItem.Text)]));

        if not dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
            txtDescItem.Text := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
            txtUnd.Text      := dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
          end
        else
          begin
            showMessage('Item não cadastrado.');
            txtDescItem.Text := '';
            txtUnd.Text      := '';
          end;
      end
  else
     begin
       txtCodItem.Text  := '';
       txtDescItem.Text := '';
       txtUnd.Text      := '';
     end;
end;

procedure TCSU_FM_M_ETQ.wwDBGrid3TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  inherited;
  if (AFieldName <> 'Criada em') and (AFieldName <> 'Entrada em') and (AFieldName <> 'Saida em') then
      if AFieldName = 'int_num_lote_opr' then
         begin
           PCP_CD_M_ETQ.IndexFieldNames := 'id_opr';
           PCP_CD_M_ETQ.First;
         end
      else
         begin
           PCP_CD_M_ETQ.IndexFieldNames := AFieldName;
           PCP_CD_M_ETQ.First;
         end;
end;

end.
