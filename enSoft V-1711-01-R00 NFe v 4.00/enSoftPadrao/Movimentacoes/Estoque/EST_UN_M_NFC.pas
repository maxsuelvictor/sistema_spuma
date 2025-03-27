unit EST_UN_M_NFC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, vcl.Wwdbedit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.ComCtrls,
  vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, enFunc,
  JvExExtCtrls, JvExtComponent, JvPanel, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Datasnap.DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TEST_FM_M_NFC = class(TPAD_FM_X_PAD)
    lblEstado: TLabel;
    lblEmitente: TLabel;
    lblNumero: TLabel;
    lblSerie: TLabel;
    lblSubSerie: TLabel;
    lblModelo: TLabel;
    lblChaveAcesso: TLabel;
    lblCfop: TLabel;
    txtEmitente: TJvDBComboEdit;
    txtNumero: TDBEdit;
    txt_NFe_Chave: TDBEdit;
    cbbModelo: TwwDBLookupCombo;
    lblIcmsNormal: TLabel;
    lblIcmsSubstituido: TLabel;
    lblVlrIcmsSubstituido: TLabel;
    lblVlrDesc: TLabel;
    lblTotalNota: TLabel;
    lblVlrBase: TLabel;
    lblVlrIcmsNormal: TLabel;
    lblVlrBaseNormal: TLabel;
    lblOutrasDesp: TLabel;
    lblSeguro: TLabel;
    lblVlrFrete: TLabel;
    lblVlrMercadoria: TLabel;
    num_VlrICMSSubst: TDBEdit;
    num_Total_VlrDesc: TwwDBEdit;
    num_TotalLiquido: TwwDBEdit;
    num_VlrBaseICMSSubst: TDBEdit;
    num_VlrICMS: TDBEdit;
    num_VlrBaseICMS: TDBEdit;
    num_VlrOutrasDesp: TwwDBEdit;
    num_VlrSeguro: TwwDBEdit;
    num_VlrFreteNF: TwwDBEdit;
    num_Total_VlrMercadoria: TDBEdit;
    lblTipoEstoque: TLabel;
    cbbTipoEstoque: TwwDBLookupCombo;
    lblDtaEmissao: TLabel;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    dgItensDisponiveis: TwwDBGrid;
    lblNotasDisponiveis: TLabel;
    lblItens: TLabel;
    lblItensDisponiveis: TLabel;
    dpkDtaEmissao: TJvDBDateEdit;
    txtEstado: TDBEdit;
    dgItensDaNota: TwwDBGrid;
    dgNotasDisponiveis: TwwDBGrid;
    dsoEmiNotas: TwwDataSource;
    dsoEmiItensNota: TwwDataSource;
    txtEmitenteDescricao: TDBMemo;
    dsoItensDisponiveis: TwwDataSource;
    txtSerie: TwwDBEdit;
    txt_SubSerie: TwwDBEdit;
    dgItensDisponiveisIButton: TwwIButton;
    dpkDtaDocumento: TJvDBDateEdit;
    lblEntrada: TLabel;
    lblIndicadorFrete: TLabel;
    cbbIndFrete: TJvDBComboBox;
    lblAlmoxarifado: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    cbbCFOP: TwwDBLookupCombo;
    pmAdicionarNovosItens: TPopupMenu;
    btnAdicionarNovoItem: TMenuItem;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtEmitenteButtonClick(Sender: TObject);
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbModeloExit(Sender: TObject);
    procedure txtNumeroExit(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
   // procedure txt_CFOPButtonClick(Sender: TObject);
    procedure txtEmitenteExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
   // procedure txt_CFOPExit(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure dpkDtaEmissaoExit(Sender: TObject);
    procedure txtSerieExit(Sender: TObject);
    procedure txt_SubSerieExit(Sender: TObject);
    procedure dgItensDisponiveisIButtonClick(Sender: TObject);
    procedure dgItensDaNotaDblClick(Sender: TObject);
    procedure dgItensDisponiveisFieldChanged(Sender: TObject; Field: TField);
    procedure dgItensDisponiveisExit(Sender: TObject);
    procedure txt_NFe_ChaveExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure dpkDtaDocumentoExit(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure dgNotasDisponiveisDblClick(Sender: TObject);
    procedure dgItensDisponiveisEnter(Sender: TObject);
    procedure cbbIndFreteExit(Sender: TObject);
    procedure dgItensDisponiveisRowChanged(Sender: TObject);
    procedure cbbCFOPEnter(Sender: TObject);
    procedure cbbCFOPExit(Sender: TObject);
    procedure btnAdicionarNovoItemClick(Sender: TObject);
    procedure txtEmitenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AbrirBusca;
    procedure AtualizarIND_NF;
    Var
      xOperacaoForm:String;
      xQtdeAnterior:Currency;
      xModoAddOuAlterar:boolean;
      idFiscalDevVazio:boolean;
  public
    { Public declarations }
  end;

var
  EST_FM_M_NFC: TEST_FM_M_NFC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, uProxy, PSQ_UN_X_TME, PSQ_UN_X_CPG,
  PSQ_UN_X_CFO, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_PCT, FAT_RN_M_NFE,
  enSoftMenu, uValidacoes;

procedure TEST_FM_M_NFC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_CONDICAO_PAG').AsString <> '') and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_FORMA_PAG').AsString <> '') then
     begin
       Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
       btnAlterar.Enabled := false;

       dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_NFC',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

       cbbAlmoxarifado.Enabled := false;
       txt_Nfe_Chave.Enabled := false;
       txt_NFe_Chave.Color := $00DADADA;

       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString :=
               dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_CONDICAO_PAG').AsString;
       dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger := 1;
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger := 0;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
       dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString := 'B';
       dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency := 0;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger := 4;

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
     end
   else
     begin
       ShowMessage('Os campos "Condição de pgto" e "Forma de pgto" para devolução de vendas da tela de parâmetros devem ser preenchidos.');
     end;

