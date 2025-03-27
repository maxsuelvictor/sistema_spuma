unit FAT_UN_M_CXA_RBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.Math, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Buttons,
  vcl.wwdblook, Vcl.Mask, JvExMask, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS;

type
  TFAT_FM_M_CXA_RBX = class(TPAD_FM_X_PAD)
    dsoTit: TwwDataSource;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblCliente: TLabel;
    Label4: TLabel;
    txtDataCxa: TEdit;
    cbbContaCorrente: TwwDBLookupCombo;
    lblContaCorrente1: TLabel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    gbTitulos: TGroupBox;
    btn_Add_Titulos: TBitBtn;
    grdTitulos: TwwDBGrid;
    grdTitulosIButton: TwwIButton;
    pnlTitulos: TPanel;
    lblNTitulo: TLabel;
    lblVencimendo: TLabel;
    lblVlrTitulo: TLabel;
    lblPerDesconto: TLabel;
    lblVlrDesconto: TLabel;
    lblVlrCredito: TLabel;
    lblTotalPagar: TLabel;
    lblVlrPago: TLabel;
    lblVlrRestante: TLabel;
    lblJuros: TLabel;
    txtVlrTitulo: TDBEdit;
    txtPerDesconto: TDBEdit;
    txtVlrDesconto: TDBEdit;
    txtVlrCredito: TDBEdit;
    txtTotalPagar: TDBEdit;
    txtVlrPago: TDBEdit;
    txtVlrRestante: TDBEdit;
    dpkVencimento: TJvDBDateEdit;
    txtNTitulo: TJvDBComboEdit;
    txtVlrJuros: TDBEdit;
    lblCreditoDisponivel: TLabel;
    txtCreditoDisponivel: TDBEdit;
    Label1: TLabel;
    txtSaldoCredito: TDBEdit;
    FAT_XL_M_CXA_RBX: TfrxXLSExport;
    FAT_PD_M_CXA_RBX: TfrxPDFExport;
    FAT_DB_M_CXA_RBX: TfrxDBDataset;
    FAT_FR_M_CXA_RBX_DNC: TfrxReport;
    btnImprimirRecibo: TcxButton;
    FAT_DB_M_CXA_RBX_TIT: TfrxDBDataset;
    FAT_FR_M_CXA_RBX: TfrxReport;
    FAT_DB_M_CXA_RBX_GER: TfrxDBDataset;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure pnlTitulosExit(Sender: TObject);
    procedure btn_Add_TitulosClick(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnImprimirReciboClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure txtNTituloButtonClick(Sender: TObject);
    procedure txtNTituloExit(Sender: TObject);
    procedure txtVlrPagoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirDadosTit;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    var
      xCodFpg:string;
  public
     xIdAbertura: integer; // Campo utilizado pela tela de Controle de caixa
     xIdConta:    integer; // Campo utilizado pela tela de Controle de caixa
    { Public declarations }
  end;

var
  FAT_FM_M_CXA_RBX: TFAT_FM_M_CXA_RBX;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, enFunc, PSQ_UN_X_REC, PSQ_UN_X_CLI;

procedure TFAT_FM_M_CXA_RBX.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX);
  HabilDesabCampos(true,clWindow);
  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger])); // Busca o caixa aberto para o funcionário especificado

  if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       txtDataCxa.Text :=
               dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString;
     end;

  dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsInteger    := xIdConta;
  dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').asInteger := xIdAbertura;
  dmGeral.BusContaCorr(0,inttostr(xIdConta));
  cbbContaCorrente.Text := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
  dmGeral.BUS_CD_C_CTC.Close;
  //cbbContaCorrente.ReadOnly := true; // deve ficar aqui
  cbbContaCorrente.Enabled := False;
  cbbContaCorrente.Color   := $00DADADA;


   btnImprimirRecibo.Enabled := false;
   xCodFpg := '';
   txtCliente.SetFocus;
end;

procedure TFAT_FM_M_CXA_RBX.acAlterarExecute(Sender: TObject);
begin
  if (dmGeral.FIN_CD_M_RBX.RecordCount >0) then
    BEGIN
      dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString);
      if (not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,7])) then
         begin
           ShowMessage('Alteração é permitida somente para forma de pagamento em Dinheiro ou Nota de Crédito.');
           dmGeral.BusFormaPgtos(1,'%');
           exit;
         end;
       dmGeral.BusFormaPgtos(1,'%');
    END;

  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX) then
      begin
        inherited;
        HabilDesabCampos(false,$00DADADA);
        btnImprimirRecibo.Enabled := false;
        pnlTitulos.Enabled        := False;
        cbbFormaPagamento.Enabled := false;
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger])); // Busca o caixa aberto para o funcionário especificado

        if not dmGeral.BUS_CD_M_CXA.IsEmpty then
         begin
           txtDataCxa.Text :=
                dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString;
         end;

        dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsString :=
                CurrToStr(dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString));

        dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsCurrency :=
                  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsCurrency +
                  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_cred_utilizado').AsCurrency;


      end;
