unit FAT_UN_M_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,  datasnap.DBClient,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvBaseEdits, Vcl.DBCtrls,
  vcl.Wwdbedit, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  vcl.wwdblook, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.Buttons, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.DBGrids, vcl.Wwdotdot,
  vcl.Wwdbcomb, vcl.wwclearbuttongroup, vcl.wwradiogroup, vcl.wwcheckbox,
  vcl.Wwdatainspector,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue,System.Math, frxClass, frxDBSet, frxBarcode, Vcl.ComCtrls;

type
  TFAT_FM_M_PED = class(TPAD_FM_X_PAD)
    Label5: TLabel;
    Label7: TLabel;
    lblVendedor: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    gbGerTitulos: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dsPedtIten: TwwDataSource;
    dsPedTitulos: TwwDataSource;
    pnItens: TPanel;
    lblItem: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtPerDesconto: TwwDBEdit;
    txtVlrDesconto: TwwDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    Label13: TLabel;
    txtUnidade: TDBText;
    txtClienteNome: TDBText;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    cbbVendedor: TwwDBLookupCombo;
    grdItensIButton: TwwIButton;
    txtVlrTotal: TwwDBEdit;
    Label31: TLabel;
    wwDBEdTotalBrutoItens: TwwDBEdit;
    wwDBEdTotalPercDescGeral: TwwDBEdit;
    Label33: TLabel;
    Label32: TLabel;
    txtTotalVlrDesc: TwwDBEdit;
    Label34: TLabel;
    wwDBEdTotalLiqItens: TwwDBEdit;
    txtOutrasObs: TDBMemo;
    lblOutrasObs: TLabel;
    txtObservacao: TwwDBEdit;
    txtFpgEntrada: TJvComboEdit;
    txtVlrEntrada: TJvValidateEdit;
    txtGerFpg: TJvComboEdit;
    txtQtdeParc: TEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Label16: TLabel;
    txtSaldo: TEdit;
    ImageList7: TImageList;
    ImageList4: TImageList;
    ImageList1: TImageList;
    btnAtualizaCont: TBitBtn;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    gbFormasPgt: TGroupBox;
    pnTitulos: TPanel;
    lbl6: TLabel;
    lb2: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    txtFormaPgto: TwwDBLookupCombo;
    txtDias: TDBEdit;
    txtVencimento: TDBEdit;
    txtVlrTitulo: TDBEdit;
    btn_Add_Fpg: TBitBtn;
    grdFpg: TwwDBGrid;
    grdFpgIButton: TwwIButton;
    Label17: TLabel;
    txtCubagem: TDBEdit;
    Panel1: TPanel;
    Label20: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    gbCheque: TGroupBox;
    lblEmitente: TLabel;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    lblNCheque: TLabel;
    txtEmitenteChq: TDBEdit;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    txtContaCorrente: TDBEdit;
    txtNCheque: TDBEdit;
    txtCliente: TJvDBComboEdit;
    lblDtaEntrega: TLabel;
    txtDtaEntrega: TJvDBDateEdit;
    pmVisualisarRestricoes: TPopupMenu;
    btnVisualizarRest: TMenuItem;
    txtDiasPrazo: TwwDBEdit;
    lblDiasPrazo: TLabel;
    pmImpDescReg: TPopupMenu;
    btnCarregarDados: TMenuItem;
    btnDescarregarDados: TMenuItem;
    btnCarDesDados: TButton;
    lblNumOrdPro: TLabel;
    btnImportar: TcxButton;
    txtOrdProd: TwwDBEdit;
    pnlPb: TPanel;
    txtPb: TLabel;
    pb: TProgressBar;
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure btn_Add_FpgClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure cbbAtendenteEnter(Sender: TObject);
    procedure grdFpgIButtonClick(Sender: TObject);
    procedure grdFpgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtDiasExit(Sender: TObject);
    procedure txtFormaPgtoEnter(Sender: TObject);
    procedure txtPerDescontoExit(Sender: TObject);
    procedure txtVlrDescontoExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure txtPerDescontoEnter(Sender: TObject);
    procedure txtVlrDescontoEnter(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure txtFormaPgtoExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdFpgRowChanged(Sender: TObject);
    procedure txtEmitenteChqExit(Sender: TObject);
    procedure txtFormaPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVisualizarRestClick(Sender: TObject);
    procedure txtTotalVlrDescExit(Sender: TObject);
    procedure txtTotalVlrDescEnter(Sender: TObject);
    procedure txtDiasPrazoExit(Sender: TObject);
    procedure btnImportarRegClick(Sender: TObject);
    procedure btnCarregarDadosClick(Sender: TObject);
    procedure btnDescarregarDadosClick(Sender: TObject);
  private
    { Private declarations }
     procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
     function  VerifCamposPaiObrig:Boolean;
     procedure Limparcampos;
     procedure PassarCdsAnterior;
     procedure AcoesIniciais;
     function  AcoesPosTestes: Boolean;
     procedure VerifRestricoes;
     procedure ChamaCorTamanho;
     procedure GravarPedidoVenda;
     procedure ExcluirPedidoVenda;
     procedure ExcluirOrcamento;
     procedure Atualizar_xBusca;
     procedure AbrirBuscas;
     procedure ExibirFormasPgto;
     procedure DescarregarPedido;
     procedure RecalcularPrecoItens;
     function  VerificarItemGrid:Boolean;
     var
       xbusca_item,xIdCpgAnt,xTipoCpgAnt: String;
       xPercDescPerm,vlrDescTotalAnt: Currency;
       xCdsPaiAntigo, xCdsItensAntigo, xCdsTitulosAntigo:  TClientDataSet;
       Tipo_Item,diasPrazo_ant: integer;
       HabilitarVlrDesc:Boolean;
       clienteConsumidor:Boolean;
       vlrLiqIteAnt:Currency;
       telaPsqCli,telaPsqIte:Boolean;
       //id_seq_titulo,id_seq_ite:Integer;
       //id_seq_ite:Integer;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED: TFAT_FM_M_PED;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI,
  PSQ_UN_X_ITE, PSQ_UN_X_FPG{, FAT_UN_M_PED_IOR},
  FAT_RN_M_PED{, FAT_RN_M_NFE, FAT_UN_M_PED_RTC}, uDmGeralSer, SEG_UN_X_SEN,
  FAT_UN_M_PED_RTC, enConstantes, FAT_UN_M_PED_IRG, uProxy;



function TFAT_FM_M_PED.VerificarItemGrid:Boolean;
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
    Result := true;

   if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
     begin

       id_item       := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString;
       id_cor        := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := '';
       desc_cor      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;

       dmGeral.FAT_CD_M_PED_ITE.Cancel;

       if dmGeral.LocalizarRegItem(dmGeral.FAT_CD_M_PED_ITE,FAT_FM_M_PED.Name,id_item,id_cor,id_tamanho,
                                           dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,'') then
          begin
            try
              pnItens.OnExit := nil;
              ShowMessage('Item já inserido no pedido de venda.');
            finally
              pnItens.OnExit := pnItensExit;
            end;

            dmGeral.FAT_CD_M_PED_ITE.Insert;
            txtBuscaItem.SetFocus;
            Result := false;
            exit;
          end
       else
          begin
            dmGeral.FAT_CD_M_PED_ITE.Insert;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString           := id_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString       := desc;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString  := und;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_cor').AsString            := id_cor;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString       := desc_cor;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString       := desc_tam;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsString              := '';

            dmGeral.BUS_CD_C_ITE.close;
            dmGeral.BUS_CD_C_ITE.Data :=
                  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString]));

            dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').Text :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

          end;
     end;
end;

procedure TFAT_FM_M_PED.AbrirBuscas;
begin
 // FAT_RN_M_PED.BusFuncionarioAtivo;
  //dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela
                              // CAD_TB_C_PAR_CPG
  // Trás somente tipo de estoque do tipo SAÍDA e indicador NORMAL
  dmGeral.BusTipoEstoque(4,'1');
end;



procedure TFAT_FM_M_PED.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED);
  //  id_seq_titulo := 1;
  //  id_seq_ite :=1;

  telaPsqCli := false;
  telaPsqIte := false;

  HabilDesabCampos(true,clWindow);
  pnItens.Enabled := false;
  pnTitulos.Enabled := false;

  Limparcampos;




  dmGeral.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger   := xFuncionario;
  dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger   := xFuncionario;
   dmGeral.BusFuncionario(1,'%');

  btnAtualizaCont.Enabled := false;
  btnCarDesDados.Enabled := false;

  if (txtDiasPrazo.Visible = true) then
    begin
     txtDiasPrazo.Enabled := false;
     txtDiasPrazo.Color := $00DADADA;
    end;
  diasPrazo_ant :=0;
  clienteConsumidor := false;
  txtCliente.SetFocus;
end;

procedure TFAT_FM_M_PED.RecalcularPrecoItens;
begin
    try
         dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
         dmGeral.FAT_CD_M_PED_ITE.AfterPost  := nil;
         dmGeral.FAT_CD_M_PED_ITEvlr_unitario.OnChange  := nil;
         dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange  := nil;
         dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange  := nil;
         dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
         dmGeral.FAT_CD_M_PED_ITE.First;
         while not dmGeral.FAT_CD_M_PED_ITE.Eof do
           begin
             dmGeral.FAT_CD_M_PED_ITE.Edit;
             dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.FAT_CD_M_PED_ITE,false,false,
                        dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger);

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
                     RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;


             dmGeral.FAT_CD_M_PED_ITE.Post;
             dmGeral.FAT_CD_M_PED_ITE.Next;
           end;

         fatPedCalcTotal;
       finally
         dmGeral.FAT_CD_M_PED_ITE.BeforePost :=  dmGeral.FAT_CD_M_PED_ITEBeforePost;
         dmGeral.FAT_CD_M_PED_ITE.AfterPost  := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         dmGeral.FAT_CD_M_PED_ITEvlr_unitario.OnChange  := dmGeral.FAT_CD_M_PED_ITEvlr_unitarioChange;
         dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange  := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
         dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange  := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
       end;
end;

