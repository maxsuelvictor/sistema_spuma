unit PCP_UN_C_FPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, Vcl.Buttons, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, frxExportXLS,
  frxClass, frxExportPDF, frxDBSet, Datasnap.DBClient;

type
  TPCP_FM_C_FPI = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    txtCodigo: TDBEdit;
    gbFTI: TGroupBox;
    pnItensFTI: TPanel;
    lblItemFTI: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    txtUnidFTI: TDBText;
    txtQtdeFTI: TwwDBEdit;
    txtItemFTI: TJvDBComboEdit;
    btn_Add_Itens_FTI: TBitBtn;
    grdFTI: TwwDBGrid;
    grdItensIButtonFTI: TwwIButton;
    Label5: TLabel;
    Label6: TLabel;
    gbITE: TGroupBox;
    pnItensITE: TPanel;
    lblItemITE: TLabel;
    Label11: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    txtUnidITE: TDBText;
    txtItemITE: TJvDBComboEdit;
    btn_Add_Itens_ITE: TBitBtn;
    grdITE: TwwDBGrid;
    grdItensIButtonITE: TwwIButton;
    Label10: TLabel;
    txtQtdeITE: TwwDBEdit;
    dsoFti: TwwDataSource;
    dsoFtiIte: TwwDataSource;
    Label3: TLabel;
    Label18: TLabel;
    pnlCorTamanhoITE: TPanel;
    lblTamanhoITE: TLabel;
    lblCorITE: TLabel;
    cbbCorITE: TwwDBLookupCombo;
    cbbTamanhoITE: TwwDBLookupCombo;
    Label2: TLabel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    txtItemFPI: TJvDBComboEdit;
    txtItemDescFPI: TDBText;
    txtUnidFPI: TDBText;
    pnlCorTamanhoFTI: TPanel;
    lblTamanhoFTI: TLabel;
    lblCorFTI: TLabel;
    cbbCorFTI: TwwDBLookupCombo;
    cbbTamanhoFTI: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbTipoAcao: TwwDBComboBox;
    cbbCorFPI: TwwDBLookupCombo;
    cbbTamanhoFPI: TwwDBLookupCombo;
    cbbTp: TwwDBComboBox;
    Label7: TLabel;
    cbbSetor: TwwDBLookupCombo;
    btnAtualizaCont: TBitBtn;
    PCP_FR_C_FPI: TfrxReport;
    PCP_DB_C_FPI: TfrxDBDataset;
    PCP_PD_C_FPI: TfrxPDFExport;
    PCP_XL_C_FPI: TfrxXLSExport;
    PCP_DB_C_FPI_FTI: TfrxDBDataset;
    PCP_DB_C_FPI_FTI_ITE: TfrxDBDataset;
    procedure txtItemFPIButtonClick(Sender: TObject);
    procedure cbbTamanhoFPIEnter(Sender: TObject);
    procedure cbbCorFPIEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtItemFPIExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbTipoAcaoEnter(Sender: TObject);
    procedure btn_Add_Itens_FTIClick(Sender: TObject);
    procedure pnItensFTIExit(Sender: TObject);
    procedure txtItemFTIButtonClick(Sender: TObject);
    procedure txtItemFTIExit(Sender: TObject);
    procedure txtItemFTIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeFTIEnter(Sender: TObject);
    procedure txtQtdeFTIExit(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbTipoAcaoExit(Sender: TObject);
    procedure grdItensIButtonFTIClick(Sender: TObject);
    procedure grdFTIMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTamanhoFTIExit(Sender: TObject);
    procedure cbbCorFTIExit(Sender: TObject);
    procedure btn_Add_Itens_ITEClick(Sender: TObject);
    procedure pnItensITEExit(Sender: TObject);
    procedure txtItemITEButtonClick(Sender: TObject);
    procedure txtItemITEExit(Sender: TObject);
    procedure txtQtdeITEEnter(Sender: TObject);
    procedure txtItemITEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeITEExit(Sender: TObject);
    procedure cbbTamanhoITEExit(Sender: TObject);
    procedure grdITEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbCorITEExit(Sender: TObject);
    procedure grdItensIButtonITEClick(Sender: TObject);
    procedure btn_Add_Itens_ITEEnter(Sender: TObject);
    procedure cbbTamanhoFTIEnter(Sender: TObject);
    procedure cbbCorFTIEnter(Sender: TObject);
    procedure cbbTamanhoITEEnter(Sender: TObject);
    procedure cbbCorITEEnter(Sender: TObject);
    procedure btnAtualizaContClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaCorTamanhoFTI;
    procedure ChamaCorTamanhoITE;
    procedure Atualizar_xBuscaFTI;
    procedure Atualizar_xBuscaITE;
    procedure AtualizarCorTamanho;

    var
      xbusca_item: String;
      SeqFTI,SEQITE :Integer;
  public
    { Public declarations }
  end;

var
  PCP_FM_C_FPI: TPCP_FM_C_FPI;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, enConstantes;

procedure TPCP_FM_C_FPI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_FPI);
  btnAtualizaCont.Enabled := False;
  //SeqFTI := 0;
  //SeqITE := 0;
  txtItemFPI.SetFocus;