end;


procedure TFAT_FM_M_CXA_RBX.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled := Estado;
  txtCliente.Color   := Cor;

  cbbFormaPagamento.Enabled := Estado;
  cbbFormaPagamento.Color   := Cor;

  cbbContaCorrente.Enabled := Estado;
  cbbContaCorrente.Color   := Cor;
end;

procedure TFAT_FM_M_CXA_RBX.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX) then
     begin
       inherited;
       dbGrid.SetFocus;
       HabilDesabCampos(true,clWindow);
       gbxFiltro.Enabled := false;
       btnImprimirRecibo.Enabled := true;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TFAT_FM_M_CXA_RBX.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX);
  gbxFiltro.Enabled := false;
end;

procedure TFAT_FM_M_CXA_RBX.acGravarExecute(Sender: TObject);
var
  codigo:string;
begin
  inherited;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := dmGeral.FIN_CD_M_RBX.FieldByName('ID_BAIXA').AsString;
      DmGeral.Grava(dmGeral.FIN_CD_M_RBX);
      inherited;
      dmGeral.FIN_CD_M_RBX.Close;
      dmGeral.FIN_CD_M_RBX.Data :=
                dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xIdAbertura,xFuncionario]));
      dmGeral.FIN_CD_M_RBX.Locate('ID_BAIXA',CODIGO,[]);

      dmGeral.BusCxaBco(xFuncionario);
      dmGeral.BusFormaPgtos(1,'%');
      HabilDesabCampos(true,clWindow);
      btnImprimirRecibo.Enabled := true;
      gbxFiltro.Enabled := false;
    end;

end;

procedure TFAT_FM_M_CXA_RBX.btnFiltroClick(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.FIN_CD_M_RBX.Close;
    dmGeral.FIN_CD_M_RBX.Data :=
    dmGeral.FIN_CD_M_RBX.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_CXA_RBX.btnImprimirReciboClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  vlr_bxa:currency;
begin
  inherited;
  if dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
       ShowMessage('É necessário selecionar registro');
       exit;
     end;

  codigo := dmGeral.FIN_CD_M_RBXid_baixa.text;

  dmGeral.FIN_CD_M_RBX.Close;
  dmGeral.FIN_CD_M_RBX.Data :=
  dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

  if not dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
        if ((dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').IsNull) or
          (dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsString = '')) then
          begin
            dmGeral.FIN_CD_M_RBX.BeforeEdit := nil;
            dmGeral.FIN_CD_M_RBX.BeforePost := nil;
            dmGeral.FIN_CD_M_RBX.Edit;
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
               dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsInteger :=
                             SMPrincipal.enValorChave('NUM_RCB_RBX');
            finally
               dmGeral.FIN_CD_M_RBX.BeforeEdit := dmGeral.FIN_CD_M_RBXBeforeEdit;
               dmGeral.FIN_CD_M_RBX.BeforePost := dmGeral.FIN_CD_M_RBXBeforePost;
               FreeAndNil(SMPrincipal);
            end;
            dmGeral.FIN_CD_M_RBX.Post;
            if (dmGeral.FIN_CD_M_RBX.ApplyUpdates(0) <> 0) then
              begin
                ShowMessage('Falha ao gerar nº do recibo.');
                dmGeral.FIN_CD_M_RBX.Close;
                dmGeral.FIN_CD_M_RBX.Data :=
                dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xIdAbertura,xFuncionario]));
                                    dmGeral.FIN_CD_M_RBX.Locate('ID_BAIXA',CODIGO,[]);
                exit;
              end;
          end;


       vlr_bxa := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');

       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4,6]) then
          begin
           FAT_FR_M_CXA_RBX.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RBX.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RBX.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RBX.Name,xCodLme,xRevLme,nil);
           FAT_FR_M_CXA_RBX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FAT_FR_M_CXA_RBX.Variables['Opcoes'] := QuotedStr('');
           FAT_FR_M_CXA_RBX.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FAT_FR_M_CXA_RBX.PrepareReport();
           FAT_FR_M_CXA_RBX.ShowReport();

          end;


        if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,7]) then
          begin
           FAT_FR_M_CXA_RBX_DNC.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RBX_DNC.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RBX_DNC.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RBX_DNC.Name,xCodLme,xRevLme,nil);
           FAT_FR_M_CXA_RBX_DNC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FAT_FR_M_CXA_RBX_DNC.Variables['Opcoes'] := QuotedStr('');
           FAT_FR_M_CXA_RBX_DNC.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FAT_FR_M_CXA_RBX_DNC.PrepareReport();
           FAT_FR_M_CXA_RBX_DNC.ShowReport();

          end;
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
      end;

   dmGeral.FIN_CD_M_RBX.Close;
   dmGeral.FIN_CD_M_RBX.Data :=
   dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xIdAbertura,xFuncionario]));
                                    dmGeral.FIN_CD_M_RBX.Locate('ID_BAIXA',CODIGO,[]);