procedure TFAT_FM_M_PED.acAlterarExecute(Sender: TObject);
begin
  if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 3) then
    begin
      ShowMessage('Pedido já Faturado!');
      exit;
    end;

  if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 4) then
    begin
      ShowMessage('Pedido já foi Cancelado!');
      exit;
    end;
  FAT_RN_M_PED.SetarIdSequencia;
  clienteConsumidor := false;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
    begin
      inherited;
      pnItens.Enabled         := false;
      pnTitulos.Enabled       := false;
      btnAtualizaCont.Enabled := false;

      HabilDesabCampos(false,$00DADADA);
      btnCarDesDados.Enabled := false;
      txtObservacao.SetFocus;
      {txtDias.Enabled := true;
      txtVencimento.Enabled := true;}

      pnTitulos.Enabled := true;
      btn_Add_Fpg.Enabled := true;
      grdFpg.OnMouseUp := grdFpgMouseUp;

      dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString);
       if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0) then
         begin
           {txtDias.Enabled := false;
           txtVencimento.Enabled := false;}

           pnTitulos.Enabled := false;
           btn_Add_Fpg.Enabled := false;
           grdFpg.OnMouseUp := nil;
         end;

        {if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >0) then
         begin
          HabilitarVlrDesc := false;
          txtTotalVlrDesc.ReadOnly := true;
          txtTotalVlrDesc.Color := $00DADADA;
         end;  }

        if (dmGeral.FAT_CD_M_PED_ITE.RecordCount >0) then
         begin
           btnImportar.Enabled := false;
         end;


         if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString <> '') and
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
            dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger)   then
           begin
             clienteConsumidor := true;
           end;
    end;
end;

procedure TFAT_FM_M_PED.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
      begin
        inherited;
        btnImportar.Enabled := true;
        grdItens.OnMouseUp := grdItensMouseUp;
        txtDias.Enabled := true;
        txtVencimento.Enabled := true;
        btn_Add_Itens.Enabled := True;
        btnAtualizaCont.Enabled := true;
        txtTotalVlrDesc.ReadOnly := false;
        txtTotalVlrDesc.Color := clWhite;

        btnCarDesDados.Enabled := true;
        dbGrid.SetFocus;
      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TFAT_FM_M_PED.acExcluirExecute(Sender: TObject);
begin

   if dmGeral.FAT_CD_M_PED.RecordCount =0 then
     begin
       ShowMessage('Não há registro de pedido de venda a ser excluído.');
       exit;
     end;

   dmGeral.FAT_CD_M_PED.Edit;
   dmGeral.FAT_CD_M_PED.FieldByName('PED_EXCLUIDO').AsBoolean        := true;
   if dmGeral.FAT_CD_M_PED.ApplyUpdates(0) = 0 then
     begin

       ShowMessage('Pedido excluído com sucesso.');
     end
   else
     begin
       ShowMessage('Falha ao excluir pedido de venda.');
     end;

  {if FAT_CD_M_PED_TesPermExclusao  then
     begin
       if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
          inherited;
     end;}
end;

