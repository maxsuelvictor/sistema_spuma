unit FAT_UN_M_NFE_FRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, vcl.Wwdbedit,
  Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore,
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
  TFAT_FM_M_NFE_FRE = class(TPAD_FM_X_PAD)
    lblEmitente: TLabel;
    txt_Emitente: TJvDBComboEdit;
    lblNumero: TLabel;
    txtNumero: TDBEdit;
    txtEstadoDescricao: TDBText;
    Label1: TLabel;
    lblSerie: TLabel;
    txt_Serie: TDBEdit;
    lblSubserie: TLabel;
    txtSubserie: TDBEdit;
    lblModelo: TLabel;
    lblTipoCTE: TLabel;
    cbbTipoCTE: TwwDBLookupCombo;
    lblEmissao: TLabel;
    de_Emissao: TJvDBDateEdit;
    lblCFOP: TLabel;
    cbbCFOP: TwwDBLookupCombo;
    lblTipoFrete: TLabel;
    cbbTipoFrete: TwwDBLookupCombo;
    lblChave: TLabel;
    txt_NFe_Chave: TDBEdit;
    Label2: TLabel;
    cbbCondPagamento: TwwDBLookupCombo;
    gbICMS: TGroupBox;
    lblVlrFrete: TLabel;
    lblICMSNormalVlrBase: TLabel;
    lblICMSNormalVlrICMS: TLabel;
    lblICMSNormal: TLabel;
    lblIVlrTotal: TLabel;
    gbTitulos: TGroupBox;
    grdTitulos: TwwDBGrid;
    grdTitulosIButton: TwwIButton;
    gbNff: TGroupBox;
    btn_Add_Nff: TBitBtn;
    grdNff: TwwDBGrid;
    grdNffIButton: TwwIButton;
    dsoTit: TwwDataSource;
    dsoNff: TwwDataSource;
    pnTitulos: TPanel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    txt_IdPlanoContas: TwwDBLookupCombo;
    lblPlanoContas: TLabel;
    lblVencimento: TLabel;
    txtVencimento: TJvDBDateEdit;
    Label3: TLabel;
    txtVlrParcela: TwwDBEdit;
    pnNotas: TPanel;
    lblNumero2: TLabel;
    txtNumeroNfeNff: TDBEdit;
    txtEmitenteNff: TJvDBComboEdit;
    lblEmitente2: TLabel;
    lblValor: TLabel;
    Label53: TLabel;
    txt_Cod_Doc_Rev: TDBEdit;
    txtVlrNFF: TwwDBEdit;
    numVlrMercadoria: TwwDBEdit;
    numVlrICMBase: TwwDBEdit;
    numVlrICM: TwwDBEdit;
    numVlrLiquido: TwwDBEdit;
    lbl_Fornecedor: TwwDBEdit;
    cbbModelo: TwwDBLookupCombo;
    btn_Add_Tit: TBitBtn;
    Label4: TLabel;
    cbbCentroCusto: TwwDBLookupCombo;
    de_DataDocumento: TJvDBDateEdit;
    Label25: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btn_Add_TitClick(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_NffClick(Sender: TObject);
    procedure grdNffIButtonClick(Sender: TObject);
    procedure grdNffMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbCondPagamentoEnter(Sender: TObject);
    procedure cbbCFOPEnter(Sender: TObject);
    procedure txt_EmitenteButtonClick(Sender: TObject);
    procedure txt_EmitenteExit(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure txtEmitenteNffButtonClick(Sender: TObject);
    procedure txtEmitenteNffExit(Sender: TObject);
    procedure txt_IdPlanoContasEnter(Sender: TObject);
    procedure cbbTipoCTEEnter(Sender: TObject);
    procedure txtNumeroExit(Sender: TObject);
    procedure txt_SerieExit(Sender: TObject);
    procedure txtSubserieExit(Sender: TObject);
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbModeloExit(Sender: TObject);
    procedure de_EmissaoExit(Sender: TObject);
    procedure cbbTipoFreteEnter(Sender: TObject);
    procedure cbbCFOPExit(Sender: TObject);
    procedure txt_NFe_ChaveExit(Sender: TObject);
    procedure cbbCondPagamentoExit(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure cbbTipoFreteExit(Sender: TObject);
    procedure txt_IdPlanoContasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrParcelaExit(Sender: TObject);
    procedure txtVlrNFFExit(Sender: TObject);
    procedure txtNumeroNfeNffExit(Sender: TObject);
    procedure btn_Add_TitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbFormaPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnNotasExit(Sender: TObject);
    procedure numVlrICMBaseExit(Sender: TObject);
    procedure numVlrICMExit(Sender: TObject);
    procedure numVlrMercadoriaExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure de_DataDocumentoExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure AcoesIniciais;
    function  AcoesPosTestes: Boolean;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure PassarCdsAnterior;
    procedure ExcNF_Frete;
    var
      xIdCondicaoPag: String;
      xCdsTitulosAntigo: TClientDataSet;
      xAntIndFrete: String;
                      { IND_FRETE    =  0 - Por conta do emitente: - Modalidade conhecida como CIF
                                            (Cost, Insurance and Freight - “Custo, Seguros e Frete”).
                                            Nesta opção todo o custo e responsabilidade sobre o frete
                                            estão por conta do Emitente, ou seja, quem emite a Nota Fiscal.
                                            Emitente (por conta do emitente da nota, o valor compõe o
                                            total da nota, Vai ser rateado para o campo9 FRE_VALOR.

                                        1 - Destinatário (Frete com conhecimento, o frete tem influência
                                            no custo e não no total da NF, alimenta automático com o
                                            conhecimento e rateia para FRE_CUSTO)

                                        2 - Terceiro (Repassa no campo FRE_VALOR=0, e FRE_CUSTO),

                                        9 - Sem Frete (Repassa no campo FRE_VALOR=0, e FRE_CUSTO)
                                            Definição:  }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_NFE_FRE: TFAT_FM_M_NFE_FRE;

implementation

{$R *.dfm}

uses uDmGeral, CAD_UN_C_FOR, PSQ_UN_X_FOR,uProxy,UApplayClassProxy,enFunc,
  FAT_RN_M_NFE;

procedure TFAT_FM_M_NFE_FRE.AbrirBuscas;
begin
  dmGeral.BusCfop(2,'''EA70''');
  dmGeral.BusCondPgto(1,'%');
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusPlanoCta(1,'%');
  dmGeral.BUS_PR_X_NFE_CTE;
  dmGeral.BUS_PR_X_MOD_FRE;
  dmGeral.BUS_PR_X_FRE;
end;

procedure TFAT_FM_M_NFE_FRE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);

  AcoesIniciais;

  pnNotas.Enabled := false;
  pnTitulos.Enabled := false;

  HabilDesabCampos(True, clWhite);

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

  // Estes campos deve ficar aqui mesmo.
  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime := xDataSis;

  dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean     := false;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString       := 'F';
  dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString     := 'B';
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 1; // Terceiro
  dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger       := 1; // Encerrada
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsString     := '';

  dmGeral.BusCodigoRevListMestre(true,false,'FAT_FM_M_NFE_FRE',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

  PassarCdsAnterior;
  txt_Emitente.SetFocus;
end;

procedure TFAT_FM_M_NFE_FRE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
      begin
        inherited;

        cbbCondPagamento.Enabled := True;
        cbbCondPagamento.Color   := clWindow;
        gbTitulos.Enabled        := true;

        if dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').AsInteger <> 1  then
           begin
             cbbCondPagamento.Enabled := false;
             cbbCondPagamento.Color   := $00DADADA;
             gbTitulos.Enabled        := false;
           end;

        txt_Emitente.SetFocus;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txt_Emitente.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
  inherited;
end;

procedure TFAT_FM_M_NFE_FRE.acGravarExecute(Sender: TObject);
var
  codigo: String;
begin

   if fat_rn_m_nfe.FatValidaNfeFre then
      begin
         fat_rn_m_nfe.FatRatVlrFreteNfeNff;

         codigo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;

         AcoesPosTestes;

         inherited;

         AbrirBuscas;

         dmGeral.FAT_CD_M_NFE.Close;
         dmGeral.FAT_CD_M_NFE.Data :=
         dmGeral.FAT_CD_M_NFE.DataRequest(
                 VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,'F',codigo]));
      end
   else
      begin
        txt_Serie.SetFocus;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.AcoesIniciais;
begin

end;

function TFAT_FM_M_NFE_FRE.AcoesPosTestes: Boolean;
var
  Obj:TSMClient;
  lGeraTitulo: Boolean;
begin

  lGeraTitulo := false;

  fat_rn_m_nfe.FatGravarNumParcNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT);

 try
   Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_NFE])
  finally
     Obj.Free;
     dmGeral.FAT_CD_M_NFE.Close;
     dmGeral.FAT_CD_M_NFE.Open;
  end;