end;

procedure TFAT_FM_M_CXA_RBX.btn_Add_TitulosClick(Sender: TObject);
begin
  inherited;
  pnlTitulos.Enabled  := True;

  dmGeral.FIN_CD_M_RBX_TIT.Insert;
  txtNTitulo.Enabled := True;
  txtNTitulo.SetFocus;
end;

procedure TFAT_FM_M_CXA_RBX.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  {dmGeral.BusCxaBco(xFuncionario);
  cbbContaCorrente.DropDown; }
end;

procedure TFAT_FM_M_CXA_RBX.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  {dpkDataBaixa.ReadOnly := true;
  dpkDataBaixa.Color    := $00DADADA;
  if dmGeral.BUS_CD_C_CTCtipo.AsInteger = 1 then
     begin
       dpkDataBaixa.ReadOnly := false;
       dpkDataBaixa.Color    := clWindow;
     end;  }
end;

procedure TFAT_FM_M_CXA_RBX.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  xCodFpg :=  dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString;
  dmGeral.BusFormaPgtos(4,'''5'',''7''');
  cbbFormaPagamento.DropDown;
end;

procedure TFAT_FM_M_CXA_RBX.cbbFormaPagamentoExit(Sender: TObject);
begin

   dmGeral.FIN_CD_M_RBX.FieldByName('id_tipo_financeiro').AsString := '';
   dmGeral.FIN_CD_M_RBX.FieldByName('id_plano').AsString := '';
   dmGeral.FIN_CD_M_RBX.FieldByName('id_ccusto').AsString := '';

  if dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsInteger > 0 then
     begin
       dmgeral.FIN_CD_M_RBX_TIT.cancel;

       if (dmgeral.FIN_CD_M_RBX_TIT.RecordCount > 0) then
          begin
            if (xCodFpg <> '') and (xCodFpg <> dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString) then
               begin
                 Showmessage('Não é permitido alterar a forma de pagamento com títulos já informado na baixa.');
                 dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString := xCodFpg;
               end;
          end;

       dmGeral.BusFormaPgtos(0,dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString);


      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_tipo_financeiro').AsString <> '' then
        begin
          dmGeral.FIN_CD_M_RBX.FieldByName('id_tipo_financeiro').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_tipo_financeiro').AsString;
        end;
      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_plano').AsString <> '' then
        begin
          dmGeral.FIN_CD_M_RBX.FieldByName('id_plano').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_plano').AsString;
        end;
      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_ccusto').AsString <> '' then
        begin
         dmGeral.FIN_CD_M_RBX.FieldByName('id_ccusto').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_ccusto').AsString;
        end;

     end;
end;

procedure TFAT_FM_M_CXA_RBX.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
   txtPesquisa.Text := '';

  if (cbbPesquisa.ItemIndex = 0) then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_CXA_RBX.dbGridDblClick(Sender: TObject);
begin
  inherited;
  btnImprimirRecibo.Enabled := false;
end;

procedure TFAT_FM_M_CXA_RBX.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdTitulosIButton.Enabled := False;
     if dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_RBX_TIT.Delete;
     dmGeral.FIN_CD_M_RBX_TIT.Edit;
  finally
    grdTitulosIButton.Enabled := True;
  end;
end;

procedure TFAT_FM_M_CXA_RBX.grdTitulosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTitulos.Enabled = False then
     pnlTitulos.Enabled := True;

  dmGeral.FIN_CD_M_RBX_TIT.cancel;

  if dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.Append;
       txtNTitulo.Enabled := True;

       pnlTitulos.Enabled := True;
       txtNTitulo.SetFocus;
     end
  else
    begin
      dmGeral.FIN_CD_M_RBX_TIT.Edit;
      pnlTitulos.Enabled := True;
      txtNTitulo.Enabled := False;
      txtPerDesconto.SetFocus;
    end;
end;

procedure TFAT_FM_M_CXA_RBX.pnlDadosDblClick(Sender: TObject);
begin
  inherited;
  btnImprimirRecibo.Enabled := true;