procedure TFAT_FM_M_PED.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  if FAT_CD_M_PED_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('HOR_PEDIDO').AsDateTime         := now;
             dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime         := now;
             codigo := dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
             AcoesPosTestes;
             DmGeral.Grava(dmGeral.FAT_CD_M_PED);
             inherited;
             dmGeral.FAT_CD_M_PED.Close;
             dmGeral.FAT_CD_M_PED.Data :=
              dmGeral.FAT_CD_M_PED.DataRequest(
               VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));

             AbrirBuscas;
             {txtDias.Enabled := true;
             txtVencimento.Enabled := true; }
             pnTitulos.Enabled := true;
             btn_Add_Fpg.Enabled := true;
             btnAtualizaCont.Enabled := true;
             btnImportar.Enabled := true;
             grdItens.OnMouseUp := grdItensMouseUp;
             btn_Add_Itens.Enabled := True;

             txtTotalVlrDesc.ReadOnly := false;
             txtTotalVlrDesc.Color := clWhite;

             btnCarDesDados.Enabled := true;

             grdFpg.OnMouseUp := grdFpgMouseUp;
           end
        else
           begin
             if txtCliente.CanFocus then
                txtCliente.SetFocus;
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;
           end;
     end
  else
     begin
       if txtCliente.CanFocus then
          txtCliente.SetFocus;
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.AcoesIniciais;
begin

  if not dmGeral.CAD_CD_C_PAR_CTRped_ativa_titulos.AsBoolean then
     begin
       gbGerTitulos.Visible := false;
     end;

   dmGeral.BUS_CD_C_FUN.Close;
          dmGeral.BUS_CD_C_FUN.Data :=
          dmGeral.BUS_CD_C_FUN.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));


  txtVlrUnitario.Color   := $00DADADA;
  txtVlrUnitario.Enabled := false;
  if (dmGeral.CAD_CD_C_PAR_CTRped_altera_preco.AsBoolean = true) then
     begin
       if ((not dmGeral.BUS_CD_C_FUN.IsEmpty) and
           (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = true) and
           (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ALT_PRE_PRO').AsBoolean = true)) then
         begin
           txtVlrUnitario.Color   := clWhite;
           txtVlrUnitario.Enabled := true;
         end;
     end;
  dmGeral.BUS_CD_C_FUN.Close;

end;




function TFAT_FM_M_PED.AcoesPosTestes: Boolean;
begin
          //if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then  // Não usa produção
 { if not (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Não usa produção
     begin
       FAT_RN_M_PED.FatVerifSeqNfe;
     end; }

  VerifRestricoes;

 {dmGeral.FAT_CD_M_PED.ApplyUpdates(0);
  dmGeral.EST_CD_M_FEA.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
  dmGeral.BUS_CD_M_NFE.ApplyUpdates(0);}

{  if xCodOrc > 0 then
     begin
       dmGeral.FAT_CD_M_ORC.edit;
       dmGeral.FAT_CD_M_ORCstatus.AsInteger    := 1;
       dmGeral.FAT_CD_M_ORCid_pedido.AsInteger := dmGeral.FAT_CD_M_PEDid_pedido.AsInteger;
       dmGeral.FAT_CD_M_ORC.Post;
       //dmGeral.FAT_CD_M_ORC.ApplyUpdates(0);
     end;}
 // GravarPedidoVenda;
end;

procedure TFAT_FM_M_PED.Atualizar_xBusca;
begin
    if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
     if xbusca_item = 'ID_ITEM' then
        begin
          lblItem.Caption := '<F7> Cód. fábrica';
          xbusca_item := 'COD_FABRICA';
        end
     else if xbusca_item = 'COD_FABRICA' then
        begin
          lblItem.Caption := '<F7> Cód. barra';
          xbusca_item := 'COD_BARRA';
        end
     else if xbusca_item = 'COD_BARRA' then
        begin
          lblItem.Caption := '<F7> Cód. item';
          xbusca_item := 'ID_ITEM';
        end;
end;

procedure TFAT_FM_M_PED.btn_Add_FpgClick(Sender: TObject);
begin
  inherited;
  pnTitulos.Enabled  := true;

  dmGeral.FAT_CD_M_PED_TIT.Insert;
  //grdFpg.Enabled := False;
  //grdFpg.Color   := clSilver;
 // txtItem.ReadOnly   := false;
 // txtItem.Color      := $00F9E1DF;
  txtFormaPgto.SetFocus;
end;

procedure TFAT_FM_M_PED.btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
     begin
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.btnCarregarDadosClick(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_CD_M_PED.Close;
   dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100,'']));

  if not dmGeral.BUS_CD_M_PED.IsEmpty then
    begin
        ShowMessage('Existem pedidos a serem descarregados.');
        exit;
    end;


  if  MessageDlg('Para carregar os registros é necessário conectar-se com a base de dados principal. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if (dmGeralSer.AcessarBancoRemoto) then
        begin
           FAT_FM_M_PED_IRG := TFAT_FM_M_PED_IRG.Create(Self);
           FAT_FM_M_PED_IRG.ShowModal;
           FAT_FM_M_PED_IRG.Free;
        end;
      dmGeralSer.Conexao.Close;
      dmGeralSer.Conexao.CloseDataSets;
      dmGeralSer.Conexao.Params.Clear;
    end;

end;

procedure TFAT_FM_M_PED.btnDescarregarDadosClick(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_CD_M_PED.Close;
   dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100,'']));

  if dmGeral.BUS_CD_M_PED.IsEmpty then
    begin
        ShowMessage('Não há pedidos a serem descarregados.');
        exit;
    end;

  if MessageDlg('Para descarregar pedidos é necessário conectar-se com a base de dados principal. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (dmGeralSer.AcessarBancoRemoto) then
         begin
           pnlPb.Visible := true;
           pnlPb.Top := 222;
           pnlPb.Left := 95;
           DescarregarPedido;
           pnlPb.Visible := false;

         end;
       dmGeralSer.Conexao.Close;
       dmGeralSer.Conexao.CloseDataSets;
       dmGeralSer.Conexao.Params.Clear;
     end;

end;


procedure TFAT_FM_M_PED.DescarregarPedido;
var
  SMPrincipal : TSMClient;
  id_pedido,id_seq_ite,id_titulo,id_pedido_exc:Integer;
  qtdePedido,qtdePedExc,i:integer;
begin
      txtPb.Caption :='';
      dmGeralSer.FAT_CD_M_PED.Close;
      dmGeralSer.FAT_CD_M_PED.Data :=
      dmGeralSer.FAT_CD_M_PED.DataRequest(VarArrayOf([0,'']));

      dmGeral.FAT_CD_M_PED.Close;
      dmGeral.FAT_CD_M_PED.Data :=
      dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([101,'']));

      dmGeralSer.BUS_CD_C_PAR.Close;
      dmGeralSer.BUS_CD_C_PAR.Data :=
      dmGeralSer.BUS_CD_C_PAR.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
      if  (dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_ENVIA_CARGA').AsBoolean=true) then
         begin
           ShowMessage('Os pedidos serão enviados para carga.');
         end;


      qtdePedido := dmGeral.FAT_CD_M_PED.RecordCount;

      pb.Min :=0;
      pb.Max := qtdePedido;
      pb.Step := 1;
      pb.Position := 0;
      i:=0;

      txtPb.Caption := 'Descarregando pedidos no banco principal.';
      Application.ProcessMessages;


     if qtdePedido >0 then
       begin
         SMPrincipal := TSMClient.Create(dmGeralSer.Conexao.DBXConnection);
          try
             id_pedido := SMPrincipal.enChaveNItens('FAT_TB_M_PED',qtdePedido);
          finally
            FreeAndNil(SMPrincipal);
          end;
       end;


      while not dmGeral.FAT_CD_M_PED.IsEmpty do
        begin
           dmGeralSer.FAT_CD_M_PED.Insert;
           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger := id_pedido;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;


           dmGeralSer.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime := xDataSis;
           dmGeralSer.FAT_CD_M_PED.FieldByName('HOR_PEDIDO').AsDateTime := xHoraSis;

           dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString :=
                    dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean :=
               dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_ENVIA_CARGA').AsBoolean;


           if  (dmGeralSer.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean=false) then
             begin
              dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString := StringReplace(
                  dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString,'F','',[rfReplaceAll]);
             end
           else if not (pos('F',dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString) <> 0) then
             begin
                dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString :=
                            dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString+'F';
             end;

           dmGeralSer.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger;

           if (dmGeralSer.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString='') then
              dmGeralSer.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1
           else
              dmGeralSer.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 0;



           dmGeralSer.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime :=
                dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger;


           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('OBS').AsString :=
                dmGeral.FAT_CD_M_PED.FieldByName('OBS').AsString;

           dmGeralSer.FAT_CD_M_PED.FieldByName('PCP_OBS').AsString :=
                dmGeral.FAT_CD_M_PED.FieldByName('PCP_OBS').AsString;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('OFFLINE').AsBoolean :=
               dmGeral.FAT_CD_M_PED.FieldByName('OFFLINE').AsBoolean;


           dmGeralSer.FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency;


           dmGeralSer.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;

           dmGeralSer.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency;


           dmGeralSer.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency;

           dmGeralSer.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger;

           dmGeralSer.FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString :=
              dmGeral.FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString;

           dmGeralSer.FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat :=
             dmGeral.FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat;

          dmGeralSer.FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat :=
             dmGeral.FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat;



          dmGeralSer.FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean :=
             dmGeral.FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean;


          dmGeralSer.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger :=
             dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger;


          if dmGeral.FAT_CD_M_PED_ITE.RecordCount >0 then
             begin
               SMPrincipal := TSMClient.Create(dmGeralSer.Conexao.DBXConnection);
                try
                   id_seq_ite := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_ITE',dmGeral.FAT_CD_M_PED_ITE.RecordCount);
                finally
                  FreeAndNil(SMPrincipal);
                end;
             end;


          dmGeral.FAT_CD_M_PED_ITE.First;
           while not dmGeral.FAT_CD_M_PED_ITE.Eof do
             begin
               dmGeralSer.FAT_CD_M_PED_ITE.Insert;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger := id_seq_ite;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat;

               dmGeralSer.FAT_CD_M_PED_ITE.Post;
               dmGeral.FAT_CD_M_PED_ITE.Next;
               inc(id_seq_ite);
             end;


            if dmGeral.FAT_CD_M_PED_TIT.RecordCount >0 then
             begin
                SMPrincipal := TSMClient.Create(dmGeralSer.Conexao.DBXConnection);
                try
                   id_titulo := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_TIT',dmGeral.FAT_CD_M_PED_TIT.RecordCount);
                finally
                  FreeAndNil(SMPrincipal);
                end;
             end;



           dmGeral.FAT_CD_M_PED_TIT.First;
           while not dmGeral.FAT_CD_M_PED_TIT.Eof do
             begin
               dmGeralSer.FAT_CD_M_PED_TIT.Insert;

                dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger := id_titulo;


               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').AsString :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').AsString;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').AsString :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').AsString;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsInteger;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').AsString :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').AsString;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').AsInteger;

               dmGeralSer.FAT_CD_M_PED_TIT.FieldByName('ID_MAQUINETA').AsInteger :=
                  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_MAQUINETA').AsInteger;


               dmGeralSer.FAT_CD_M_PED_TIT.Post;
               dmGeral.FAT_CD_M_PED_TIT.Next;

               inc(id_titulo);
             end;
           dmGeralSer.FAT_CD_M_PED.Post;
           dmGeral.FAT_CD_M_PED.Delete;

           if dmGeralSer.FAT_CD_M_PED.ApplyUpdates(0) = 0 then
             begin
              //  ShowMessage('Pedidos foram tranferidos para banco principal com sucesso.');
             end
           else
             begin
              ShowMessage('Falha ao transferir pedidos para banco principal.');
              exit;
             end;

           if dmGeral.FAT_CD_M_PED.ApplyUpdates(0) <> 0 then
             begin
               ShowMessage('Falha ao deletar os pedidos no banco local.');
               exit
             end;

           inc(id_pedido);
           inc(i);
           pb.Position := i;
        end;

      {if qtdePedido > 0  then
        begin
          if dmGeralSer.FAT_CD_M_PED.ApplyUpdates(0) = 0 then
           begin
           //  ShowMessage('Pedidos foram tranferidos para banco principal com sucesso.');
           end
          else
            begin
              ShowMessage('Falha ao transferir pedidos para banco principal.');
              exit;
            end;

          if dmGeral.FAT_CD_M_PED.ApplyUpdates(0) <> 0 then
           begin
             ShowMessage('Falha ao deletar os pedidos no banco local.');
             exit
           end;
        end; }



     dmGeralSer.FAT_CD_M_PEX.Close;
     dmGeralSer.FAT_CD_M_PEX.Data :=
     dmGeralSer.FAT_CD_M_PEX.DataRequest(VarArrayOf([0,'']));



     dmGeral.FAT_CD_M_PED.Close;
     dmGeral.FAT_CD_M_PED.Data :=
     dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([102,'']));

     qtdePedExc := dmGeral.FAT_CD_M_PED.RecordCount;

      pb.Min :=0;
      pb.Max := qtdePedExc;
      pb.Step := 1;
      pb.Position := 0;
      i:=0;

      txtPb.Caption := 'Descarregando pedidos excluídos no banco principal.';
      Application.ProcessMessages;


     if qtdePedExc >0 then
       begin
         SMPrincipal := TSMClient.Create(dmGeralSer.Conexao.DBXConnection);
          try
             id_pedido_exc := SMPrincipal.enChaveNItens('FAT_TB_M_PEX',qtdePedExc);
          finally
            FreeAndNil(SMPrincipal);
          end;
       end;


      while not dmGeral.FAT_CD_M_PED.IsEmpty do
        begin
           dmGeralSer.FAT_CD_M_PEX.Insert;
           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_PEDIDO').AsInteger := id_pedido_exc;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_CLIENTE').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_EMPRESA').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('DTA_PEDIDO').AsDateTime := xDataSis;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('HOR_PEDIDO').AsDateTime := xHoraSis;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('TIPO_RESTRICAO').AsString :=
                dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('DTA_PREV_ENTREGA').AsDateTime :=
                dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_CONDICAO_PAG').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('DIAS_CPG_PRAZO').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('OBS').AsString :=
                dmGeral.FAT_CD_M_PED.FieldByName('OBS').AsString;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('PCP_OBS').AsString :=
                dmGeral.FAT_CD_M_PED.FieldByName('PCP_OBS').AsString;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_RESPONSAVEL').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_ATENDENTE').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ID_VENDEDOR').AsInteger :=
               dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ENVIA_CARGA').AsBoolean :=
               dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('OFFLINE').AsBoolean :=
               dmGeral.FAT_CD_M_PED.FieldByName('OFFLINE').AsBoolean;


           dmGeralSer.FAT_CD_M_PEX.FieldByName('SITUACAO').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('SITUACAO_APROVACAO').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger;


           dmGeralSer.FAT_CD_M_PEX.FieldByName('PCP_ID_OPR').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('VLR_BRUTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency;


           dmGeralSer.FAT_CD_M_PEX.FieldByName('VLR_DESCONTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('PER_DESCONTO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency;


           dmGeralSer.FAT_CD_M_PEX.FieldByName('VLR_LIQUIDO').AsCurrency :=
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ORIGEM').AsInteger :=
              dmGeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('DISPOSITIVO').AsString :=
              dmGeral.FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('GPS_LATITUDE').AsFloat :=
             dmGeral.FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('GPS_LONGITUDE').AsFloat :=
             dmGeral.FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('ENVIA_CARGA').AsBoolean :=
             dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean;

           dmGeralSer.FAT_CD_M_PEX.FieldByName('DIAS_CPG_PRAZO').AsInteger :=
             dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger;

           dmGeralSer.FAT_CD_M_PEX.Post;
           dmGeral.FAT_CD_M_PED.Delete;
           inc(id_pedido_exc);
           inc(i);
           pb.Position := i;
        end;


       if qtdePedExc > 0  then
        begin
          if dmGeralSer.FAT_CD_M_PEX.ApplyUpdates(0) = 0 then
            begin
           //   ShowMessage('Pedidos excluídos foram tranferidos para banco principal com sucesso.');
            end
          else
            begin
              ShowMessage('Falha ao transferir pedidos excluídos para banco principal.');
              exit;
            end;

          if dmGeral.FAT_CD_M_PED.ApplyUpdates(0) <> 0 then
           begin
             ShowMessage('Falha ao deletar os pedidos excluídos no banco local.');
             exit;
           end;
        end;
      txtPb.Caption := 'Pedidos foram transferidos para banco principal com sucesso.';
      Application.ProcessMessages;
      ShowMessage('Pedidos foram transferidos para banco principal com sucesso.');

      dmGeralSer.BUS_CD_C_PAR.Close;
end;




procedure TFAT_FM_M_PED.btnFiltroClick(Sender: TObject);
var
  data:TDateTime;
begin
  AbrirBuscas;
  Screen.Cursor := crHourGlass;
  try
    inherited;

  { Filtros do FAT_CD_M_PED:
      index 0, ID_PEDIDO
      index 1, Nome do cliente
      index 2, Nome do vendedor
      index 3, Nome da Condição de Pagamento
      index 4, Nome do Tipo de Estoque
      index 5, Data do pedido
      index 6, não tem parâmetro, e serve para buscar os pedido que tem restrinções.
   }
  if cbbPesquisa.ItemIndex <> 7 then
    begin
      dmGeral.FAT_CD_M_PED.Close;
      dmGeral.FAT_CD_M_PED.Data :=
      dmGeral.FAT_CD_M_PED.DataRequest(
              VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.Text]));
    end;

  if cbbPesquisa.ItemIndex = 7 then
    begin
      dmGeral.FAT_CD_M_PED.Close;
      dmGeral.FAT_CD_M_PED.Data :=
      dmGeral.FAT_CD_M_PED.DataRequest(
           //   VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,DateTimeToStr (now-14) ,DateTimeToStr(now) ]));
               VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,FormatDateTime(CFormatoData,now-14) ,FormatDateTime(CFormatoData,now) ]));
    end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_PED.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '' then
    Tipo_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger
  else
    Tipo_item := -1;

  if not (dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '') then
    begin
      pnItens.Enabled  := true;
      //btn_Add_Itens.Enabled := False;

      dmGeral.FAT_CD_M_PED_ITE.Insert;
      txtBuscaItem.Enabled := true;
      txtBuscaItem.SetFocus;
    end
  else
    begin
      Showmessage('Tipo de estoque deve ser informado.');
      cbbTipoEstoque.SetFocus;
    end;


