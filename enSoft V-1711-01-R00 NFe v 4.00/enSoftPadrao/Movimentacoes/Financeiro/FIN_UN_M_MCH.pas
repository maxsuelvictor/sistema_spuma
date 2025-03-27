unit FIN_UN_M_MCH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.Wwdbedit, Vcl.DBCtrls, vcl.wwdblook, Vcl.Mask, JvExMask,
  JvToolEdit, JvDBControls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Buttons,
  Vcl.ComCtrls, vcl.wwriched, vcl.Wwdotdot, vcl.Wwdbcomb,SQLTimSt, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, Datasnap.DBClient, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFIN_FM_M_MCH = class(TPAD_FM_X_PAD)
    dsoChe: TwwDataSource;
    dsoTit: TwwDataSource;
    lblData: TLabel;
    txtData: TJvDBDateEdit;
    lblOperacao: TLabel;
    lblInformativo: TLabel;
    lblContaCorrente: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    lblObservacao: TLabel;
    gbRelacaoCheque: TGroupBox;
    pnlRelCheques: TPanel;
    txtVlrPago: TwwDBEdit;
    lblVlrPago: TLabel;
    lblAlinea: TLabel;
    dgRelCheque: TwwDBGrid;
    btnInfoPag: TButton;
    dgRelChequeIButton: TwwIButton;
    txtObservacao: TDBRichEdit;
    cbbCondPag: TwwDBLookupCombo;
    lblCondPag: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    cbbOperacao: TwwDBComboBox;
    Label4: TLabel;
    txtControle: TJvDBComboEdit;
    txtInformativo: TDBRichEdit;
    lblControle: TLabel;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtNomeCliente: TwwDBEdit;
    cbbAlinea: TwwDBLookupCombo;
    btnImprimir: TcxButton;
    FIN_XL_M_MCH: TfrxXLSExport;
    FIN_PD_M_MCH: TfrxPDFExport;
    FIN_DB_M_MCH: TfrxDBDataset;
    FIN_DB_M_MCH_CHE: TfrxDBDataset;
    FIN_DB_M_MCH_TIT: TfrxDBDataset;
    FIN_FR_M_MCH: TfrxReport;
    lblJuros: TLabel;
    txtJuros: TDBText;
    txtJuros1: TwwDBEdit;
    Label5: TLabel;
    FIN_FR_M_MCH_DEP: TfrxReport;
    txtPesquisaData: TJvDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInfoPagClick(Sender: TObject);
   // procedure txtControleButtonClick(Sender: TObject);
   // procedure txtControleExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddChequesClick(Sender: TObject);
    procedure dgRelChequeIButtonClick(Sender: TObject);
    procedure txtVlrPagoExit(Sender: TObject);
    procedure dgRelChequeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbOperacaoExit(Sender: TObject);
    procedure dgRelChequeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure cbbCondPagEnter(Sender: TObject);
    procedure btnAdicionarChequesClick(Sender: TObject);
    procedure btnAlterarChequeExit(Sender: TObject);
    procedure cbbCondPagExit(Sender: TObject);
    procedure cbbOperacaoEnter(Sender: TObject);
    procedure dgRelChequeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtControleButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure cbbAlineaExit(Sender: TObject);
    procedure cbbAlineaEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure dsoCheStateChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure txtJuros1Exit(Sender: TObject);
   // procedure txtControleChange(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    var
      xOperacaoAnt:string;
      xCondPagAnt:string;
  public
    { Public declarations }
  end;



var
  FIN_FM_M_MCH: TFIN_FM_M_MCH;

implementation

{$R *.dfm}

uses uDmGeral, FIN_UN_M_MCH_PGT, FIN_UN_M_MCH_FIL, FIN_RN_M_CHE_MOV,
  PSQ_UN_X_CLI, enFunc, uProxy;


procedure TFIN_FM_M_MCH.acAdicionaExecute(Sender: TObject);
begin
  inherited;


   if  (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_dep').AsInteger>0)) or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_dev').AsInteger>0)) or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_ppr').AsInteger>0)) or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_dep').text) = '') or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_dev').text) = '') or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_ppr').text) = '') or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_forma_pag').AsInteger>0))  then
      begin
         ShowMessage('Devem ser preenchidos os campos da tela de parâmetros, em aba "Financeiro" no bloco de "Movimentação de Cheques".');
         exit;
      end;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
  btnAlterar.Enabled := false;
  btnImprimir.Enabled := false;
  txtData.SetFocus;
