unit CSU_UN_C_ILC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Datasnap.DBClient,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, JvToolEdit, Vcl.Mask, JvExMask,
  Vcl.ComCtrls, JvgPage, frxClass, frxDBSet, Vcl.Buttons;

type
  TCSU_FM_C_ILC = class(TPAD_FM_X_FRM)
    txtCliente: TJvComboEdit;
    Label3: TLabel;
    txtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtPriCompra: TEdit;
    txtUltCompra: TEdit;
    txtQtdPedFat: TEdit;
    txtQtdPedCanc: TEdit;
    txtQtdPedRep: TEdit;
    txtTotalCompra: TEdit;
    dsTitPrestAberto: TDataSource;
    Button1: TButton;
    cdsOFPrestCtaAbert: TClientDataSet;
    cdsOFPrestCtaAbertid_ors: TIntegerField;
    cdsOFPrestCtaAbertdta_emissao: TDateField;
    cdsOFPrestCtaAbertid_pedido: TIntegerField;
    cdsOFPrestCtaAbertvlr_liquido: TFMTBCDField;
    cdsOFPrestCtaAbertvlr_saldo: TFMTBCDField;
    dsOFPrestCtaAbert: TDataSource;
    cdsTitPrestacAbert: TClientDataSet;
    cdsTitPrestacAbertpedido: TIntegerField;
    cdsTitPrestacAbertrepresentante: TWideStringField;
    cdsTitPrestacAbertof: TIntegerField;
    cdsTitPrestacAbertdta_emissao: TDateField;
    cdsTitPrestacAbertdta_vencimento: TDateField;
    cdsTitPrestacAbertforma_pagamento: TWideStringField;
    cdsTitPrestacAbertnum_parcela: TWideStringField;
    cdsTitPrestacAbertvlr_liquido_of: TFMTBCDField;
    cdsTitPrestacAbertvlr_parcela: TFMTBCDField;
    cdsTitPrestacAbertvlr_saldo: TFMTBCDField;
    Label10: TLabel;
    txtMenorCompra: TEdit;
    Label11: TLabel;
    txtMaiorCompra: TEdit;
    CSU_FR_C_ILC: TfrxReport;
    CSU_FD_C_OFPrestAbert: TfrxDBDataset;
    CSU_FD_C_TitPrestAbert: TfrxDBDataset;
    btnImprimir: TBitBtn;
    ScrollBox1: TScrollBox;
    Label21: TLabel;
    grdOFsPrestCtaAberto: TwwDBGrid;
    Label8: TLabel;
    txtVlrOFPrestCtaAberto: TEdit;
    Label9: TLabel;
    wwDBGrid1: TwwDBGrid;
    cdsTotTitAberto: TClientDataSet;
    dsTotTitAberto: TDataSource;
    wwDBGrid2: TwwDBGrid;
    Label12: TLabel;
    cdsTotTitAbertodescricao: TWideStringField;
    cdsTotTitAbertonum_parcela: TWideStringField;
    cdsTotTitAbertodta_vencimento: TDateField;
    cdsTotTitAbertovlr_saldo: TFMTBCDField;
    cdsTotTitAbertosituacao_chq: TWideStringField;
    cdsTotTitAbertoid_ors: TIntegerField;
    Label13: TLabel;
    txtTotTitAberto: TEdit;
    CSU_FD_C_TitAberto: TfrxDBDataset;
    Label14: TLabel;
    txtTotalCompraPago: TEdit;
    BUS_CD_M_ILC_RBX_TIT: TClientDataSet;
    BUS_CD_M_ILC_RBX_GER: TClientDataSet;
    BUS_CD_M_ILC_RBX_TITid_pedido: TIntegerField;
    BUS_CD_M_ILC_RBX_TITid_ors: TIntegerField;
    BUS_CD_M_ILC_RBX_TITdta_emissao: TDateField;
    BUS_CD_M_ILC_RBX_TITvlr_liquido: TFMTBCDField;
    BUS_CD_M_ILC_RBX_TITid_baixa: TIntegerField;
    BUS_CD_M_ILC_RBX_TITid_titulo: TIntegerField;
    BUS_CD_M_ILC_RBX_TITnum_parcela: TWideStringField;
    BUS_CD_M_ILC_RBX_TITdta_pagamento: TDateField;
    BUS_CD_M_ILC_RBX_TITvlr_desconto: TFMTBCDField;
    BUS_CD_M_ILC_RBX_TITvlr_pagamento: TFMTBCDField;
    BUS_CD_M_ILC_RBX_GERid_baixa: TIntegerField;
    BUS_CD_M_ILC_RBX_GERid_controle: TIntegerField;
    BUS_CD_M_ILC_RBX_GERvlr_pagamento: TFMTBCDField;
    BUS_CD_M_ILC_RBX_GERdta_vencimento: TDateField;
    BUS_CD_M_ILC_RBX_GERche_conta: TIntegerField;
    BUS_CD_M_ILC_RBX_GERche_cheque: TIntegerField;
    BUS_CD_M_ILC_RBX_GERche_banco: TWideStringField;
    BUS_CD_M_ILC_RBX_GERche_emitente: TWideStringField;
    BUS_CD_M_ILC_RBX_GERche_agencia: TWideStringField;
    BUS_DS_M_ILC_RBX_TIT: TDataSource;
    BUS_DS_M_ILC_RBX_GER: TDataSource;
    BUS_FD_M_ILC_RBX_TIT: TfrxDBDataset;
    BUS_FD_M_ILC_RBX_GER: TfrxDBDataset;
    BUS_CD_M_ILC_RBX_TITdta_vencimento: TDateField;
    BUS_CD_M_ILC_RBX_PED: TClientDataSet;
    BUS_DS_M_ILC_RBX_PED: TDataSource;
    BUS_CD_M_ILC_RBX_PEDid_pedido: TIntegerField;
    BUS_CD_M_ILC_RBX_PEDBUS_SQ_M_ILC_RBX_TIT: TDataSetField;
    BUS_FD_M_ILC_RBX_PED: TfrxDBDataset;
    BUS_CD_M_ILC_RBX_TITvlr_parcela: TFMTBCDField;
    BUS_CD_M_ILC_RBX_TITforma_pag: TWideStringField;
    BUS_CD_M_ILC_RBX_TITforma_pag_rbx: TWideStringField;
    BUS_CD_M_ILC_RBX_PEDBUS_SQ_M_ILC_RBX_GER: TDataSetField;
    BUS_CD_M_ILC_RBX_PEDid_ors: TIntegerField;
    BUS_CD_M_ILC_RBX_PEDdta_emissao: TDateField;
    BUS_CD_M_ILC_RBX_PEDvlr_liquido: TFMTBCDField;
    BUS_CD_M_ILC_RBX_PEDdesc_cpg: TWideStringField;
    Label16: TLabel;
    txtPedidoDigitados: TEdit;
    Label17: TLabel;
    txtPedidoProducao: TEdit;
    cdsSitOFEmAberto: TClientDataSet;
    cdsSitOFEmAbertoid_ors: TIntegerField;
    cdsSitOFEmAbertodta_emissao_of: TDateField;
    cdsSitOFEmAbertoqtde_parcelas_ped: TIntegerField;
    cdsSitOFEmAbertopri_vencimento: TDateField;
    cdsSitOFEmAbertoult_vencimento: TDateField;
    cdsSitOFEmAbertototal_pago: TFMTBCDField;
    cdsSitOFEmAbertototal_a_vencer: TFMTBCDField;
    cdsSitOFEmAbertovlr_liquido_of: TFMTBCDField;
    cdsSitOFEmAbertorepresentante: TStringField;
    cdsSitOFEmAbertoid_pedido: TIntegerField;
    cdsSitOFEmAbertototal_vencido: TFMTBCDField;
    CSU_FR_C_ILC_2: TfrxReport;
    CSU_FD_C_SitOFEmAberto: TfrxDBDataset;
    rgTipoEmissao: TRadioGroup;
    cdsTitPrestacAbertid_baixa: TIntegerField;
    cdsSitOFEmAbertoid_baixa: TIntegerField;
    BUS_CD_M_RBX: TClientDataSet;
    BUS_CD_M_RBX_TIT: TClientDataSet;
    BUS_CD_M_RBXid_baixa: TIntegerField;
    BUS_CD_M_RBXid_empresa: TIntegerField;
    BUS_CD_M_RBXdta_baixa: TDateField;
    BUS_CD_M_RBXvlr_baixa: TFMTBCDField;
    BUS_CD_M_RBXobservacao: TWideStringField;
    BUS_CD_M_RBXvlr_cred_utilizado: TFMTBCDField;
    BUS_CD_M_RBXid_forma_pag: TIntegerField;
    BUS_CD_M_RBXid_abertura: TIntegerField;
    BUS_CD_M_RBXid_cliente: TIntegerField;
    BUS_CD_M_RBXint_nomecli: TWideStringField;
    BUS_CD_M_RBXint_nomefpg: TWideStringField;
    BUS_CD_M_RBXcod_lme: TWideStringField;
    BUS_CD_M_RBXrev_lme: TWideStringField;
    BUS_CD_M_RBXid_conta: TIntegerField;
    BUS_CD_M_RBXid_tipo_financeiro: TIntegerField;
    BUS_CD_M_RBXid_plano: TWideStringField;
    BUS_CD_M_RBXid_ccusto: TIntegerField;
    BUS_CD_M_RBXvlr_saldo_credito: TFMTBCDField;
    BUS_CD_M_RBXvlr_credito_disponivel: TFMTBCDField;
    BUS_CD_M_RBXid_responsavel: TIntegerField;
    BUS_CD_M_RBXdta_lancamento: TDateField;
    BUS_CD_M_RBXint_nomeres: TWideStringField;
    BUS_CD_M_RBXint_nomeccu: TWideStringField;
    BUS_CD_M_RBXid_maquineta: TIntegerField;
    BUS_CD_M_RBXid_recibo: TIntegerField;
    BUS_CD_M_RBXvlr_a_pagar: TFMTBCDField;
    BUS_CD_M_RBXvlr_pago_ger: TFMTBCDField;
    BUS_CD_M_RBXvlr_tot_ger: TFMTBCDField;
    BUS_CD_M_RBXFIN_SQ_M_RBX_TIT: TDataSetField;
    BUS_CD_M_RBX_TITid_baixa: TIntegerField;
    BUS_CD_M_RBX_TITid_titulo: TIntegerField;
    BUS_CD_M_RBX_TITvlr_pagamento: TFMTBCDField;
    BUS_CD_M_RBX_TITvlr_juros: TFMTBCDField;
    BUS_CD_M_RBX_TITvlr_desconto: TFMTBCDField;
    BUS_CD_M_RBX_TITvlr_cred_utilizado: TFMTBCDField;
    BUS_CD_M_RBX_TITvlr_a_pagar: TFMTBCDField;
    BUS_CD_M_RBX_TITvlr_titulo: TFMTBCDField;
    BUS_CD_M_RBX_TITatraso: TIntegerField;
    BUS_CD_M_RBX_TITid_conta: TIntegerField;
    BUS_CD_M_RBX_TITvlr_restante: TFMTBCDField;
    BUS_CD_M_RBX_TITdta_vencimento: TDateField;
    BUS_CD_M_RBX_TITper_desconto: TFloatField;
    BUS_CD_M_RBX_TITnum_parcela: TWideStringField;
    BUS_CD_M_RBX_TITint_numeronf: TIntegerField;
    BUS_CD_M_RBX_TITdta_novo_venc: TDateField;
    BUS_CD_M_RBX_TITint_historico: TWideStringField;
    BUS_CD_M_RBX_TITint_id_ors: TIntegerField;
    BUS_CD_M_RBX_TITint_id_pedido: TIntegerField;
    BUS_CD_M_RBX_TITint_id_forma_pag: TIntegerField;
    BUS_CD_M_RBX_TITint_fpg_sgq_presta_conta: TBooleanField;
    BUS_CD_M_RBXint_doc_impresso: TIntegerField;
    BUS_CD_M_RBX_TITint_dta_emissao_ors: TDateField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure rgTipoEmissaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarDados(IdCliente: String);
    procedure LimparCampos;
    procedure VerifOFComSubstFin;
    var
       dataOFPrestCtaAberto, dataTitPrestAberto, dataTotTitAberto, dataPedQuitado: OleVariant;
  end;