end;

procedure TFAT_FM_M_PED.btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
    begin
      if txtFpgEntrada.CanFocus then
         txtFpgEntrada.SetFocus
      else
         begin
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;
         end;
    end;
end;

procedure TFAT_FM_M_PED.Button2Click(Sender: TObject);
begin
  inherited;
  //Application.CreateForm(TfrmVisualizarDados,frmVisualizarDados);
  //frmVisualizarDados.Show;
  //frmVisualizarDados.Free;
end;

procedure TFAT_FM_M_PED.cbbAtendenteEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusFuncionario(1,'%');
  //cbbAtendente.DropDown;

end;

procedure TFAT_FM_M_PED.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;

  xIdCpgAnt := dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString;

  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela
                                                                  // CAD_TB_C_PAR_CPG
  cbbCondicaoPagamento.DropDown;
end;

procedure TFAT_FM_M_PED.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;
  {txtDias.Enabled := true;
  txtVencimento.Enabled := true;}

  pnTitulos.Enabled := true;
  btn_Add_Fpg.Enabled := true;
  grdFpg.OnMouseUp := grdFpgMouseUp;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger > 0 then
     begin
       if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0) then
         begin

           pnTitulos.Enabled := false;
           btn_Add_Fpg.Enabled := false;
           grdFpg.OnMouseUp := nil;
         end;


       // Verifica se o cliente está em débito

       if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                                dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString) then
          begin
            Showmessage('Cliente encontra-se em débito.');
          end;



       if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger > 0 then
          begin

             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
              begin
                // Vefifica se o cliente tá sem limite de crédito
                if dmGeral.BUS_CD_C_CLI.FieldByName('lim_saldo').AsCurrency <= 0 then
                  begin
                    Showmessage('Cliente encontra-se sem limite para compra.');
                  end;
              end;

             // Vefifica se o cliente tá com crédito encerrado
             if dmGeral.BUS_CD_C_CLI.FieldByName('situacao').AsInteger = 2 then
                begin
                  Showmessage('Cliente encontra-se com o crédito encerrado.');
                end;
          end;

      if  ((xIdCpgAnt <> dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)  and
           (xtipoCpgAnt <> dmGeral.BUS_CD_C_CPGtipo_pagamento.AsString)) then
        begin
          if ((dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0) or (dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0)) then
            begin
              if MessageDlg('Se alterar o tipo de condição de pagamento serão deletados os títulos e os valores descontos dos itens serão zerados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                  xtipoCpgAnt := dmGeral.BUS_CD_C_CPGtipo_pagamento.AsString;
                  xIdCpgAnt := dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString;
                end
              else
                begin
                  dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString := xIdCpgAnt;
                  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString);
                  exit;
                end;
            end;

          while (not dmGeral.FAT_CD_M_PED_TIT.Eof) do
            begin
              dmGeral.FAT_CD_M_PED_TIT.Delete;
            end;

          if dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0 then
            begin
               dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 0;
               if ((txtDias.Visible = true) and
                  (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1)) then
                 begin
                   dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 1;
                 end;
               diasPrazo_ant := dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger;
               RecalcularPrecoItens;
            end;

        end;


      if (txtDiasPrazo.Visible = true) then
        begin
          if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1) then
            begin
              txtDiasPrazo.Enabled := true;
              txtDiasPrazo.Color := clWindow;
              if diasPrazo_ant = 0 then
                begin
                  dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger :=
                                 dmGeral.BUS_CD_C_CLI.FieldByName('DIAS_PRAZO_FINANCEIRO').AsInteger;
                end;
              txtDiasPrazo.SetFocus;
            end
          else
            begin
              txtDiasPrazo.Enabled := false;
              txtDiasPrazo.Color := $00DADADA;
              txtDiasPrazo.Text := '0';
            end;
        end;
     end;
  end;

procedure TFAT_FM_M_PED.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TFAT_FM_M_PED.cbbCorExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;

  if VerificarItemGrid then
     txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;

end;

procedure TFAT_FM_M_PED.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisa.Enabled := true;

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
       if cbbPesquisa.ItemIndex = 7 then
         begin
           txtPesquisa.Enabled := false;
         end;
     end;
end;

procedure TFAT_FM_M_PED.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TFAT_FM_M_PED.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     if VerificarItemGrid then
       txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TFAT_FM_M_PED.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(4,'1');   // Trás somente tipo de estoque do tipo SAÍDA e indicador NORMAL

  cbbTipoEstoque.DropDown;
end;

procedure TFAT_FM_M_PED.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
 // FAT_RN_M_PED.BusFuncionarioAtivo;
  cbbVendedor.DropDown;
end;

procedure TFAT_FM_M_PED.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;

               end;
         end;
     end;
end;

procedure TFAT_FM_M_PED.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 0 then
    begin
      aFont.Color := clBlack;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 1 then
    begin
      aFont.Color := clRed;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 2 then
    begin
      aFont.Color := clBlue;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 3 then
    begin
       aFont.Color := clGreen;
     end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 4 then
    begin
       aFont.Color := clMaroon;
     end;
end;

procedure TFAT_FM_M_PED.ExcluirOrcamento;
begin
  { dmGeral.BusFatOrc(3,dmGeral.FAT_CD_M_PEDid_pedido.AsString);
   if not dmGeral.FAT_CD_M_ORC.IsEmpty then
      begin
        dmGeral.FAT_CD_M_ORC.BeforeEdit := nil;

        xCodOrc := dmGeral.FAT_CD_M_ORCid_orcamento.AsInteger;
        dmGeral.FAT_CD_M_ORC.edit;
        dmGeral.FAT_CD_M_ORCstatus.AsInteger    := 0;
        dmGeral.FAT_CD_M_ORCid_pedido.AsInteger := 0;
        dmGeral.FAT_CD_M_ORC.post;

        dmGeral.FAT_CD_M_ORC.BeforeEdit := dmGeral.FAT_CD_M_ORCBeforeEdit;
      end;  }
end;

procedure TFAT_FM_M_PED.ExcluirPedidoVenda;
//var
//  Obj:TSMClient;
begin

  {dmGeral.FAT_CD_M_PED.ApplyUpdates(0);
  dmGeral.EST_CD_M_FEA.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
  dmGeral.BUS_CD_M_NFE.ApplyUpdates(0);
  dmGeral.FAT_CD_M_ORC.ApplyUpdates(0);
  }



 { Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);
  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.text);

  if (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Usa produção
      begin
         // Em aberto
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) then
            begin
               ExcluirOrcamento;
               dmGeral.FAT_CD_M_PED.delete;
               if xCodOrc > 0 then
                  begin
                    TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                  end
               else
                  begin
                    TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                  end;
            end;
         // O código de geração da NF, Saldos... deve ir para a tela de Ordem de Saída
      end
  else
      begin
            // Em aberto                                                     //  Em espera
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 0) then
           begin
             ExcluirOrcamento;
             dmGeral.FAT_CD_M_PED.delete;
             if xCodOrc > 0 then
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                end
             else
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                end;
           end;
            // Em aberto                                                     //  Pedido foi aprovado
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 1) then
           begin

               dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').text);
               if not dmGeral.BUS_CD_C_TME.IsEmpty then
                  begin
                    if dmGeral.BUS_CD_C_TMEesto_movimenta.AsBoolean = true then
                       begin
                         SAI_EXCLUI_EST(6,dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,xCdsItensAntigo);
                       end;
                  end;
               if dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean = false then
                  begin
                    PED_EXCLUI_NFE(dmGeral.FAT_CD_M_PEDid_pedido.Text);
                  end;

              dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').text);

              dmGeral.FAT_CD_M_PED.delete;

              if dmGeral.BUS_CD_C_TMEesto_movimenta.AsBoolean = true then // Movimenta estoque
                 begin
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       begin
                         if xCodOrc > 0 then
                            begin
                              TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                            end
                         else
                            begin
                              TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                            end;
                       end
                    else
                       begin
                         if xCodOrc > 0 then
                            begin
                               TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                            end
                         else
                            begin
                               TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                            end;
                       end;
                 end
              else
                 begin
                   if xCodOrc > 0 then
                      begin
                         TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                      end
                   else
                      begin
                         TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                      end;
                 end;
           end;
      end;
  obj.Free;
  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Open;    }
end;

procedure TFAT_FM_M_PED.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(1,'%');
      end;
end;

procedure TFAT_FM_M_PED.btnImportarClick(Sender: TObject);
begin
  inherited;

  {if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição de pagamento" deve ser prenchido.');
       abort;
     end;


  dmGeral.FAT_CD_M_PED_ITE.Cancel;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado no pedido de venda.' + #13 +
                     'Se continuar os itens do pedido serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_PED_ITE.First;
            while not dmGeral.FAT_CD_M_PED_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.Delete;
               end;
          end;
     end;


  Application.CreateForm(TFAT_FM_M_PED_IOR,FAT_FM_M_PED_IOR);

  FAT_FM_M_PED_IOR.ShowModal;
  FAT_FM_M_PED_IOR.Free;
  if not dmGeral.FAT_CD_M_ORC.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('id_orcamento').AsInteger :=
               dmGeral.FAT_CD_M_ORCid_orcamento.AsInteger;


     end;

  txtObservacao.SetFocus; }
end;

procedure TFAT_FM_M_PED.btnImportarRegClick(Sender: TObject);
begin
  inherited;
   dmGeral.FAT_CD_M_PED.Close;
   dmGeral.FAT_CD_M_PED.Data :=
      dmGeral.FAT_CD_M_PED.DataRequest(
              VarArrayOf([8, IntToStr(xFuncionario)]));
  if dmGeral.FAT_CD_M_PED.IsEmpty then
    begin
      if (dmGeralSer.AcessarBancoRemoto) then
        begin
          //ImportarRegistros;
        end;
      dmGeralSer.Conexao.Close;
      dmGeralSer.Conexao.CloseDataSets;
      dmGeralSer.Conexao.Params.Clear;
    end
  else
    begin
      ShowMessage('Existem pedidos a serem descarregados.');
    end;