end;

procedure TPCP_FM_C_FPI.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
    begin
      btnAtualizaCont.Enabled := False;
      txtItemFPI.Enabled := False;
      cbbTamanhoFPI.Enabled := False;
      cbbCorFPI.Enabled := False;

      btn_Add_Itens_FTI.SetFocus;
    end;

  if not dmgeral.PCP_CD_C_FPI_FTI.IsEmpty then
    begin
      dmgeral.PCP_CD_C_FPI_FTI.IndexFieldNames := 'ID_FPI_FTI';
      dmgeral.PCP_CD_C_FPI_FTI.Last;
      SeqFTI := dmgeral.PCP_CD_C_FPI_FTI.FieldByName('ID_FPI_FTI').AsInteger;
    end
  else
    begin
      SeqFTI := 0;
      SeqIte := 0;
    end;
end;

procedure TPCP_FM_C_FPI.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
      begin
        inherited;
        btnAtualizaCont.Enabled := True;
        txtItemFPI.Enabled := True;
        cbbTamanhoFPI.Enabled := True;
        cbbCorFPI.Enabled := True;

        dbGrid.SetFocus;
      end
   else
      begin
        txtItemFPI.SetFocus;
      end;
end;

procedure TPCP_FM_C_FPI.acExcluirExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_FPI) then
    inherited;
end;

procedure TPCP_FM_C_FPI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := dmGeral.PCP_CD_C_FPI.FieldByName('ID_FPI').AsString;
      DmGeral.Grava(dmGeral.PCP_CD_C_FPI);

      dmGeral.PCP_CD_C_FPI.Close;
      dmGeral.PCP_CD_C_FPI.Data :=
        dmGeral.PCP_CD_C_FPI.DataRequest(
          VarArrayOf([0, codigo]));

      btnAtualizaCont.Enabled := True;
      txtItemFPI.Enabled := True;
      cbbTamanhoFPI.Enabled := True;
      cbbCorFPI.Enabled := True;
    end;
end;

procedure TPCP_FM_C_FPI.AtualizarCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        lblCor.Visible := False;
        lblTamanho.Visible := False;
        cbbCorFPI.Visible := False;
        cbbTamanhoFPI.Visible := False;

        gbFTI.Left := 3;
        gbFTI.Top := 66;

        gbITE.Left := 3;
        gbITE.Top := 259;

        pnlDados.Height := 456
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor

          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  lblCor.Visible := False;
                  cbbCorFPI.Visible := False;

                  lblTamanho.Left := 104;
                  lblTamanho.Top := 85;

                  gbFTI.Left := 3;
                  gbFTI.Top := 90;

                  gbITE.Left := 3;
                  gbITE.Top := 283;

                  pnlDados.Height := 482
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  lblTamanho.Visible := False;
                  cbbTamanhoFPI.Visible := False;

                  gbFTI.Left := 3;
                  gbFTI.Top := 90;

                  gbITE.Left := 3;
                  gbITE.Top := 283;

                  pnlDados.Height := 482
               end;
         end;
     end;
end;

procedure TPCP_FM_C_FPI.Atualizar_xBuscaFTI;
begin
   if xbusca_item = '' then
     begin
       lblItemFTI.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItemFTI.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItemFTI.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItemFTI.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TPCP_FM_C_FPI.Atualizar_xBuscaITE;
begin
  if xbusca_item = '' then
     begin
       lblItemITE.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItemFTI.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItemFTI.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItemFTI.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TPCP_FM_C_FPI.btnAtualizaContClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  try
    dmGeral.PCP_CD_C_FPI.FILTERED := TRUE;
    dmGeral.PCP_CD_C_FPI.Filter := 'ID_FPI = ' + dmGeral.PCP_CD_C_FPI.FIELDBYNAME('ID_FPI').ASSTRING;

  if not dmGeral.PCP_CD_C_FPI.IsEmpty then
    begin
      dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_C_FPI.Name,xCodLme,xRevLme,nil);
      PCP_FR_C_FPI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      PCP_FR_C_FPI.Variables['ativa_cor'] := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsString;
      PCP_FR_C_FPI.Variables['ativa_tam'] := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsString;
      PCP_FR_C_FPI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_C_FPI.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      PCP_FR_C_FPI.PrepareReport();
      PCP_FR_C_FPI.ShowReport();
    end;
  finally
    dmGeral.PCP_CD_C_FPI.FILTERED := FALSE;
  end;