end;

procedure TFIN_FM_M_MCH.acAlterarExecute(Sender: TObject);
begin
  ShowMessage('Alteração não permitida.');
  exit;
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
  btnImprimir.Enabled := false;
  txtData.SetFocus;
end;

procedure TFIN_FM_M_MCH.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH) then
     begin
       inherited;
       btnImprimir.Enabled := true;
       dbGrid.SetFocus;
     end
   else
     begin
       txtData.SetFocus;
     end;
   btnAlterar.Enabled := false;
end;

procedure TFIN_FM_M_MCH.acExcluirExecute(Sender: TObject);
begin
  inherited;
   if  (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_dep').AsInteger>0)) or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_dev').AsInteger>0)) or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_tif_ppr').AsInteger>0)) or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_dep').text) = '') or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_dev').text) = '') or
       (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_plano_ppr').text) = '') or
       (not(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('mch_id_forma_pag').AsInteger>0))  then
      begin
         ShowMessage('Devem ser preenchidos os campos da tela de parâmetros, em aba "Financeiro" no bloco de "Movimentação de Cheques".');
         exit;
      end;


  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
  btnAlterar.Enabled := false;
end;

procedure TFIN_FM_M_MCH.acGravarExecute(Sender: TObject);
var
  codigo:string;

begin
  inherited;

  if (dmGeral.FIN_CD_M_MCH_CHE.IsEmpty) then
      begin
        ShowMessage('Não foi selecionado nenhum cheque.');
        abort;
      end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
     begin
       if dmGeral.FIN_CD_M_MCH_TIT.IsEmpty then
          begin
            ShowMessage('Não foi incluído nenhum título.');
            abort;
          end;

       if FinVerificarVlrTotaisTit = False then
          begin
            ShowMessage('Há inconsistência na soma dos valores totais dos títulos.');
            abort;
          end;

       if FinVerificarVlrPagoVlrTitulo = False then
          begin
            ShowMessage('A soma dos valores pagos não é igual a soma dos valores dos títulos.');
            abort;
          end;
     end;

  FIN_RN_M_CHE_MOV.FinOutrasValidacoesCheMov;

  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

        FIN_RN_M_CHE_MOV.FIN_CD_M_MCH_TIT_AtuSequencias;

        // dmGeral.FIN_CD_M_MCH.FieldByName('HOR_MOVIMENTO').AsSQLTimeStamp := DateTimeToSQLTimeStamp(now) ;
        dmGeral.FIN_CD_M_MCH.FieldByName('HOR_MOVIMENTO').AsDateTime := xHoraSis;
        codigo := dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString;
        DmGeral.Grava(dmGeral.FIN_CD_M_MCH);

        inherited;

        dmGeral.FIN_CD_M_MCH.Close;
        dmGeral.FIN_CD_M_MCH.Data :=
        dmGeral.FIN_CD_M_MCH.DataRequest(
                       VarArrayOf([0,codigo]));

        btnImprimir.Enabled := true;
        AbrirBuscas;

     end
   else
    begin
      txtData.SetFocus;
    end;

    btnAlterar.Enabled := false;
end;

procedure TFIN_FM_M_MCH.btnAddChequesClick(Sender: TObject);
begin
  inherited;
  pnlRelCheques.Enabled  := true;
  dmGeral.FIN_CD_M_MCH_CHE.Insert;

  txtControle.Enabled := true;
  txtControle.SetFocus;
end;

procedure TFIN_FM_M_MCH.btnAdicionarChequesClick(Sender: TObject);
begin
  inherited;
  FIN_FM_M_MCH_FIL := TFIN_FM_M_MCH_FIL.Create(Self);
  FIN_FM_M_MCH_FIL.Show;
end;

procedure TFIN_FM_M_MCH.btnAlterarChequeExit(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_MCH_CHE.Post;
  pnlRelCheques.Enabled := false;
end;

procedure TFIN_FM_M_MCH.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
 Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.FIN_CD_M_MCH.Close;
    dmGeral.FIN_CD_M_MCH.Data :=
    dmGeral.FIN_CD_M_MCH.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_MCH.btnImprimirClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  vlr_bxa:currency;
begin
  inherited;
  if not dmGeral.FIN_CD_M_MCH.IsEmpty then
     begin
       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
       FIN_FR_M_MCH.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_MCHvlr_tot_movimento.AsCurrency));
       FIN_FR_M_MCH_DEP.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_MCHvlr_tot_movimento.AsCurrency));

       codigo := dmGeral.FIN_CD_M_MCHid_controle.text;

       dmGeral.FIN_CD_M_MCH.Close;
       dmGeral.FIN_CD_M_MCH.Data :=
       dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, codigo]));
       if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,3,4]) then
          begin
             if ((dmGeral.FIN_CD_M_MCH.FieldByName('ID_RECIBO').IsNull) or
                (dmGeral.FIN_CD_M_MCH.FieldByName('ID_RECIBO').AsString = '')) then
                begin
                  dmGeral.FIN_CD_M_MCH.Edit;
                  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                  try
                     dmGeral.FIN_CD_M_MCH.FieldByName('ID_RECIBO').AsInteger :=
                                   SMPrincipal.enValorChave('NUM_RCB_MCH');
                  finally
                     FreeAndNil(SMPrincipal);
                  end;
                  dmGeral.FIN_CD_M_MCH.Post;
                  if (dmGeral.FIN_CD_M_MCH.ApplyUpdates(0) <> 0) then
                    begin
                      ShowMessage('Falha ao gerar nº do recibo.');
                      exit;
                    end;
                end;
             if FileExists(PathImg) then
              begin
               if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger<>1) then
                 begin
                   LogoEmpresa := TfrxPictureView(FIN_FR_M_MCH.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);

                   LogoEmpresa := TfrxPictureView(FIN_FR_M_MCH.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end
               else
                 begin
                   LogoEmpresa := TfrxPictureView(FIN_FR_M_MCH_DEP.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);

                   LogoEmpresa := TfrxPictureView(FIN_FR_M_MCH_DEP.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;
              end;




            if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger=3) then
              begin
               TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmCabJuros1')).Visible:=false;
               TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmJuros1')).Visible:=false;
               TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmCabJuros2')).Visible:=false;
               TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmJuros2')).Visible:=false;
              end
            else if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger=4) then
              begin
                TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmCabJuros1')).Visible:=true;
                TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmJuros1')).Visible:=true;
                TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmCabJuros2')).Visible:=true;
                TfrxMemoView (FIN_FR_M_MCH.FindComponent('mmJuros2')).Visible:=true;
              end;


            if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger<>1) then
              begin
               dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_MCH.Name,xCodLme,xRevLme,nil);
               FIN_FR_M_MCH.Variables['Opcoes'] := QuotedStr('');
               FIN_FR_M_MCH.PrepareReport();
               FIN_FR_M_MCH.ShowReport();
              end
            else
              begin
               dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_MCH_DEP.Name,xCodLme,xRevLme,nil);
               FIN_FR_M_MCH_DEP.Variables['Opcoes'] := QuotedStr('');
               FIN_FR_M_MCH_DEP.PrepareReport();
               FIN_FR_M_MCH_DEP.ShowReport();
              end;
          end
       else
          begin
            ShowMessage('Só existe recibo para operações de depósito, resgate e pagamento parcial.');
            exit;
          end;
     end
   else
      begin
        ShowMessage('É necessário selecionar registro.');
        Exit;
      end;
