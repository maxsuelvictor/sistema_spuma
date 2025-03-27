unit CMP_UN_M_XML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Buttons,
  vcl.wwdblook, Vcl.Mask, vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB, vcl.wwdatsrc, Datasnap.DBClient, ACBrNFe, JvExMask, JvToolEdit,
  JvDBControls, Vcl.DBCtrls,frxClass, JvExStdCtrls, JvCombobox, JvDBCombobox,
  vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, ACBrBase, ACBrDFe;

type
  TCMP_FM_M_XML = class(TForm)
    pnlDados: TPanel;
    pnlDireita: TPanel;
    btnSair: TBitBtn;
    btnAbrir: TcxButton;
    btnGerar: TcxButton;
    grdItens: TwwDBGrid;
    grdTitulos: TwwDBGrid;
    txtNumero: TwwDBEdit;
    txtDescEmitente: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtDataEmissao: TwwDBEdit;
    Label3: TLabel;
    txtSerie: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    cbbTipoTme: TwwDBLookupCombo;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txtNfeChave: TwwDBEdit;
    cdsXmlNotas: TClientDataSet;
    cdsXmlNotasItens: TClientDataSet;
    cdsXmlNotasTitulos: TClientDataSet;
    dsXmlNotas: TwwDataSource;
    dsXmlNotasItens: TwwDataSource;
    dsXmlNotasTitulos: TwwDataSource;
    cdsXmlNotasNOTA_FISCAL: TIntegerField;
    cdsXmlNotasSERIE: TStringField;
    cdsXmlNotasCFOP: TStringField;
    cdsXmlNotasID_TIPO_ESTOQUE: TIntegerField;
    cdsXmlNotasID_CONDICAO_PAG: TIntegerField;
    cdsXmlNotasCHAVE: TStringField;
    cdsXmlNotasItensNOTA_FISCAL: TIntegerField;
    cdsXmlNotasItensSEQ: TIntegerField;
    cdsXmlNotasItensCOD_FABRICA: TStringField;
    cdsXmlNotasItensID_ITEM: TIntegerField;
    cdsXmlNotasItensID_CST_ICMS: TStringField;
    cdsXmlNotasItensID_CFOP: TStringField;
    cdsXmlNotasItensVLR_BRUTO: TCurrencyField;
    cdsXmlNotasItensVLR_LIQUIDO: TCurrencyField;
    cdsXmlNotasVLR_BRUTO: TCurrencyField;
    cdsXmlNotasVLR_LIQUIDO: TCurrencyField;
    Label12: TLabel;
    txtVlrBruto: TwwDBEdit;
    Label13: TLabel;
    txtVlrLiquido: TwwDBEdit;
    cdsXmlNotasCNPJ_EMITENTE: TStringField;
    cdsXmlNotasNOME_EMITENTE: TStringField;
    cdsXmlNotasItensDEC_ITEM: TStringField;
    cdsXmlNotasItensUND: TStringField;
    btnSalvarXmlNfe: TcxButton;
    btnAbriXmlNfe: TcxButton;
    NFE: TACBrNFe;
    odAbreXml: TOpenDialog;
    cdsXmlNotasTitulosNOTA_FISCAL: TIntegerField;
    cdsXmlNotasTitulosID_FORMA_PAG: TIntegerField;
    cdsXmlNotasTitulosID_PLANO: TStringField;
    cdsXmlNotasTitulosDTA_VENCIMENTO: TDateField;
    cdsXmlNotasTitulosVLR_TITULO: TCurrencyField;
    cdsXmlNotasTitulosDESC_FORMA: TStringField;
    cdsXmlNotasTitulosNUM_TITULO: TStringField;
    cdsXmlNotasItensQTDE: TFloatField;
    cdsXmlNotasItensVLR_UNITARIO: TCurrencyField;
    cdsXmlNotasItensVLR_DESCONTO: TCurrencyField;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    cdsXmlNotasItensID_COR: TIntegerField;
    cdsXmlNotasItensID_TAMANHO: TIntegerField;
    cdsXmlNotasItensINT_NOMECOR: TStringField;
    cdsXmlNotasItensINT_NOMETAM: TStringField;
    opAbreXml_Salvo: TOpenDialog;
    Label14: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    cdsXmlNotasID_ALMOXARIFADO: TIntegerField;
    txtCFOP: TJvDBComboEdit;
    btnImprimirEspelho: TBitBtn;
    Label29: TLabel;
    txtCodIqm: TJvDBComboEdit;
    cdsXmlNotasID_IQM: TIntegerField;
    cdsXmlNotasItensNUM_LOTE: TStringField;
    cdsXmlNotasItensID_SEQUENCIA_ITE_IQM: TIntegerField;
    cdsXmlNotasItensID_BUSCA_ITEM: TStringField;
    cdsXmlNotasVLR_ICM_DESC: TCurrencyField;
    Label15: TLabel;
    txtVlrIcmsDesc: TwwDBEdit;
    cdsXmlNotasDTA_EMISSAO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarXmlNfeClick(Sender: TObject);
    procedure btnAbriXmlNfeClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbTipoTmeExit(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtCodFormaPgtoButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbbTipoTmeEnter(Sender: TObject);
    procedure grdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItensCellChanged(Sender: TObject);
    procedure cdsXmlNotasItensID_ITEMChange(Sender: TField);
    procedure cdsXmlNotasItensID_CORChange(Sender: TField);
    procedure cdsXmlNotasItensID_TAMANHOChange(Sender: TField);
    procedure grdTitulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsXmlNotasTitulosID_FORMA_PAGChange(Sender: TField);
    procedure grdTitulosCellChanged(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure grdItensEnter(Sender: TObject);
    procedure grdItensExit(Sender: TObject);
    procedure grdTitulosExit(Sender: TObject);
    procedure grdTitulosEnter(Sender: TObject);
    procedure txtCFOPButtonClick(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure txtCodIqmButtonClick(Sender: TObject);
  private
    { Private declarations }
     xXml,xNota, xItem, xTitulo:string;
     PathXml,PathXmlNota,PathXmlItem,PathXmlTitulo:String;
     abrirXml:boolean;
  public
    { Public declarations }
    procedure HabilPnDados(estado: Boolean);
    procedure AjustarGridItens(grdItens: TwwDbGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
    var
      xAntIdTipoEstoque: String;
      xAntCondicaoPgto:  String;
  end;

var
  CMP_FM_M_XML: TCMP_FM_M_XML;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_COR, PSQ_UN_X_TAM,
  CMP_RN_M_XML, PSQ_UN_X_PCT, PSQ_UN_X_CFO, FAT_UN_M_NFE_IPQ, enSoftMenu;

procedure TCMP_FM_M_XML.AjustarGridItens(grdItens: TwwDbGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
begin
  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth + TamLargCor + TamLargTam);

 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean=true) and
    (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean=true) then
    begin
       grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth - (TamLargCor + TamLargTam));
    end
 else
    begin
       if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
          begin
            grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                     (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargCor);

            grdItens.ColumnByName('int_nometam').Visible   := false;
          end
       else
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true then
                begin
                  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                        (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargTam);
                  grdItens.ColumnByName('int_nomecor').Visible := false;
                end
             else
                begin
                  grdItens.ColumnByName('int_nomecor').Visible     := false;
                  grdItens.ColumnByName('int_nometam').Visible := false;
                end;
          end;
    end;
end;

procedure TCMP_FM_M_XML.btnAbrirClick(Sender: TObject);
var
   i: integer;
begin
  if not cdsXmlNotas.IsEmpty then
     begin
       if MessageDlg('Se continuar os dados da tela serão perdidos.' + #13 +
                      'Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            cdsXmlNotas.delete;
            while not cdsXmlNotasItens.eof do
               cdsXmlNotasItens.delete;
            while not cdsXmlNotasTitulos.eof do
               cdsXmlNotasTitulos.delete;
          end
       else
          begin
            abort;
          end;
     end;


   dmGeral.BUS_CD_C_ITE_XML.Close;
   dmGeral.BUS_CD_C_ITE_XML.Data :=
           dmGeral.BUS_CD_C_ITE_XML.DataRequest(VarArrayOf([0,'','']));

   if  odAbreXml.Execute then
       begin
         cdsXmlNotas.Open;
         cdsXmlNotasItens.Open;
         cdsXmlNotasItens.IndexFieldNames := 'SEQ';

         NFE.NotasFiscais.Clear;
         NFE.NotasFiscais.LoadFromFile(odAbreXml.FileName);


         cdsXmlNotas.Insert;
         cdsXmlNotas.FieldByName('CHAVE').AsString         :=copy(NFE.NotasFiscais.Items[0].NFe.infNfe.ID,4,44);
         cdsXmlNotas.FieldByName('CNPJ_EMITENTE').AsString := NFE.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
         cdsXmlNotas.FieldByName('NOME_EMITENTE').AsString := NFE.NotasFiscais.Items[0].NFe.Emit.xNome;
         cdsXmlNotas.FieldByName('DTA_EMISSAO').AsDateTime     := strtodate(FormatDateTime('DD/MM/YYYY',NFE.NotasFiscais.Items[0].NFe.Ide.dEmi));
         cdsXmlNotas.FieldByName('SERIE').AsString         := IntToStr( NFE.NotasFiscais.Items[0].NFe.Ide.Serie);
         cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString   := IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.nNf);
         cdsXmlNotas.FieldByName('VLR_BRUTO').AsCurrency   := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vProd;
         cdsXmlNotas.FieldByName('VLR_ICM_DESC').AsCurrency := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vICMSDeson;
         cdsXmlNotas.FieldByName('VLR_LIQUIDO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF;

         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
            begin
              cdsXmlNotas.FieldByName('ID_ALMOXARIFADO').AsInteger := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;
            end;

         dmGeral.BusFornecedor(2,cdsXmlNotas.FieldByName('CNPJ_EMITENTE').AsString);
         if dmGeral.BUS_CD_C_FOR.IsEmpty then
            begin
              Showmessage('O fornecedor do XML não foi encontrado no cadastro de forncedor do sistema.');
              dmGeral.BUS_CD_C_FOR.close;
              cdsXmlNotas.Cancel;
              abort;
            end;

         // Itens
         for i := 0 to NFE.NotasFiscais.Items[0].NFe.Det.Count - 1 do
             begin
                cdsXmlNotasItens.Insert;
                cdsXmlNotasItens.FieldByName('NOTA_FISCAL').AsString  :=cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString;
                cdsXmlNotasItens.FieldByName('SEQ').AsInteger         :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.nItem;
                cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString  :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;


                dmGeral.BUS_CD_C_ITE_XML_2.Close;
                dmGeral.BUS_CD_C_ITE_XML_2.Data :=
                dmGeral.BUS_CD_C_ITE_XML_2.DataRequest(VarArrayOf([0,
                        dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString]));

                if not dmGeral.BUS_CD_C_ITE_XML_2.IsEmpty then
                   begin

                     cdsXmlNotasItens.FieldByName('ID_ITEM').AsString :=
                        dmGeral.BUS_CD_C_ITE_XML_2.FieldByName('ID_ITEM').AsString;
                     cdsXmlNotasItens.FieldByName('ID_BUSCA_ITEM').AsString :=
                        cdsXmlNotasItens.FieldByName('ID_ITEM').AsString;
                   end;

                dmGeral.BUS_CD_C_ITE_XML_2.Close;

                if dmGeral.BUS_CD_C_FORregime.AsInteger in [0,1] then
                   begin

                      case strtoint(vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CST)) of
                         0:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '00';
                         1:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '10';
                         2:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '20';
                         3:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '30';
                         4:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '40';
                         5:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '41';
                         6:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '45';
                         7:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '50';
                         8:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '51';
                         9:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '60';
                         10: cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '70';
                         11: cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '80';
                         12: cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '81';
                         13: cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '90';
                      end;
                   end;

                if dmGeral.BUS_CD_C_FORregime.AsInteger = 2 then
                   begin

                      case strtoint(vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CSOSN)) of
                         0:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '';
                         1:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '101';
                         2:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '102';
                         3:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '103';
                         4:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '201';
                         5:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '202';
                         6:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '203';
                         7:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '300';
                         8:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '400';
                         9:  cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '500';
                         10: cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '900';
                      end;
                   end;

               //   cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '900';
              {  if trim(NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP) = '' then
                   begin
                     ShowMessage('Foi encontrado inconsistência no XML!' + #13 +
                                 'O item com código de fábrica: ' + cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString +
                                 ', encontra-se sem CFOP');

                     cdsXmlNotas.Cancel;
                     cdsXmlNotasItens.Cancel;
                     cdsXmlNotasTitulos.Cancel;
                     btnAbrir.SetFocus;
                     abort;
                   end;    }



                dmGeral.BusCfop(0,NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP);
                if not dmGeral.BUS_CD_C_CFO.IsEmpty then
                   begin
                     if trim(dmGeral.BUS_CD_C_CFO.FieldByName('id_cfo_xml').AsString) = ''  then
                        begin
                          Showmessage('Não foi encontrado o cfop correspondente no cadastro do cfop: ' +
                                       NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP + #13 + 'Item: ' +
                                       cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString + ' - ' +
                                       NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd);

                          cdsXmlNotas.Cancel;
                          cdsXmlNotasItens.Cancel;
                          cdsXmlNotasTitulos.Cancel;

                          btnAbrir.SetFocus;
                          abort;
                        end;
                   end;
                //--------------------------------------------------------------

                cdsXmlNotasItens.FieldByName('ID_CFOP').AsString := dmGeral.BUS_CD_C_CFO.FieldByName('id_cfo_xml').AsString;


                // CFOP da tabela PAI
                if trim(cdsXmlNotas.FieldByName('CFOP').Text) = '' then
                   begin
                     cdsXmlNotas.FieldByName('CFOP').AsString := cdsXmlNotasItens.FieldByName('ID_CFOP').AsString;
                   end;

                cdsXmlNotasItens.FieldByName('ID_COR').AsInteger        := 0;
                cdsXmlNotasItens.FieldByName('ID_TAMANHO').AsInteger    := 0;
                cdsXmlNotasItens.FieldByName('VLR_BRUTO').AsCurrency    := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd;
                cdsXmlNotasItens.FieldByName('VLR_UNITARIO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vUnCom;
                cdsXmlNotasItens.FieldByName('VLR_LIQUIDO').AsCurrency  := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd -
                                                                           NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vDesc;
                cdsXmlNotasItens.FieldByName('VLR_DESCONTO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vDesc;
                cdsXmlNotasItens.FieldByName('QTDE').AsFloat            := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.qCom;
                cdsXmlNotasItens.FieldByName('DEC_ITEM').AsString       := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
                cdsXmlNotasItens.FieldByName('UND').AsString            := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.uCom;
                cdsXmlNotasItens.Post;
                dmGeral.BUS_CD_C_CFO.Close;
             end;
         cdsXmlNotasItens.First;

         // Títulos
         for i := 0 to NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
           begin
              cdsXmlNotasTitulos.Insert;
              cdsXmlNotasTitulos.FieldByName('NOTA_FISCAL').AsString      := cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString;
              cdsXmlNotasTitulos.FieldByName('DTA_VENCIMENTO').AsDateTime := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
              cdsXmlNotasTitulos.FieldByName('VLR_TITULO').AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
              cdsXmlNotasTitulos.FieldByName('NUM_TITULO').AsString       := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup;
              cdsXmlNotasTitulos.Post;
           end;
       end;

   abrirXml := true;
   HabilPnDados(true);


   btnSalvarXmlNfe.Enabled := true;
   btnAbriXmlNfe.Enabled   := true;
   btnGerar.Enabled        := true;
    btnImprimirEspelho.Enabled := false;

   cdsXmlNotasItens.Edit;
   cdsXmlNotasTitulos.Edit;
   txtCfop.SetFocus;

end;

procedure TCMP_FM_M_XML.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCMP_FM_M_XML.cbbTipoTmeEnter(Sender: TObject);
begin
  dmGeral.BusTipoEstoque(4,'0');
  cbbTipoTme.DropDown;
end;

procedure TCMP_FM_M_XML.cbbTipoTmeExit(Sender: TObject);
begin

  if btnAbriXmlNfe.Focused or
     btnSalvarXmlNfe.Focused or
     btnGerar.Focused or
     btnAbrir.Focused or btnSair.Focused then
     begin
       exit;
     end;

  if trim(cdsXmlNotas.FieldByName('ID_TIPO_ESTOQUE').text) = '' then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;

  if xAntIdTipoEstoque <> '' then
     begin
        if xAntIdTipoEstoque <> cdsXmlNotas.FieldByName('ID_TIPO_ESTOQUE').text then
           begin
             if not cdsXmlNotasItens.IsEmpty then
                begin
                  ShowMessage('Já existe produtos lançado nesta nota fiscal, alteração do tipo de estoque não permitida!');
                  cdsXmlNotas.FieldByName('ID_TIPO_ESTOQUE').Value := xAntIdTipoEstoque;
                  Abort;
                end;
           end;
     end;

  dmGeral.BusTipoEstoque(0,cdsXmlNotas.FieldByName('ID_TIPO_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;

  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
     begin
       ShowMessage('Tipo de movimento de estoque deve ser do tipo "Entrada"!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;


  if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,2]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal" ou de "Transferência"!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;
end;

procedure TCMP_FM_M_XML.cdsXmlNotasItensID_CORChange(Sender: TField);
begin
  {if cdsXmlNotasItens.FieldByName('ID_COR').AsString <> '' then
     begin
        if cdsXmlNotasItens.FieldByName('ID_COR').AsInteger > 0 then
           begin
              dmGeral.BusCor(0,cdsXmlNotasItens.FieldByName('ID_COR').Text);
              if dmGeral.BUS_CD_C_COR.IsEmpty then
                 begin
                   Showmessage('Cor não encontrada.');
                   cdsXmlNotasItensID_COR.OnChange := nil;
                   cdsXmlNotasItens.FieldByName('ID_COR').Text := '';
                   cdsXmlNotasItens.FieldByName('INT_NOMECOR').Text := '';
                   cdsXmlNotasItensID_COR.OnChange := cdsXmlNotasItensID_CORChange;
                   exit;
                 end;

              if not dmGeral.BUS_CD_C_COR.IsEmpty then
                 begin
                   cdsXmlNotasItens.FieldByName('INT_NOMECOR').AsString :=
                        dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
                 end;
              dmGeral.BUS_CD_C_COR.Close;
           end;
     end; }
end;

procedure TCMP_FM_M_XML.cdsXmlNotasItensID_ITEMChange(Sender: TField);
begin
   {if cdsXmlNotasItens.FieldByName('ID_ITEM').AsString <> '' then
     begin
        dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, cdsXmlNotasItens.FieldByName('ID_ITEM').AsString]));

        if dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             ShowMessage('Item não cadastrado.');
             cdsXmlNotasItensID_ITEM.OnChange := nil;
             cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := '';
             cdsXmlNotasItensID_ITEM.OnChange := cdsXmlNotasItensID_ITEMChange;
             dmGeral.BUS_CD_C_ITE.close;
             exit;
           end
         else
           begin
             dmGeral.BusFornecedor(2,cdsXmlNotas.FieldByName('CNPJ_EMITENTE').AsString);
             if not dmGeral.BUS_CD_C_FOR.IsEmpty then
               begin
                 if  ((dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString = cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString) and
                        (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FORNECEDOR').AsString = dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString)) then
                   begin
                      dmGeral.BUS_CD_C_ITE_XML_2.Close;
                      dmGeral.BUS_CD_C_ITE_XML_2.Data :=
                      dmGeral.BUS_CD_C_ITE_XML_2.DataRequest(VarArrayOf([0,
                      dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString]));
                      if dmGeral.BUS_CD_C_ITE_XML_2.IsEmpty then
                        begin
                          dmGeral.BUS_CD_C_ITE_XML.Insert;
                          dmGeral.BUS_CD_C_ITE_XMLid_item.AsInteger     := cdsXmlNotasItens.FieldByName('ID_ITEM').AsInteger;
                          dmGeral.BUS_CD_C_ITE_XMLid_emitente.AsInteger := dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
                          dmGeral.BUS_CD_C_ITE_XMLid_fabrica.AsString   := cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString;
                          dmGeral.BUS_CD_C_ITE_XML.Post;
                        end;
                      dmGeral.BUS_CD_C_ITE_XML_2.Close;
                   end
                 else
                   begin
                     ShowMessage('Os dados do item cadastrado não conferem com os dados do XML.');
                     cdsXmlNotasItensID_ITEM.OnChange := nil;
                     cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := '';
                     cdsXmlNotasItensID_ITEM.OnChange := cdsXmlNotasItensID_ITEMChange;
                     dmGeral.BUS_CD_C_ITE.close;
                     exit;
                   end;
               end
             else
               begin
                  ShowMessage('Fornecedor não cadastrado.');
                  cdsXmlNotasItensID_ITEM.OnChange := nil;
                  cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := '';
                  cdsXmlNotasItensID_ITEM.OnChange := cdsXmlNotasItensID_ITEMChange;
                  dmGeral.BUS_CD_C_ITE.close;
                  exit;
               end;
           end;
     end; }


   if cdsXmlNotasItens.FieldByName('ID_ITEM').AsString <> '' then
      begin
        dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, cdsXmlNotasItens.FieldByName('ID_ITEM').AsString]));

        if dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             ShowMessage('Item não encontrado.');
             cdsXmlNotasItensID_ITEM.OnChange := nil;
             cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := '';
             cdsXmlNotasItensID_ITEM.OnChange := cdsXmlNotasItensID_ITEMChange;
             dmGeral.BUS_CD_C_ITE.close;
             exit;
           end;

        dmGeral.BusFornecedor(2,cdsXmlNotas.FieldByName('CNPJ_EMITENTE').AsString);

        dmGeral.BUS_CD_C_ITE_XML_2.Close;
        dmGeral.BUS_CD_C_ITE_XML_2.Data :=
        dmGeral.BUS_CD_C_ITE_XML_2.DataRequest(VarArrayOf([0,
                dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString]));
        if dmGeral.BUS_CD_C_ITE_XML_2.IsEmpty then
           begin
             dmGeral.BUS_CD_C_ITE_XML.Insert;
             dmGeral.BUS_CD_C_ITE_XMLid_item.AsInteger     := cdsXmlNotasItens.FieldByName('ID_ITEM').AsInteger;
             dmGeral.BUS_CD_C_ITE_XMLid_emitente.AsInteger := dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
             dmGeral.BUS_CD_C_ITE_XMLid_fabrica.AsString   := cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString;
             dmGeral.BUS_CD_C_ITE_XML.Post;
           end;
        dmGeral.BUS_CD_C_ITE_XML_2.Close;
      end;
end;

procedure TCMP_FM_M_XML.cdsXmlNotasItensID_TAMANHOChange(Sender: TField);
begin
  { if cdsXmlNotasItens.FieldByName('ID_TAMANHO').AsString <> '' then
      begin
         if cdsXmlNotasItens.FieldByName('ID_TAMANHO').AsInteger > 0 then
             begin
               dmGeral.BusTamanho(0,cdsXmlNotasItens.FieldByName('ID_TAMANHO').Text);
               if dmGeral.BUS_CD_C_TAM.IsEmpty then
                  begin
                    Showmessage('Tamanho não encontrado.');
                    cdsXmlNotasItensID_TAMANHO.OnChange := nil;
                    cdsXmlNotasItens.FieldByName('ID_TAMANHO').Text := '';
                    cdsXmlNotasItens.FieldByName('INT_NOMETAM').Text := '';
                    cdsXmlNotasItensID_TAMANHO.OnChange := cdsXmlNotasItensID_TAMANHOChange;
                    exit;
                  end;

               if not dmGeral.BUS_CD_C_TAM.IsEmpty then
                 begin
                   cdsXmlNotasItens.FieldByName('INT_NOMETAM').AsString :=
                        dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
                 end;
               dmGeral.BUS_CD_C_TAM.Close;
             end;
      end;  }
end;

procedure TCMP_FM_M_XML.cdsXmlNotasTitulosID_FORMA_PAGChange(Sender: TField);
begin
 if cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').AsString <> '' then
     begin
       cdsXmlNotasTitulos.FieldByName('DESC_FORMA').Text := '';
       cdsXmlNotasTitulos.FieldByName('ID_PLANO').AsString := '';

       dmGeral.BUS_CD_C_FPG.Data :=
               dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([0, cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').Text]));
       if dmGeral.BUS_CD_C_FPG.IsEmpty then
          begin
            ShowMessage('Forma de pagamento não encontrada.');
            cdsXmlNotasTitulosID_FORMA_PAG.OnChange := nil;
            cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').Text := '';
            cdsXmlNotasTitulosID_FORMA_PAG.OnChange := cdsXmlNotasTitulosID_FORMA_PAGChange;
            exit;
          end;

       if not dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
         begin
           ShowMessage('Só é permitido forma de pagamento do tipo "A prazo".');
           cdsXmlNotasTitulosID_FORMA_PAG.OnChange := nil;
           cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').text := '';
           cdsXmlNotasTitulosID_FORMA_PAG.OnChange := cdsXmlNotasTitulosID_FORMA_PAGChange;
           exit;
          end;

       if not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4]) then
         begin
           ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória ou Boleto.');
           cdsXmlNotasTitulosID_FORMA_PAG.OnChange := nil;
           cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').text := '';
           cdsXmlNotasTitulosID_FORMA_PAG.OnChange := cdsXmlNotasTitulosID_FORMA_PAGChange;
           exit;
         end;

       cdsXmlNotasTitulos.FieldByName('DESC_FORMA').AsString    :=
              dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
       cdsXmlNotasTitulos.FieldByName('ID_PLANO').AsString := trim(dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').AsString);
       dmGeral.BUS_CD_C_FPG.Close;
     end;
end;

procedure TCMP_FM_M_XML.btnSalvarXmlNfeClick(Sender: TObject);
var
  path: String;
begin

  xNota  := 'xml_Nota'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xItem  := 'xml_Item'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xTitulo := 'xml_Titulo'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xXml := 'xml_Origem'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';

  path := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada';

  PathXmlNota   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xNota;
  PathXmlItem   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xItem;
  PathXmlTitulo := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xTitulo;
  PathXml := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xXml;

  //Gravar no formato : xmlChave

  try
    if not DirectoryExists(path) then
       begin
         ForceDirectories(Path);
       end;
  except
     on e: exception do
       begin
         ShowMessage(e.Message);
         abort;
       end;
  end;


  try
     cdsXmlNotas.SaveToFile(PathXmlNota);
     cdsXmlNotasItens.SaveToFile(PathXmlItem);
     cdsXmlNotasTitulos.SaveToFile(PathXmlTitulo);
     if abrirXml then
       begin
        CopyFile(PChar(odAbreXml.FileName),PChar(PathXml),true);
       end;
     Showmessage('Arquivo XML gravado com sucesso em:' + #13 + Path);
  except
     on e: exception do
       begin
         ShowMessage(e.Message);
       end;
  end;
end;

procedure TCMP_FM_M_XML.btnAbriXmlNfeClick(Sender: TObject);
var
  path: String;
begin

  if not cdsXmlNotas.IsEmpty then
     begin
       if MessageDlg('Se continuar os dados da tela serão perdidos.' + #13 +
                      'Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            cdsXmlNotas.EmptyDataSet;
            while not cdsXmlNotasItens.eof do
               cdsXmlNotasItens.delete;
            while not cdsXmlNotasTitulos.eof do
               cdsXmlNotasTitulos.delete;
          end
       else
          begin
            abort;
          end;
     end;

  path := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada';
  opAbreXml_Salvo.InitialDir := path;
  if opAbreXml_Salvo.Execute then
     begin
       if opAbreXml_Salvo.FileName = '' then
          begin
            ShowMessage('Nenhum arquivo foi selecionado.');
            abort;
          end;

       if not (pos('xml_Nota',opAbreXml_Salvo.FileName) <> 0) then
          begin
            ShowMessage('Arquivo inválido.' + #13 + 'É preciso que abra o arquivo iniciado com: "xml_Nota..."');
            abort;
          end;

       xNota   := opAbreXml_Salvo.FileName;
       xItem   := StringReplace(xNota,'xml_Nota','xml_Item',[rfReplaceAll]);
       xTitulo := StringReplace(xNota,'xml_Nota','xml_Titulo',[rfReplaceAll]);
       xXml := StringReplace(xNota,'xml_Nota','xml_Origem',[rfReplaceAll]);

       PathXmlNota   := xNota;
       PathXmlItem   := xItem;
       PathXmlTitulo := xTitulo;
       PathXml := xXml;

       NFE.NotasFiscais.Clear;
       NFE.NotasFiscais.LoadFromFile(xXml);

       cdsXmlNotas.LoadFromFile(PathXmlNota);
       cdsXmlNotasItens.LoadFromFile(PathXmlItem);
       cdsXmlNotasTitulos.LoadFromFile(PathXmlTitulo);

       cdsXmlNotasItens.First;
       abrirXml := false;
       //Inseri estas intruções seguintes. Responsavel:Luan. Data: 21/05/2015
       HabilPnDados(true);
       btnSalvarXmlNfe.Enabled := true;
       btnGerar.Enabled := true;
       btnImprimirEspelho.Enabled := false;

       cdsXmlNotas.Edit;
     end;



end;

procedure TCMP_FM_M_XML.btnGerarClick(Sender: TObject);
begin
  CMP_RN_M_XML.CmpValidaNfe(cdsXmlNotas,cdsXmlNotasItens,cdsXmlNotasTitulos);
  CMP_RN_M_XML.CmpValidaNfeIte(cdsXmlNotasItens);
  CMP_RN_M_XML.CmpValidaNfeTit(cdsXmlNotasTitulos);
  CMP_RN_M_XML.GravarDadosNaNfe(0,cdsXmlNotas,cdsXmlNotasItens,cdsXmlNotasTitulos,NFE);
  btnImprimirEspelho.Enabled := true;
  cdsXmlNotas.Edit;
end;

procedure TCMP_FM_M_XML.btnImprimirEspelhoClick(Sender: TObject);
var
  PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FAT_CD_M_NFE.IsEmpty then
      begin
        {codigo := dmGeral.FAT_CD_M_NFEid_fiscal.text;
        dmGeral.FAT_CD_M_NFE.Close;
        dmGeral.FAT_CD_M_NFE.Data :=
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,'E',codigo]));}

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(dmGeral.EST_FR_M_NFE.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,CMP_FM_M_XML.Name,xCodLme,xRevLme,nil);
        dmGeral.EST_FR_M_NFE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        dmGeral.EST_FR_M_NFE.PrepareReport();
        dmGeral.EST_FR_M_NFE.ShowReport();
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TCMP_FM_M_XML.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FreeAndNil(CMP_FM_M_XML);
end;

procedure TCMP_FM_M_XML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TCMP_FM_M_XML.FormResize(Sender: TObject);
begin
  pnlDados.top := (CMP_FM_M_XML.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (CMP_FM_M_XML.Width div 2) - (pnlDados.width div 2);
end;

procedure TCMP_FM_M_XML.FormShow(Sender: TObject);
begin

 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);

 dmGeral.BUS_CD_C_ITE_XML.Close;
 dmGeral.BUS_CD_C_ITE_XML.Data :=
         dmGeral.BUS_CD_C_ITE_XML.DataRequest(VarArrayOf([0,'','']));

 abrirXml := false;

 HabilPnDados(false);

 dmGeral.BusAlmox(1,'%');
 dmGeral.BusTipoEstoque(4,'0');
 dmGeral.BusCondPgto(2,'%');

 btnSalvarXmlNfe.Enabled := false;
 btnAbriXmlNfe.Enabled   := true;
 btnGerar.Enabled        := false;
 btnImprimirEspelho.Enabled := false;

 cdsXmlNotas.CreateDataSet;
 cdsXmlNotasItens.CreateDataSet;;
 cdsXmlNotasTitulos.CreateDataSet;;

 AjustarGridItens(grdItens,'dec_item',13,7);

 if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
    begin
      cbbAlmoxarifado.Enabled := False;
      cbbAlmoxarifado.Color   := $00DADADA;
    end;

 txtCodIqm.Visible := false;
 if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
    begin
      txtCodIqm.Visible := true;
    end;

 btnAbrir.SetFocus;
end;

procedure TCMP_FM_M_XML.grdItensCellChanged(Sender: TObject);
begin
  if not ( (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_ITEM') or
           (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_COR') or
           (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_TAMANHO') ) then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

{  if grdItens.Columns[grdItens.SelectedIndex].FieldName =  'COD_FABRICA' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =  'ID_CST_ICMS' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'ID_CFOP' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'VLR_BRUTO' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'int_nometam' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'qtde' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'vlr_total' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;                                                      }
end;

procedure TCMP_FM_M_XML.grdItensEnter(Sender: TObject);
begin
  CMP_FM_M_XML.KeyPreview := false;
end;

procedure TCMP_FM_M_XML.grdItensExit(Sender: TObject);
begin
  CMP_FM_M_XML.KeyPreview := true;
end;

procedure TCMP_FM_M_XML.grdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_CFOP' then
          begin
            if cdsXmlNotasItens.eof then
               cdsXmlNotasItens.First
            else
               cdsXmlNotasItens.Next;
            cdsXmlNotasItens.Edit;
            grdItens.SelectedIndex := 0;
            {if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
               (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                grdItens.SelectedIndex := 1 // Primeiro indique qual coluna do grid voce quer se posicionar.
            else
                begin
                  if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) or
                     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                      grdItens.SelectedIndex := 5 // Primeiro indique qual coluna do grid voce quer se posicionar.
                  else
                      grdItens.SelectedIndex := 4 // Primeiro indique qual coluna do grid voce quer se posicionar.
                end;}

            grdItens.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;
 if key = vk_f3 then
     begin
       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_ITEM' then
          begin
             PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
             PSQ_FM_X_ITE.ShowModal;
                if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
                   begin
                     cdsXmlNotasItens.edit;
                     cdsXmlNotasItens.FieldByName('ID_ITEM').AsInteger :=
                         PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                   end;
             PSQ_FM_X_ITE.Free;
          end;

       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'INT_NOMECOR' then
          begin
             PSQ_FM_X_COR := TPSQ_FM_X_COR.Create(Self);
             PSQ_FM_X_COR.ShowModal;
                if not PSQ_FM_X_COR.BUS_CD_C_COR.IsEmpty then
                   begin
                     cdsXmlNotasItens.edit;
                     cdsXmlNotasItens.FieldByName('ID_COR').AsInteger :=
                         PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger;

                     cdsXmlNotasItens.FieldByName('INT_NOMECOR').AsString :=
                         PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
                   end;
             PSQ_FM_X_COR.Free;
          end;

       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'INT_NOMETAM' then
          begin
             PSQ_FM_X_TAM := TPSQ_FM_X_TAM.Create(Self);
             PSQ_FM_X_TAM.ShowModal;
                if not PSQ_FM_X_TAM.BUS_CD_C_TAM.IsEmpty then
                   begin
                     cdsXmlNotasItens.edit;
                     cdsXmlNotasItens.FieldByName('ID_TAMANHO').AsInteger :=
                         PSQ_FM_X_TAM.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsInteger;

                     cdsXmlNotasItens.FieldByName('INT_NOMETAM').AsString :=
                         PSQ_FM_X_TAM.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
                   end;
             PSQ_FM_X_TAM.Free;
          end;


       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_CFOP' then
          begin
             PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
             PSQ_FM_X_CFO.ShowModal;
                if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
                   begin
                     cdsXmlNotasItens.edit;
                     cdsXmlNotasItens.FieldByName('ID_CFOP').AsString :=
                         PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
                   end;
             PSQ_FM_X_CFO.Free;
          end;
     end;
end;

procedure TCMP_FM_M_XML.grdTitulosCellChanged(Sender: TObject);
begin
  grdTitulos.Options :=
      [dgEditing,dgTitles,dgIndicator,dgColumnResize,
       dgColLines,dgRowLines,dgTabs,dgConfirmDelete,
       dgCancelOnExit,dgWordWrap];

 if not (grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'ID_FORMA_PAG') then
     begin
       grdTitulos.Options :=
        [dgTitles,dgIndicator,dgColumnResize,
         dgColLines,dgRowLines,dgTabs,dgConfirmDelete,
         dgCancelOnExit,dgWordWrap];
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TCMP_FM_M_XML.grdTitulosEnter(Sender: TObject);
begin
  CMP_FM_M_XML.KeyPreview := false;
end;

procedure TCMP_FM_M_XML.grdTitulosExit(Sender: TObject);
begin
  CMP_FM_M_XML.KeyPreview := true;
end;

procedure TCMP_FM_M_XML.grdTitulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = vk_return then
     begin
       if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'VLR_TITULO' then
          begin
            if cdsXmlNotasTitulos.eof then
               cdsXmlNotasTitulos.First
            else
               cdsXmlNotasTitulos.Next;
            cdsXmlNotasTitulos.Edit;
            grdTitulos.SelectedIndex := 0;

           { grdTitulos.Options :=
                [dgEditing,dgTitles,dgIndicator,dgColumnResize,
                 dgColLines,dgRowLines,dgTabs,dgConfirmDelete,
                 dgCancelOnExit,dgWordWrap];}
            grdTitulos.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;

  if key = vk_f3 then
     begin
        if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'ID_PLANO' then
           begin
             PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
             PSQ_FM_X_PCT.ShowModal;
             if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
                begin
                  cdsXmlNotasTitulos.edit;
                  cdsXmlNotasTitulos.FieldByName('ID_PLANO').AsString :=
                     PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
                 
                end;
            PSQ_FM_X_PCT.Free;
           end;
     end;

  if key = vk_f3 then
     begin
       if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'ID_FORMA_PAG' then
          begin
             PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);
             PSQ_FM_X_FPG.ShowModal;
                if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
                   begin
                     cdsXmlNotasTitulos.edit;
                     cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').AsInteger :=
                         PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger;

                   end;
             PSQ_FM_X_FPG.Free;
          end;
     end;
end;

procedure TCMP_FM_M_XML.HabilPnDados(estado: Boolean);
begin
  pnlDados.Enabled := estado;
end;

procedure TCMP_FM_M_XML.txtCFOPButtonClick(Sender: TObject);
begin
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.ShowModal;
      if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
         begin
           cdsXmlNotas.FieldByName('CFOP').AsString :=
                PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
         end;
   PSQ_FM_X_CFO.Free;
end;

procedure TCMP_FM_M_XML.txtCodFormaPgtoButtonClick(Sender: TObject);
begin

   PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);
   PSQ_FM_X_FPG.ShowModal;
   if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
      begin
         cdsXmlNotasTitulos.Edit;
         cdsXmlNotasTitulos.FieldByName('ID_FORMA_PAG').AsInteger :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger;

         cdsXmlNotasTitulos.FieldByName('DESC_FORMA').Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
      end;
   PSQ_FM_X_FPG.Free;
end;

procedure TCMP_FM_M_XML.txtCodIqmButtonClick(Sender: TObject);
begin
  if cdsXmlNotas.IsEmpty then
     begin
       ShowMessage('O XML da nota fiscal não foi importado ainda.');
       abort;
     end;

  if (trim(cdsXmlNotas.FieldByName('NOME_EMITENTE').Text) = '') then
     begin
       ShowMessage('O campo "Emitente" está vazio.');
       abort;
     end;

  if (trim(cdsXmlNotas.FieldByName('NOTA_FISCAL').text) = '') then
      begin
        ShowMessage('O campo "Nota Fiscal" está vazio.');
        abort;
      end;

  cdsXmlNotasItens.Cancel;
  if cdsXmlNotasItens.IsEmpty then
     begin
       ShowMessage('Para importar a "Inspeção" é necessário que exista pelo menos 1 item no Grid de Itens.');
       abort;
     end;

  Application.CreateForm(TFAT_FM_M_NFE_IPQ,FAT_FM_M_NFE_IPQ);
  FAT_FM_M_NFE_IPQ.xOriChamada := 1;
  FAT_FM_M_NFE_IPQ.ShowModal;
  FAT_FM_M_NFE_IPQ.Free;

  if not dmGeral.BUS_CD_M_IQM.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger := dmGeral.BUS_CD_M_IQMid_iqm.AsInteger;
     end;
  txtCodIqm.SetFocus;
end;

procedure TCMP_FM_M_XML.txtItemButtonClick(Sender: TObject);
begin
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           cdsXmlNotasItens.edit;
           cdsXmlNotasItens.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

        //   cdsXmlNotasItens.FieldByName('DESC_ITEM').Text :=
        //      PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;

end;

procedure TCMP_FM_M_XML.txtItemExit(Sender: TObject);
begin

 { cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := '';

  if txtItem.Text <> '' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
               dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));
       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
            ShowMessage('Item não encontrado.');
            txtItem.SetFocus;
            exit;
          end;

       cdsXmlNotasItens.FieldByName('ID_ITEM').AsString := txtItem.Text;
     end    }

end;



procedure TCMP_FM_M_XML.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbAlmoxarifado.DropDown;
     end;
end;

procedure TCMP_FM_M_XML.cbbAlmoxarifadoExit(Sender: TObject);
begin

  if btnAbriXmlNfe.Focused or
     btnSalvarXmlNfe.Focused or
     btnGerar.Focused or
     btnAbrir.Focused or btnSair.Focused then
     begin
       exit;
     end;

  if cdsXmlNotas.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser preenchido.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

  dmGeral.BusAlmox(0,cdsXmlNotas.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;
end;



procedure TCMP_FM_M_XML.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  grdTitulos.Enabled := true;

  if cdsXmlNotas.FieldByName('ID_CONDICAO_PAG').text <> '' then
     xAntCondicaoPgto := cdsXmlNotas.FieldByName('ID_CONDICAO_PAG').text;

  dmGeral.BusCondPgto(2,'%');
  cbbCondicaoPagamento.DropDown;
end;

procedure TCMP_FM_M_XML.cbbCondicaoPagamentoExit(Sender: TObject);
begin

  if btnAbriXmlNfe.Focused or
     btnSalvarXmlNfe.Focused or
     btnGerar.Focused or
     btnAbrir.Focused or btnSair.Focused then
     begin
       exit;
     end;

  if cdsXmlNotas.FieldByName('ID_CONDICAO_PAG').text = '' then
     begin
       Showmessage('O campo "Condição de pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       abort;
     end;

  dmGeral.BusCondPgto(0,cdsXmlNotas.FieldByName('ID_CONDICAO_PAG').text);

  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrada!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end;

  if not (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [1,2]) then // A prazo ou Sem pagamento
     begin
       ShowMessage('Condição de pagamento deve ser do tipo "A prazo" ou "Sem pagamentos"!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end
  else
     begin
       if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then
          begin
             cdsXmlNotasTitulos.Cancel;
             if not cdsXmlNotasTitulos.IsEmpty then
                begin
                  if MessageDlg('Existe títulos lançado na na nota fiscal.' + #13 +
                               'Se continuar os títulos serão apagados.' + #13 +
                               'Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      cdsXmlNotasTitulos.First;
                      while not cdsXmlNotasTitulos.Eof do
                         begin
                           cdsXmlNotasTitulos.Delete;
                         end;
                      grdTitulos.Enabled := false;
                    end
                  else
                    begin
                      if xAntCondicaoPgto <> '' then
                         begin
                           cdsXmlNotas.FieldByName('ID_CONDICAO_PAG').text := xAntCondicaoPgto;
                         end;
                    end;
                end
             else
                begin
                  grdTitulos.Enabled := false;
                end;
          end;
     end;
end;

end.