end;

procedure TEST_FM_M_NFC.acAlterarExecute(Sender: TObject);
begin

  if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = true) then
     begin
       ShowMessage('Alteração não permitida, pois nota de devolução está faturada.');
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = false) then
     begin
       if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
         begin
          Showmessage('Alteração não permitida, pois data do docmento da nota é diferente em mês ou ano dos parâmetros.');
          abort;
         end
       else
         begin
           if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
             begin
               inherited;
               cbbAlmoxarifado.Enabled := false;
               txtEmitente.Enabled := false;
               txt_Nfe_Chave.Enabled := false;
               txt_NFe_Chave.Color := $00DADADA;
               if((dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsString <> '0') and
                  (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString = '55')) then
                 begin
                   txt_Nfe_Chave.Enabled := true;
                   txt_Nfe_Chave.Color := clWhite;
                 end;

               cbbTipoEstoque.SetFocus;

               dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := true;
               AtualizarSaldoDevIte;
               xModoAddOuAlterar := false;


               {dmGeral.BUS_CD_M_NFE_2.Close;
               dmGeral.BUS_CD_M_NFE_2.Data :=
               dmGeral.BUS_CD_M_NFE_2.DataRequest(
                       VarArrayOf([92,'S',dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString]));}

             end;
         end;
     end;
end;

procedure TEST_FM_M_NFC.acCancelarExecute(Sender: TObject);
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
       txt_Nfe_Chave.Enabled := true;
       txt_Nfe_Chave.Color := clWhite;
       dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := false;
     end
  else
     begin
       cbbTipoEstoque.SetFocus;
     end;
end;

procedure TEST_FM_M_NFC.acExcluirExecute(Sender: TObject);
begin
  inherited;
   if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = true) then
     begin
       ShowMessage('A nota de devolução não pode ser excluída.');
       abort;
     end;

   if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
      begin
       Showmessage('A nota de devolução não pode ser excluída.');
       abort;
      end;

   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
end;