end;

procedure TFIN_FM_M_MCH.btnInfoPagClick(Sender: TObject);
begin
  inherited;
  FIN_FM_M_MCH_PGT := TFIN_FM_M_MCH_PGT.Create(Self);
  FIN_FM_M_MCH_PGT.ShowModal;
  FIN_FM_M_MCH_PGT.Free;
end;

procedure TFIN_FM_M_MCH.AbrirBuscas;
begin
  dmGeral.BusCondPgto(4,'''0'',''1''');
  dmGeral.BusFuncionario(1,'');
  dmGeral.BUS_PR_X_ALI;
  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
  dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([4, '%']));
end;

procedure TFIN_FM_M_MCH.cbbAlineaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ALI;
  cbbAlinea.DropDown;
end;

procedure TFIN_FM_M_MCH.cbbAlineaExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or txtControle.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 2) then
     begin
      if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_ALINEA').AsString = '') then
          begin
            ShowMessage('O campo "Alínea" deve ser preenchido.');
            cbbAlinea.SetFocus;
            exit;
          end;
      dmGeral.FIN_CD_M_MCH_CHE.Post;
     end;
end;

procedure TFIN_FM_M_MCH.cbbCondPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(4,'''0'',''1''');
  cbbCondPag.DropDown;
end;