end;

procedure TFAT_FM_M_NFE_FRE.BitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     showmessage('ulálá');
end;

procedure TFAT_FM_M_NFE_FRE.btn_Add_NffClick(Sender: TObject);
begin
  inherited;

  pnNotas.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_NFF.Insert;
  txtNumeroNfeNff.SetFocus;
end;

procedure TFAT_FM_M_NFE_FRE.btn_Add_TitClick(Sender: TObject);
begin
  inherited;

  pnTitulos.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_TIT.Insert;
  cbbFormaPagamento.SetFocus;

end;

procedure TFAT_FM_M_NFE_FRE.btn_Add_TitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     begin
       ActiveControl := nil;
       PostMessage(btn_Add_Nff.Handle, WM_SETFOCUS, 0, 0);
       btn_Add_Nff.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.btnFiltroClick(Sender: TObject);
var
 xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

   { index:
    0-tipo_nf,Controle (ID_FISCAL)           0
    1-tipo_nf,Numero                         1
    2-tipo_nf,Cliente
    3-tipo_nf,Fornecedor                     2
    4-tipo_nf,Situação_doc
    5-tipo_nf,Modelo                         3
    6-tipo_nf,Tipo Estoque                   4
    7-tipo_nf,Data Documento                 5
    8-tipo_nf,Data Emissao                   6
    9-tipo_nf, id_pedido_venda}

   if (txtPesquisaData.Visible =true) then
    xPesquisa := txtPesquisaData.Text
  else
    xPesquisa := txtPesquisa.Text;


  if cbbPesquisa.ItemIndex = 2 then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([3,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,'F',xPesquisa]));
     end;

  if cbbPesquisa.ItemIndex = 3 then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([5,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,'F',xPesquisa]));
     end;

  if cbbPesquisa.ItemIndex in [4,5]  then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+3,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,'F',xPesquisa]));
     end
  else
     begin
       if cbbPesquisa.ItemIndex in [1]  then
         begin
           dmGeral.FAT_CD_M_NFE.Close;
           dmGeral.FAT_CD_M_NFE.Data :=
           dmGeral.FAT_CD_M_NFE.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,'F',xPesquisa]));
         end;
     end;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbCFOPEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(2,'''EA70''');
  cbbCFOP.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.cbbCFOPExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BusCfop(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text);
  if dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('Cfop não encontrado.');
       dmGeral.BUS_CD_C_CFO.close;
       cbbCFOP.SetFocus;
       exit;
     end;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       cbbCFOP.SetFocus;
       abort;
     end;

  if not (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').Text = 'EA70') then
     begin
       ShowMessage('CFOP com "Natureza" incompatível.');
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbCondPagamentoEnter(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').text) <> '' then
     xIdCondicaoPag := dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').text;

  dmGeral.BusCondPgto(1,'%');
  cbbCondPagamento.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.cbbCondPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').text) = '' then
     begin
       ShowMessage('O campo "Condição de pagamento" deve ser preenchido.');
       cbbCondPagamento.setfocus;
       exit;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       Showmessage('Condição de pagamento não encontrada.');
       dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').Text := '';
       cbbCondPagamento.SetFocus;
       exit;
     end;

  if not dmGeral.BUS_CD_C_CPGativo.AsBoolean then
     begin
       Showmessage('Condição de pagamento inativa.');
       dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').Text := '';
       cbbCondPagamento.SetFocus;
       exit;
     end;

  if not dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
     begin
       Showmessage('Condição de pagamento deve ser do tipo "A prazo".');
       dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').Text := '';
       cbbCondPagamento.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagamento.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;



  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin

        if btn_Add_Tit.Focused or grdTitulos.Focused or
           btn_Add_Nff.Focused  then
           begin
             exit;
           end;

        if not grdTitulosIButton.Enabled then
           exit;

        if (txt_IdPlanoContas.Focused) then
           begin
             Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
             cbbFormaPagamento.SetFocus;
             exit;
           end
        else
           begin
             pnTitulos.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.FAT_CD_M_NFE_TIT.state in [dsBrowse] then
          dmGeral.FAT_CD_M_NFE_TIT.edit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomefpg').text := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> 1 then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo "A prazo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;


  if not dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4] then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória ou Boleto.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  if trim(dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text) <> '' then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text     := dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text;
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text    := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
       dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text  := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbFormaPagamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     begin
       ActiveControl := nil;
       PostMessage(btn_Add_Nff.Handle, WM_SETFOCUS, 0, 0);
       btn_Add_Nff.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_MOD_FRE;
  cbbModelo.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.cbbModeloExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text <> '' then
     begin

       if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger > 0) and
          (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0)      and
          (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) <> '')    then
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
                  ShowMessage('Já existe conhecimento de frete lançado com os dados digitado!' + #13 +
                              'Código emitente:' + dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text + #13 +
                              'Número NF: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text + #13 +
                              'Série: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text + #13 +
                              'Modelo:' +  dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text);
                  cbbModelo.SetFocus;
                  exit;
                end;
           end;

       txt_NFe_Chave.Enabled := false;

       if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='57') and
          (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
           begin
             txt_NFe_Chave.Enabled := true
           end;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [4,5]  then
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

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.txt_IdPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(1,'%');
  txt_IdPlanoContas.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.txt_IdPlanoContasExit(Sender: TObject);
begin
  inherited;

   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Tit.Focused or grdTitulos.Focused or
     cbbFormaPagamento.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

  if dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger <> 0 then
     begin
       ShowMessage('Só é permitido plano de contas do tipo "Analítico".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  if not dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger in [0,2] then
     begin
       ShowMessage('Só é permitido plano de contas com tipo "Despesa" ou "Sem fluxo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbTipoCTEEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_NFE_CTE;
  cbbTipoCTE.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.cbbTipoFreteEnter(Sender: TObject);
begin
  inherited;
  xAntIndFrete := '';
  if dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').Text = '' then
     begin
       xAntIndFrete := dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').Text;
       dmGeral.BUS_PR_X_FRE;
       cbbTipoFrete.DropDown;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbTipoFreteExit(Sender: TObject);
begin
  inherited;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').Text) = '' then
     begin
       Showmessage('O campo "Tipo do frete" deve ser preenchido.');
       dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').Text := '';
       cbbTipoFrete.SetFocus;
       exit;
     end;

  if xAntIndFrete <> '' then
     begin
       if xAntIndFrete <> dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').Text then
          begin
            if dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').AsInteger <> 1 then
               begin
                 if not dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
                    begin
                      ShowMessage('Tipo de frete não pode ser alterado pois existe título lançado nesta nota.');
                      cbbTipoFrete.SetFocus;
                      exit;
                    end;
               end;
          end;
     end;

  cbbCondPagamento.Enabled := True;
  cbbCondPagamento.Color   := clWindow;
  gbTitulos.Enabled        := true;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').AsInteger <> 1 then
     begin
        dmGeral.BusCondPgto(1,'%');
        dmGeral.BUS_CD_C_CPG.Filtered := True;
        dmGeral.BUS_CD_C_CPG.Filter   := ' TIPO_PAGAMENTO = 2';

        if dmGeral.BUS_CD_C_CPG.IsEmpty then
           begin
             Showmessage('Não foi encontrada nenhuma condição de pagamento do tipo "Sem pagamentos".');
             dmGeral.FAT_CD_M_NFE.FieldByName('ind_frete').Text := '';
             cbbTipoFrete.SetFocus;
             dmGeral.BUS_CD_C_CPG.Filtered := False;
             exit;
           end;

        dmGeral.FAT_CD_M_NFE.FieldByName('id_condicao_pag').AsInteger :=
                dmGeral.BUS_CD_C_CPG.FieldByName('id_condicao_pag').AsInteger;

        cbbCondPagamento.Enabled := false;
        cbbCondPagamento.Color   := $00DADADA;
        gbTitulos.Enabled        := false;

        dmGeral.BUS_CD_C_CPG.Filtered      := false;
        dmGeral.BUS_CD_C_CPG.Close;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.grdNffIButtonClick(Sender: TObject);
begin
  inherited;
  try
    grdNffIButton.Enabled := false;
    if dmGeral.FAT_CD_M_NFE_NFF.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
    dmGeral.FAT_CD_M_NFE_NFF.Delete;
    dmGeral.FAT_CD_M_NFE_NFF.Edit;
  finally
    grdNffIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_NFE_FRE.grdNffMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnNotas.Enabled = false then
     pnNotas.Enabled := true;

  dmGeral.FAT_CD_M_NFE_NFF.cancel;

  if dmGeral.FAT_CD_M_NFE_NFF.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE_NFF.Insert;
       pnNotas.Enabled := true;
       txtNumeroNfeNff.SetFocus;
     end
  else
     begin
       dmGeral.FAT_CD_M_NFE_NFF.Edit;
       pnNotas.Enabled := true;
       txtNumeroNfeNff.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.txtVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Tit.Focused or grdTitulos.Focused or
     cbbFormaPagamento.Focused  or txt_IdPlanoContas.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValVencto(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;
  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsVariant;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
    grdTitulosIButton.Enabled := false;
    if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
    dmGeral.FAT_CD_M_NFE_TIT.Delete;
    dmGeral.FAT_CD_M_NFE_TIT.Edit;
  finally
    grdTitulosIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_NFE_FRE.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.FAT_CD_M_NFE_TIT.cancel;

  if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.Insert;
       pnTitulos.Enabled := true;
       cbbFormaPagamento.SetFocus;
     end
  else
     begin
       dmGeral.FAT_CD_M_NFE_TIT.Edit;
       pnTitulos.Enabled := true;
       cbbFormaPagamento.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.de_DataDocumentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
        exit;
      end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').text) = '') then
     begin
        ShowMessage('O campo "Entrada" deve ser preenchido.');
        de_DataDocumento.text := ' ';
        de_DataDocumento.SetFocus;
        Abort;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.de_EmissaoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
        exit;
      end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').text) = '') then
     begin
        ShowMessage('O campo "Emissão" deve ser preenchido.');
        de_Emissao.text := ' ';
        de_Emissao.SetFocus;
        Abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime > xDataSis then
     begin
       ShowMessage('A data de emissão não pode ser maior que a data do sistema.');
       de_Emissao.SetFocus;
       abort;
     end;

end;

procedure TFAT_FM_M_NFE_FRE.ExcNF_Frete;
var
  Obj:TSMClient;
  lExisteTitulo: Boolean;
begin

  {lExisteTitulo := false;

  try

  Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);

  {dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFEid_condicao_pag.text);
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
     begin
       lExisteTitulo := true;
       fat_rn_m_nfe.ENT_EXCLUI_PAG(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT);
     end;

  dmGeral.FAT_CD_M_NFE.Delete;

  if lExisteTitulo then
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.FIN_CD_M_PAG,dmGeral.FAT_CD_M_NFE])
     end
  else
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_NFE]);
     end;

  finally
     Obj.Free;
     dmGeral.FAT_CD_M_NFE.Close;
     dmGeral.FAT_CD_M_NFE.Open;
  end;         }