end;

procedure TFAT_FM_M_PED.btnVisualizarRestClick(Sender: TObject);
begin
  inherited;

  if (dmGeral.FAT_CD_M_PED.RecordCount >0) then
    begin
      FAT_FM_M_PED_RTC := TFAT_FM_M_PED_RTC.Create(Self);
      FAT_FM_M_PED_RTC.ShowModal;
      FAT_FM_M_PED_RTC.Free;
    end
  else
    begin
      ShowMessage('É necessário selecionar o pedido.');
      exit;
    end;
end;

procedure TFAT_FM_M_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_PED.Close;
  FreeAndNil(FAT_FM_M_PED);

  Application.CreateForm(TSEG_FM_X_SEN, SEG_FM_X_SEN);
  if SEG_FM_X_SEN.ShowModal = mrOK then
     begin
       FreeAndNil(SEG_FM_X_SEN);
       Application.CreateForm(TFAT_FM_M_PED,FAT_FM_M_PED);
       Application.Run;
     end
  else
     begin
       FreeAndNil(dmGeralSer);

       dmGeral.Conexao.Connected := false;
       FreeAndNil(dmGeral);
       FreeAndNil(SEG_FM_X_SEN);
     end;

end;

procedure TFAT_FM_M_PED.FormCreate(Sender: TObject);
begin
  inherited;

 { dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
  dmGeral.FAT_CD_M_PED.DataRequest(
            VarArrayOf([0, ''])); }

 // dmGeral.AtualizarGridItens(grdItens,'INT_NOMEITE',10,8);


   if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      label17.Visible := True;
      txtCubagem.Visible := true;

      lblOutrasObs.Visible := true;
      txtOutrasObs.Visible := true;
    end
  else
    begin
      label17.Visible := False;
      txtCubagem.Visible := False;
      lblOutrasObs.Visible := false;
      txtOutrasObs.Visible := false;
    end;



end;

procedure TFAT_FM_M_PED.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F8 then
    btnIncluir.Click;

  // Maxsuel Victor, em 11/09/2015 , retirei pra colocar o código no campo de Item.
  {if Key = vk_F2 then
    begin
      if (dmGeral.FAT_CD_M_PED_TIT.State in [dsInsert]) or (dmGeral.FAT_CD_M_PED_TIT.State in [dsEdit]) then
        begin
          dmGeral.FAT_CD_M_PED_TIT.Post;
        end;
      pnTitulos.Enabled := False;
      btnGrava.SetFocus;
    end;}

end;

procedure TFAT_FM_M_PED.FormShow(Sender: TObject);
begin
  inherited;

    lblDiasPrazo.Visible := false;
    txtDiasPrazo.Visible := false;
   if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
    begin
      lblDiasPrazo.Visible := true;
      txtDiasPrazo.Visible := true;
    end;


   if  ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False)) then
    begin
      lblNumOrdPro.Visible := false;
      lblDtaEntrega.Visible := false;
      txtDtaEntrega.Visible := false;
      txtOrdProd.Visible := false;
    end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      begin
        lblVendedor.caption := 'Representante :';
      end;

  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
  dmGeral.FAT_CD_M_PED.DataRequest(
            VarArrayOf([0, '']));

  clienteConsumidor := false;
  AbrirBuscas;

  AcoesIniciais;
  Limparcampos;
  Atualizar_xBusca;
  txtPesquisa.SetFocus;

  lblCodificacaoLMestre.Caption := 'Versão do Sistema: ' + CVersaoSistema;

  dmGeral.AtualizarGridItens(grdItens,'INT_NOMEITE',10,8);

end;

procedure TFAT_FM_M_PED.GravarPedidoVenda;
//var
 // Obj:TSMClient;
begin



 { Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.text);

  if (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Usa produção
      begin
        if xCodOrc > 0 then
           begin
             TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_ORC]);
           end
        else
           begin
             TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
           end;
      end
  else
      begin
        if (dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').Text = '') then
           begin
             // Se ele chega aqui, quer dizer que não houve nenhuma restrição e já fica aprovado automaticamente

             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;

             if dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean = false then
                begin
                  PED_GRAVA_NFE(dmGeral.FAT_CD_M_PED,xCdsPaiAntigo,xCdsItensAntigo,xCdsTitulosAntigo);
                end;

             if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                begin
                  if xCodOrc > 0 then
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC]);
                     end
                  else
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE]);
                     end;
                end
             else
                begin
                  if xCodOrc > 0 then
                     begin
                        TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC]);
                     end
                  else
                     begin
                        TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE]);
                     end;
                end;
           end
        else
           begin
             if xCodOrc > 0 then
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_ORC]);
                end
             else
                begin
                  TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                end;
           end;
      end;
  obj.Free; }
end;

procedure TFAT_FM_M_PED.grdFpgIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdFpgIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_PED_TIT.Delete;
     dmGeral.FAT_CD_M_PED_TIT.Edit;
  finally
    grdFpgIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PED.grdFpgMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.FAT_CD_M_PED_TIT.cancel;

  if dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
       //txtFormaPgto.Enabled := true;
       dmGeral.FAT_CD_M_PED_TIT.Append;
       pnTitulos.Enabled := true;
       txtFormaPgto.SetFocus;
     end
  else
    begin
      dmGeral.FAT_CD_M_PED_TIT.Edit;

      ExibirFormasPgto;

      pnTitulos.Enabled := true;

      try
      dmGeral.BUS_CD_C_FPG2.Close;
      dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').Text]));

      gbCheque.Enabled   := false;
      if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
         begin
           gbCheque.Enabled   := true;
         end;
      finally
         dmGeral.BUS_CD_C_FPG2.close;
      end;

      if txtDias.CanFocus then
         txtDias.SetFocus
      else
         txtVlrTitulo.SetFocus;
    end;
end;

procedure TFAT_FM_M_PED.grdFpgRowChanged(Sender: TObject);
begin
  inherited;
  ExibirFormasPgto;
end;

procedure TFAT_FM_M_PED.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_PED_ITE.Delete;

     if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency = 0 then
       begin
        HabilitarVlrDesc := true;
        txtTotalVlrDesc.ReadOnly := false;
        txtTotalVlrDesc.Color := clWhite;
        btn_Add_itens.Enabled := true;
        grdItens.OnMouseUp := grdItensMouseUp;
       end;

     if dmGeral.FAT_CD_M_PED_ITE.RecordCount = 0 then
       begin
         btnImportar.Enabled := true;
       end;

     if btn_Add_itens.CanFocus then
       begin
         btn_Add_Itens.setfocus;
       end;
     //dmGeral.FAT_CD_M_PED_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PED.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if not (dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '') then
    begin
      if pnItens.Enabled = false then
         pnItens.Enabled := true;

      dmGeral.FAT_CD_M_PED_ITE.cancel;

      if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
         begin
           txtBuscaItem.Enabled := true;
           dmGeral.FAT_CD_M_PED_ITE.Append;
           pnItens.Enabled := true;
           txtBuscaItem.SetFocus;
         end
      else
        begin
          txtBuscaItem.Enabled := false;
          dmGeral.FAT_CD_M_PED_ITE.Edit;
          vlrLiqIteAnt :=  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
          pnItens.Enabled := true;
          txtQtde.SetFocus;
        end;
    end
  else
    begin
      Showmessage('Tipo de estoque deve ser informado.');
      cbbTipoEstoque.SetFocus;
    end;
end;

procedure TFAT_FM_M_PED.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled     := Estado;
  txtCliente.Color       := Cor;
  cbbCondicaoPagamento.Enabled := Estado;
  cbbCondicaoPagamento.Color   := Cor;
  cbbVendedor.Enabled    := Estado;
  cbbVendedor.Color      := Cor;
  cbbTipoEstoque.Enabled := Estado;
  cbbTipoEstoque.Color   := Cor;
 
  txtSaldo.Text          := '';
  btnImportar.Enabled    := Estado;

  if (txtDiasPrazo.Visible = true) then
    begin
      txtDiasPrazo.Enabled := Estado;
      txtDiasPrazo.Color := Cor;
    end;
end;

procedure TFAT_FM_M_PED.Limparcampos;
begin
  txtFpgEntrada.Text := '';
  txtGerFpg.Text     := '';
  // xCodOrc            := 0;
  txtSaldo.text      := '';
end;

procedure TFAT_FM_M_PED.PassarCdsAnterior;
begin


 {if xCdsPaiAntigo <> nil then
     begin
       xCdsPaiAntigo.Destroy;
       xCdsPaiAntigo := nil;
     end;

  xCdsPaiAntigo       := TClientDataSet.Create(self);
  xCdsPaiAntigo.Data  := dmGeral.FAT_CD_M_PED.Data;
  xCdsPaiAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED);  }

  if xCdsItensAntigo <> nil then
     begin
       xCdsItensAntigo.Destroy;
       xCdsItensAntigo := nil;
     end;
  xCdsItensAntigo       := TClientDataSet.Create(self);
  xCdsItensAntigo.Data  := dmGeral.FAT_CD_M_PED_ITE.Data;
  xCdsItensAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED_ITE);


  if xCdsTitulosAntigo <> nil then
     begin
       xCdsTitulosAntigo.Destroy;
       xCdsTitulosAntigo := nil;
     end;

  xCdsTitulosAntigo       := TClientDataSet.Create(self);
  xCdsTitulosAntigo.Data  := dmGeral.FAT_CD_M_PED_TIT.Data;
  xCdsTitulosAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED_TIT);
end;

procedure TFAT_FM_M_PED.txtVencimentoExit(Sender: TObject);
var
  vencValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or txtFormaPgto.Focused or
     txtDias.Focused or grdFpg.Focused then
     begin
       abort;
     end;

  try
    pnTitulos.OnExit := nil;
    vencValid := dmGeral.TesValVencto(dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime,
                               dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime);
  finally
    pnTitulos.OnExit := pnTitulosExit;
  end;


  if not (vencValid) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

  if (abs(dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime)> 1825)  then
     begin
        try
          pnTitulos.OnExit := nil;
          ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data do pedido.');
        finally
          pnTitulos.OnExit := pnTitulosExit;
        end;
        txtVencimento.SetFocus;
        abort;
     end;

   if dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsVariant;
     end;
end;

procedure TFAT_FM_M_PED.txtVlrDescontoEnter(Sender: TObject);
begin
  inherited;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);
     end;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_PED.txtVlrDescontoExit(Sender: TObject);