procedure TFIN_FM_M_MCH.cbbCondPagExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbOperacao.Focused then
     begin
       exit;
     end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONDICAO_PAG').IsNull) then
     begin
       ShowMessage('O campo "Condição Pag." deve ser preenchido.');
       cbbCondPag.SetFocus;
       exit;
     end;


   if (dmGeral.FIN_CD_M_MCH_TIT.RecordCount > 0) then
     begin
        if MessageDlg('Se alterar a condição de pagamento irá deletar todas as formas de pagamento. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
              dmGeral.FIN_CD_M_MCH_TIT.Cancel;
              dmGeral.FIN_CD_M_MCH_TIT.First;
              while( not dmgeral.FIN_CD_M_MCH_TIT.IsEmpty) do
               begin
                 dmGeral.FIN_CD_M_MCH_TIT.Delete;
               end;
           end
        else
           begin
             dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONDICAO_PAG').AsString := xCondPagAnt;
             cbbCondPag.SetFocus;
             abort;
           end;
     end;
end;

procedure TFIN_FM_M_MCH.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
   FIN_RN_M_CHE_MOV.BusCxaBco(dmGeral.FIN_CD_M_MCH.FieldByName('ID_RESPONSAVEL').AsInteger);
   cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_MCH.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbOperacao.Focused or
     txtData.Focused or txtCliente.Focused or cbbCondpag.Focused then
     begin
       exit;
     end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTA').IsNull) then
     begin
       ShowMessage('O campo "Conta Corrente" deve ser preenchido.');
       cbbContaCorrente.SetFocus;
       exit;
     end;
end;

procedure TFIN_FM_M_MCH.cbbOperacaoEnter(Sender: TObject);
begin
  inherited;
  cbbOperacao.DropDown;
end;

procedure TFIN_FM_M_MCH.cbbOperacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       exit;
     end;
  lblJuros.Visible := false;
  txtJuros.Visible := false;
  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString = '') then
     begin
       ShowMessage('O campo "Operação" deve ser preenchido.');
       dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := '';
       txtInformativo.Text := '';
       cbbOperacao.SetFocus;
       exit;
     end;


  if (dmGeral.FIN_CD_M_MCH_CHE.RecordCount > 0) then
     begin
        if MessageDlg('Se alterar a operação irá deletar toda a relação de cheques. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
              dmGeral.FIN_CD_M_MCH_CHE.Cancel;
              dmGeral.FIN_CD_M_MCH_CHE.First;
              while( not dmgeral.FIN_CD_M_MCH_CHE.IsEmpty) do
               begin
                 dmGeral.FIN_CD_M_MCH_CHE.Delete;
               end;
           end
        else
           begin
             dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString := xOperacaoAnt;
             cbbOperacao.SetFocus;
             abort;
           end;
     end;


  {dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString :=
          cbbOperacao.Items.Strings[cbbOperacao.ItemIndex]; }

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 1) then
    begin
      txtVlrPago.Enabled := false;
      cbbAlinea.Enabled := false;

      txtCliente.Enabled := false;
     // cbbContaCorrente.Enabled := true;
      cbbCondPag.Enabled := false;
      btnInfoPag.Enabled := false;
      txtJuros1.Enabled := true;
      {txtInformativo.Text := 'Apenas para os cheques "em aberto" e "devolvidos";'+#13+#10+
                              'O sistema muda a situação para depositado'; }
      dmGeral.FIN_CD_M_MCH.FieldByName('INFORMATIVO').AsString :=
                              'Apenas para os cheques "em aberto" e "devolvidos";'+#13+#10+
                              'O sistema muda a situação para depositado';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').AsString := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONDICAO_PAG').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := 'Depositar';
      cbbCondPag.Text := '';
      cbbContaCorrente.SetFocus;
    end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 2) then
    begin
      txtVlrPago.Enabled := false;
      cbbAlinea.Enabled := true;

      txtCliente.Enabled := false;
     // cbbContaCorrente.Enabled := true;
      cbbCondPag.Enabled := false;
      btnInfoPag.Enabled := false;
      txtJuros1.Enabled := false;
      {txtInformativo.Text := 'Apenas para os cheques "depositados";'+#13+#10+
                             'O sistema muda a situação para devolvido';}
      dmGeral.FIN_CD_M_MCH.FieldByName('INFORMATIVO').AsString :=
                             'Apenas para os cheques "depositados";'+#13+#10+
                             'O sistema muda a situação para devolvido';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').AsString := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONDICAO_PAG').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := 'Devolver';
      cbbCondPag.Text := '';
      cbbContaCorrente.SetFocus;
    end;


  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 3) then
    begin
      txtVlrPago.Enabled := true;
      cbbAlinea.Enabled := false;

      txtCliente.Enabled := true;
    //  cbbContaCorrente.Enabled := false;
      cbbCondPag.Enabled := true;
      btnInfoPag.Enabled := true;
      txtJuros1.Enabled := false;
      {txtInformativo.Text := 'Apenas para os cheques "em aberto", "devolvidos" e "parcial";'+#13+#10+
                             'O sistema muda a situação para parcial'; }
      dmGeral.FIN_CD_M_MCH.FieldByName('INFORMATIVO').AsString :=
                             'Apenas para os cheques "em aberto", "devolvidos" e "parcial";'+#13+#10+
                             'O sistema muda a situação para parcial';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTA').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := 'Pagamento Parcial';
      cbbContaCorrente.Text := '';
      cbbCondPag.SetFocus;
    end;


  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 4) then
    begin
      lblJuros.Visible := true;
      txtJuros.Visible := true;


      txtVlrPago.Enabled := false;
      cbbAlinea.Enabled := false;

      txtCliente.Enabled := true;
     // cbbContaCorrente.Enabled := false;
      cbbCondPag.Enabled := true;
      btnInfoPag.Enabled := true;
      txtJuros1.Enabled := false;
      {txtInformativo.Text := 'Apenas para os cheques "em aberto", "devolvidos" e "parcial";'+#13+#10+
                             'O sistema muda a situação para resgatado';}
      dmGeral.FIN_CD_M_MCH.FieldByName('INFORMATIVO').AsString :=
                             'Apenas para os cheques "em aberto", "devolvidos" e "parcial";'+#13+#10+
                             'O sistema muda a situação para resgatado';
      dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTA').Text := '';
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := 'Resgatar';
      cbbContaCorrente.Text := '';
      cbbCondPag.SetFocus;
    end;

    xOperacaoAnt := dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString;
    FIN_RN_M_CHE_MOV.BusCxaBco(dmGeral.FIN_CD_M_MCH.FieldByName('ID_RESPONSAVEL').AsInteger);

    pnlRelCheques.Enabled := false;