end;

procedure TFAT_FM_M_NFE_FRE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(FAT_FM_M_NFE_FRE);
end;

procedure TFAT_FM_M_NFE_FRE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));
  AbrirBuscas;

  cbbPesquisaChange(self);
end;

procedure TFAT_FM_M_NFE_FRE.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
end;

procedure TFAT_FM_M_NFE_FRE.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txt_NFe_Chave.Enabled := Estado;
  txt_NFe_Chave.Color   := Cor;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='57') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
      begin
        txt_NFe_Chave.Enabled := true;
        txt_NFe_Chave.Color   := clWhite;
      end;

  cbbCondPagamento.Enabled := Estado;
  cbbCondPagamento.Color   := Cor;

  gbTitulos.Enabled        := Estado;
end;

procedure TFAT_FM_M_NFE_FRE.numVlrICMBaseExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  {if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency = 0 then
     begin
       ShowMessage('O campo "Valor" deve ser prenchido.');
       abort;
     end;}

  if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor base" não pode ser menor que 0.');
       abort;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.numVlrICMExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor ICMS" não pode ser menor que 0.');
       abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency > 0 then
     begin
       if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency = 0 then
          begin
            ShowMessage('O campo "Valor base" deve ser prenchido.');
            numVlrICMBase.SetFocus;
            exit;
          end;

       if dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency >
          dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency  then
          begin
            ShowMessage('O "Valor ICMS" não pode ser maior que o "Valor da base".');
            dmGeral.FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency := 0;
            numVlrICM.SetFocus;
            abort;
          end;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.numVlrMercadoriaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency = 0 then
     begin
       ShowMessage('O campo "Valor frete" deve ser prenchido.');
       numVlrMercadoria.SetFocus;
       abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor frete" não pode ser menor que 0.');
       numVlrMercadoria.SetFocus;
       abort;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.PassarCdsAnterior;