var
  seq_item: string;
  vlrDesc:Currency;
  descValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtQtde.Focused    or txtVlrUnitario.Focused  or
     txtPerDesconto.Focused or grdItens.Focused then
     begin
       abort;
     end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
        vlrDesc :=  (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100;
        if (vlrDesc > xPercDescPerm) then
           begin
            try
               pnItens.OnExit := nil;
               ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                             'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                             'Desconto limite...: ' + FormatFloat('##,##0.00',xPercDescPerm));
            finally
               pnItens.OnExit := pnItensExit;
            end;
           end;
      end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        try
          pnItens.OnExit := nil;
          descValid := dmGeral.TesValVlrDesconto(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency,xPercDescPerm);
        finally
          pnItens.OnExit := pnItensExit;
        end;
        if not (descValid) then
           begin
             txtVlrDesconto.SetFocus;
             abort;
           end;
      end;

  if (clienteConsumidor = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsString <> '') then
    begin
      if  dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
        begin
          if (dmgeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               try
                 pnItens.OnExit := nil;
                 ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               finally
                 pnItens.OnExit := pnItensExit;
               end;

               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end
      else
        begin
          if ((dmgeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency)-vlrLiqIteAnt) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               try
                  pnItens.OnExit := nil;
                  ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               finally
                  pnItens.OnExit := pnItensExit;
               end;

               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end;
    end;


  //seq_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsString;

  // Comentado por Maxsuel Victor, 28/10/2016, o código agora funciona no onNewRecord
  {if dmGeral.FAT_CD_M_PED_ITEid_sequencia.text = '' then
     begin
          dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger := id_seq_ite;
          inc(id_seq_ite);

     end;}

  seq_item := dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsString;
  if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency >0) then
     begin
      HabilitarVlrDesc := false;
      txtTotalVlrDesc.ReadOnly := true;
      txtTotalVlrDesc.Color := $00DADADA;
     end;


  try
     pnItens.OnExit := nil;
     dmGeral.FAT_CD_M_PED_ITE.Post;
  finally
     pnItens.OnExit := pnItensExit;
  end;

  dmGeral.FAT_CD_M_PED_ITE.IndexFieldNames := 'ID_SEQUENCIA';
  btn_Add_Itens.Enabled := True;
  btnImportar.Enabled := false;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
  dmGeral.FAT_CD_M_PED_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TFAT_FM_M_PED.txtVlrEntradaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtFpgEntrada.text) = '') or
     (txtFpgEntrada.Text = '0')) and
     ((trim(txtVlrEntrada.text) <> '') and
      (txtVlrEntrada.Value <> 0)) then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;


  if (trim(txtVlrEntrada.text) = '') or
     (txtVlrEntrada.value = 0) then
     begin
       txtFpgEntrada.Text := '';
       exit;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Pedido de venda sem valor.');
       exit;
     end;

  if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;

  dmGeral.GerarFPG_Entrada(1,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.FAT_CD_M_PED_TIT);

  ExibirFormasPgto;

  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
end;

procedure TFAT_FM_M_PED.txtVlrTituloExit(Sender: TObject);
var
  cod_titulo: integer;
  valorValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgto.Focused or
      txtDias.Focused or txtVencimento.Focused or
      grdFpg.Focused) or
      ( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )  then
     begin
       abort;
     end;

  try
    pnTitulos.OnExit := nil;
    valorValid := dmGeral.TesValVlr(dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency);
  finally
    pnTitulos.OnExit := pnTitulosExit;
  end;

  if not (valorValid) then
     begin
       txtVlrTitulo.SetFocus;
       abort;
     end;

  if not (gbCheque.Enabled) then
     begin
        // Comentado por Maxsuel Victor, 28/10/2016, o código agora funciona no onNewRecord
        {if dmGeral.FAT_CD_M_PED_TITid_titulo.text = '' then
          begin
            dmGeral.FAT_CD_M_PED_TITid_titulo.AsInteger := id_seq_titulo;
            inc(id_seq_titulo);
          end;}
        cod_titulo := dmGeral.FAT_CD_M_PED_TITid_titulo.AsInteger;


        dmGeral.FAT_CD_M_PED_TIT.Post;
        pnTitulos.Enabled := false;

        btn_Add_Fpg.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or
     (not grdItensIButton.Enabled) then
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

        dmGeral.FAT_CD_M_PED_ITE.Cancel;
        dmGeral.FAT_CD_M_PED_ITE.edit;

        if (not dmGeral.FAT_CD_M_PED_ITE.IsEmpty) and (trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').text) <> '')  then
           begin
             if dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                saldo_fisico) then
                begin
                   txtSaldo.Text := saldo_fisico;
                end;
           end;
        finally
           pnItens.Enabled := false;
        end;
      end;

end;

procedure TFAT_FM_M_PED.pnTitulosExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Fpg.Focused) or (grdFpg.Focused) or
     (not grdFpgIButton.Enabled) then
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

        dmGeral.FAT_CD_M_PED_TIT.Cancel;
        dmGeral.FAT_CD_M_PED_TIT.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;

end;

procedure TFAT_FM_M_PED.ppDetailBand2BeforePrint(Sender: TObject);
begin
  inherited;
  //showmessage(dmGeral.FAT_CD_M_PED_ITEid_pedido.Text);
end;

procedure TFAT_FM_M_PED.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  dmGeral.BusCliente(0,'');
  dmGeral.BUS_CD_C_CLI.EmptyDataSet;
  telaPsqCli := true;
  PSQ_FM_X_CLI.ShowModal;

  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger :=
            dmGeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

       dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
            dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
        telaPsqCli := false;
     end;
  dmGeral.BUS_CD_C_CLI.Close;
  PSQ_FM_X_CLI.Free;

end;

procedure TFAT_FM_M_PED.txtClienteExit(Sender: TObject);
begin
  inherited;

  if telaPsqCli = false then
    begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           exit;
         end;


      clienteConsumidor := false;

      dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text := '';

      if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
         begin
           ShowMessage('O campo "Cliente" deve ser preenchido.');
           abort;
         end;

      dmGeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
           dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


      if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
         begin
           txtCliente.SetFocus;
           exit;
         end;
      dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
           dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

      dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString :=
            dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

      dmGeral.FAT_CD_M_PEDint_nomeest.AsString :=
           dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
     { cbbVendedor.Enabled := true;
      if dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsString <> '' then
        begin
          dmGeral.BusFuncionario(0,dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsString);
          if not dmGeral.BUS_CD_C_FUN.IsEmpty then
            begin
              if dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = false then
                 begin
                   ShowMessage('O vendedor do cliente está inativo.');
                 end
              else
                 begin
                    dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger :=
                                          dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsInteger;
                    FAT_RN_M_PED.BusFuncionarioAtivo;
                    dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
                    cbbVendedor.Enabled := false;
                    IF dmGeral.BUS_CD_C_FUN.FieldByname('SEG_ALT_VEND_PED').AsBoolean = True then
                      begin
                       cbbVendedor.Enabled := true;
                      end;
                    dmGeral.BUS_CD_C_FUN.Close;
                 end;
            end;
        end;}

      if  ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
        begin
          if (TRIM(dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString) <> TRIM(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString)) then
            begin
               dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime := now + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_fora').AsInteger;
            end;
          if (TRIM(dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString) = TRIM(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString)) then
            begin
               dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime := now + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_dentro').AsInteger;
            end;
        end;

        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString <> '') and
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
            dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger)   then
          begin
            clienteConsumidor := true;
          end;

    end
  else
   begin
     telaPsqCli := false;
     txtCliente.SetFocus;
   end;

end;


procedure TFAT_FM_M_PED.txtDiasExit(Sender: TObject);
var
  diasValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or txtFormaPgto.Focused or grdFpg.Focused then
     begin
       abort;
     end;

  try
     pnTitulos.OnExit := nil;
     diasValid := dmGeral.TesValDias(dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger);
  finally
     pnTitulos.OnExit := pnTitulosExit;
  end;

  if not (diasValid) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime +
                   dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger;

end;

procedure TFAT_FM_M_PED.txtDiasPrazoExit(Sender: TObject);
var
 i:integer;
begin
  inherited;

  if ((dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger < 1)) then
     begin
       ShowMessage('O valor mínimo do campo "dias" é 1.');
       if diasPrazo_ant > 0 then
         begin
          dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := diasPrazo_ant;
         end
       else
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 1;
         end;
     end;

  if ((dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0) and
      (dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger <> diasPrazo_ant)) then
     begin
        if MessageDlg('Ao alterar o valor do campo "dias" será recalculado os preços dos itens '+
                          'e os valores descontos serão zerados. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           begin
             exit;
           end;

        RecalcularPrecoItens;
     end;
  diasPrazo_ant := dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger;
end;

procedure TFAT_FM_M_PED.txtEmitenteChqExit(Sender: TObject);
var
  cod_titulo:Integer;
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgto.Focused or
      txtBanco.Focused or txtAgencia.Focused or
      txtContaCorrente.Focused or txtNCheque.Focused or
      txtDias.Focused or txtVencimento.Focused or
      grdFpg.Focused or txtVlrTitulo.focused) or
      ( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )  then
      begin
        abort;
      end;

  //id_titulo := dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsString;


  // Comentado por Maxsuel Victor, 28/10/2016, o código agora funciona no onNewRecord
  {if dmGeral.FAT_CD_M_PED_TITid_titulo.text = '' then
     begin
          dmGeral.FAT_CD_M_PED_TITid_titulo.AsInteger := id_seq_titulo;
          inc(id_seq_titulo);
     end;}
  cod_titulo := dmGeral.FAT_CD_M_PED_TITid_titulo.AsInteger;
  dmGeral.FAT_CD_M_PED_TIT.Post;
  pnTitulos.Enabled := false;

  btn_Add_Fpg.SetFocus;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));


  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         if clienteConsumidor = false then
           begin
             dmGeral.BusFormaPgtos(2,'0');
           end;

         if clienteConsumidor = true then
           begin
             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([8,'0','''3'',''5''']));
           end;
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         if clienteConsumidor = false then
           begin
            dmGeral.BusFormaPgtos(1,'%');
           END;

         if clienteConsumidor = true then
           begin
             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([4,'''3'',''5''']));
           end;
      end;
   txtFormaPgto.DropDown;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoExit(Sender: TObject);
