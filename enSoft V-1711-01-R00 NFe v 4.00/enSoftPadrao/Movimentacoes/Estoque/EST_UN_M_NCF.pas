unit EST_UN_M_NCF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Buttons, JvToolEdit, JvDBControls, JvExMask, Vcl.DBCtrls,
  Vcl.Mask, vcl.wwdblook, vcl.Wwdbedit, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,
  ACBrNFeDANFEFR, ACBrMail, ACBrBase, ACBrDFe, ACBrNFe, Datasnap.DBClient,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TEST_FM_M_NCF = class(TPAD_FM_X_PAD)
    lblTipoEstoque: TLabel;
    cbbTipoEstoque: TwwDBLookupCombo;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    txtEstado: TDBEdit;
    lblEstado: TLabel;
    txtEmitenteDescricao: TDBMemo;
    txtEmitente: TJvDBComboEdit;
    lblEmitente: TLabel;
    lblDtaEmissao: TLabel;
    dpkDtaEmissao: TJvDBDateEdit;
    lblEntrada: TLabel;
    dpkDtaDocumento: TJvDBDateEdit;
    lblAlmoxarifado: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    dgNotasDisponiveis: TwwDBGrid;
    dgItensDaNota: TwwDBGrid;
    dgItensDisponiveis: TwwDBGrid;
    dgItensDisponiveisIButton: TwwIButton;
    dsoEmiItensNota: TwwDataSource;
    dsoEmiNotas: TwwDataSource;
    dsoItensDisponiveis: TwwDataSource;
    num_Total_VlrMercadoria: TDBEdit;
    lblVlrMercadoria: TLabel;
    num_VlrFreteNF: TwwDBEdit;
    lblVlrFrete: TLabel;
    num_VlrSeguro: TwwDBEdit;
    lblSeguro: TLabel;
    num_VlrOutrasDesp: TwwDBEdit;
    lblOutrasDesp: TLabel;
    num_Total_VlrDesc: TwwDBEdit;
    lblVlrDesc: TLabel;
    num_VlrBaseICMS: TDBEdit;
    lblVlrBaseNormal: TLabel;
    lblIcmsNormal: TLabel;
    lblVlrIcmsNormal: TLabel;
    num_VlrICMS: TDBEdit;
    num_VlrBaseICMSSubst: TDBEdit;
    lblVlrBase: TLabel;
    lblIcmsSubstituido: TLabel;
    lblVlrIcmsSubstituido: TLabel;
    num_VlrICMSSubst: TDBEdit;
    num_TotalLiquido: TwwDBEdit;
    lblTotalNota: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure txtEmitenteExit(Sender: TObject);
    procedure txtEmitenteButtonClick(Sender: TObject);
    procedure txtNumeroExit(Sender: TObject);
    procedure dgNotasDisponiveisDblClick(Sender: TObject);
    procedure dgItensDaNotaDblClick(Sender: TObject);
    procedure dgItensDisponiveisEnter(Sender: TObject);
    procedure dgItensDisponiveisExit(Sender: TObject);
    procedure dgItensDisponiveisFieldChanged(Sender: TObject; Field: TField);
    procedure dgItensDisponiveisRowChanged(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBusca;
    Var
      xOperacaoForm:String;
      xQtdeAnterior:Currency;
      xModoAddOuAlterar:boolean;
  public
    { Public declarations }
  end;

var
  EST_FM_M_NCF: TEST_FM_M_NCF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, FAT_RN_M_NFE;

procedure TEST_FM_M_NCF.acAdicionaExecute(Sender: TObject);
var
  mens:string;
begin
  inherited;
   mens := '';

   dmGeral.FIN_CD_M_CXA.Close;
   dmGeral.FIN_CD_M_CXA.Data :=
   dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));

   if dmGeral.FIN_CD_M_CXA.IsEmpty then
      begin
         mens := 'O caixa tem que estar aberto.'+#13+#10;
      end;

   if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_CONDICAO_PAG').AsString = '') or
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_FORMA_PAG').AsString = '')) then
      begin
         mens := 'Os campos de devolução de vendas na tela de parâmetros devem estar preenchidos.'+#13+#10;
      end;

   if (mens <> '') then
      begin
        mens := 'Atenção:'+#13+#10 + mens;
        exit;
      end;

       Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
       btnAlterar.Enabled := false;

       dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_NCF',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

       cbbAlmoxarifado.Enabled := false;

       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger := dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString :=
               dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_CONDICAO_PAG').AsString;
       dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger :=
                             dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;
       dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString := 'X';
       dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString := ' ';
       dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString := '55';
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger := 9; //Sem frete
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger := 0;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
       dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString := 'E';
       dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency := 0;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger := 4;
       dmGeral.FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger     := 0;
       dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean    := true;
       dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger      := 1;

       if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) and
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
         begin
          cbbAlmoxarifado.Enabled := true;
          dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                 dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;

         end;
       cbbTipoEstoque.SetFocus;
       dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := true;
       xModoAddOuAlterar:=true;