end;

procedure TFAT_FM_M_CXA_RBX.pnlTitulosExit(Sender: TObject);
begin
  inherited;
   if (btn_Add_Titulos.Focused) or (grdTitulos.Focused) or (not grdTitulosIButton.Enabled) then
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

        dmGeral.FIN_CD_M_RBX_TIT.Cancel;
        dmGeral.FIN_CD_M_RBX_TIT.edit;

        finally
           pnlTitulos.Enabled := False;
        end;
      end;
end;

procedure TFAT_FM_M_CXA_RBX.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsInteger :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_CXA_RBX.txtClienteExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

    dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text := '';

    if dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').Text = '' then
       begin
         ShowMessage('O campo "Cliente" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CLI.Data :=
    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

    if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
       begin
         dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :='';
         txtCliente.SetFocus;
         abort;
       end;

    dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
end;

procedure TFAT_FM_M_CXA_RBX.txtNTituloButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_REC := TPSQ_FM_X_REC.Create(Self);
   PSQ_FM_X_REC.ShowModal;
      if not dmGeral.BUS_CD_M_REC.IsEmpty then
         begin
           ExibirDadosTit;
         end;
   PSQ_FM_X_REC.Free;
end;


procedure TFAT_FM_M_CXA_RBX.txtNTituloExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;

  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Titulos.Focused then
          exit;

       if grdTitulos.Focused then
          exit;

       if not grdTitulosIButton.Enabled then
          exit;

       if (txtVlrJuros.Focused) or
          (txtPerDesconto.Focused) or (txtVlrDesconto.Focused) or
          (txtVlrCredito.Focused) or (txtVlrPago.Focused) then
           begin
             ShowMessage('O campo "Controle" deve ser prenchido.');
             txtNTitulo.SetFocus;
             exit;
           end
       else
           begin
             pnlTitulos.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.FIN_CD_M_RBX_TIT.state in [dsBrowse] then
          dmGeral.FIN_CD_M_RBX_TIT.edit;
     end;


  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([0, dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsString
                                                 ,dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString]));
  if dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       Showmessage('Título não encontrado.');
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
       txtNTitulo.SetFocus;
       exit;
     end;

  try
   pnlTitulos.onExit := nil;


  id_titulo := dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString;
  if dmGeral.FIN_CD_M_RBX_TIT.State in [dsInsert] then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.cancel;
       if dmGeral.FIN_CD_M_RBX_TIT.Locate('ID_TITULO', id_titulo,[]) then
          begin
            ShowMessage('Título já informado nessa baixa.');
            btn_Add_Titulos.SetFocus;
            exit;
          end
       else
          begin
            dmGeral.FIN_CD_M_RBX_TIT.Insert;
            dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := id_titulo;
            ActiveControl := nil;
            PostMessage(txtVlrJuros.Handle, WM_SETFOCUS, 0, 0);
            txtVlrJuros.SetFocus;
          end;
     end;

  ExibirDadosTit;

  finally
     pnlTitulos.OnExit := pnlTitulosExit;
  end;

end;

procedure TFAT_FM_M_CXA_RBX.txtVlrPagoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if grdTitulos.Focused or txtPerDesconto.Focused or
     txtVlrDesconto.Focused or  txtVlrCredito.Focused or
     txtVlrJuros.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency)) then
     begin
       txtVlrPago.SetFocus;
       abort;
     end;

  dmGeral.FIN_CD_M_RBX_TIT.Post;
  pnlTitulos.Enabled := False;

  ActiveControl := nil;
  PostMessage(btn_Add_Titulos.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Titulos.SetFocus;
end;

procedure TFAT_FM_M_CXA_RBX.ExibirDadosTit;
begin
    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('dta_vencimento').AsCurrency :=
           dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsCurrency;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency :=
           dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('num_parcela').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsInteger := 0;

  if  dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime<xDataSis then
      begin
        dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat:=
           (xDataSis - dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime);
      end;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency := 0;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency > 0 then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency:=
          roundTo( (((dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency*
             dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency)/100)/30)*
               dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat,-2);
     end;
end;


procedure TFAT_FM_M_CXA_RBX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_RBX.Close;
  FreeAndNil(FAT_FM_M_CXA_RBX);
end;

procedure TFAT_FM_M_CXA_RBX.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.BusCxaBco(xFuncionario);
  dmGeral.BusFormaPgtos(1,'%');
end;

procedure TFAT_FM_M_CXA_RBX.FormShow(Sender: TObject);
begin
  inherited;
   gbxFiltro.Enabled := false;
end;

end.