procedure TEST_FM_M_NFC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   FatValidarCamposNfc;

   if dmGeral.FAT_CD_M_NFE_ITE.RecordCount = 0 then
     begin
       ShowMessage('Nenhum item foi inserido para devolução.');
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
        txtNumero.SetFocus;
        exit;
      end;


   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      DeletarNotasNaoSelecionadasDev;
      FatGeraObsNfd1('S');
      AtualizarIND_NF;
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
      txt_Nfe_Chave.Enabled := true;
      txt_Nfe_Chave.Color := clWhite;

      dgItensDaNota.ColumnByName('qtde_sld_orig').Visible := false;
     end
  else
     begin
       cbbTipoEstoque.SetFocus;
     end;
end;

procedure TEST_FM_M_NFC.AtualizarIND_NF;
var
  ind_nf:integer;
  item,servico:boolean;
begin
   item := false;
   servico := false;
   dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 1;
   if (dmGeral.FAT_CD_M_NFE_ITE.RecordCount > 0) then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.First;
       while ((item=false) or (servico=false)) and (not dmGeral.FAT_CD_M_NFE_ITE.Eof) do
         begin
           if (trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString) = '09') then
             begin
               servico := true;
             end
           else
             begin
               item := true;
             end;

           dmGeral.FAT_CD_M_NFE_ITE.Next;
         end;
     end;

   if (servico = true) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 2;
       if (item = true) then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 3;
          end;
     end;
end;

procedure TEST_FM_M_NFC.btnAdicionarNovoItemClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Essa operação irá deletar todos os itens devolvidos. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       CarregarNotasDisponiveis('S');
     end;
end;

procedure TEST_FM_M_NFC.btnFiltroClick(Sender: TObject);
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

procedure TEST_FM_M_NFC.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbAlmoxarifado.DropDown;
     end;
end;

procedure TEST_FM_M_NFC.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused or cbbModelo.Focused or txt_Nfe_Chave.Focused
      or cbbIndFrete.Focused then
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

procedure TEST_FM_M_NFC.cbbCFOPEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbCFOP.DropDown;
end;

procedure TEST_FM_M_NFC.cbbCFOPExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused or cbbModelo.Focused or txt_Nfe_Chave.Focused
      or cbbIndFrete.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString = '')  then
     begin
        ShowMessage('O campo "CFOP" deve ser preenchido.');
        exit;
     end;

  dmGeral.BUS_CD_C_CFO.Close;
  dmGeral.BUS_CD_C_CFO.Data :=
  dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString]));
  if dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('CFOP não cadastrado!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := '';
       cbbCFOP.SetFocus;
       exit;
     end;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       ShowMessage('Campo "CFOP" inválido!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := '';
       cbbCFOP.SetFocus;
       exit;
     end;

end;

procedure TEST_FM_M_NFC.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_MOD_NFE;
  cbbModelo.DropDown;
end;

procedure TEST_FM_M_NFC.cbbModeloExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString = '' then
     begin
       ShowMessage('O campo "Modelo" deve ser preenchido.');
       cbbModelo.SetFocus;
       exit;
     end;

  if pos(dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').Text,'07-08-8B-09-10-11-26-27-57') <> 0 then
     begin
       ShowMessage('Modelo de nota fiscal não permitido.')  ;
       dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text := '';
       cbbModelo.SetFocus;
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger > 0) and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
     (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) <> '') then
     begin
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
            txtNumero.SetFocus;
            exit;
          end;
     end;

  txt_Nfe_Chave.Enabled := false;
  txt_NFe_Chave.Color := $00DADADA;
  if ((dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString = '55') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger <> 0))then
     begin
       txt_NFe_Chave.Enabled := true;
       txt_NFe_Chave.Color := clWhite;
       txt_NFe_Chave.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_NFC.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusTipoEstoque(6,'0');
  cbbTipoEstoque.DropDown;
end;

procedure TEST_FM_M_NFC.cbbTipoEstoqueExit(Sender: TObject);
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