end;



procedure TFIN_FM_M_MCH.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [1]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;
end;

procedure TFIN_FM_M_MCH.dbGridRowChanged(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 4) then
    begin
      lblJuros.Visible := true;
      txtJuros.Visible := true;
    end
   else
    begin
      lblJuros.Visible := false;
      txtJuros.Visible := false;
    end;
end;

procedure TFIN_FM_M_MCH.dgRelChequeCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
   if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VENCIMENTO').AsDateTime > xDataSis) then
      begin
        AFont.Color := clGreen;
      end;

   if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VENCIMENTO').AsDateTime < xDataSis) then
      begin
        AFont.Color := clRed;
      end;

end;

procedure TFIN_FM_M_MCH.dgRelChequeIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgRelChequeIButton.Enabled := false;
     if dmGeral.FIN_CD_M_MCH_CHE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_MCH_CHE.Delete;
     if (dmGeral.FIN_CD_M_MCH_CHE.RecordCount = 0) then
        begin
          //btnAdicionarCheques.SetFocus;
          txtControle.SetFocus;
          pnlRelCheques.Enabled := false;
        end
     else
        begin
          dmGeral.FIN_CD_M_MCH_CHE.Edit;
        end;
  finally
    dgRelChequeIButton.Enabled := true;
  end;