begin
  inherited;


   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (btn_Add_Fpg.Focused or grdFpg.Focused) or
     (not ( (txtDias.Focused) or (txtVencimento.Focused) or (txtVlrTitulo.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       try
         pnTitulos.OnExit := nil;
         Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       finally
         pnTitulos.OnExit := pnTitulosExit;
       end;

       txtFormaPgto.SetFocus;
       abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       try
         pnTitulos.OnExit := nil;
         ShowMessage('Forma de pagamento não encontrada.');
       finally
         pnTitulos.OnExit := pnTitulosExit;
       end;

       dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin

       try
         pnTitulos.OnExit := nil;
         ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       finally
         pnTitulos.OnExit := pnTitulosExit;
       end;

       dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  gbCheque.Enabled := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       gbCheque.Enabled := true;
     end;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
     begin
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.txtFpgEntradaButtonClick(Sender: TObject);
begin
  inherited;
  try
  grdItens.OnMouseUp := nil;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  // Busca as formas de pagamento a vista
  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, 0]));
  dmGeral.BUS_CD_C_FPG.Open; // Precisa do Open

  PSQ_FM_X_FPG.xOrigemPsqFpg := '1';

  PSQ_FM_X_FPG.ShowModal;
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       txtFpgEntrada.SetFocus;
       txtFpgEntrada.Text :=
             dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
  finally
    grdItens.OnMouseUp := grdItensMouseUp;
  end;
end;

procedure TFAT_FM_M_PED.txtFpgEntradaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtFpgEntrada.text) <> '') and
     (txtFpgEntrada.Text <> '0') then
     begin
       try
          dmGeral.BUS_CD_C_FPG2.Close;
          dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtFpgEntrada.Text]));
          if dmGeral.BUS_CD_C_FPG2.IsEmpty then
             begin
               ShowMessage('Forma de pagamento não encontrada.');
               txtFpgEntrada.Text := '';
               txtFpgEntrada.SetFocus;
               abort;
             end
          else
             begin
               if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                  begin
                    ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                    txtFpgEntrada.Text := '';
                    txtFpgEntrada.SetFocus;
                    abort;
                  end;

               if (clienteConsumidor=true) and
                  (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then
                  begin
                     ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                     txtFpgEntrada.Text := '';
                     txtFpgEntrada.SetFocus;
                     abort;
                  end;
             end;
        finally
          dmGeral.BUS_CD_C_FPG2.Close;
        end;
     end
  else
     begin
       txtVlrEntrada.Text := '';
     end;
end;

procedure TFAT_FM_M_PED.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
           dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
     begin
         // Busca as formas de pagamento a vista
         dmGeral.BUS_CD_C_FPG.Close;
         dmGeral.BUS_CD_C_FPG.data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(
                  VarArrayOf([2, 0]));


         PSQ_FM_X_FPG.xOrigemPsqFpg := '1';
     end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
         // Busca as formas de pagamento a prazo
         dmGeral.BUS_CD_C_FPG.Close;
         dmGeral.BUS_CD_C_FPG.data :=
              dmGeral.BUS_CD_C_FPG.DataRequest(
                   VarArrayOf([2, 1]));

         PSQ_FM_X_FPG.xOrigemPsqFpg := '2';
     end;

  PSQ_FM_X_FPG.ShowModal;
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TFAT_FM_M_PED.txtGerFpgExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0') then
     begin
        try
        dmGeral.BUS_CD_C_FPG2.Close;
        dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
        if dmGeral.BUS_CD_C_FPG2.IsEmpty then
           begin
             ShowMessage('Forma de pagamento não encontrada.');
             txtGerFpg.Text := '';
             txtGerFpg.SetFocus;
             abort;
           end
        else
           begin
             dmGeral.BUS_CD_C_CPG.Close;
             dmGeral.BUS_CD_C_CPG.Data :=
                       dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

             if (clienteConsumidor=false) then
                begin
                 if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
                    begin
                       if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                          begin
                            ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                            txtGerFpg.Text := '';
                            txtGerFpg.SetFocus;
                            abort;
                          end;
                    end;
                end;

             if (clienteConsumidor=true) then
                begin
                  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then
                    begin
                      if (dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0) or
                         (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then  // A vista
                        begin
                         ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                         txtFpgEntrada.Text := '';
                         txtFpgEntrada.SetFocus;
                         abort;
                        end;
                    end;

                  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
                    begin
                      if (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then  // A vista
                        begin
                         ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                         txtFpgEntrada.Text := '';
                         txtFpgEntrada.SetFocus;
                         abort;
                        end;
                    end;
                end;

           end;

        gbCheque.Enabled   := false;
        if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
           begin
             gbCheque.Enabled   := true;
           end;

        finally
          dmGeral.BUS_CD_C_FPG2.close;
          dmGeral.BUS_CD_C_CPG.Close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TFAT_FM_M_PED.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_CSU_ITE.Close;
  dmGeral.BUS_CD_CSU_ITE.Data := dmGeral.BUS_CD_CSU_ITE.DataRequest(VarArrayOf([0, '','',0]));
  dmGeral.BUS_CD_CSU_ITE.EmptyDataSet;

  dmGeral.BUS_CD_M_FES.Close;
  dmGeral.BUS_CD_M_FES.Data := dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([0, '']));
  dmGeral.BUS_CD_M_FES.EmptyDataSet;

  dmGeral.BUS_CD_M_FES_ALM.Close;
  dmGeral.BUS_CD_M_FES_ALM.Data := dmGeral.BUS_CD_M_FES_ALM.DataRequest(VarArrayOf([0, '']));
  dmGeral.BUS_CD_M_FES_ALM.EmptyDataSet;


  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;

  xFormRespPSQ_ITE := FAT_FM_M_PED.Name;

  telaPsqIte := true;

  PSQ_FM_X_ITE.ShowModal;
  if not dmGeral.BUS_CD_CSU_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger :=
          dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          dmGeral.BUS_CD_CSU_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
          dmGeral.BUS_CD_CSU_ITE.FieldByName('DESCRICAO').AsString;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').Text :=
          dmGeral.BUS_CD_CSU_ITE.FieldByName('INT_TIPO_ITEM').AsString;
     end;

  telaPsqIte := false;
  PSQ_FM_X_ITE.Free;
end;

procedure TFAT_FM_M_PED.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  txtSaldo.Text := '';
end;

procedure TFAT_FM_M_PED.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
begin
  inherited;

  if telaPsqIte = false then
     begin
        dmGeral.BUS_CD_C_ITE.Close;

        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
           begin

             if btnCancelar.Focused or
                btnGrava.Focused  then
                begin
                  exit;
                end;

             if btn_Add_Itens.Focused then
                exit;

             if grdItens.Focused then
                exit;

             if not grdItensIButton.Enabled then
                exit;

             if (txtQtde.Focused) or (txtVlrUnitario.Focused) or
                (txtVlrDesconto.Focused) or (txtPerDesconto.Focused) then
                 begin
                   try
                     pnItens.OnExit := nil;
                     ShowMessage('O campo "Item" deve ser prenchido.');
                   finally
                     pnItens.OnExit := pnItensExit;
                   end;
                   txtBuscaItem.SetFocus;
                   exit;
                 end
             else
                 begin

                   exit;
                 end;
           end
        else
           begin
             if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
                begin
                  try
                    pnItens.OnExit := nil;
                    ShowMessage('O campo "Cliente" deve ser preenchido.');
                  finally
                    pnItens.OnExit := pnItensExit;
                  end;
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text         := '';
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
                  abort;
                end;

             if dmGeral.FAT_CD_M_PED_ITE.state in [dsBrowse] then
                dmGeral.FAT_CD_M_PED_ITE.edit;
           end;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';

        if xbusca_item = 'ID_ITEM' then
           begin
             dmGeral.BUS_CD_C_ITE.Data :=
                  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
           end;
        if xbusca_item = 'COD_BARRA'  then
           begin
             dmGeral.BUS_CD_C_ITE.Data :=
                  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
           end;
        if xbusca_item = 'COD_FABRICA' then
           begin
             dmGeral.BUS_CD_C_ITE.Data :=
                  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
           end;

        if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
           begin
             txtBuscaItem.SetFocus;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_busca_item').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
             exit;
           end;

        { A linha abaixo é pra evitar que o OnChange do ID_ITEM seja executado mais de 1 vez
           devido o teset do Insert mais abaixo }
        //id_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text :=
             dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
             dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text :=
             dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
             dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

        if (Tipo_Item <> -1) and (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean) then
           begin
             if ((dmGeral.FAT_CD_M_PED_ITEint_tipo_item.AsInteger = 9) and (tipo_item <> 9)) or
                ((dmGeral.FAT_CD_M_PED_ITEint_tipo_item.AsInteger <> 9) and (tipo_item = 9)) then
              begin
                if tipo_item = 9 then
                  begin
                    try
                      pnItens.OnExit := nil;
                      ShowMessage('Não é permitido inserir item do tipo "Produto".');
                    finally
                      pnItens.OnExit := pnItensExit;
                    end;
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                    abort;
                  end
                else
                  begin
                    try
                      pnItens.OnExit := nil;
                      ShowMessage('Não é permitido inserir item do tipo "Serviço".');
                    finally
                      pnItens.OnExit := pnItensExit;
                    end;
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                    abort;
                  end;
              end;
           end;

        //Busca o preço na tabela de preço conforme item e tabela do cliente

        try
          pnItens.onExit := nil;

          if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
             begin


              { if not dmGeral.VerifTribItem('S', dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                                 dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text,
                                                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                                 dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').Text,
                                                 'V') then
                      begin
                        Showmessage('A tributação do item não foi encontrada');
                        txtBuscaItem.SetFocus;
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text := '';
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text := '';
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text := '';
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text := '';
                        abort;
                      end;  }

               ChamaCorTamanho;


             end
          else
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := id_item;

          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
             begin
               xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);
             end;

          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
             begin
               xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
             end;

          if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
             begin
               xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
             end;

          dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
        finally
           pnItens.OnExit := pnItensExit;
        end;

        if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean=false) and
            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean=false)) then
            VerificarItemGrid;
     end
  else
     begin
       telaPsqIte := false;
       txtBuscaItem.SetFocus;
     end;


end;