end;

procedure TPCP_FM_C_FPI.btnFiltroClick(Sender: TObject);
var
  data:TDateTime;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_C_FPI.Close;
    dmGeral.PCP_CD_C_FPI.Data :=
      dmGeral.PCP_CD_C_FPI.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_FPI.btn_Add_Itens_FTIClick(Sender: TObject);
begin
  inherited;
  pnItensFTI.Enabled  := true;

  dmGeral.PCP_CD_C_FPI_FTI.Insert;
  txtItemFTI.Enabled := true;
  txtItemFTI.SetFocus;
end;

procedure TPCP_FM_C_FPI.btn_Add_Itens_ITEClick(Sender: TObject);
begin
  inherited;
  pnItensITE.Enabled  := true;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.Insert;
  txtItemITE.Enabled := true;
  txtItemITE.SetFocus;
end;

procedure TPCP_FM_C_FPI.btn_Add_Itens_ITEEnter(Sender: TObject);
begin
  inherited;
  if not dmgeral.PCP_CD_C_FPI_FTI_ITE.IsEmpty then
    begin
      dmgeral.PCP_CD_C_FPI_FTI_ITE.IndexFieldNames := 'id_fpi_fti_ite';
      dmgeral.PCP_CD_C_FPI_FTI_ITE.Last;
      SeqIte := dmgeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('id_fpi_fti_ite').AsInteger;
    end
  else
    begin
      SeqIte := 0;
    end;
end;

procedure TPCP_FM_C_FPI.cbbCorFPIEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCorFPI.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbCorFTIEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCorFTI.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbCorFTIExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanhoFTI.Visible := False;
           exit;
         end;

       if cbbTamanhoFTI.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').Text := '';
       cbbCorFTI.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').Text := '';
       cbbCorFTI.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanhoFTI.Focused then
     Exit;

  pnItensFTI.Enabled := true;
  txtQtdeFTI.SetFocus;
  pnlCorTamanhoFTI.Visible := False;
end;

procedure TPCP_FM_C_FPI.cbbCorITEEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCorIte.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbCorITEExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanhoITE.Visible := False;
           exit;
         end;

       if cbbTamanhoITE.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').Text := '';
       cbbCorITE.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').Text := '';
       cbbCorITE.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanhoITE.Focused then
     Exit;

  pnItensITE.Enabled := true;
  txtQtdeITE.SetFocus;
  pnlCorTamanhoITE.Visible := False;
end;

procedure TPCP_FM_C_FPI.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  if cbbPesquisa.ItemIndex in [0,1] then
    txtPesquisa.NumbersOnly := True
  else
    txtPesquisa.NumbersOnly := False;
end;

procedure TPCP_FM_C_FPI.cbbTamanhoFPIEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanhoFPI.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbTamanhoFTIEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanhoFTI.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbTamanhoFTIExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanhoFTI.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanhoFTI.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanhoFTI.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCorFTI.CanFocus then
     cbbCorFTI.SetFocus
  else
    begin
     txtQtdeFTI.SetFocus;
     pnlCorTamanhoFTI.Visible := False;
    end;
end;

procedure TPCP_FM_C_FPI.cbbTamanhoITEEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanhoITE.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbTamanhoITEExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanhoITE.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanhoITE.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanhoITE.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCorITE.CanFocus then
     cbbCorITE.SetFocus
  else
    begin
     txtQtdeITE.SetFocus;
     pnlCorTamanhoITE.Visible := False;
    end;
end;

procedure TPCP_FM_C_FPI.cbbTipoAcaoEnter(Sender: TObject);
begin
  inherited;
  cbbTipoAcao.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbTipoAcaoExit(Sender: TObject);