end;

procedure TFIN_FM_M_MCH.dgRelChequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
       FIN_FM_M_MCH_FIL := TFIN_FM_M_MCH_FIL.Create(Self);
       FIN_FM_M_MCH_FIL.Show;
     end;
end;

procedure TFIN_FM_M_MCH.dgRelChequeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmGeral.FIN_CD_M_MCH_CHE.cancel;

  dmGeral.FIN_CD_M_MCH_CHE.Edit;

  if (dmGeral.FIN_CD_M_MCH_CHE.RecordCount >0) then
    begin
      pnlRelCheques.Enabled := true;
      dmGeral.FIN_CD_M_MCH_CHE.Edit;
      if txtVlrPago.CanFocus then
        begin
        txtVlrPago.SetFocus;
        end
      else
        begin
          if cbbAlinea.CanFocus then
            begin
               cbbAlinea.SetFocus;
            end;
        end;
    end
  else
    begin
      pnlRelCheques.Enabled := false;
    end;
end;

procedure TFIN_FM_M_MCH.dsoCheStateChange(Sender: TObject);
begin
  inherited;
  if dmgeral.FIN_CD_M_MCH_CHE.State in [dsEdit] then
    begin
    if (dmGeral.FIN_CD_M_MCH_CHE.RecordCount >0) then
      begin
       pnlRelCheques.Enabled := true;
       dmGeral.FIN_CD_M_MCH_CHE.Edit;
       if txtVlrPago.CanFocus then
         begin
          txtVlrPago.SetFocus;
         end
       else
         begin
          if cbbAlinea.CanFocus then
            begin
               cbbAlinea.SetFocus;
            end;
         end;
      end
    else
      begin
       pnlRelCheques.Enabled := false;
      end;
     dsoChe.OnStateChange := nil;
    end;
end;

procedure TFIN_FM_M_MCH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_M_MCH);
end;

procedure TFIN_FM_M_MCH.FormShow(Sender: TObject);
begin
  inherited;
  dsoChe.OnStateChange := nil;
  dmGeral.FIN_CD_M_MCH.Close;
  dmGeral.FIN_CD_M_MCH.Data :=
  dmGeral.FIN_CD_M_MCH.DataRequest(
            VarArrayOf([0, '']));

   AbrirBuscas;
   btnAlterar.Enabled := false;
   xOperacaoAnt := '';
   xCondPagAnt := '';
   cbbPesquisaChange(Self);
end;


procedure TFIN_FM_M_MCH.pnlDadosDblClick(Sender: TObject);
begin
  inherited;
  btnAlterar.Enabled := false;
end;