end;

procedure TEST_FM_M_NCF.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = true) then
     begin
       ShowMessage('A nota de devolução não pode ser excluída, pois a nota foi faturada.');
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = false) then
     begin
       if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
         begin
          Showmessage('A nota de devolução não pode ser excluída, pois data do documento é diferente do mês e ano do controle dos parâmetros.');
          abort;
         end
       else
         begin
           if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
             begin
               inherited;
               cbbAlmoxarifado.Enabled := false;
               txtEmitente.Enabled := false;

               cbbTipoEstoque.SetFocus;

               dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := true;
               AtualizarSaldoDevIte;
               xModoAddOuAlterar := false;

             end;
         end;
     end;
end;

procedure TEST_FM_M_NCF.acCancelarExecute(Sender: TObject);
var
   fiscal:string;
begin
   fiscal := trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString);
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       dbGrid.SetFocus;
        if  (xModoAddOuAlterar = false) and (fiscal <> '') then
         begin
           dmGeral.FAT_CD_M_NFE.Close;
           dmGeral.FAT_CD_M_NFE.Data :=
           dmGeral.FAT_CD_M_NFE.DataRequest(
                                    VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'R',fiscal]));
         end;
       AbrirBusca;

       dmGeral.BUS_CD_M_NFE_2.Close;
       cbbAlmoxarifado.Enabled := true;
       txtEmitente.Enabled := true;
       //txt_Nfe_Chave.Enabled := true;
       //txt_Nfe_Chave.Color := clWhite;
       dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := false;
     end
  else
     begin
       cbbTipoEstoque.SetFocus;
     end;
end;

procedure TEST_FM_M_NCF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = true) then
     begin
       ShowMessage('A nota de devolução não pode ser excluída, pois a nota foi faturada.');
       abort;
     end;

   if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
      begin
       Showmessage('A nota de devolução não pode ser excluída, pois data do documento é diferente do mês e ano do controle dos parâmetros.');
       abort;
      end;

   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
end;

procedure TEST_FM_M_NCF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   FatValidarCamposNfc;

   if dmGeral.FAT_CD_M_NFE_ITE.RecordCount = 0 then
     begin
       ShowMessage('Não há registro de nota fiscal de entrada para o cliente selecionado.');
       abort;
     end;

   dmGeral.BUS_CD_M_BUS_NFE.Close;
   dmGeral.BUS_CD_M_BUS_NFE.Data :=
          dmGeral.BUS_CD_M_BUS_NFE.DataRequest(VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').text,
                                                           dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').text,
                                                           dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                           dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text,
                                                           dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text,
                                                           dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text]));
   if not dmGeral.BUS_CD_M_BUS_NFE.IsEmpty then
      begin
        ShowMessage('Já existe nota fiscal lançada com os dados digitado!' + #13 +
                    'Código emitente:' + dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text + #13 +
                    'Número NF: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text + #13 +
                    'Série: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text + #13 +
                    'Modelo:' +  dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text);
        exit;
      end;


   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      DeletarNotasNaoSelecionadasDev;
      codigo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
      DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
      inherited;
      dmGeral.FAT_CD_M_NFE.Close;
      dmGeral.FAT_CD_M_NFE.Data :=
      dmGeral.FAT_CD_M_NFE.DataRequest(
           VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'R',codigo]));

      AbrirBusca;

      dmGeral.BUS_CD_M_NFE_2.Close;

      cbbAlmoxarifado.Enabled := true;
      txtEmitente.Enabled := true;

      dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := false;
     end
  else
     begin
       cbbTipoEstoque.SetFocus;
     end;
end;