var
I: integer;
testeFPI,testeFTI: string;
begin
  inherited;
  try
  pnItensFTI.onExit := nil;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  if txtItemFTI.Focused or
     txtQtdeFTI.Focused or
     cbbSetor.Focused or
     grdFTI.Focused  then
     begin
       abort;
     end;
  if (dmGeral.PCP_CD_C_FPI_FTI.FieldByName('tipo_acao').AsString = '') then
  begin
    cbbTipoAcao.SetFocus;
    abort;
  end;
  if dmGeral.PCP_CD_C_FPI_FTI.State in [dsInsert] then
    begin
      SeqFTI := SeqFTI +1;
      dmgeral.PCP_CD_C_FPI_FTI.FieldByName('ID_FPI_FTI').AsInteger := SeqFTI;
    end;

  {testeFPI := '';
  testeFTI := '';

  for I := 0 to dmgeral.PCP_CD_C_FPI.Fields.Count - 1 do
    begin
      testeFPI := testeFPI +'FPI: '+dmgeral.PCP_CD_C_FPI.Fields[i].Name +' = '+ dmgeral.PCP_CD_C_FPI.Fields[i].Text+#13;
    end;

  for I := 0 to dmgeral.PCP_CD_C_FPI_FTI.Fields.Count - 1 do
    begin
      testeFTI := testeFTI +'FTI: '+dmgeral.PCP_CD_C_FPI_FTI.Fields[i].Name +' = '+ dmgeral.PCP_CD_C_FPI_FTI.Fields[i].Text+#13;
    end;

  showMessage(testeFPI+#13+testeFTI);}

  dmGeral.PCP_CD_C_FPI_FTI.Post;
  btn_Add_Itens_FTI.Enabled := True;
  btn_Add_Itens_FTI.SetFocus;

  pnItensFTI.Enabled := false;
  finally
    pnItensFTI.onExit := pnItensFTIExit;
  end;
  
  //dmGeral.PCP_CD_C_FPI_FTI.locate('id_FPI_ITE',seq_item,[]);
end;

procedure TPCP_FM_C_FPI.ChamaCorTamanhoFTI;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanhoFTI.Visible := False;

        txtQtdeFTI.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanhoFTI.Left := 136;
            pnlCorTamanhoFTI.Top := 21;
            pnlCorTamanhoFTI.Width := 268;

            lblCorFTI.Left         := 140;
            lblCorFTI.Visible      := true;

            cbbCorFTI.Visible     := True;
            cbbTamanhoFTI.Visible := True;
            lblTamanhoFTI.Left    := 4;
            lblTamanhoFTI.Visible := true;

            cbbCorFTI.TabStop := True;
            cbbCorFTI.Left := 140;
            cbbTamanhoFTI.TabStop := True;

            pnlCorTamanhoFTI.Visible := True;
            cbbTamanhoFTI.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanhoFTI.Left  := 136;
                  pnlCorTamanhoFTI.Top   := 21;
                  pnlCorTamanhoFTI.Width := 137;
                  lblTamanhoFTI.Visible  := true;

                  cbbCorFTI.Visible := False;
                  cbbCorFTI.TabStop := False;
                  lblCorFTI.Visible := false;

                  pnlCorTamanhoFTI.Visible := True;
                  cbbTamanhoFTI.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanhoFTI.Visible := True;
                  pnlCorTamanhoFTI.Left := 136;
                  pnlCorTamanhoFTI.Top := 21;
                  pnlCorTamanhoFTI.Width := 137;
                  lblTamanhoFTI.Visible  := false;

                  cbbTamanhoFTI.Visible := False;
                  cbbTamanhoFTI.TabStop := False;

                  cbbCorFTI.Left := 4;
                  cbbCorFTI.SetFocus;
                  lblCorFTI.left := 4;
                  lblCorFTI.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_C_FPI.ChamaCorTamanhoITE;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanhoITE.Visible := False;

        txtQtdeITE.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanhoITE.Left := 136;
            pnlCorTamanhoITE.Top := 21;
            pnlCorTamanhoITE.Width := 268;

            lblCorITE.Left         := 140;
            lblCorITE.Visible      := true;

            cbbCorITE.Visible     := True;
            cbbTamanhoITE.Visible := True;
            lblTamanhoITE.Left    := 4;
            lblTamanhoITE.Visible := true;

            cbbCorITE.TabStop := True;
            cbbCorITE.Left := 140;
            cbbTamanhoITE.TabStop := True;

            pnlCorTamanhoITE.Visible := True;
            cbbTamanhoITE.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanhoITE.Left  := 136;
                  pnlCorTamanhoITE.Top   := 21;
                  pnlCorTamanhoITE.Width := 137;
                  lblTamanhoITE.Visible  := true;

                  cbbCorITE.Visible := False;
                  cbbCorITE.TabStop := False;
                  lblCorITE.Visible := false;

                  pnlCorTamanhoITE.Visible := True;
                  cbbTamanhoITE.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanhoITE.Visible := True;
                  pnlCorTamanhoITE.Left := 136;
                  pnlCorTamanhoITE.Top := 21;
                  pnlCorTamanhoITE.Width := 137;
                  lblTamanhoITE.Visible  := false;

                  cbbTamanhoITE.Visible := False;
                  cbbTamanhoITE.TabStop := False;

                  cbbCorITE.Left := 4;
                  cbbCorITE.SetFocus;
                  lblCorITE.left := 4;
                  lblCorITE.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_C_FPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI.Close;
  FreeAndNil(PCP_FM_C_FPI);
end;

procedure TPCP_FM_C_FPI.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.AtualizarGridItens(grdITE,'int_nomeite',12,8);
  dmGeral.AtualizarGridItens(grdFTI,'int_nomeite',12,8);

  // Comentado por Maxsuel Victor , em 12-04-2017
  // Essa funcionalidade foi retirada desta tela depois de conversar com Allison.
  // AtualizarCorTamanho;
end;

procedure TPCP_FM_C_FPI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F8 then
    btnIncluir.Click;
end;

procedure TPCP_FM_C_FPI.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_C_FPI.Close;
  dmGeral.PCP_CD_C_FPI.Data :=
  dmGeral.PCP_CD_C_FPI.DataRequest(
            VarArrayOf([0, '']));

  Atualizar_xBuscaFTI;
  dmGeral.BusCor(1,'%');
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusSetor(1,'%');
end;

procedure TPCP_FM_C_FPI.grdFTIMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItensFTI.Enabled = false then
    pnItensFTI.Enabled := true;

  dmGeral.PCP_CD_C_FPI_FTI.cancel;

      if dmGeral.PCP_CD_C_FPI_FTI.IsEmpty then
         begin
           txtItemFTI.Enabled := true;
           dmGeral.PCP_CD_C_FPI_FTI.Append;
           pnItensFTI.Enabled := true;
           txtItemFTI.SetFocus;
         end
      else
        begin
          txtItemFTI.Enabled := false;
          dmGeral.PCP_CD_C_FPI_FTI.Edit;
          pnItensFTI.Enabled := true;
          txtQtdeFTI.SetFocus;
        end;
end;

procedure TPCP_FM_C_FPI.grdITEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItensITE.Enabled = false then
    pnItensITE.Enabled := true;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.cancel;

      if dmGeral.PCP_CD_C_FPI_FTI_ITE.IsEmpty then
         begin
           txtItemITE.Enabled := true;
           dmGeral.PCP_CD_C_FPI_FTI_ITE.Append;
           pnItensITE.Enabled := true;
           txtItemITE.SetFocus;
         end
      else
        begin
          txtItemITE.Enabled := false;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.Edit;
          pnItensITE.Enabled := true;
          txtQtdeITE.SetFocus;
        end;
end;

procedure TPCP_FM_C_FPI.grdItensIButtonFTIClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButtonFTI.Enabled := false;
     if dmGeral.PCP_CD_C_FPI_FTI.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_C_FPI_FTI.Delete;

     if btn_Add_itens_FTI.CanFocus then
       begin
         btn_Add_Itens_FTI.setfocus;
       end;
     //dmGeral.FAT_CD_M_PED_ITE.Edit;
  finally
    grdItensIButtonFTI.Enabled := true;
  end;
end;

procedure TPCP_FM_C_FPI.grdItensIButtonITEClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButtonITE.Enabled := false;
     if dmGeral.PCP_CD_C_FPI_FTI_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_C_FPI_FTI_ITE.Delete;

     if btn_Add_itens_ITE.CanFocus then
       begin
         btn_Add_Itens_ITE.setfocus;
       end;
     //dmGeral.FAT_CD_M_PED_ITE.Edit;
  finally
    grdItensIButtonITE.Enabled := true;
  end;
end;

procedure TPCP_FM_C_FPI.pnItensFTIExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens_FTI.Focused) or (grdFTI.Focused) or
     (cbbCorFTI.Focused) or (cbbTamanhoFTI.Focused) or
     (not grdItensIButtonFTI.Enabled) then
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

        dmGeral.PCP_CD_C_FPI_FTI.Cancel;
        dmGeral.PCP_CD_C_FPI_FTI.edit;
        finally
           pnItensFTI.Enabled := false;
        end;
      end;
end;

procedure TPCP_FM_C_FPI.pnItensITEExit(Sender: TObject);
begin
  inherited;
   if (btn_Add_Itens_ITE.Focused) or (grdITE.Focused) or
     (cbbCorITE.Focused) or (cbbTamanhoITE.Focused) or
     (not grdItensIButtonITE.Enabled) then
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

        dmGeral.PCP_CD_C_FPI_FTI_ITE.Cancel;
        dmGeral.PCP_CD_C_FPI_FTI_ITE.edit;
        finally
           pnItensITE.Enabled := false;
        end;
      end;
end;

procedure TPCP_FM_C_FPI.txtItemFPIButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
    begin
      dmGeral.PCP_CD_C_FPI.FieldByName('id_item').AsInteger := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_item').AsInteger;
      dmGeral.PCP_CD_C_FPI.FieldByName('int_nomeite').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('descricao').AsString;
      dmGeral.PCP_CD_C_FPI.FieldByName('int_undvenda').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
    end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_FPI.txtItemFPIExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.PCP_CD_C_FPI.FieldByName('ID_ITEM').Text = '' then
     begin
       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;
          ShowMessage('O campo "Produto acabado" deve ser prenchido.');
          txtItemFPI.SetFocus;
          exit;
     end;
  dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemFPI.Text]));

  if not dmgeral.BUS_CD_C_ITE.IsEmpty then
    begin
      dmGeral.PCP_CD_C_FPI.FieldByName('id_item').AsInteger := dmgeral.BUS_CD_C_ITE.FieldByName('id_item').AsInteger;
      dmGeral.PCP_CD_C_FPI.FieldByName('int_nomeite').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;
      dmGeral.PCP_CD_C_FPI.FieldByName('int_undvenda').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
    end
  else
    begin
      ShowMessage('Produto não cadastrado!');
      txtItemFPI.SetFocus;
      exit;
    end;