begin
  if xCdsTitulosAntigo <> nil then
     begin
       xCdsTitulosAntigo.Destroy;
       xCdsTitulosAntigo := nil;
     end;

  xCdsTitulosAntigo       := TClientDataSet.Create(self);
  xCdsTitulosAntigo.Data  := dmGeral.FAT_CD_M_NFE_TIT.Data;
  xCdsTitulosAntigo.GotoCurrent(dmGeral.FAT_CD_M_NFE_TIT);

end;

procedure TFAT_FM_M_NFE_FRE.pnNotasExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Nff.Focused) or (grdNff.Focused) or
     (not grdNffIButton.Enabled) then
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

        dmGeral.FAT_CD_M_NFE_NFF.Cancel;
        dmGeral.FAT_CD_M_NFE_NFF.edit;

        finally
           pnNotas.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.pnTitulosExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Tit.Focused) or (grdTitulos.Focused) or
     (not grdTitulosIButton.Enabled) then
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

        dmGeral.FAT_CD_M_NFE_TIT.Cancel;
        dmGeral.FAT_CD_M_NFE_TIT.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.txtEmitenteNffButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE_NFF.FieldByName('ID_FORNECEDOR').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

        dmGeral.FAT_CD_M_NFE_NFF.FieldByName('int_nomefor').text       :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFAT_FM_M_NFE_FRE.txtEmitenteNffExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Nff.Focused or  grdNff.Focused or
     txtNumeroNfeNff.Focused then
     begin
       exit;
     end;

  dmGeral.FAT_CD_M_NFE_NFF.FieldByName('int_nomefor').Text := '';

  if dmGeral.FAT_CD_M_NFE_NFF.FieldByName('ID_FORNECEDOR').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtEmitenteNff.SetFocus;
       abort;
     end;

  dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_NFE_NFF.FieldByName('ID_FORNECEDOR').Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.FAT_CD_M_NFE_NFF.FieldByName('ID_FORNECEDOR').text := '';
       dmGeral.FAT_CD_M_NFE_NFF.FieldByName('int_nomefor').text  := '';
       txtEmitenteNff.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
     begin
       ShowMessage('O fornecedor não poder ser do tipo "Transportador".');
       dmGeral.FAT_CD_M_NFE_NFF.FieldByName('ID_FORNECEDOR').text := '';
       dmGeral.FAT_CD_M_NFE_NFF.FieldByName('int_nomefor').text  := '';
       txtEmitenteNff.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_NFE_NFF.FieldByName('int_nomefor').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