procedure TFIN_FM_M_MCH.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_MCH.txtClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbOperacao.Focused or
      txtData.Focused or cbbCondPag.Focused then
     begin
       exit;
     end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').IsNull) then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       txtCliente.SetFocus;
       exit;
     end;

   dmGeral.BusCliente(0,dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').AsString);
   if (dmGeral.BUS_CD_C_CLI.IsEmpty) then
     begin
      ShowMessage('Cliente não cadastrado.');
      txtCliente.Text := '';
      txtCliente.SetFocus;
      exit;
     end;

   if (not dmGeral.BUS_CD_C_CLI.IsEmpty) then
      begin
       if (dmGeral.BUS_CD_C_CLI.FieldByName('ATIVO').AsBoolean = False) then
         begin
          ShowMessage('Cliente inativo.');
          txtCliente.SetFocus;
          exit;
         end;

       dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
      end;
end;

procedure TFIN_FM_M_MCH.txtControleButtonClick(Sender: TObject);
begin
  inherited;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString = '') then
     begin
       ShowMessage('O campo "Operação" deve ser preenchido.');
       cbbOperacao.SetFocus;
       exit;
     end;


  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
     begin
       if (dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').AsString = '') then
          begin
            ShowMessage('O campo "Cliente" deve ser preenchido.');
            txtCliente.SetFocus;
            exit;
          end;
     end;

      FIN_FM_M_MCH_FIL := TFIN_FM_M_MCH_FIL.Create(Self);
      FIN_FM_M_MCH_FIL.Show;
      dsoChe.OnStateChange := dsoCheStateChange;


 


end;

procedure TFIN_FM_M_MCH.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

{procedure TFIN_FM_M_MCH.txtControleButtonClick(Sender: TObject);
begin
  inherited;
  FIN_FM_M_MCH_FIL := TFIN_FM_M_MCH_FIL.Create(Self);
  FIN_FM_M_MCH_FIL.Show;
      if (not dmGeral.BUS_CD_M_REC.IsEmpty) then
         begin
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_CONTROLE').AsString :=
                  dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_BANCO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_BANCO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CONTA').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_CONTA').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CHEQUE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_CHEQUE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VENCIMENTO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_EMITENTE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_EMITENTE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_CHEQUE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsString;
         end;

end; }

{procedure TFIN_FM_M_MCH.txtControleChange(Sender: TObject);
begin
  inherited;

end; }

{procedure TFIN_FM_M_MCH.txtControleExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

   if  (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString = '') then
     begin
       ShowMessage('O campo "Controle" deve ser preenchido.');
       exit;
     end;

   dmGeral.BUS_CD_M_REC.Close;
   dmGeral.BUS_CD_M_REC.Data :=
   dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString]));

   if not dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
         dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_CONTROLE').AsString :=
                  dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_BANCO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_BANCO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CONTA').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_CONTA').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CHEQUE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_CHEQUE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VENCIMENTO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_EMITENTE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('CHE_EMITENTE').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_CHEQUE').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsString;
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsString :=
                  dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsString;
     end
   else
     begin
       ShowMessage('Código inválido!');
       abort;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 1) then
     begin
       dmGeral.FIN_CD_M_MCH_CHE.Post;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 2) then
     begin
       txtAlinea.SetFocus;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 3) then
     begin
       txtVlrPago.SetFocus;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 4) then
     begin
       dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency :=
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsCurrency;
       dmGeral.FIN_CD_M_MCH_CHE.Post;
     end;
end; }

procedure TFIN_FM_M_MCH.txtVlrPagoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or txtControle.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 3) then
     begin

      if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString = '') then
          begin
            ShowMessage('O campo "Vlr. Pago" deve ser preenchido.');
            txtVlrPago.SetFocus;
            exit;
          end;

       if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency = 0) then
          begin
            ShowMessage('O campo "Vlr. Pago" não pode ter valor igual a zero.');
            dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString := '';
            txtVlrPago.SetFocus;
            exit;
          end;

       if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency >=
           dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsCurrency) then
          begin
            ShowMessage('O campo "Vlr. Pago" não pode ter valor maior ou igual ao saldo do cheque.');
            dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString := '';
            txtVlrPago.SetFocus;
            exit;
          end;

       if (not cbbAlinea.CanFocus) then
          begin
            dmGeral.FIN_CD_M_MCH_CHE.Post;
          end;
     end;
end;

procedure TFIN_FM_M_MCH.txtJuros1Exit(Sender: TObject);
begin
  inherited;
   if dmGeral.FIN_CD_M_MCH_CHE.FieldByname('VLR_JUROS').AsString = '' then
      dmGeral.FIN_CD_M_MCH_CHE.FieldByname('VLR_JUROS').AsCurrency :=0;


    if  dmGeral.FIN_CD_M_MCH_CHE.FieldByname('VLR_JUROS').AsCurrency < 0 then
      begin
        ShowMessage('Vlr. Juros tem que ser maior que zero.');
        dmGeral.FIN_CD_M_MCH_CHE.FieldByname('VLR_JUROS').AsString := '';
        txtJuros1.SetFocus;
      end;
end;

end.