end;

procedure TPCP_FM_C_FPI.txtItemFTIButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
    begin
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_item').AsInteger := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_item').AsInteger;
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('descricao').AsString;
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_BUSCA_ITEM').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
    end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_FPI.txtItemFTIExit(Sender: TObject);
var
  id_item : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens_FTI.Focused then
          exit;

       if grdFTI.Focused then
          exit;

       if not grdItensIButtonFTI.Enabled then
          exit;

       if (txtQtdeFTI.Focused) or (cbbSetor.Focused) or
          (cbbTipoAcao.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtItemFTI.SetFocus;
             exit;
           end
       else
           begin
             {pnItens.Enabled := false;
             if txtFpgEntrada.CanFocus then
                txtFpgEntrada.SetFocus
             else
                begin
                  ActiveControl := nil;
                  PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
                  btnGrava.SetFocus;
                end;}
             exit;
           end;
     end
  else
     begin
       if dmGeral.PCP_CD_C_FPI_FTI.state in [dsBrowse] then
          dmGeral.PCP_CD_C_FPI_FTI.edit;
     end;

  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').Text := '';
  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemFTI.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtItemFTI.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtItemFTI.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtItemFTI.SetFocus;
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_item').Text := '';
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').Text := '';
       dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').Text  := '';
       exit;
     end;

  { A linha abaixo é pra evitar que o OnChange do ID_ITEM seja executado mais de 1 vez
     devido o teset do Insert mais abaixo }
  //id_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  //Busca o preço na tabela de preço conforme item e tabela do cliente

  try
  pnItensFTI.onExit := nil;

  if dmGeral.PCP_CD_C_FPI_FTI.State in [dsInsert] then
     begin
     // Comentado por Maxsuel Victor , em 12-04-2017
     // Essa funcionalidade foi retirada desta tela depois de conversar com Allison.
     //  ChamaCorTamanhoFTI;
      {Esse código foi necessário devido o focu está se perdendo ao tentar focar
        no campo "Qtde"}

       {ActiveControl := nil;
       PostMessage(txtQtdeFTI.Handle, WM_SETFOCUS, 0, 0);
       txtQtdeFTI.SetFocus;}

     end
  else
     dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_ITEM').AsString := id_item;

  finally
     pnItensFTI.OnExit := pnItensFTIExit;
  end;
end;

procedure TPCP_FM_C_FPI.txtItemFTIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBuscaFTI;

  if (Key = vk_F2) then
    begin
      if btn_Add_Itens_ITE.CanFocus then
         btn_Add_Itens_ITE.SetFocus
      else
         begin
           pnItensFTI.OnExit := nil;
           dmGeral.PCP_CD_C_FPI_FTI.cancel;
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;

           pnItensFTI.OnExit := pnItensFTIExit;
         end;
    end;

  if (Key = VK_RETURN) and (trim(txtItemFTI.Text) = '') then
      begin
        if btn_Add_Itens_ITE.CanFocus then
           //txtFpgEntrada.SetFocus
        else
           begin
             try
             pnItensFTI.OnExit := nil;
             dmGeral.PCP_CD_C_FPI_FTI.cancel;
             ActiveControl := nil;
             PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
             btnGrava.SetFocus;
             finally
                pnItensFTI.OnExit := pnItensFTIExit;
             end;

           end;
      end;
end;

procedure TPCP_FM_C_FPI.txtItemITEButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
    begin
      dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('id_item').AsInteger := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_item').AsInteger;
      dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_BUSCA_ITEM').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;
      dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('descricao').AsString;
      dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
    end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_FPI.txtItemITEExit(Sender: TObject);
var
  id_item : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens_ITE.Focused then
          exit;

       if grdITE.Focused then
          exit;

       if not grdItensIButtonITE.Enabled then
          exit;

       if (txtQtdeITE.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtItemITE.SetFocus;
             exit;
           end
       else
           begin
             {pnItens.Enabled := false;
             if txtFpgEntrada.CanFocus then
                txtFpgEntrada.SetFocus
             else
                begin
                  ActiveControl := nil;
                  PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
                  btnGrava.SetFocus;
                end;}
             exit;
           end;
     end
  else
     begin
       if dmGeral.PCP_CD_C_FPI_FTI_ITE.state in [dsBrowse] then
          dmGeral.PCP_CD_C_FPI_FTI_ITE.edit;
     end;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemITE.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtItemITE.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtItemITE.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtItemITE.SetFocus;
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('id_item').Text := '';
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').Text  := '';
       exit;
     end;

  { A linha abaixo é pra evitar que o OnChange do ID_ITEM seja executado mais de 1 vez
     devido o teset do Insert mais abaixo }
  //id_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  //Busca o preço na tabela de preço conforme item e tabela do cliente

  try
  pnItensITE.onExit := nil;

  if dmGeral.PCP_CD_C_FPI_FTI_ITE.State in [dsInsert] then
     begin
       {//id_item       := dmGeral.FAT_CD_M_PED_ITE.FieldByName('IDint_id_und_vendaint_id_und_venda_ITEM').AsString;
       id_busca_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString;
       tipo_item     := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

       dmGeral.FAT_CD_M_PED_ITE.cancel;
       if dmGeral.FAT_CD_M_PED_ITE.Locate('ID_ITEM',id_item,[]) then
          begin
            ShowMessage('Item já inserido no pedido de venda.');
            dmGeral.FAT_CD_M_PED_ITE.Insert;
            txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            dmGeral.FAT_CD_M_PED_ITE.Insert;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString        := id_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString  := id_busca_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString   := desc;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString    := und;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger := tipo_item;
          end;  }

       ChamaCorTamanhoITE;
      {Esse código foi necessário devido o focu está se perdendo ao tentar focar
        no campo "Qtde"}

      { ActiveControl := nil;
       PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
       txtQtde.SetFocus;}

     end
  else
    dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_ITEM').AsString := id_item;
  finally
    pnItensITE.OnExit := pnItensITEExit;
  end;
end;

procedure TPCP_FM_C_FPI.txtItemITEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBuscaITE;
end;

procedure TPCP_FM_C_FPI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_C_FPI.txtQtdeFTIEnter(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_cor, id_busca_item, id_tamanho,id_fpi_fti : string;
begin
  inherited;
  try
  pnItensFTI.onExit := nil;
  txtQtdeFTI.onExit := nil;
  if dmGeral.PCP_CD_C_FPI_FTI.State in [dsInsert] then
    begin
      pnItensFTI.Enabled := true;

      {id_item       := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_ITEM').AsString;
      id_fpi_fti    := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_fpi_fti').AsString;
      id_busca_item := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_BUSCA_ITEM').AsString;
      desc          := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').AsString;
      und           := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').AsString;
      id_cor        := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').AsString;
      id_tamanho    := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').AsString;
      desc_cor      := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMECOR').AsString;
      desc_tam      := dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMETAM').AsString;

      dmGeral.PCP_CD_C_FPI_FTI.Cancel;

      if dmGeral.LocalizarRegItem(dmGeral.PCP_CD_C_FPI_FTI,PCP_FM_C_FPI.Name,id_item,id_cor,id_tamanho,'','') then
        begin
          ShowMessage('Item já inserido.');
          dmGeral.PCP_CD_C_FPI_FTI.Insert;
          txtItemFTI.SetFocus;
          exit;
        end
      else
        begin
          dmGeral.PCP_CD_C_FPI_FTI.Insert;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_ITEM').AsString           := id_item;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_fpi_fti').AsString        := id_fpi_fti;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeite').AsString       := desc;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_undvenda').AsString      := und;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_cor').AsString            := id_cor;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMECOR').AsString       := desc_cor;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('INT_NOMETAM').AsString       := desc_tam;
          dmGeral.PCP_CD_C_FPI_FTI.FieldByName('QTDE').AsString              := ''; }

          dmGeral.BUS_CD_C_ITE.close;
          dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_ITEM').AsString]));
       // end;
    end;
  finally
     pnItensFTI.OnExit := pnItensFTIExit;
     txtQtdeFTI.OnExit := txtQtdeFTIExit;
  end;
  txtQtdeFTI.OnEnter := nil;
  PostMessage(txtQtdeFTI.Handle, WM_SETFOCUS, 0, 0);
  txtQtdeFTI.SetFocus;