end;

procedure TFAT_FM_M_NFE_FRE.txtNumeroExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger = 0)  then
     begin
       // Esta é uma nota fiscal de terceiros, portanto o campo abaixo é obrigatório
       ShowMessage('O campo "Número" deve ser preenchido.');
       txtNumero.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.txtNumeroNfeNffExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Nff.Focused or grdNff.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_NFF.FieldByName('nota_frete').text = '')     or
     (dmGeral.FAT_CD_M_NFE_NFF.FieldByName('nota_frete').AsInteger = 0) then
     begin
       Showmessage('O campo "Número" deve ser preenchido.');
       txtNumeroNfeNff.SetFocus;
       abort;
     end;
end;

procedure TFAT_FM_M_NFE_FRE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_M_NFE_FRE.txt_SerieExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) = '' then
     begin
       ShowMessage('O campo "Série" deve ser preenchido!.');
       txt_Serie.SetFocus;
       Abort;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TFAT_FM_M_NFE_FRE.txtVlrNFFExit(Sender: TObject);
var
  nff: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtNumero.Focused or
     txtNumeroNfeNff.Focused or txtEmitenteNff.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_NFE_NFF.FieldByName('VLR_NOTA').AsCurrency)) then
     begin
       txtVlrNFF.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_NFF.Post;

  pnNotas.Enabled := false;

  ActiveControl := nil;
  PostMessage(btn_Add_Nff.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Nff.SetFocus;
  dmGeral.FAT_CD_M_NFE_NFF.cancel;
end;

procedure TFAT_FM_M_NFE_FRE.txtSubserieExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').text) = '' then
     begin
       ShowMessage('O campo "Sub-série" deve ser preenchido!.');
       txtSubserie.SetFocus;
       Abort;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.txt_EmitenteButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

       dmGeral.FAT_CD_M_NFE.FieldByName('int_nomeemi').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFAT_FM_M_NFE_FRE.txt_EmitenteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').Text := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text = '' then
     begin
       ShowMessage('O campo "Emitente" deve ser prenchido.');
       txt_Emitente.SetFocus;
       abort;
     end;


  dmGeral.BusFornecedor(0,txt_Emitente.Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
       txt_Emitente.SetFocus;
       exit;
     end;

  if not dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
     begin
       ShowMessage('O fornecedor deve ser do tipo "Transportador".');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
       txt_Emitente.SetFocus;
       exit;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;


  dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').text :=
     dmGeral.BUS_CD_C_FOR.FieldByName('DOC_CNPJ').AsString;


  dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;
end;

procedure TFAT_FM_M_NFE_FRE.txt_NFe_ChaveExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='57') and
           (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
            begin
              if (dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text) <> '' then
                  begin
                    if (enFunc.TEnorth.ValidarChaveCTe(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text)) <>
                       (strtofloat(copy(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text,44,1))) then
                       begin
                         Showmessage('Número da chave inválido!');
                         dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text := '';
                       end;
                  end;
           end;
        exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text) <> '' then
      begin
        if (enFunc.TEnorth.ValidarChaveCTe(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text)) <>
           (strtofloat(copy(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text,44,1))) then
           begin
             Showmessage('Número da chave inválido!');
             dmGeral.FAT_CD_M_NFE.FieldByName('nfe_chave').text := '';
             txt_NFe_Chave.SetFocus;
           end;
      end;
end;

procedure TFAT_FM_M_NFE_FRE.txtVlrParcelaExit(Sender: TObject);
var
  lSMPrincipal : TSMClient;
  lid_nfe_tit: string;
  lQtdeReg: integer;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbFormaPagamento.Focused  or
     txt_IdPlanoContas.Focused or txtVencimento.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrParcela.SetFocus;
       abort;
     end;

  lQtdeReg   := dmGeral.FAT_CD_M_NFE_TIT.RecordCount;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_nfe_tit').text = '' then
     begin
        lSMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_NFE_TITid_nfe_tit.AsInteger :=
               lSMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
        finally
          FreeAndNil(lSMPrincipal);
        end;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.Post;
  pnTitulos.Enabled := false;

  ActiveControl := nil;
  PostMessage(btn_Add_Tit.Handle, WM_SETFOCUS, 0, 0);
end;
end.