procedure TEST_FM_M_NCF.btnFiltroClick(Sender: TObject);
var
  tipoFiltro:integer;
  xPesquisa:String;
begin
   tipoFiltro := 2;
  if cbbPesquisa.ItemIndex = 0 then
     begin
      tipoFiltro := 1;
     end;

  if cbbPesquisa.ItemIndex = 1 then
     begin
       tipoFiltro := 0;
     end;

  if (cbbPesquisa.ItemIndex > 2) and (cbbPesquisa.ItemIndex < 8) then
     begin
       tipoFiltro := cbbPesquisa.ItemIndex + 1;
     end;


  if (txtPesquisaData.Visible =true) then
    xPesquisa := txtPesquisaData.Text
  else
    xPesquisa := txtPesquisa.Text;


 // Screen.Cursor := crHourGlass;
 // try
  //  inherited;
    dmGeral.FAT_CD_M_NFE.Close;
    dmGeral.FAT_CD_M_NFE.Data :=
    dmGeral.FAT_CD_M_NFE.DataRequest(
          VarArrayOf([tipoFiltro,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'R', xPesquisa]));

end;

procedure TEST_FM_M_NCF.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbAlmoxarifado.DropDown;
     end;

end;

procedure TEST_FM_M_NCF.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
     txtEmitente.Focused or dpkDtaEmissao.Focused or dpkDtaDocumento.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString = '') then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser preenchido.');
       cbbAlmoxarifado.SetFocus;
       abort;
     end;
end;

procedure TEST_FM_M_NCF.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [6,7]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 108;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;
end;

procedure TEST_FM_M_NCF.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(6,'0');
  cbbTipoEstoque.DropDown;
end;


procedure TEST_FM_M_NCF.AbrirBusca;
begin
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusAlmox(1,'%');
end;

procedure TEST_FM_M_NCF.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '' then
     begin
       ShowMessage('O campo "Tipo de Estoque" deve ser preenchido!');
       cbbTipoEstoque.SetFocus;
       exit;
     end;

  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString]));

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     Begin
       ShowMessage('Tipo de estoque não cadastrado!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       exit;
     end;

  if not dmGeral.BUS_CD_C_TME.FieldByName('ATIVO').AsBoolean then
     begin
       ShowMessage('Tipo de estoque inativo.');
       cbbTipoEstoque.SetFocus;
       cbbTipoestoque.Text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       exit;
     end;

   if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
     begin
       ShowMessage('O tipo de estoque deve ser de "Entrada".');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       exit;
     end;

   if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [1]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Devolução"!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       exit;
     end;

    dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString := dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').text;
    dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text :=
      dmGeral.MontaTipoNota(dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

    dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := '';
    if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString) <> '') and
       (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger <> 0) then
      begin
        dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := dmGeral.BusCFOPDoc(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,'','',true);
      end;
end;

procedure TEST_FM_M_NCF.dgItensDaNotaDblClick(Sender: TObject);
begin
  inherited;
  try
    dgItensDisponiveis.OnFieldChanged := nil;
    FatInserirDevolvidoNfeIte(true);
  finally
    dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
  end;

end;

procedure TEST_FM_M_NCF.dgItensDisponiveisEnter(Sender: TObject);
begin
  inherited;
   xQtdeAnterior := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
  dgItensDisponiveis.OnExit := dgItensDisponiveisExit;
end;

procedure TEST_FM_M_NCF.dgItensDisponiveisExit(Sender: TObject);
var
  xQtdeSalvo:currency;
  existe_registro:boolean;