end;

procedure TPCP_FM_C_FPI.txtQtdeFTIExit(Sender: TObject);
begin
  inherited;
  txtQtdeFTI.OnEnter := txtQtdeFTIEnter;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens_FTI.Focused or txtItemFTI.Focused or grdFTI.Focused then
     begin
       abort;
     end;

   {if (not btn_Add_Itens.Focused)  or (not txtBuscaItem.Focused) or
      (not cbbTamanho.Focused)     or (not cbbCor.Focused) or
      (not txtVlrUnitario.Focused) or (not txtPerDesconto.Focused) or
      (not txtVlrDesconto.Focused) then
      begin
        abort;
      end;  }

  if not (dmGeral.TesValQtde(dmGeral.PCP_CD_C_FPI_FTI.FieldByName('QTDE').AsFloat)) then
    begin
      txtQtdeFTI.SetFocus;
      abort;
    end;
end;

procedure TPCP_FM_C_FPI.txtQtdeITEEnter(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_cor, id_busca_item, id_tamanho,id_fpi_fti,id_fpi_fti_ite : string;
begin
  inherited;
  try
  pnItensITE.onExit := nil;
  txtQtdeITE.onExit := nil;
  if dmGeral.PCP_CD_C_FPI_FTI_ITE.State in [dsInsert] then
    begin
      pnItensITE.Enabled := true;

      id_fpi_fti    := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI_FTI').AsString;
      id_fpi_fti_ite := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI_FTI_ITE').AsString;
      id_item       := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_ITEM').AsString;
      id_busca_item := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
      desc          := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').AsString;
      und           := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').AsString;
      id_cor        := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').AsString;
      id_tamanho    := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').AsString;
      desc_cor      := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMECOR').AsString;
      desc_tam      := dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMETAM').AsString;

      dmGeral.PCP_CD_C_FPI_FTI_ITE.Cancel;

      if dmGeral.LocalizarRegItem(dmGeral.PCP_CD_C_FPI_FTI_ITE,PCP_FM_C_FPI.Name,id_item,id_cor,id_tamanho,'','') then
        begin
          ShowMessage('Item já inserido.');
          dmGeral.PCP_CD_C_FPI_FTI_ITE.Insert;
          txtItemITE.SetFocus;
          exit;
        end
      else
        begin
          dmGeral.PCP_CD_C_FPI_FTI_ITE.Insert;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI_FTI').AsString        := id_fpi_fti;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI_FTI_ITE').AsString   := id_fpi_fti_ite;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_ITEM').AsString           := id_item;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_nomeite').AsString       := desc;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('int_undvenda').AsString      := und;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('id_cor').AsString            := id_cor;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMECOR').AsString       := desc_cor;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('INT_NOMETAM').AsString       := desc_tam;
          dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('QTDE').AsString              := '';

          dmGeral.BUS_CD_C_ITE.close;
          dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_ITEM').AsString]));
        end;
    end;
  finally
    pnItensITE.OnExit := pnItensITEExit;
    txtQtdeITE.OnExit := txtQtdeITEExit;
  end;
  txtQtdeITE.OnEnter := nil;
  PostMessage(txtQtdeITE.Handle, WM_SETFOCUS, 0, 0);
  txtQtdeITE.SetFocus;