procedure TFAT_FM_M_PED.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;

  if (Key = vk_F2) then
    begin
      if txtFpgEntrada.CanFocus then
         txtFpgEntrada.SetFocus
      else
         begin
           pnItens.OnExit := nil;
           dmGeral.FAT_CD_M_PED_ITE.cancel;
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;

           pnItens.OnExit := pnItensExit;
         end;
    end;

  if (Key = VK_RETURN) and (trim(txtBuscaItem.Text) = '') then
      begin
        if txtFpgEntrada.CanFocus then
           //txtFpgEntrada.SetFocus
        else
           begin
             try
             pnItens.OnExit := nil;
             dmGeral.FAT_CD_M_PED_ITE.cancel;
             ActiveControl := nil;
             PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
             btnGrava.SetFocus;
             finally
                pnItens.OnExit := pnItensExit;
             end;

           end;
      end;

end;

procedure TFAT_FM_M_PED.txtPerDescontoEnter(Sender: TObject);
begin
  inherited;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_PED.txtPerDescontoExit(Sender: TObject);
var
  DescValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     txtQtde.Focused    or txtVlrUnitario.Focused  or
     grdItens.Focused   then
     begin
       abort;
     end;

 { if (not btn_Add_Itens.Focused)  or (not txtBuscaItem.Focused) or
     (not cbbTamanho.Focused)     or (not cbbCor.Focused) or
     (not txtQtde.Focused)        or (not txtVlrDesconto.Focused) or
     (not txtVlrUnitario.Focused)  then
      begin
        abort;
      end; }

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency >
           xPercDescPerm) then
           begin
             try
                pnItens.OnExit := nil;
                ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                             'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) + #13 +
                             'Desconto limite...: ' + FormatFloat('##,##0.00',xPercDescPerm));
             finally
                pnItens.OnExit := pnItensExit;
             end;
           end;
      end;


   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        try
          pnItens.OnExit := nil;
          descValid := dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm);
        finally
          pnItens.OnExit := pnItensExit;
        end;
        if not (descValid) then
           begin
            txtPerDesconto.SetFocus;
            abort;
           end;
      end;
end;

procedure TFAT_FM_M_PED.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_M_PED.txtQtdeEnter(Sender: TObject);
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
  inherited;

 { if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
    begin

      if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                           dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                           saldo_fisico) then
         begin
           if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
              begin
                 Showmessage('O registro de saldo não foi encontrado');
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := '';
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString := '';
                 txtBuscaItem.SetFocus;
                 abort;
              end
           else
              txtSaldo.Text := '0';
         end
      else
         begin
           txtSaldo.Text := saldo_fisico;
         end;

      if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
         begin
           pnItens.Enabled := true;

           id_item       := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
           id_busca_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
           desc          := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
           und           := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString;
           id_cor        := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString;
           id_tamanho    := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString;
           num_lote      := '';
           desc_cor      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
           desc_tam      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;

           dmGeral.FAT_CD_M_PED_ITE.Cancel;

           if dmGeral.LocalizarRegItem(dmGeral.FAT_CD_M_PED_ITE,FAT_FM_M_PED.Name,id_item,id_cor,id_tamanho,
                                               dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,'') then
              begin
                ShowMessage('Item já inserido no pedido de venda.');
                dmGeral.FAT_CD_M_PED_ITE.Insert;
                txtBuscaItem.SetFocus;
                exit;
              end
           else
              begin
                dmGeral.FAT_CD_M_PED_ITE.Insert;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString           := id_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString       := desc;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString  := und;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_cor').AsString            := id_cor;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString       := desc_cor;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString       := desc_tam;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsString              := '';

                dmGeral.BUS_CD_C_ITE.close;
                dmGeral.BUS_CD_C_ITE.Data :=
                      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString]));

                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').Text :=
                        dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

              end;
         end;
    end;     }
end;

procedure TFAT_FM_M_PED.txtQtdeExit(Sender: TObject);
var
  qtdeValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or grdItens.Focused then
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

  try
    pnItens.OnExit := nil;
    qtdeValid := dmGeral.TesValQtde(dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat);
  finally
     pnItens.OnExit := pnItensExit;
  end;

  if not (qtdeValid) then
     begin
       txtQtde.SetFocus;
       abort;
     end
  else
     begin
      { if not dmGeral.FatTestaQtdeIte(1,dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE) then
          begin
            ShowMessage('Produto sem saldo no estoque!');
            txtQtde.SetFocus;
            abort;
          end;   }
     end;

  if txtVlrUnitario.CanFocus then
   begin
    ActiveControl := nil;
    PostMessage(txtVlrUnitario.Handle, WM_SETFOCUS, 0, 0);
    txtVlrUnitario.SetFocus;
   end
 else
   begin
     ActiveControl := nil;
     PostMessage(txtPerDesconto.Handle, WM_SETFOCUS, 0, 0);
     txtPerDesconto.SetFocus;
   end;
end;





procedure TFAT_FM_M_PED.txtQtdeParcExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Pedido de venda sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;

  // Comentado por Maxsuel Victor, 28/10/2016, o código agora funciona no onNewRecord
    //dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_PED_TIT,0,id_seq_titulo);
  dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_PED_TIT,0);

  ExibirFormasPgto;

  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
     begin
      pnTitulos.Enabled := True;
      dmGeral.FAT_CD_M_PED_ITE.edit;
      txtFormaPgto.SetFocus;
     end;


end;

procedure TFAT_FM_M_PED.txtTotalVlrDescEnter(Sender: TObject);
begin
  inherited;
  vlrDescTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtTotalVlrDescExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  perDescMax:boolean;
begin
  inherited;

  if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >=
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
      begin
        ShowMessage('O valor desconto não pode ser maior ou igual total valor bruto.');
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
        exit;
      end;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) then
      begin
         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency >0) then
           begin
            perDesconto := (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency /
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100;
           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
            exit;
          end;
      end;

   try
    dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
      begin
        perDescMax := false;
        FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',perDescMax,true);
        if (perDescMax = true) then
           begin
             ShowMessage('Há algum item com desconto acima do permitido.');
           end;
      end
    else
      begin
        FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',perDescMax,false);
      end;
   finally
     dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
     dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
     dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
     dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
   end;

   FAT_RN_M_PED.fatPedCalcTotal;


  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >0) then
    begin
     btn_Add_itens.Enabled := false;
     grdItens.OnMouseUp := nil;
    end
  else if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency =0) then
     begin
       btn_Add_itens.Enabled := true;
       grdItens.OnMouseUp := grdItensMouseUp;
     end;


end;

procedure TFAT_FM_M_PED.txtVlrUnitarioExit(Sender: TObject);
var
  precoValid:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or
     txtQtde.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if (not btn_Add_Itens.Focused) and (not txtBuscaItem.Focused) and
      (not cbbTamanho.Focused)   and (not cbbCor.Focused) and
      (not txtQtde.Focused)      and (not txtPerDesconto.Focused) and
      (not txtVlrDesconto.Focused) then
      begin
        abort;
      end;


  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITEid_item.AsString]));
  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PEDid_condicao_pag.AsString);

   try
     pnItens.OnExit := nil;
     precoValid := dmGeral.TesValVlrUnitPed(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency);
   finally
     pnItens.OnExit := pnItensExit;
   end;

  if not (precoValid) then
     begin
       if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <=0) then
         begin
          txtVlrUnitario.SetFocus;
          abort;
         end;

       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
           begin
             if FatValidBloqueiaPed('E') then
                begin
                  txtVlrUnitario.SetFocus;
                  abort;
                end;
           end;

     end;
  ActiveControl := nil;
  PostMessage(txtPerDesconto.Handle, WM_SETFOCUS, 0, 0);
  txtPerDesconto.SetFocus;

  //showmessage(GetEnumName(TypeInfo(TDataSetState),integer(dmGeral.FAT_CD_M_PED_ITE.State))); ->  "unit: TypeInfo"
end;

function TFAT_FM_M_PED.VerifCamposPaiObrig: Boolean;
begin
   result := true;

   if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
      begin
        ShowMessage('O campo "Cliente" deve ser preenchido.');
        result := false;
      end;
   if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
      begin
        ShowMessage('O campo "Condição de pagamento" deve ser preenchido.');
        result := false;
      end;
end;
procedure TFAT_FM_M_PED.VerifRestricoes;
var
//  lPonteiroItens: TBookmark;
  lVlrTotTitPrazo: Currency;
begin

  { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    F - Envia para Carga
    G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda)
    H - Produto com desconto acima do limite
  }

  { Caso a venda seja a prazo, o sistema irá somar as formas de pagamento
    que são a prazo e verifica se ultrapassou o limite do cliente.
  }



  dmGeral.FAT_CD_M_PED.FieldByName('ID_USUARIO_LIB').Text          := '';

  if not (pos('G',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
     dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').text  := '';

  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 0;

  fatPedVerifRestricoes;
  //---
 { if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
     begin
        if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
           begin
             lVlrTotTitPrazo := 0;
             //LPonteiroItens  := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
             dmGeral.FAT_CD_M_PED_TIT.First;
             while not dmGeral.FAT_CD_M_PED_TIT.eof do
                begin
                  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);
                  if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
                     begin
                       lVlrTotTitPrazo := lVlrTotTitPrazo + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
                     end;
                  dmGeral.FAT_CD_M_PED_TIT.Next;
                end;
             //dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(lPonteiroItens);
             dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);

             if lVlrTotTitPrazo > 0 then
                begin
                  if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,lVlrTotTitPrazo) then
                     begin
                       if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                          begin
                            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                          end;
                     end
                end;
           end;
     end;


  // Irá verificar se o cliente encontra-se em débito
  if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                           dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)then
     begin
       if not (pos('B',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'B';
          end;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
     begin
       // Verifica se existe item com estoque negativo
       dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);

       if dmGeral.VerifEstNeg(dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,dmGeral.BUS_CD_M_NFE_ITE) then
          begin
               if not (pos('C',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                  begin
                    dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'C';
                  end;
          end;
     end;

  // Irá verificar se o cliente encontra-se com o credito encerrado
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
  if dmGeral.BUS_CD_C_CLI.FieldByName('SITUACAO').AsInteger = 2 then
     begin
       if not (pos('D',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'D';
          end;
     end;
  dmgeral.BUS_CD_C_CLI.close;


   //LPonteiroItens  := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
   dmGeral.FAT_CD_M_PED_ITE.First;
   while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <>
           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
           begin
             if not (pos('E',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                begin
                  dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'E';
                  dmGeral.FAT_CD_M_PED_ITE.Last;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;

    if (dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean = True) then
     begin
       if not (pos('F',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'F';
          end;
     end; }
   //dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(lPonteiroItens);



   if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
        if (dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').Text = '') then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;
           end;
      end;
end;

end.