begin

   existe_registro := false;
   dmGeral.FAT_CD_M_NFE_DEV.First;
    while (existe_registro=false) and (not dmGeral.FAT_CD_M_NFE_DEV.EOF) do
     begin
       if dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                   VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').Text,
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
          begin
           existe_registro := true;
          end;
       if (existe_registro=false) then
          begin
           dmGeral.FAT_CD_M_NFE_DEV.Next;
          end;
     end;

   if (existe_registro = false) then
      begin
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency := xQtdeAnterior;
      end
   else
      begin
         xQtdeSalvo := 0;
         dmGeral.BUS_CD_M_CSU_NFE_ITE.Close;
         dmGeral.BUS_CD_M_CSU_NFE_ITE.Data :=
         dmGeral.BUS_CD_M_CSU_NFE_ITE.DataRequest(
                             VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

         if (not dmGeral.BUS_CD_M_CSU_NFE_ITE.IsEmpty) and dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                                VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
           begin
                 xQtdeSalvo := dmGeral.BUS_CD_M_CSU_NFE_ITE.FieldByName('QTDE').AsFloat;
           end;

         if ((xQtdeSalvo+dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsFloat) <
             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat) or
             (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency = 0) then
             begin
               try
                 dgItensDisponiveis.OnFieldChanged := nil;
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency := xQtdeAnterior;
               finally
                 dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
               end;

             end;
      end;
end;

procedure TEST_FM_M_NCF.dgItensDisponiveisFieldChanged(Sender: TObject;
  Field: TField);
begin
  inherited;

  try
    dgItensDisponiveis.OnFieldChanged := nil;
    dmGeral.FAT_CD_M_NFE_ITE.Edit;
    if (Field.FullName = 'qtde') and(dmGeral.FAT_CD_M_NFE_ITE.State in [dsedit]) then
       begin
         FatCalcDevolvidoNfeIte;
      end;
  finally
    dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
  end;

end;

procedure TEST_FM_M_NCF.dgItensDisponiveisRowChanged(Sender: TObject);
begin
  inherited;
  xQtdeAnterior := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
end;

procedure TEST_FM_M_NCF.dgNotasDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  try
    dgItensDisponiveis.OnFieldChanged := nil;
    FatInserirTodosDevolvidoNfeIte;
  finally
    dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
  end;

end;

procedure TEST_FM_M_NCF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := dmGeral.FAT_CD_M_NFE_ITEqtdeChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEper_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := dmGeral.FAT_CD_M_NFE_ITEid_cfoChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_valorChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_valorChange;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := dmGeral.FAT_CD_M_NFE_ITEAfterPost;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := dmGeral.FAT_CD_M_NFE_ITEAfterDelete;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(EST_FM_M_NCF);
end;

procedure TEST_FM_M_NCF.FormCreate(Sender: TObject);
begin
  inherited;
  txtEstado.Color := $00DADADA;
  txtEmitenteDescricao.Color := $00DADADA;
  num_VlrFreteNF.Color := clWhite;
  num_VlrSeguro.Color := clWhite;
  num_VlrOutrasDesp.Color := clWhite;
  num_Total_VlrDesc.Color := $00DADADA;

  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));

  dmGeral.BUS_CD_M_NFE_2.Close;
  dmGeral.BUS_CD_M_NFE_2.Data :=
  dmGeral.BUS_CD_M_NFE_2.DataRequest(
            VarArrayOf([0, '']));
  AbrirBusca;

  dmGeral.AtualizarGridItens(dgItensDaNota,'int_desc_item',10,4);
  dmGeral.AtualizarGridItens(dgItensDisponiveis,'int_desc_item',10,4);

  dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := false;

  dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := nil;

end;

procedure TEST_FM_M_NCF.txtEmitenteButtonClick(Sender: TObject);
begin
  inherited;
    // Busca o Cliente
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
             PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString :=
             PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TEST_FM_M_NCF.txtEmitenteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or
     cbbTipoEstoque.Focused then
     begin
       exit;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').Text := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString = '' then
    begin
      ShowMessage('O campo "Emitente" deve ser preenchido.');
      abort;
    end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text]));

  if dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      ShowMessage('Cliente não cadastrado.');
      dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString := '';
      dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString := '';
      dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString := '';
      dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString := '';
      txtEmitente.SetFocus;
      abort;
    end;

   dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString :=
          dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
   dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString :=
          dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
   dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString :=
          dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString;

   dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := dmGeral.BusCFOPDoc(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,'','',true);

   CarregarNotasDisponiveis('S');

   if cbbAlmoxarifado.CanFocus then
      begin
        ActiveControl := nil;
        PostMessage(cbbAlmoxarifado.Handle, WM_SETFOCUS, 0, 0);
        cbbAlmoxarifado.SetFocus;
      end;
end;

procedure TEST_FM_M_NCF.txtNumeroExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or
     cbbTipoEstoque.Focused or txtEmitente.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').IsNull) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger := 0;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger := 0;
  if dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger <> 0  then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 1;
       dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger := 1;
     end;
end;

end.