procedure TEST_FM_M_NFC.AbrirBusca;
begin
  dmGeral.BusCfop(1,'%');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusAlmox(1,'%');
  dmGeral.BUS_PR_X_MOD_NFE;
  dmGeral.BUS_PR_X_ICM_ICO;
  dmGeral.BUS_PR_X_IPI_ENT;
end;

procedure TEST_FM_M_NFC.dbGridRowChanged(Sender: TObject);
begin
  inherited;

 { if (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = True) then
    begin
      btnAlterar.Enabled := false;
    end
  else
    begin
      btnAlterar.Enabled := true;
    end;      }

  {dmGeral.BusCfop(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString);
  if not dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
        txt_CFOP_Descricao.Caption := dmGeral.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;
     end
   else
     begin
       txt_CFOP_Descricao.Caption := '';
     end; }
end;

procedure TEST_FM_M_NFC.dgItensDaNotaDblClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  {dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := nil; }


   try
     dgItensDisponiveis.OnFieldChanged := nil;
     FatInserirDevolvidoNfeIte(true);
  finally
     dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
  end;

  {dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := dmGeral.FAT_CD_M_NFE_ITEqtdeChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEper_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := dmGeral.FAT_CD_M_NFE_ITEid_cfoChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_valorChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_valorChange;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := dmGeral.FAT_CD_M_NFE_ITEAfterPost;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := dmGeral.FAT_CD_M_NFE_ITEAfterDelete;   }
end;



procedure TEST_FM_M_NFC.dgItensDisponiveisEnter(Sender: TObject);
begin
  inherited;
  xQtdeAnterior := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
  dgItensDisponiveis.OnExit := dgItensDisponiveisExit;
end;

procedure TEST_FM_M_NFC.dgItensDisponiveisExit(Sender: TObject);
var
  xQtdeSalvo:currency;
  existe_registro,ItemEncontrado:boolean;