end;

procedure TPCP_FM_C_FPI.txtQtdeITEExit(Sender: TObject);
begin
  inherited;
  txtQtdeITE.OnEnter := txtQtdeITEEnter;
  try
  pnItensITE.onExit := nil;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtItemITE.Focused or
     txtqtdeITE.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('QTDE').AsFloat)) then
    begin
      txtQtdeITE.SetFocus;
      abort;
    end;

  if dmGeral.PCP_CD_C_FPI_FTI_ITE.State in [dsInsert] then
    begin
      SeqITE := SeqITE +1;
      dmgeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('id_fpi_fti_ite').AsInteger := SeqITE;
    end;
  dmGeral.PCP_CD_C_FPI_FTI_ITE.Post;
  btn_Add_Itens_ITE.SetFocus;

  pnItensITE.Enabled := false;
  finally
  pnItensITE.onExit := pnItensITEExit;
  end;
end;

procedure TPCP_FM_C_FPI.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_C_FPI.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  if (dmGeral.PCP_CD_C_FPI_FTI.FieldByName('id_setor').AsString = '') then
    begin
      cbbSetor.SetFocus;
      abort;
    end
  else
    begin
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('int_nomeset').AsString :=
        dmGeral.BUS_CD_C_SET.FieldByName('descricao').AsString;
    end;
end;

end.