procedure OpenForm(FClass: TFormClass; var Instance);

var
  CSU_FM_C_ILC: TCSU_FM_C_ILC;

implementation

{$R *.dfm}

uses uProxy,uDmGeral, enSoftMenu, PSQ_UN_X_CLI;

{ TCSU_FM_C_ILC }

procedure TCSU_FM_C_ILC.btnImprimirClick(Sender: TObject);
var
  TotalCompra, TotalCompraPago: String;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  TipoRel,txt: String;
begin
   inherited;

   //TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmValorFpg2')).Text  :=  ValorFpg2;

   if rgTipoEmissao.ItemIndex = 1 then
      begin
         CSU_FR_C_ILC.Variables['ft_cliente'] := QuotedStr(txtCliente.text + ' - ' + txtNome.text);
         CSU_FR_C_ILC.Variables['ft_PriCompra'] := QuotedStr(txtPriCompra.text);
         CSU_FR_C_ILC.Variables['ft_UltCompra'] := QuotedStr(txtUltCompra.text);
         CSU_FR_C_ILC.Variables['ft_MenorCompra'] := QuotedStr(txtMenorCompra.text);
         CSU_FR_C_ILC.Variables['ft_MaiorCompra'] := QuotedStr(txtMaiorCompra.text);
         CSU_FR_C_ILC.Variables['ft_QtdPedFat'] := QuotedStr(txtQtdPedFat.text);
         CSU_FR_C_ILC.Variables['ft_QtdPedCanc'] := QuotedStr(txtQtdPedCanc.text);
         CSU_FR_C_ILC.Variables['ft_QtdPedRep'] := QuotedStr(txtQtdPedRep.text);
         CSU_FR_C_ILC.Variables['ft_PedidosDig'] := QuotedStr(txtPedidoDigitados.text);
         CSU_FR_C_ILC.Variables['ft_PedidosEmProd'] := QuotedStr(txtPedidoProducao.text);


         TotalCompra     := 'R$ ' + txtTotalCompra.text;
         TotalCompraPago := 'R$ ' + txtTotalCompraPago.text;

         CSU_FR_C_ILC.Variables['ft_VolTotalCompra'] := QuotedStr(TotalCompra);
         CSU_FR_C_ILC.Variables['ft_VolTotalCompraPago'] := QuotedStr(TotalCompraPago);

         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(CSU_FR_C_ILC.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;

         CSU_FR_C_ILC.PrepareReport();
         CSU_FR_C_ILC.ShowReport();
      end;

  if rgTipoEmissao.ItemIndex = 0 then
     begin           
           
       try

           if not (BUS_CD_M_ILC_RBX_PED.IsEmpty) then
              begin
                BUS_CD_M_ILC_RBX_PED.First;
                     BUS_CD_M_ILC_RBX_TIT.Filtered := true;
                           //BUS_CD_M_ILC_RBX_TIT.Filter := 'upper(forma_pag) not like(''''%CHEQUE%'''')' ;
                          // txt :=  'UPPERCASE(forma_pag) not Like( ' +UpperCase('%' + 'CHEQUE' + '%')+')';
                          //txt :=  'UPPER(forma_pag) not Like( ' +UpperCase(QuotedStr('%' + 'CHEQUE' + '%'))+')';

                      txt := 'upper(forma_pag_rbx) LIKE (' + QuotedStr('%CHEQUE%')+')';
                      BUS_CD_M_ILC_RBX_TIT.Filter := txt;


                while not BUS_CD_M_ILC_RBX_PED.Eof  do
                   begin
                      if not (BUS_CD_M_ILC_RBX_TIT.IsEmpty) then
                         begin
                           while not BUS_CD_M_ILC_RBX_TIT.eof do
                                 BUS_CD_M_ILC_RBX_TIT.delete;
                         end;
                      BUS_CD_M_ILC_RBX_PED.Next;
                   end;

                BUS_CD_M_ILC_RBX_TIT.Filtered := false;
                BUS_CD_M_ILC_RBX_PED.First;
              end;


           CSU_FR_C_ILC_2.Variables['ft_cliente'] := QuotedStr(txtCliente.text + ' - ' + txtNome.text);
           CSU_FR_C_ILC_2.Variables['ft_PriCompra'] := QuotedStr(txtPriCompra.text);
           CSU_FR_C_ILC_2.Variables['ft_UltCompra'] := QuotedStr(txtUltCompra.text);
           CSU_FR_C_ILC_2.Variables['ft_MenorCompra'] := QuotedStr(txtMenorCompra.text);
           CSU_FR_C_ILC_2.Variables['ft_MaiorCompra'] := QuotedStr(txtMaiorCompra.text);
           CSU_FR_C_ILC_2.Variables['ft_QtdPedFat'] := QuotedStr(txtQtdPedFat.text);
           CSU_FR_C_ILC_2.Variables['ft_QtdPedCanc'] := QuotedStr(txtQtdPedCanc.text);
           CSU_FR_C_ILC_2.Variables['ft_QtdPedRep'] := QuotedStr(txtQtdPedRep.text);
           CSU_FR_C_ILC_2.Variables['ft_PedidosDig'] := QuotedStr(txtPedidoDigitados.text);
           CSU_FR_C_ILC_2.Variables['ft_PedidosEmProd'] := QuotedStr(txtPedidoProducao.text);


           TotalCompra     := 'R$ ' + txtTotalCompra.text;
           TotalCompraPago := 'R$ ' + txtTotalCompraPago.text;

           CSU_FR_C_ILC_2.Variables['ft_VolTotalCompra'] := QuotedStr(TotalCompra);
           CSU_FR_C_ILC_2.Variables['ft_VolTotalCompraPago'] := QuotedStr(TotalCompraPago);

           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

           if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(CSU_FR_C_ILC_2.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

           CSU_FR_C_ILC_2.PrepareReport();
           CSU_FR_C_ILC_2.ShowReport();

       finally
          BUS_CD_M_ILC_RBX_TIT.Filtered := false;
       end;
       
     end;
end;

procedure TCSU_FM_C_ILC.BuscarDados(IdCliente: String);
var
  SMPrincipal: TSMClient;
  totalOFs,totalOFsPrestCta,totalOFsPrestCtaAberto, totalOFsPrestCtaAbertoSaldo,totalTotTitAberto: Currency;
  TotTitPresCta: Currency;
  PriCompra, UltCompra, MenorCompra, MaiorCompra, QtdPedFat, QtdPedCanc, QtdPedRep,
  TotalCompra,TotalCompraPago,PedidosDigitados, PedidosEmProducao: String;
  IdPedido, i, IdBaixa: Integer;
begin

   //  (IdEmpresa,IdCliente, txtPriCompra, txtUltCompra, QtdePedidos,
   //                                      QtdePedidoCancelados,QtdePedidoReprovados, TotalEmCompras: String; var cdsOFsPrestCtaAberto,cdsTitPrestAberto: OleVariant);


    try
     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

     SMPrincipal.enSgqFinBucarDadosCliILC(dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString,IdCliente,
                                          PriCompra, UltCompra,MenorCompra, MaiorCompra,
                                          QtdPedFat, QtdPedCanc, QtdPedRep,
                                          TotalCompra, TotalCompraPago, PedidosDigitados, PedidosEmProducao,
                                          dataOFPrestCtaAberto,dataTitPrestAberto,dataTotTitAberto, dataPedQuitado);
     BUS_CD_M_ILC_RBX_PED.Close;
     BUS_CD_M_ILC_RBX_PED.Data :=
       BUS_CD_M_ILC_RBX_PED.DataRequest(VarArrayOf([dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString,IdCliente]));

     txtPriCompra.text :=  PriCompra;
     txtUltCompra.text := UltCompra;
     txtMenorCompra.Text := MenorCompra;
     txtMaiorCompra.Text := MaiorCompra;
     txtQtdPedFat.text := QtdPedFat;
     txtQtdPedCanc.text := QtdPedCanc;
     txtQtdPedRep.text  := QtdPedRep;


     txtPedidoDigitados.Text :=  PedidosDigitados;
     txtPedidoProducao.Text  :=  PedidosEmProducao;

     txtTotalCompra.text := TotalCompra;
     txtTotalCompraPago.Text := TotalCompraPago;

     cdsOFPrestCtaAbert.Data := dataOFPrestCtaAberto;

     if rgTipoEmissao.ItemIndex = 0  then  // Relatório para Diretoria
        cdsTitPrestacAbert.Data   := dataPedQuitado
     else
        cdsTitPrestacAbert.Data   := dataTitPrestAberto;


     cdsTotTitAberto.Data      := dataTotTitAberto;

     totalOFsPrestCtaAberto := 0;
     totalOFsPrestCtaAbertoSaldo := 0;

     IdPedido := 0;
     i:= 0;

     cdsSitOFEmAberto.EmptyDataSet;

     cdsTitPrestacAbert.IndexFieldNames := 'of;dta_emissao;dta_vencimento';

     if rgTipoEmissao.ItemIndex = 0  then  // Relatório para Diretoria
        begin
           cdsTitPrestacAbert.First;
           while not cdsTitPrestacAbert.eof do
              begin
                if (IdPedido <> cdsTitPrestacAbert.FieldByName('pedido').AsInteger) or
                   ((cdsTitPrestacAbert.FieldByName('pedido').AsInteger = 0)        and
                    (IdBaixa <> cdsTitPrestacAbert.FieldByName('id_baixa').AsInteger))  then
                   begin
                      IdPedido := cdsTitPrestacAbert.FieldByName('pedido').AsInteger;
                      cdsSitOFEmAberto.Insert;

                        cdsSitOFEmAberto.FieldByName('id_ors').AsString :=
                      cdsTitPrestacAbert.FieldByName('of').AsString;

                      cdsSitOFEmAberto.FieldByName('id_pedido').AsInteger :=
                         cdsTitPrestacAbert.FieldByName('pedido').AsInteger;


                      IdBaixa := cdsTitPrestacAbert.FieldByName('id_baixa').AsInteger;

                      cdsSitOFEmAberto.FieldByName('id_baixa').AsString :=
                         cdsTitPrestacAbert.FieldByName('id_baixa').AsString;

                      cdsSitOFEmAberto.FieldByName('representante').AsString :=
                         cdsTitPrestacAbert.FieldByName('representante').AsString;

                      cdsSitOFEmAberto.FieldByName('dta_emissao_of').AsString :=
                         cdsTitPrestacAbert.FieldByName('dta_emissao').AsString;

                      cdsSitOFEmAberto.FieldByName('vlr_liquido_of').AsString :=
                          cdsTitPrestacAbert.FieldByName('vlr_liquido_of').AsString;

                      cdsSitOFEmAberto.FieldByName('pri_vencimento').AsDateTime :=
                         cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime;

                     // cdsSitOFEmAberto.Post;

                      i:= 0;
                   end
                else
                   begin
                      cdsSitOFEmAberto.Edit;
                   end;

                inc(i);
                cdsSitOFEmAberto.FieldByName('qtde_parcelas_ped').AsInteger := i;

                cdsSitOFEmAberto.FieldByName('ult_vencimento').AsDateTime :=
                   cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime;

                if cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency = 0 then
                   begin
                     cdsSitOFEmAberto.FieldByName('total_pago').AsCurrency :=
                        cdsSitOFEmAberto.FieldByName('total_pago').AsCurrency +
                        cdsTitPrestacAbert.FieldByName('vlr_parcela').AsCurrency;
                   end
                else
                   begin
                     if cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime >= xDataSistema then
                        begin
                          cdsSitOFEmAberto.FieldByName('total_a_vencer').AsCurrency :=
                              cdsSitOFEmAberto.FieldByName('total_a_vencer').AsCurrency +
                              cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency;
                        end
                     else
                        begin
                          cdsSitOFEmAberto.FieldByName('total_vencido').AsCurrency :=
                              cdsSitOFEmAberto.FieldByName('total_vencido').AsCurrency +
                              cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency;
                        end;
                   end;
                cdsSitOFEmAberto.Post;
                cdsTitPrestacAbert.Next;
              end;
           cdsTitPrestacAbert.First;

           VerifOFComSubstFin;
        end;

     if rgTipoEmissao.ItemIndex = 1  then  // Relatório para Financeiro
        begin
           cdsTitPrestacAbert.Data   := dataTitPrestAberto;

           cdsTitPrestacAbert.First;
           while not cdsTitPrestacAbert.eof do
              begin

                if IdPedido <> cdsTitPrestacAbert.FieldByName('pedido').AsInteger then
                   begin
                      IdPedido := cdsTitPrestacAbert.FieldByName('pedido').AsInteger;
                      cdsSitOFEmAberto.Insert;

                        cdsSitOFEmAberto.FieldByName('id_ors').AsString :=
                      cdsTitPrestacAbert.FieldByName('of').AsString;

                      cdsSitOFEmAberto.FieldByName('id_pedido').AsInteger :=
                         cdsTitPrestacAbert.FieldByName('pedido').AsInteger;

                      cdsSitOFEmAberto.FieldByName('representante').AsString :=
                         cdsTitPrestacAbert.FieldByName('representante').AsString;

                      cdsSitOFEmAberto.FieldByName('dta_emissao_of').AsString :=
                         cdsTitPrestacAbert.FieldByName('dta_emissao').AsString;

                      cdsSitOFEmAberto.FieldByName('vlr_liquido_of').AsString :=
                          cdsTitPrestacAbert.FieldByName('vlr_liquido_of').AsString;

                      cdsSitOFEmAberto.FieldByName('pri_vencimento').AsDateTime :=
                         cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime;

                      i:= 0;
                   end
                else
                   begin
                      cdsSitOFEmAberto.Edit;
                   end;

                inc(i);
                cdsSitOFEmAberto.FieldByName('qtde_parcelas_ped').AsInteger := i;

                cdsSitOFEmAberto.FieldByName('ult_vencimento').AsDateTime :=
                   cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime;

                if cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency = 0 then
                   begin
                     cdsSitOFEmAberto.FieldByName('total_pago').AsCurrency :=
                        cdsSitOFEmAberto.FieldByName('total_pago').AsCurrency +
                        cdsTitPrestacAbert.FieldByName('vlr_parcela').AsCurrency;
                   end
                else
                   begin
                     if cdsTitPrestacAbert.FieldByName('dta_vencimento').AsDateTime >= xDataSistema then
                        begin
                          cdsSitOFEmAberto.FieldByName('total_a_vencer').AsCurrency :=
                              cdsSitOFEmAberto.FieldByName('total_a_vencer').AsCurrency +
                              cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency;
                        end
                     else
                        begin
                          cdsSitOFEmAberto.FieldByName('total_vencido').AsCurrency :=
                              cdsSitOFEmAberto.FieldByName('total_vencido').AsCurrency +
                              cdsTitPrestacAbert.FieldByName('vlr_saldo').AsCurrency;
                        end;
                   end;
                cdsSitOFEmAberto.Post;
                cdsTitPrestacAbert.Next;
              end;
           cdsTitPrestacAbert.First;


        end;

     cdsSitOFEmAberto.IndexFieldNames := 'dta_emissao_of';



     cdsOFPrestCtaAbert.First;
     while not cdsOFPrestCtaAbert.eof do
        begin
          totalOFsPrestCtaAberto := totalOFsPrestCtaAberto + cdsOFPrestCtaAbert.FieldByName('vlr_liquido').AsCurrency;
          totalOFsPrestCtaAbertoSaldo := totalOFsPrestCtaAbertoSaldo + cdsOFPrestCtaAbert.FieldByName('vlr_saldo').AsCurrency;
          cdsOFPrestCtaAbert.Next;
        end;
     cdsOFPrestCtaAbert.First;

     txtVlrOFPrestCtaAberto.Text    := FormatCurr('###,###,###,##0.00', totalOFsPrestCtaAbertoSaldo);


     totalTotTitAberto := 0;

     cdsTotTitAberto.First;
     while not cdsTotTitAberto.eof do
        begin
          totalTotTitAberto := totalTotTitAberto + cdsTotTitAberto.FieldByName('vlr_saldo').AsCurrency;
          cdsTotTitAberto.Next;
        end;
     cdsTotTitAberto.First;

     txtTotTitAberto.Text    := FormatCurr('###,###,###,##0.00', totalTotTitAberto);

     btnImprimir.Enabled := true;

  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TCSU_FM_C_ILC.Button1Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try

  if (txtCliente.text = '') or (txtCliente.text = '0') then
      begin
        Showmessage('O campo cliente deve ser preenchido.');
        exit;
      end;

  BuscarDados(txtCliente.text);
  btnImprimir.SetFocus;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCSU_FM_C_ILC.Button2Click(Sender: TObject);
VAR
  TXT: sTRING;
begin
  inherited;
        BUS_CD_M_ILC_RBX_TIT.Filtered := true;
        txt := 'upper(forma_pag) LIKE (' + QuotedStr('%CHEQUE%')+')';
        BUS_CD_M_ILC_RBX_TIT.Filter := txt; 
        BUS_CD_M_ILC_RBX_TIT.recordcount;

end;

procedure TCSU_FM_C_ILC.Button3Click(Sender: TObject);
begin
  inherited;
        BUS_CD_M_ILC_RBX_TIT.Filtered := false;
end;

procedure TCSU_FM_C_ILC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CSU_FM_C_ILC);
  frmSoftMenu.rbMenu.ShowTabGroups := true;
end;

procedure TCSU_FM_C_ILC.FormShow(Sender: TObject);
begin
  inherited;
  acImprime.Enabled := true;
  btnImprime.Enabled := true;

  frmSoftMenu.rbMenu.ShowTabGroups := false;

  LimparCampos;

  txtCliente.SetFocus;
end;

procedure TCSU_FM_C_ILC.LimparCampos;
begin
     txtNome.Text := '';
     txtPriCompra.text :=  '';
     txtUltCompra.text := '';
     txtMenorCompra.Text := '';
     txtMaiorCompra.Text := '';
     txtQtdPedFat.text := '';
     txtQtdPedCanc.text := '';
     txtQtdPedRep.text  := '';
     txtTotalCompra.text := '';
     txtTotalCompraPago.Text := '';
     txtPedidoDigitados.Text :=  '';
     txtPedidoProducao.Text  :=  '';


     txtVlrOFPrestCtaAberto.Text := '0,00';
     txtTotTitAberto.Text        := '0,00';

     cdsOFPrestCtaAbert.EmptyDataSet;
     cdsTitPrestacAbert.EmptyDataSet;
     cdsTotTitAberto.EmptyDataSet;

     BUS_CD_M_ILC_RBX_PED.Close;
       BUS_CD_M_ILC_RBX_PED.Data :=
          BUS_CD_M_ILC_RBX_PED.DataRequest(VarArrayOf([0,0]));

     btnImprimir.Enabled := false;
end;

procedure TCSU_FM_C_ILC.rgTipoEmissaoClick(Sender: TObject);
begin
  inherited;
  txtCliente.Text := '';
  LimparCampos;
end;

procedure TCSU_FM_C_ILC.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  PSQ_FM_X_CLI.ShowModal;
  if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
    begin
      txtCliente.Text := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
      txtNome.text := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
    end;
  PSQ_FM_X_CLI.Free;
end;

procedure TCSU_FM_C_ILC.txtClienteExit(Sender: TObject);
begin
  inherited;

  LimparCampos;

  if (txtCliente.Text <> '') and (txtCliente.Text <> '0') then
      begin
       btnImprimir.Enabled := false;
       dmgeral.BUS_CD_C_CLI.Close;
       dmgeral.BUS_CD_C_CLI.Data :=
            dmgeral.BUS_CD_C_CLI.DataRequest(
                     VarArrayOf([0, txtcliente.Text]));

       if not dmgeral.BUS_CD_C_CLI.IsEmpty then
          begin
            txtNome.text := dmgeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
          end
       else
          begin
            showmessage('Cliente não encontrado!');
            txtCliente.Text := '';
            txtCliente.SetFocus;
          end;
       dmgeral.BUS_CD_C_CLI.Close;
      end;

end;


procedure TCSU_FM_C_ILC.VerifOFComSubstFin;
var
  IdOrsApagar: Array of integer;
  i: integer;
begin

  SetLength(IdOrsApagar,cdsSitOFEmAberto.recordcount);

  cdsSitOFEmAberto.Filtered := true;
  cdsSitOFEmAberto.Filter := ' id_baixa > 0 ';

  i:= 0;

  cdsSitOFEmAberto.First;
  while not cdsSitOFEmAberto.eof do
     begin
       BUS_CD_M_RBX.Close;
       BUS_CD_M_RBX.Data :=
           BUS_CD_M_RBX.DataRequest(VarArrayOf([0,dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString,
                                                        cdsSitOFEmAberto.FieldByName('id_baixa').AsString]));
       if not BUS_CD_M_RBX.IsEmpty then
          begin
            if (BUS_CD_M_RBX.FieldByName('int_doc_impresso').AsInteger in [4]) then // Boleto
               begin
                  cdsSitOFEmAberto.edit;

                  cdsSitOFEmAberto.FieldByName('id_ors').AsString :=
                        BUS_CD_M_RBX_TIT.FieldByName('int_id_ors').AsString;

                  cdsSitOFEmAberto.FieldByName('dta_emissao_of').AsString :=
                        BUS_CD_M_RBX_TIT.FieldByName('int_dta_emissao_ors').AsString;


                  cdsSitOFEmAberto.FieldByName('vlr_liquido_of').AsCurrency :=
                      cdsSitOFEmAberto.FieldByName('total_pago').AsCurrency   +
                      cdsSitOFEmAberto.FieldByName('total_a_vencer').AsCurrency   +
                      cdsSitOFEmAberto.FieldByName('total_vencido').AsCurrency;



                  IdOrsApagar[i] := BUS_CD_M_RBX_TIT.FieldByName('int_id_ors').AsInteger;
                  inc(i);

                  cdsSitOFEmAberto.Post;
               end;
          end;
       cdsSitOFEmAberto.Next;
     end;

  cdsSitOFEmAberto.Filtered := false;

  cdsSitOFEmAberto.Filtered := true;
  cdsSitOFEmAberto.Filter := ' id_ors > 0 and id_pedido > 0 ';

  i:= 0;

  for i := 0 to high(IdOrsApagar) do
      begin
        if IdOrsApagar[i] > 0 then
           begin
              if cdsSitOFEmAberto.locate('id_ors',IdOrsApagar[i],[]) then
                 begin
                   cdsSitOFEmAberto.Delete;
                 end;
           end;
      end;

  cdsSitOFEmAberto.Filtered := false;
  cdsSitOFEmAberto.First;
end;


procedure OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;


end.