begin

   {existe_registro := false;
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
     end; }


   existe_registro := false;
    if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString = '0' then
      begin
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
       end
     else
       begin
         if dmGeral.FAT_CD_M_NFE_DEV.Locate('ID_FISCAL_DEV',
                   VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').Text]),[]) and
            dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL_DEV;ID_SEQUENCIA',
                   VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').Text,
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
           begin
               existe_registro := true;
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

        { if (not dmGeral.BUS_CD_M_CSU_NFE_ITE.IsEmpty) and dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                                VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
           begin
                 xQtdeSalvo := dmGeral.BUS_CD_M_CSU_NFE_ITE.FieldByName('QTDE').AsFloat;
           end; }


         if (not dmGeral.BUS_CD_M_CSU_NFE_ITE.IsEmpty) then
           begin
              ItemEncontrado := false;
              if dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_FISCAL_DEV;ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').Text,
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
                begin
                  ItemEncontrado := true;
                end
              else
               if dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
                begin
                 if  (dmGeral.BUS_CD_M_CSU_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString = '') then
                   begin
                    ItemEncontrado := true;
                   end;
                end;
               if ItemEncontrado then
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

    {existe_registro := false;
    dmGeral.FAT_CD_M_NFE_DEV.First;
    while (existe_registro=false) and (not dmGeral.FAT_CD_M_NFE_DEV.EOF) do
     begin
       if dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                   VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').Text,
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) and
          dmGeral.BUS_CD_M_NFE_2.Locate('ID_FISCAL',
                   VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').Text]),[]) and
          dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then

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

         if ((xQtdeSalvo+dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsFloat) <
             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat) or
             (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency = 0) then
             begin
               dgItensDisponiveis.OnFieldChanged := nil;
               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency := xQtdeAnterior;
               dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
             end;

      end;  }

end;

procedure TEST_FM_M_NFC.dgItensDisponiveisFieldChanged(Sender: TObject;
  Field: TField);
begin
  inherited;
  {dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := nil; }


  dmGeral.FAT_CD_M_NFE_ITE.Edit;
  if (Field.FullName = 'qtde') and(dmGeral.FAT_CD_M_NFE_ITE.State in [dsedit]) then
     begin
        try
          dgItensDisponiveis.OnFieldChanged := nil;
          FatCalcDevolvidoNfeIte;
        finally
          dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
        end;
    end;
end;

procedure TEST_FM_M_NFC.dgItensDisponiveisIButtonClick(Sender: TObject);
begin
  inherited;
  dgItensDisponiveis.OnExit := nil;
  FatDeletarDevolvidoNfeIte;
  num_VlrFreteNF.SetFocus;
end;

procedure TEST_FM_M_NFC.dgItensDisponiveisRowChanged(Sender: TObject);
begin
  inherited;
   xQtdeAnterior := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
end;

procedure TEST_FM_M_NFC.dgNotasDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  {dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := nil;}


   try
    dgItensDisponiveis.OnFieldChanged := nil;
    FatInserirTodosDevolvidoNfeIte;
  finally
    dgItensDisponiveis.OnFieldChanged := dgItensDisponiveisFieldChanged;
  end;

  {dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := dmGeral.FAT_CD_M_NFE_ITEqtdeChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEper_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := dmGeral.FAT_CD_M_NFE_ITEid_cfoChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_n_valorChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_baseChange;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.OnChange := dmGeral.FAT_CD_M_NFE_ITEicm_s_valorChange;
  dmgeral.FAT_CD_M_NFE_ITE.AfterPost := dmGeral.FAT_CD_M_NFE_ITEAfterPost;
  dmgeral.FAT_CD_M_NFE_ITE.AfterDelete := dmGeral.FAT_CD_M_NFE_ITEAfterDelete;}
end;

procedure TEST_FM_M_NFC.dpkDtaEmissaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
     txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString = '' then
     begin
       ShowMessage('O campo "Emissão" deve ser preenchido.');
       dpkDtaEmissao.SetFocus;
       abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime > xDataSis then
    begin
      ShowMessage('A data de emissão não pode ser maior que a data atual.');
      dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString := '';
      dpkDtaEmissao.SetFocus;
      abort;
    end;

  if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime)=false then
     begin
       Showmessage('A data informada é diferente do mês e ano do parâmetro.');
     end;
end;

procedure TEST_FM_M_NFC.FormClose(Sender: TObject; var Action: TCloseAction);
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
  FreeAndNil(EST_FM_M_NFC);
end;

procedure TEST_FM_M_NFC.FormCreate(Sender: TObject);
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

 { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = False then
    begin
      cbbAlmoxarifado.Enabled := False;
    end;  }
end;

procedure TEST_FM_M_NFC.cbbIndFreteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused or cbbModelo.Focused or txt_Nfe_Chave.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsString = '') then
     begin
       ShowMessage('O campo "Indicador de Frete" deve ser preenchido.');
       cbbIndFrete.SetFocus;
     end;
end;

procedure TEST_FM_M_NFC.dpkDtaDocumentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString = '' then
     begin
       ShowMessage('O campo "Emissão" deve ser preenchido.');
       dpkDtaEmissao.SetFocus;
       abort;
     end;


  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString = '' then
     begin
       ShowMessage('O campo "Data doc." deve ser preenchido.');
       dpkDtaEmissao.SetFocus;
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime <
      dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime) then
    begin
      ShowMessage('A data do documento não pode ser menor que a data de emissão.');
      dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString := '';
      dpkDtaEmissao.SetFocus;
      abort;
    end;

  if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
     begin
       Showmessage('A data informada é diferente do mês e ano do parâmetro.');
     end;
end;

{procedure TEST_FM_M_NFC.txt_CFOPButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.ShowModal;
      if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :=
                       PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;

           txt_CFOP_Descricao.Caption :=
                       PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_CFO.Free;
end; }

procedure TEST_FM_M_NFC.txtEmitenteButtonClick(Sender: TObject);
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

procedure TEST_FM_M_NFC.txtEmitenteExit(Sender: TObject);
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

   ActiveControl := nil;
   PostMessage(txtNumero.Handle, WM_SETFOCUS, 0, 0);
   txtNumero.SetFocus;
end;

procedure TEST_FM_M_NFC.txtEmitenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {if key = vk_return then
     begin
       ActiveControl := nil;
       //PostMessage(txtNumero.Handle, WM_SETFOCUS, 0, 0);
      // txtNumero.SetFocus;
     end;}
end;

procedure TEST_FM_M_NFC.txtNumeroExit(Sender: TObject);
begin
  inherited;
//  if ActiveControl = btnCancelar Then Exit;
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



 { if (trim(txtNumero.Text) <> '') and  (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) then
      begin
        dmGeral.BusConhecimento(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsString,
                                dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
        if not dmGeral.BUS_CD_M_NFE_NFF.IsEmpty then
           begin
             dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('ID_FISCAL').AsInteger;
             dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('VLR_FRETE').AsCurrency;
             dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('IND_FRETE').AsInteger;
           end
        else
           begin
             dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 0;
           end;
        dmGeral.BUS_CD_M_NFE_NFF.close;
      end
  else
      begin
        if xOperacaoForm = 'A' then
           begin
             if dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger = 1 then
                begin
                  ShowMessage('Este campo não poder ficar em branco ou com zero pois existe estoque e vencimentos gerado por esta nota.');
                  abort;
                end;
           end;
      end; }
end;

procedure TEST_FM_M_NFC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_M_NFC.txtSerieExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
     txtEmitente.Focused or txtNumero.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsInteger < 0) then
    begin
      ShowMessage('O campo "Série" deve ser preenchido.');
      txtSerie.SetFocus;
      abort;
    end;
end;

procedure TEST_FM_M_NFC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

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

  if cbbPesquisa.ItemIndex in [0,1,4,5] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

{procedure TEST_FM_M_NFC.txt_CFOPExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused or cbbModelo.Focused or txt_Nfe_Chave.Focused
      or cbbIndFrete.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString = '')  then
     begin
        ShowMessage('O campo "CFOP" deve ser preenchido.');
        txt_CFOP.SetFocus;
        exit;
     end;

  dmGeral.BUS_CD_C_CFO.Close;
  dmGeral.BUS_CD_C_CFO.Data :=
  dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, txt_CFOP.Text]));
  if dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('CFOP não cadastrado!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := '';
       txt_CFOP_Descricao.Caption := '';
       txt_CFOP.SetFocus;
       exit;
     end;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := '';
       txt_CFOP_Descricao.Caption := '';
       txt_CFOP.SetFocus;
       exit;
     end;

   txt_CFOP_Descricao.Caption := dmGeral.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;
end;  }


procedure TEST_FM_M_NFC.txt_NFe_ChaveExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
      txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused or txt_SubSerie.Focused or
      dpkDtaEmissao.Focused or dpkDtaDocumento.Focused or cbbModelo.Focused then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString = '') then
     begin
       ShowMessage('O campo "Chave de acesso" deve ser preenchido.');
       txt_Nfe_chave.SetFocus;
       abort;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').asString) <> '' then
     begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
           (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
            begin
              if (dmGeral.ValChaveNFe(dmGeral.RemoveCaracteres(txt_NFe_Chave.Text))= false) or
                 (not dmGeral.ValChaveNFe(txt_NFe_Chave.Text))  then
                 begin
                   Showmessage('Campo "Chave de acesso" inválido!');
                   txt_NFe_Chave.SetFocus;
                   abort;
                 end;
            end;
     end;
end;

procedure TEST_FM_M_NFC.txt_SubSerieExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
     txtEmitente.Focused or txtNumero.Focused or txtSerie.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsInteger < 0) then
     begin
          ShowMessage('O valor do campo "Sub-Série" tem que ser maior ou igual a zero.');
          txt_SubSerie.SetFocus;
          abort;
     end;
end;

end.
