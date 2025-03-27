unit FAT_RN_M_NFE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;

type
  TpcnConsumidorFin = (fNao, fConsumidorFinal);
  TpcnDestinoOper = (oInterna, oInterestadual, oExterior);
  TpcnindIEDestino = (nContribuinte, nIsento, nNaoContribuinte);

procedure FatValidaNfeIte(DataSet:TDataSet);
procedure FatMascaraNfe(DataSet:TDataSet);
procedure FatMascaraNfeCxa;
procedure FatMascaraNfeIte(DataSet:TDataSet);
procedure FatMascaraNfeIteCxa;
procedure FatRatValoresEntreNfeIte;
procedure FatMascaraNfe_2;
procedure FatMascaraNfeIte_2;
procedure FatMascaraNfeNff;
procedure FatMascaraNfeTit(DataSet:TDataSet);
procedure FatMascaraNfeTitCxa;
procedure FatNovoNfe(DataSet: TDataSet);
procedure FatNovoNfeIte(DataSet: TDataSet);
procedure FatNovoNfeTit(DataSet: TDataSet);
procedure FatNovoNfeIqmAna;
procedure FatValidarCamposNfc;   //Utilizado somente para NFC
function FatVerificarExistenciaTitulosNfe:Boolean;

procedure FatAtualizarTotalLiqNfe(cdsNfe: TClientDataSet);
procedure FatAtuaVlrOutrasNFE_FRE(cdsNfe: TClientDataSet);
function  ValidarTributItens: String;
procedure FatRecalTributItens(cdsNfe,cdsNfeIte: TClientDataSet);
procedure FatCalculaPart(cdsNfe,cdsNfeIte: TClientDataSet);

procedure FatRatVlrEntreItens(const lVlrTotDoc, lVlrMontante: Currency; lNomeCampoIte, lNomeCampoBaseIte, lNomeCampoPerIte: String);
procedure BuscarCstIcm(CdsNfeIte: TClientDataSet; lTipoEmitente: String; var lRegimeSimples:Boolean);
function  VerifTribItem(lTipoNf,IdEmpresa,IdEmitente,IdItem,IdTipoEstoque,TipoAcao: String):Boolean;

procedure CalculaPercIcm;
function  CalculaICMS(CdsNfe,CdsNfeIte: TClientDataSet; TipoEmitente: String;var lRegimeSimples:Boolean): Boolean;
function  CalculaISS(CdsNfeIte: TClientDataSet): Currency;
function  CalculaISSRetido(CdsNfe,CdsNfeIte: TClientDataSet): Currency;
function  CalculaICMSNFE(CdsNfe,CdsNfeIte: TClientDataSet): Boolean;
function  CalculaIPI(CdsNfe,CdsNfeIte: TClientDataSet): Boolean;
function  CalculaPIS(CdsNfe,CdsNfeIte: TClientDataSet; tipo: String): Boolean;
function  CalculaCofins(CdsNfe,CdsNfeIte: TClientDataSet; tipo: String): Boolean;
function  CalculaTriValor(CdsNfeIte: TClientDataSet): Boolean;
procedure CalcPesoItem(cdsItens: TClientDataSet);
procedure fatNfeCalcTotal(cdsNfe,cdsNfeIte: TClientDataSet);
procedure nfeCalcTotalItem;
function  CalcVlrCustoIteEntrada(cdsNfeIte: TClientDataSet):Currency;

function CalcCustoMedioIte(const CdsNfe,CdsNfeIte,CdsEstFes: TClientDataSet): Currency;

function FatGravarNumParcNfe(cdsNfe,cdsNfeTit: TClientDataSet): Boolean;

function FAT_CD_M_NFE_Ent_TesPermEdicaoExclusao: Boolean;
function FAT_CD_M_NFE_Ent_TesCampos: Boolean;
function FAT_CD_M_NFE_Saida_TesCampos: Boolean;
function FAT_CD_M_NFE_TesTotItensXTotNfe: Boolean;
function FAT_CD_M_NFE_TesTotFpgXTotNfe(DataSetPai,DataSetTit: TDataSet; var mensVlrDif:String): Boolean;
function FAT_CD_M_NFE_ITE_TesCampos: Boolean;
function FAT_CD_M_NFE_TIT_TesCampos: Boolean;
function FAT_CD_M_NFE_AtuCmpPed(lTipo: Integer): Boolean;
function FAT_CD_M_NFE_ITEicm_n_baseChange: Boolean;
function FAT_CD_M_NFE_ITEicm_n_valorChange:Boolean;
function FAT_CD_M_NFE_ITEicm_s_baseChange:Boolean;
function FAT_CD_M_NFE_ITEicm_s_valorChange:Boolean;
function FAT_CD_M_NFE_ITE_VerifCampoCst:Boolean;
function FAT_CD_M_NFE_ITE_VerifCampoQtdeMercIcms:String;
function FAT_CD_M_NFEvlr_descontoChange: Boolean;



function FAT_CD_M_NFE_ITE_IQM_TesPermExclusao: Boolean;
function FAT_CD_M_NFE_ITE_IQM_TesCampos: Boolean;
function FAT_CD_M_IQM_ITE_AtuSitInspNF: Integer;
function FAT_CD_M_NFE_ANA_TesPermExclusao: Boolean;
function FAT_CD_M_NFE_ANA_TesCampos: Boolean;

// Verifica o saldo do item vs a qtde do item digitada pelo usuário
function FatTestaQtdeIte(origem: integer; CdsPai, CdsIte: TClientDataSet): Boolean;
// -------------------------

function SAI_GRAVA_EST(const lOrigem: integer; const cds_pai, cds_itens, cds_itens_ant: TClientDataSet): Boolean;
function SAI_EXCLUI_EST(const lOrigem: integer; cds_pai, cds_itens, cds_itens_ant: TClientDataSet): Boolean;

function ENT_GRAVA_EST(const lOrigem: integer; const cds_pai, cds_itens,cds_itens_ant: TClientDataSet): Boolean;
function ENT_GRAVA_PAG(const cds_pai,  cds_titulos: TClientDataSet): Boolean;
function ENT_EXCLUI_EST(const lOrigem: integer; cds_pai, cds_itens,cds_itens_ant: TClientDataSet): Boolean;
function ENT_EXCLUI_PAG(const cds_pai,  cds_titulos: TClientDataSet): Boolean;

// Nota de Saída
procedure FatValidaNfeTitCxa(tipo: integer; DataSet: TDataSet);
procedure FatValidaExcNfe;
procedure FatValidaEdtNfe;

procedure FatFormarNfeObs(CdsPai,CdsIte: TClientDataSet);
procedure FatFormarNfeObs_NFE(CdsPai,CdsIte: TClientDataSet);

// Conhecimento de frete
function  FatValidaNfeFre:Boolean;
function  FatValidaExcNfeFre:Boolean;
procedure FatValidaNfeFreNff;
procedure FatValidaNfeFreTit;
procedure FatRatVlrFreteNfeNff;


//Devolucao ao Fornecedor
function  FatVerificaSaldoDevIte:Boolean;
procedure FatInserirTodosDevolvidoNfeIte;
//procedure FatInserirTodosDevolvidoNfeIte1;
procedure FatInserirDevolvidoNfeIte(AddUmaQtde:Boolean);
//procedure FatInserirDevolvidoNfeIte1;
procedure FatSetarCamposNfeIte;
procedure FatCalcDevolvidoNfeIte;
//procedure FatCalcDevolvidoNfeIte1;
procedure FatDeletarDevolvidoNfeIte;
//procedure FatDeletarDevolvidoNfeIte1;
procedure DeletarNotasNaoSelecionadasDev;
procedure AtualizarSaldoDevIte;
procedure CarregarNotasDisponiveis(tipoNF:string);

function FatValidaNfd: Boolean;
procedure FatCalculaTotalNfd;
procedure FatCalculaVlrCustoNfd;
procedure FatCalculaFrePercentualNfd;
procedure FatRatNfd(campo:string);
procedure FatGeraObsNfd(tipo_NF:String);
procedure PreencherFisco(cdsNfe,cdsNfeIte: TClientDataSet);


procedure FatGeraObsNfd1(tipo_NF:String);

procedure FAT_CD_M_NFE_ITEqtdeChange;//Aplicado somente no NFS.Responsavel:Luan.Data:01/09/2015

procedure CorrigirVlrTotais;

procedure SomarVlrItens;

function FatAtualizarFinPcp(tipo: integer; cdsOrsPcp,cdsFinPcp,cdsBoletosFatura: TClientDataSet; GerandoBoleto:Boolean=false): String;


var
  xNFCe: boolean; // criado por Maxsuel Victor em 07/02/2018

implementation
Uses uDmGeral,enConstantes, uProxy,FIN_RN_M_PAG, enFunc;

Var
  xMensErro:string;



{procedure FatInserirTodosDevolvidoNfeIte1;
var
  SMPrincipal : TSMClient;
  i:integer;
begin
  if (dmGeral.BUS_CD_M_NFE_ITE_2.RecordCount > 0) then
    begin
      i := 0;
      dmGeral.BUS_CD_M_NFE_ITE_2.First;
      while(dmGeral.BUS_CD_M_NFE_ITE_2.RecordCount>i) do
        begin
          FatInserirDevolvidoNfeIte;
          i := i+1;
          dmGeral.BUS_CD_M_NFE_ITE_2.Next;
        end;
    end;
end;   }


procedure SomarVlrItens;
begin

   dmGeral.FAT_CD_M_NFE.FieldByName('int_tot_vlr_bruto').AsCurrency :=
    Tenorth.Soma(dmGeral.FAT_CD_M_NFE_ITE,'vlr_mercadoria');

   dmGeral.FAT_CD_M_NFE.FieldByName('int_tot_vlr_liquido').AsCurrency :=
     Tenorth.Soma(dmGeral.FAT_CD_M_NFE_ITE,'vlr_liquido');

end;


procedure CorrigirVlrTotais;
var
   lTotDescICMItens,lTotVlrFrete,lTotVlrSeguro,lTotVlrOutrasDesp:Currency;
begin
   lTotDescICMItens :=0;
   lTotVlrFrete :=0;
   lTotVlrSeguro :=0;
   lTotVlrOutrasDesp :=0;

   dmGeral.FAT_CD_M_NFE_ITE.First;
   while not dmGeral.FAT_CD_M_NFE_ITE.eof do
      begin
        lTotDescICMItens := lTotDescICMItens +
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency;
        lTotVlrFrete :=  lTotVlrFrete +
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency;
        lTotVlrSeguro := lTotVlrSeguro +
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency;
        lTotVlrOutrasDesp := lTotVlrOutrasDesp +
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency;
        dmGeral.FAT_CD_M_NFE_ITE.Next;
      end;

     try
      dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;

      if lTotDescICMItens <> dmGeral.FAT_CD_M_NFEvlr_icm_desc.AsCurrency then
        FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEvlr_icm_desc.AsCurrency, 'VLR_ICM_DESC', '', '');

      if lTotVlrFrete <> dmGeral.FAT_CD_M_NFEfre_valor.AsCurrency then
        FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEfre_valor.AsCurrency, 'FRE_VALOR', '', '');

      if lTotVlrSeguro <> dmGeral.FAT_CD_M_NFEvlr_seguro.AsCurrency then
        FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEvlr_seguro.AsCurrency, 'VLR_SEGURO', '', '');

      if lTotVlrOutrasDesp <> dmGeral.FAT_CD_M_NFEvlr_outras_desp.AsCurrency then
        FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEvlr_outras_desp.AsCurrency, 'VLR_OUTRAS_DESP', '', '');
    finally
        dmGeral.FAT_CD_M_NFE_ITE.AfterPost :=  dmGeral.FAT_CD_M_NFE_ITEAfterPost;
     end;

   FAT_RN_M_NFE.FatAtualizarTotalLiqNfe(dmGeral.FAT_CD_M_NFE);

end;

procedure  FatValidarCamposNfc;
var
  mens: String;
begin

  xMensErro := '';
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '' then
     begin
       xMensErro := xMensErro + '.Tipo de estoque' + #13;
     end;
  if ((dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger = 0)) then
     begin
       xMensErro := xMensErro + '.Emitente' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsString = '' then
     begin
       xMensErro := xMensErro + '.Número' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString = '' then
     begin
       xMensErro := xMensErro + '.Série' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString = '' then
     begin
       xMensErro := xMensErro + '.Sub Série' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString = '  /  /    ' then
     begin
       xMensErro := xMensErro + '.Emissão' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString = '  /  /    ' then
     begin
       xMensErro := xMensErro + '.Data entrada' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString = '' then
     begin
       xMensErro := xMensErro + '.Modelo' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsString = '' then
     begin
       xMensErro := xMensErro + '.Indicador de frete' + #13;
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString = '' then
     begin
       xMensErro := xMensErro + '.CFOP' + #13;
     end;

  if xMensErro<>'' then
    begin
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     abort;
    end;
end;

function FatVerificarExistenciaTitulosNfe:Boolean;
begin
  Result := true;
  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString);
  if dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> 2 then
    begin
      if dmGeral.FAT_CD_M_NFE_TIT.RecordCount = 0 then
        begin
          ShowMessage('É necessário inserir pelo menos um título.');
          Result := false;
        end;
    end
  else
    begin
      if (dmGeral.FAT_CD_M_NFE_TIT.RecordCount > 0) then
         begin
           ShowMessage('Condição de Pagamento selecionado é tipo "Sem Pagamento", então não deve-se inserir títulos.');
           Result := false;
         end;
    end;
end;

procedure FAT_CD_M_NFE_ITEqtdeChange;
begin
   dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
         (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency);

   dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
end;

procedure CarregarNotasDisponiveis(tipoNF:string);
begin
       dmGeral.FAT_CD_M_NFE_DEV.Cancel;
       dmGeral.FAT_CD_M_NFE_DEV.First;
       while( not dmgeral.FAT_CD_M_NFE_DEV.IsEmpty) do
         begin
            dmGeral.FAT_CD_M_NFE_DEV.Delete;
         end;


       dmGeral.FAT_CD_M_NFE_ITE.Cancel;
       dmGeral.FAT_CD_M_NFE_ITE.First;
       while( not dmgeral.FAT_CD_M_NFE_ITE.IsEmpty) do
         begin
            dmGeral.FAT_CD_M_NFE_ITE.Delete;
         end;

      // dmgeral.FAT_CD_M_NFE.FieldByName('NUMERO').FocusControl;

       dmGeral.BUS_CD_M_NFE_2.Close;
               dmGeral.BUS_CD_M_NFE_2.Data :=
               dmGeral.BUS_CD_M_NFE_2.DataRequest(
                       VarArrayOf([92,tipoNF,trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text),trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString)]));
       dmGeral.BUS_CD_M_NFE_2.First;
       while (not dmGeral.BUS_CD_M_NFE_2.Eof) do
          begin
            dmGeral.FAT_CD_M_NFE_DEV.Insert;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL').AsString :=
                    dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').AsString :=
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').AsString;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_NUMERO').AsString :=
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('NUMERO').AsString;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_SERIE').AsString :=
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('SERIE').AsString;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_SUBSERIE').AsString :=
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('SUB_SERIE').AsString;

            dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_DTAEMISSAO').AsDateTime :=
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('DTA_EMISSAO').AsDateTime;

            dmGeral.BUS_CD_M_NFE_ITE_2.First;
            while (not dmGeral.BUS_CD_M_NFE_ITE_2.Eof) do
              begin
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.Insert;

                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL').AsInteger :=
                          dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsInteger :=
                          dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_ITEM').AsInteger :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ITEM').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('INT_NOMEITE').AsString :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_DESC_ITEM').AsString;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_TAMANHO').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('INT_NOMETAM').AsString :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_NOMETAM').AsString;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_COR').AsInteger :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_COR').AsInteger;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('INT_NOMECOR').AsString :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_NOMECOR').AsString;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_ST_ICM').AsString :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_ICM').AsString;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ORIGEM_MERCADORIA').AsString :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ORIGEM_MERCADORIA').AsString;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('INT_ICM_N_VALOR').AsCurrency :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_VALOR').AsCurrency;
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
                  dmGeral.BUS_CD_M_NFE_ITE_2.Next;
              end;
             dmGeral.FAT_CD_M_NFE_DEV.Post;
            dmGeral.BUS_CD_M_NFE_2.Next;
          end;
      if (dmGeral.FAT_CD_M_NFE_DEV.RecordCount > 0) then
         begin
           dmGeral.FAT_CD_M_NFE_DEV.First;
         end;
end;

procedure AtualizarSaldoDevIte;
var
  tipoNF_origem:string;
begin
   tipoNF_origem := '';

   if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
     begin
       tipoNF_origem := 'E';
     end;

   if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
     begin
       tipoNF_origem := 'S';
     end;

   dmGeral.FAT_CD_M_NFE_DEV.First;
   while (not dmGeral.FAT_CD_M_NFE_DEV.EOF) do
     begin
       dmGeral.FAT_CD_M_NFE_DEV_ITE.First;
       while (not dmGeral.FAT_CD_M_NFE_DEV_ITE.EOF) do
         begin
             dmGeral.BUS_CD_M_NFE_2.Close;
             dmGeral.BUS_CD_M_NFE_2.Data :=
             dmGeral.BUS_CD_M_NFE_2.DataRequest(
                       VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,tipoNF_origem,dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsString]));
             dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]);
             dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
             dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency :=
                     dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency;
             dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
             dmGeral.FAT_CD_M_NFE_DEV_ITE.Next;
         end;
       dmGeral.FAT_CD_M_NFE_DEV.Next;
     end;
end;

procedure DeletarNotasNaoSelecionadasDev;
var
  existe_registro:boolean;
  num_ite,num:integer;
  codFiscal,codFiscalDev,CodSequencia:String;
begin

   dmGeral.FAT_CD_M_NFE_DEV.First;

   while (not dmGeral.FAT_CD_M_NFE_DEV.EOF) do
     begin
       dmGeral.FAT_CD_M_NFE_DEV_ITE.First;
       while (not dmGeral.FAT_CD_M_NFE_DEV_ITE.EOF) do
         begin

           existe_registro := false;

           codFiscal := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_fiscal').AsString;
           codFiscalDev := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_fiscal_dev').AsString;
           codSequencia := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_sequencia').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.First;

           dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('id_fiscal;id_fiscal_dev;id_sequencia',VarArrayOf([
                                                      codFiscal,
                                                      codFiscalDev,
                                                      codSequencia]),[]);


           while (existe_registro = false) and (not dmGeral.FAT_CD_M_NFE_ITE.EOF) do
             begin
               if  ((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString<>'0') and
                     (dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsInteger =
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsInteger) AND
                    (dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').AsInteger =
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger)) OR

                  ((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString= '') and
                   (dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').AsInteger =
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger))    then
                 begin
                   existe_registro := true;
                   dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
                   dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency :=
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
                   dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
                 end;


                codFiscal := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_fiscal').AsString;
                codFiscalDev := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_fiscal_dev').AsString;
                codSequencia := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('id_sequencia').AsString;

                dmGeral.FAT_CD_M_NFE_ITE.Next;

                dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('id_fiscal;id_fiscal_dev;id_sequencia',VarArrayOf([
                                                       codFiscal,
                                                       codFiscalDev,
                                                       codSequencia]),[]);


             end;
           if existe_registro = true then
             begin
               dmGeral.FAT_CD_M_NFE_DEV_ITE.Next;
             end
           else
             begin
               dmGeral.FAT_CD_M_NFE_DEV_ITE.Delete;
             end;
         end;
       dmGeral.FAT_CD_M_NFE_DEV.Next;
     end;

   dmGeral.FAT_CD_M_NFE_DEV.First;
   while (not dmGeral.FAT_CD_M_NFE_DEV.EOF) do
     begin
       if dmGeral.FAT_CD_M_NFE_DEV_ITE.RecordCount = 0 then
         begin
           dmGeral.FAT_CD_M_NFE_DEV.Delete;
         end
       else
         begin
           dmGeral.FAT_CD_M_NFE_DEV.Next;
         end;
     end;
end;

procedure FatInserirTodosDevolvidoNfeIte;
var
  SMPrincipal : TSMClient;
  i:integer;
begin
   if (dmGeral.FAT_CD_M_NFE_DEV_ITE.RecordCount > 0) then
    begin
      i := 0;
      dmGeral.FAT_CD_M_NFE_DEV_ITE.First;
      while(dmGeral.FAT_CD_M_NFE_DEV_ITE.RecordCount>i) do
        begin
          FatInserirDevolvidoNfeIte(false);
          i := i+1;
          dmGeral.FAT_CD_M_NFE_DEV_ITE.Next;
        end;
    end;
end;




procedure FatSetarCamposNfeIte;
var
  BaseICM_Dispensado,vlrICM_Dispensado:Currency;
begin

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger :=
                  dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsInteger :=
                                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_FISCAL').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ITEM').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString :=
                  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString;

            //Devolução Fornecedor
           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
                dmGeral.BusRamAtiv(0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_RAMO').AsString);
                if not dmGeral.BUS_CD_C_RAM.IsEmpty then
                   begin
                     if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger = 2 then
                        begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_PIS').AsString;

                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_COF').AsString;
                        end;

                     if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger = 1 then
                        begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString := '06';
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString := '06';
                        end;

                     if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger = 0 then
                       begin
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :='99';
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :='99';
                       end;
                   end;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString := '99';
                if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString :=
                            dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_IPI').AsString;
                  end;
                if dmGeral.FAT_CD_M_NFE_ITE.State  in [dsInsert] then
                  begin
                    if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                       begin
                         {dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                 dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_ICM').AsString;}
                         if dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger in [1,2] then
                           begin
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                 dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_ICM').AsString;
                           end;

                         if dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger = 0 then
                           begin
                             if VerifTribItem(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text,
                                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').Text,
                                       'C') = false then
                                       begin
                                         dmGeral.FAT_CD_M_NFE_ITE.Cancel;
                                         abort;
                                       end;

                               if (not dmGeral.BUS_CD_C_FOR.IsEmpty) and (not dmGeral.BUS_CD_C_TRI_REG.IsEmpty)  then
                                 begin
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                          dmGeral.BUS_CD_C_TRI_REG.FieldByName('CNT_ID_ST_ICM').AsString;
                                   if dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString = 'ISENTO' then
                                     begin
                                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                              dmGeral.BUS_CD_C_TRI_REG.FieldByName('NCT_ID_ST_ICM').AsString;
                                     end;
                                 end;
                           end;
                       end;


                    if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger = 0 then
                       begin
                         if VerifTribItem(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text,
                                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').Text,
                                       'C') = false then
                                       begin
                                         dmGeral.FAT_CD_M_NFE_ITE.Cancel;
                                         abort;
                                       end;

                          if (not dmGeral.BUS_CD_C_FOR.IsEmpty) and (not dmGeral.BUS_CD_C_TRI_REG.IsEmpty)  then
                            begin
                              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                      dmGeral.BUS_CD_C_TRI_REG.FieldByName('CNT_CSOSN').AsString;
                              if dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString = 'ISENTO' then
                                 begin
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                           dmGeral.BUS_CD_C_TRI_REG.FieldByName('NCT_CSOSN').AsString;
                                 end;
                            end;
                       end;
                  end;
           end;
           /////FIM//////////

           //Devolução Cliente
           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin

                //Coloquei em comentario,pois devse pegar os valores no cadastrodo grupo de itens.Responsavel:Luan.Data:19/01/2016

               { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_PIS').AsString;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_COF').AsString; }
                dmGeral.BusItens(0,dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ITEM').AsString);
                if (not dmgeral.BUS_CD_C_ITE.IsEmpty) and
                    (dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString <>'') then
                  begin
                    dmgeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);
                    if (not dmgeral.BUS_CD_C_GRU.IsEmpty) then
                      begin
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                              dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').AsString;

                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                              dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').AsString;
                      end;
                  end;


                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_IPI').AsString;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByname('ID_ST_ICM').AsString :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_ICM').AsString;
              end;
            //////FIM//////////


           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE_DEVOLVIDA').AsFloat := 0;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('VLR_UNITARIO').AsCurrency;


           {
             O valor unitario da devolução tem que ser igual da nota de origem, conforme
             ocorre no enLoja.Resp:Luan.Data:28/08/2017
           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) then
                  begin
                    if (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_VALOR').AsCurrency > 0) then
                      begin
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency +
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency;
                      end;

                    if (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency > 0) then
                      begin
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency +
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency;
                      end;
                  end;
              end;}

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency*
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByname('VLR_UNITARIO').AsCurrency;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                     dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('PER_DESCONTO').AsCurrency;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                  (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('VLR_DESCONTO').AsCurrency/
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


         //  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency := 0;


           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency := 0;
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsCurrency := 0;
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency := 0;
                if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                  begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency :=
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_ALIQUOTA').AsCurrency;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsCurrency :=
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_PER_REDUCAO').AsCurrency;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency :=
                          RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_BASE').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency > 0 then
                        begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency :=
                               RoundTo(    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency*
                                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency)/100.0,-2);
                        end;
                  end;

                if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger = 0 then
                  begin
                     if  dmGeral.FAT_CD_M_NFE_ITE.FieldByname('ID_ST_ICM').AsString = '900' then
                       begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency :=
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_ALIQUOTA').AsCurrency;

                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsCurrency :=
                                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_PER_REDUCAO').AsCurrency;

                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency :=
                                RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_BASE').AsCurrency/
                                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                           if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency > 0 then
                              begin
                                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency :=
                                     RoundTo(    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency*
                                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency)/100.0,-2);
                              end;
                       end;
                  end;

              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsFloat :=
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_ALIQUOTA').AsFloat;

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsFloat :=
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_PER_REDUCAO').AsFloat;

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency :=
                        RoundTo( (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_BASE').AsCurrency /
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)      *
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency :=
                        RoundTo(   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency *
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency)/100.0,-2);
              end;


           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
               if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                  begin
                    if pos(dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ST_ICM').Text,'10-30-70') <> 0 then
                       begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency :=
                             RoundTo(   (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_BASE').AsCurrency/
                                 dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);
                       end;

                    if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency > 0 then
                       begin
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency :=
                              RoundTo(   (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency/
                                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);
                       end;
                  end;
              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin
                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency :=
                      RoundTo(   (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_BASE').AsCurrency /
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency :=
                     RoundTo(    (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency /
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);
              end;


            {

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
                   begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency :=
                             RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_BASE').AsCurrency/
                              dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency :=
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_ALIQUOTA').AsCurrency;

                     if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString = '50') then
                        begin
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency :=
                                   RoundTo(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency*
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency/100.0,-2);
                        end;

                     if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').Text,'51-52-53-54-55-99')<> 0 then
                        begin
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency := 0;
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency := 0;
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency := 0;
                        end;
                   end;
              end; }

          {  O calculo do IPI da devolução tem que ser igual que ocorre enLoja, conforme
             ocorre no enLoja.Resp:Luan.Data:28/08/2017 }

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin

                if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString,'00-49-50-99')<>0 then
                   begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency :=
                        RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_BASE').AsCurrency /
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency :=
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_ALIQUOTA').AsCurrency;


                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency :=
                                   RoundTo(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency*
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency/100.0,-2);
                  end
                else
                  begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency := 0;
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency := 0;
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency := 0;
                  end;

              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency :=
                        RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_BASE').AsCurrency /
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_ALIQUOTA').AsCurrency;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency :=
                        RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_VALOR').AsCurrency /
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency) *
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);
              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                  begin
                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency :=
                          dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('PIS_ALIQUOTA').AsCurrency;
                  end;

                if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').Text,'01-02-03-04-05') <> 0 then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency :=
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency :=
                           roundTo((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency*
                           (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency/100)),-2);
                  end;

                if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency :=
                           dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('COF_ALIQUOTA').AsCurrency;
                  end;

                if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').Text,'01-02-03-04-05') <> 0 then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency :=
                            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency :=
                            RoundTo(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency*
                            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency/100,-2);
                  end;
              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('PIS_ALIQUOTA').AsCurrency;

                if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString <> '') and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger >= 50) and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger <= 66)  then
                   begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency :=
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency :=
                             roundTo(((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency*
                              (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency)/100.0)),-2);
                   end;

                if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString <> '') and
                    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger >= 67 ) and
                    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger <= 99) then
                   begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency := 0;
                   end;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('COF_ALIQUOTA').AsCurrency;

                if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString <> '') and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger >= 50) and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger <= 66)  then
                    begin
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency :=
                              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency :=
                              RoundTo((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency*
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency)/100.0,-2);
                   end;

                if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString <> '') and
                    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger >= 67) and
                    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger <= 99)  then
                    begin
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency := 0;
                    end;
              end;


           if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').Text,'30-40-41-50') <> 0 then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ISENTA').AsCurrency :=
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;
                  end;


           if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').Text,'10-60-90') <> 0 then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS').AsCurrency :=
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;
              end;


           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency :=
                    RoundTo((dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('VLR_ICM_DESC').AsCurrency /
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency) *
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('motivo_icms_des').AsString :=
                         dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('motivo_icms_des').AsString;
              end;


          // dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency := 0;

          // dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency := 0;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('NUM_LOTE').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('NUM_LOTE').AsString;

           CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_DESC_ITEM').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_UND_VENDA').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ORIGEM_MERCADORIA').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ORIGEM_MERCADORIA').AsString;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
               if dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2] then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_PER_MVA').AsCurrency :=
                            dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_PER_MVA').AsCurrency;
                  end;
              end;

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_PER_MVA').AsCurrency :=
                        dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_PER_MVA').AsCurrency;
              end;


           if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text = 'D') then
            begin
              if (dmGeral.BUS_CD_C_RAM.FieldByName('REGIME_TRIBUTARIO').AsInteger in [1,2]) and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('calc_icm_dispensado').AsBoolean) and
                   ((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString <>'10') and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString <>'30') and
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString <>'70')) then
                 begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_aliquota').AsCurrency := 0;
                    if VerifTribItem(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text,
                                   dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text,
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                                   dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').Text,
                                   'C')  then
                                   begin
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_aliquota').AsCurrency :=
                                            dmGeral.BUS_CD_C_TRI_REG.FieldByName('dis_aliquota').AsCurrency;
                                   end;


                   if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_aliquota').AsCurrency > 0 then
                      begin

                        BaseICM_Dispensado :=
                             //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;
                                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency +
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency +
                                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency;

                        vlrICM_Dispensado := roundTo(((BaseICM_Dispensado *
                                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_aliquota').AsCurrency) / 100),-2);

                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_icm_dispensado').AsCurrency :=
                            vlrICM_Dispensado - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency;
                      end;
                 end;
            end;


           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VLR_MVA').AsCurrency :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VLR_MVA').AsCurrency;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsInteger :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_COR').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_NOMECOR').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_TAMANHO').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_NOMETAM').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_BUSCA_ITEM').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                   dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_TIPO_ITEM').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency := 0;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsString :=
                    dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_INF_FISCO').AsString;

           dmGeral.FAT_CD_M_NFE_ITE.Post;

           dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := nil;
           dmGeral.FAT_CD_M_NFEfre_valor.OnChange := nil;
           dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := nil;
           dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := nil;

           FatCalculaTotalNfd;

           dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFEvlr_descontoChange;
           dmGeral.FAT_CD_M_NFEfre_valor.OnChange := dmGeral.FAT_CD_M_NFEfre_valorChange;
           dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := dmGeral.FAT_CD_M_NFEvlr_outras_despChange;
           dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := dmGeral.FAT_CD_M_NFEvlr_seguroChange;



           FatCalculaFrePercentualNfd;


           FatRatNfd('FRE_VALOR');
           FatRatNfd('VLR_SEGURO');
           FatRatNfd('VLR_OUTRAS_DESP');
          // FatRatNfd('VLR_DESCONTO');

           if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
              begin
                FatCalculaVlrCustoNfd;
              end;

           dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency -
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency -
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;

end;


function FatVerificaSaldoDevIte:Boolean;
var
   Saldo_Fisico: String;

   QtdeAnt, SaldoIte: Extended;

begin
   result  := true;

   QtdeAnt := 0;

   QtdeAnt := dmGeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;

  {dmGeral.BUS_CD_M_NFE.Close;
  dmGeral.BUS_CD_M_NFE.Data :=
                 dmGeral.BUS_CD_M_NFE.DataRequest(
                         VarArrayOf([12, CdsPai.FieldByName('ID_FISCAL').AsString]));
  if not dmGeral.BUS_CD_M_NFE.IsEmpty then
     begin
        if dmGeral.BUS_CD_M_NFE_ITE.locate('ID_FISCAL;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([
                                   CdsPai.FieldByName('ID_FISCAL').AsString,
                                   CdsIte.FieldByName('ID_ITEM').Text,
                                   CdsIte.FieldByName('ID_COR').Text,
                                   CdsIte.FieldByName('ID_TAMANHO').Text]),[]) then
           begin
              QtdeAnt := dmGeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
           end;
     end;
  dmGeral.BUS_CD_M_NFE.Close; }

  dmGeral.BusItens(0,dmGeral.BUS_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text);


   if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for serviço
      begin
        dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').Text);

        if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean then
           begin
              dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').Text,
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text,
                                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text,
                                   dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text,
                                   saldo_fisico);


              // A variavel saldo_fisico tem este nome devido o sistema não trabalhar com estoque pendente por isso
              // não coloquei saldo disponivel.

              SaldoIte := StrToFloat(saldo_fisico);
            //  ShowMessage('Saldo:'+saldo_fisico+#13+#10);
              if QtdeAnt > 0 then
                 begin
                   SaldoIte := SaldoIte + QtdeAnt;
                 //  ShowMessage('OK3 '+dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsString+' '+SaldoIte.ToString(SaldoIte));
                 end;
             //  ShowMessage(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+'  ' +
                       //     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsString+' '+SaldoIte.ToString(SaldoIte));

              if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat > SaldoIte then
                 begin
                   if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                      begin
                        result := false;
                        dmGeral.BUS_CD_C_ITE.close;
                        dmGeral.BUS_CD_C_TME.close;
                      end;
                 end;
           end;
      end;
   dmGeral.BUS_CD_C_ITE.close;
   dmGeral.BUS_CD_C_TME.close;

end;


procedure FatCalculaTotalNfd;
begin
  dmGeral.FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency := 0;
  //dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency := 0;
 // dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency := 0;
  //dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('dis_icm_dispensado').AsCurrency := 0;


  dmGeral.FAT_CD_M_NFE_ITE.Cancel;

  dmGeral.FAT_CD_M_NFE_ITE.First;
  while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
    begin
      dmGeral.FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

     { dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ACRESCIMO').AsCurrency; }

     { dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency;   }

      dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ISS_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ISS_VALOR').AsCurrency;


     { dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency; }

      if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency :=
                  dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency +
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_CUSTO').AsCurrency;
         end;

      dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR_ST').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR_ST').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ISENTA').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS').AsCurrency;

     { dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency; }

      dmGeral.FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency;

      dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency;

       dmGeral.FAT_CD_M_NFE.FieldByName('dis_icm_dispensado').AsCurrency :=
              dmGeral.FAT_CD_M_NFE.FieldByName('dis_icm_dispensado').AsCurrency +
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('dis_icm_dispensado').AsCurrency;

      dmGeral.FAT_CD_M_NFE_ITE.Next;
    end;
end;

procedure FatCalculaVlrCustoNfd;
begin
    dmGeral.FAT_CD_M_NFE_ITE.First;

    while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
       begin
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency :=
                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency   -
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency     +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency      +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_CUSTO').AsCurrency        +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency       +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency  +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency        +
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency
                    //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_SER_NÃO_INCIDE').AsCurrency;
                    ) /
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
           dmGeral.FAT_CD_M_NFE_ITE.Post;
           dmGeral.FAT_CD_M_NFE_ITE.Next;
      end;
end;

procedure FatGeraObsNfd(tipo_NF:String);
var
  valor:currency;
  existe_registro:boolean;
begin
     dmGeral.BUS_CD_M_NFE_2.Close;
               dmGeral.BUS_CD_M_NFE_2.Data :=
               dmGeral.BUS_CD_M_NFE_2.DataRequest(
                       VarArrayOf([92,tipo_NF,trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text),trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString)]));

    dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString := '';
    dmGeral.FAT_CD_M_NFE_ITE.First;

    while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
      begin
         existe_registro := false;
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


        if (existe_registro = true) then
           begin

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_VALOR').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'IPI Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_VALOR').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'ICMS Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'ICMS Substituto Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

           end;
           dmGeral.FAT_CD_M_NFE_ITE.Next;
     end;

     dmGeral.FAT_CD_M_NFE_DEV.First;
     while not dmGeral.FAT_CD_M_NFE_DEV.EOF do
        BEGIN
           if(dmGeral.BUS_CD_M_NFE_2.Locate('ID_FISCAL',
                        VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').Text]),[])) then
              begin
                 dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'Referente a devolução das mercadorias da NF nº '+dmGeral.BUS_CD_M_NFE_2.FieldByName('NUMERO').AsString+
                           ', série: '+dmGeral.BUS_CD_M_NFE_2.FieldByName('SERIE').AsString+
                           ', emitida em '+dmGeral.BUS_CD_M_NFE_2.FieldByName('DTA_EMISSAO').AsString+#13+#10;
              end;
           dmGeral.FAT_CD_M_NFE_DEV.Next;
        END;

end;



procedure FatGeraObsNfd1(tipo_NF:String);
var
  valor:currency;
  existe_registro:boolean;
begin

    dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString := '';
    dmGeral.FAT_CD_M_NFE_ITE.First;

    while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
      begin

         dmGeral.BUS_CD_M_NFE_2.Close;
               dmGeral.BUS_CD_M_NFE_2.Data :=
               dmGeral.BUS_CD_M_NFE_2.DataRequest(
                       VarArrayOf([0,trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString),tipo_NF,dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString]));

         dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                        VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]);


        if (not dmGeral.BUS_CD_M_NFE_2.IsEmpty) and  (dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                        VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[])) then
           begin

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_BASE').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('IPI_BASE').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'IPI Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_VALOR').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_N_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'ICMS Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency > 0 then
                begin
                   valor := (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ICM_S_VALOR').AsCurrency/
                             dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('QTDE').AsCurrency)*
                             dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                   dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'ICMS Substituto Valor R$ '+CurrToStrF(valor, ffFixed, 2)+' referente ao produto '+
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString+#13+#10;
                end;

           end;
           dmGeral.FAT_CD_M_NFE_ITE.Next;
     end;

     dmGeral.FAT_CD_M_NFE_DEV.First;
     while not dmGeral.FAT_CD_M_NFE_DEV.EOF do
        BEGIN
                 dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString :=
                           dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString +
                           'Referente a devolução das mercadorias da NF nº '+ dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_NUMERO').AsString+
                           ', série: '+dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_SERIE').AsString+
                           ', emitida em '+ dmGeral.FAT_CD_M_NFE_DEV.FieldByName('INT_DTAEMISSAO').AsString+#13+#10;

           dmGeral.FAT_CD_M_NFE_DEV.Next;
        END;

end;





procedure FatCalculaFrePercentualNfd;
var
   lPercAcum:currency;
   lPosReg,lnumReg:integer;
begin
   dmGeral.FAT_CD_M_NFE_ITE.Cancel;
   dmGeral.FAT_CD_M_NFE_ITE.First;
   lnumReg := dmGeral.FAT_CD_M_NFE_ITE.RecordCount;
   lPosReg := 1;
   lPercAcum := 0;


   while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
     begin
       dmGeral.FAT_CD_M_NFE_ITE.Edit;

       if lnumReg>lPosReg then
         begin
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency :=
                       roundTo((100 * dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency) /
                                dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency,-2);
         end
       else
         begin
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency := 100 - lPercAcum;
         end;
       lPercAcum := lPercAcum + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency;
       lPosReg := lPosReg + 1;
       dmGeral.FAT_CD_M_NFE_ITE.Post;
       dmGeral.FAT_CD_M_NFE_ITE.Next;
     end;
end;

procedure FatRatNfd(campo:string);
begin
   if dmGeral.FAT_CD_M_NFE.FieldByName(campo).AsCurrency>0 then
     begin

        dmGeral.FAT_CD_M_NFE_ITE.First;
        while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
          begin
            dmGeral.FAT_CD_M_NFE_ITE.Edit;
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName(campo).AsCurrency :=
                    (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency/100.0)*
                     dmGeral.FAT_CD_M_NFE.FieldByName(campo).AsCurrency;
            dmGeral.FAT_CD_M_NFE_ITE.Post;
            dmGeral.FAT_CD_M_NFE_ITE.Next;
          end;
     end
   else
     begin
       dmGeral.FAT_CD_M_NFE_ITE.First;
       while not dmGeral.FAT_CD_M_NFE_ITE.EOF do
         begin
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName(campo).AsCurrency := 0;
           dmGeral.FAT_CD_M_NFE_ITE.Post;
           dmGeral.FAT_CD_M_NFE_ITE.Next;
         end;
     end;
end;

procedure FatInserirDevolvidoNfeIte(AddUmaQtde:Boolean);
var
  xQtdeSalvo:currency;
  SMPrincipal : TSMClient;
  tipoNF_origem:string;
  ItemEncontrado:Boolean;
begin
     tipoNF_origem := '';
     if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
        begin
          tipoNF_origem := 'E';
        end;

     if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
        begin
          tipoNF_origem := 'S';
        end;


     ItemEncontrado := false;
     if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_FISCAL_DEV;ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').Text,
                                      dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
       begin
         ItemEncontrado := true;
       end
     else
       if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
         begin
           if  (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsString = '') then
             begin
               ItemEncontrado := true;
             end;
         end;


     if ItemEncontrado{dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL').Text,
                                      dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[])} then
       begin
         xQtdeSalvo := 0;
         dmGeral.BUS_CD_M_CSU_NFE_ITE.Close;
         dmGeral.BUS_CD_M_CSU_NFE_ITE.Data :=
         dmGeral.BUS_CD_M_CSU_NFE_ITE.DataRequest(
                              VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

         {if (not dmGeral.BUS_CD_M_CSU_NFE_ITE.IsEmpty) and dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                                VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
           begin
                 xQtdeSalvo := dmGeral.BUS_CD_M_CSU_NFE_ITE.FieldByName('QTDE').AsFloat;
           end;  }



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


         if ((xQtdeSalvo + dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency) >
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency) then
           begin
             dmGeral.FAT_CD_M_NFE_ITE.Edit;
             if (AddUmaQtde = False) then
                begin
                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                           xQtdeSalvo + dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsFloat;
                 end;
             if (AddUmaQtde = True) then
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat + 1;
                end;
             dmGeral.BUS_CD_M_NFE_2.Close;
             dmGeral.BUS_CD_M_NFE_2.Data :=
                    dmGeral.BUS_CD_M_NFE_2.DataRequest(
                            VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,tipoNF_origem,dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsString]));
             dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                                    VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]);
             FatSetarCamposNfeIte;

             if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D') and
                 (not FAT_RN_M_NFE.FatTestaQtdeIte(2,dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE))) then
                 begin
                  ShowMessage('Produto sem saldo no estoque.');
                 end;

             dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
              if (AddUmaQtde = False) then
                begin
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency :=
                              xQtdeSalvo + dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency;
                end;
              if (AddUmaQtde = True) then
                begin
                  dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency :=
                      dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency +1;
                end;
             dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
           end
         else
           begin
             ShowMessage('Todo o item foi devolvido.');
           end;
       end
     else
       begin
          if dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency > 0  then
            begin
              dmGeral.FAT_CD_M_NFE_ITE.Insert;
               if (AddUmaQtde = False) then
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                          dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsFloat;
                end;
               if (AddUmaQtde = True) then
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat + 1;
                end;



              dmGeral.BUS_CD_M_NFE_2.Close;
              dmGeral.BUS_CD_M_NFE_2.Data :=
                     dmGeral.BUS_CD_M_NFE_2.DataRequest(
                            VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,tipoNF_origem,dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsString]));



              dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                                    VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]);

              FatSetarCamposNfeIte;

              if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D') and
                 (not FAT_RN_M_NFE.FatTestaQtdeIte(2,dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE))) then
                 begin
                  ShowMessage('Produto sem saldo no estoque.');
                 end;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
              if (AddUmaQtde = False) then
                begin
                 dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat :=
                                 dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsFloat;
                end;
              if (AddUmaQtde = True) then
                begin
                 dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat :=
                                 dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat+1;
                end;
              dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
            end
          else
            begin
              ShowMessage('Todo o item foi devolvido.');
            end;
       end;
end;

{procedure FatInserirDevolvidoNfeIte;
var
  xQtdeSalvo:currency;
  SMPrincipal : TSMClient;
begin


   if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').Text]),[]) then
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

        if ((xQtdeSalvo + dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency) >
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency) then
           begin
            dmGeral.FAT_CD_M_NFE_ITE.Edit;
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                         xQtdeSalvo + dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsFloat;
            FatSetarCamposNfeIte;
            if dmGeral.FAT_CD_M_NFE_DEV.Locate('ID_FISCAL_DEV',
                                                  VarArrayOf([dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').Text]),[]) and
                    dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL;ID_FISCAL_DEV;ID_SEQUENCIA', //id fiscal nd,id fiscal ne,id sequencia
                                                VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                                dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').Text,
                                                dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').Text]),[]) then
               begin
                       dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
                       dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency :=
                               dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency;
                       dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
               end;
           end
          else
            begin
               ShowMessage('Todo o item foi devolvido.');
            end;
   end
  else
     begin
       if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency > 0  then
         begin
           dmGeral.FAT_CD_M_NFE_ITE.Insert;
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat :=
                  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsFloat;
           FatSetarCamposNfeIte;
          if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                          VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                            dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').Text]),[]) then
            begin

            if not dmGeral.FAT_CD_M_NFE_DEV.Locate('ID_FISCAL;ID_FISCAL_DEV',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').Text,
                                                 dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').Text]),[]) then
              begin

                dmGeral.FAT_CD_M_NFE_DEV.Insert;
                dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL').AsCurrency :=
                        dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsCurrency;

                dmGeral.FAT_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').AsCurrency :=
                         dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').AsCurrency;

                dmgeral.FAT_CD_M_NFE_DEV.Post;
              end;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Insert;
              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL').AsCurrency :=
                      dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_SEQUENCIA').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_ITEM').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_ITEM').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_COR').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_COR').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_TAMANHO').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('ID_TAMANHO').AsCurrency;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat :=
                      dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsFloat;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;
            end;
        end
        else
          begin
            ShowMessage('Não há itens a serem devolvidos.');
          end;
     end;
end;}


procedure FatCalcDevolvidoNfeIte;
var
   xQtdeSalvo,xQtde:currency;
   existe_registro, ItemEncontrado:boolean;
   tipoNF_origem:string;
begin
    tipoNF_origem := '';
    if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
      begin
        tipoNF_origem := 'E';
      end;

    if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R' then
      begin
        tipoNF_origem := 'S';
      end;


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


    if existe_registro = false then
      begin
       if (tipoNF_origem = 'E') then
         begin
           ShowMessage('Não existe nota fiscal de entrada correspondente com o item a ser devolvido.');
         end;
       if (tipoNF_origem = 'S') then
         begin
           ShowMessage('Não existe nota fiscal de saída correspondente com o item a ser devolvido.');
         end;
       Exit;
      end;

    xQtdeSalvo := 0;
    dmGeral.BUS_CD_M_CSU_NFE_ITE.Close;
    dmGeral.BUS_CD_M_CSU_NFE_ITE.Data :=
            dmGeral.BUS_CD_M_CSU_NFE_ITE.DataRequest(
                             VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

    {if (not dmGeral.BUS_CD_M_CSU_NFE_ITE.IsEmpty) and dmGeral.BUS_CD_M_CSU_NFE_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
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

     if ((xQtdeSalvo + dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE_SLD_ORIG').AsCurrency) <
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency) then
        begin
          ShowMessage('A quantidade de itens devolvidos é maior que o disponível.');
        end
     else
        begin
          if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency = 0) then
            begin
              ShowMessage('A quantidade de itens devolvidos tem que ser maior que zero.');
            end
          else
            begin
              dmGeral.FAT_CD_M_NFE_ITE.Edit;
              xQtde := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

              dmGeral.BUS_CD_M_NFE_2.Data :=
                    dmGeral.BUS_CD_M_NFE_2.DataRequest(
                            VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,tipoNF_origem,dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsString]));

              dmGeral.BUS_CD_M_NFE_ITE_2.Locate('ID_SEQUENCIA',
                                    VarArrayOf([dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_SEQUENCIA').Text]),[]);
              FatSetarCamposNfeIte;

              if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D') and
                 (not FAT_RN_M_NFE.FatTestaQtdeIte(2,dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE))) then
                 begin
                  ShowMessage('Produto sem saldo no estoque.');
                 end;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat := xQtde;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;

              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency -
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency -
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                         dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;
            end;
        end;

end;

{procedure FatCalcDevolvidoNfeIte;
var
   xQtdeSalvo,xQtde:currency;
   existe_registro:boolean;
begin

    existe_registro := false;
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

    if existe_registro = false then
      begin
       ShowMessage('Não existe nota de fiscal de entrada correspondente com o item a ser devolvido.');
       Exit;
      end;


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


    if ((xQtdeSalvo + dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('INT_SLDQTDE').AsCurrency) <
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency) then
        begin

          ShowMessage('A quantidade de itens devolvidos é maior que o disponível.');
        end
       else
         begin
          if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency = 0) then
            begin
              ShowMessage('A quantidade de itens devolvidos tem que ser maior que zero.');
            end
          else
            begin
              dmGeral.FAT_CD_M_NFE_ITE.Edit;
              xQtde := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
              FatSetarCamposNfeIte;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Edit;
              dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsFloat := xQtde;

              dmGeral.FAT_CD_M_NFE_DEV_ITE.Post;

              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency -
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                         dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
                        dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;
            end;
         end;
end; }

procedure FatDeletarDevolvidoNfeIte;
var
  fiscal_entrada:string;
  existe_registro:boolean;
begin
  try
    fiscal_entrada := '';
    existe_registro := false;
    if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
      begin
        ShowMessage('Não há registro para excluir.');
        abort;
      end;

    dmGeral.FAT_CD_M_NFE_ITE.Delete;

     dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := nil;
     dmGeral.FAT_CD_M_NFEfre_valor.OnChange := nil;
     dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := nil;
     dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := nil;

     FatCalculaTotalNfd;

     dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFEvlr_descontoChange;
     dmGeral.FAT_CD_M_NFEfre_valor.OnChange := dmGeral.FAT_CD_M_NFEfre_valorChange;
     dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := dmGeral.FAT_CD_M_NFEvlr_outras_despChange;
     dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := dmGeral.FAT_CD_M_NFEvlr_seguroChange;


    { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_PRODUCAO').AsBoolean = True then
       begin
         FatGeraObsNfd;
       end;  }

     FatCalculaFrePercentualNfd;

     FatRatNfd('FRE_VALOR');
     FatRatNfd('VLR_SEGURO');
     FatRatNfd('VLR_OUTRAS_DESP');
    // FatRatNfd('VLR_DESCONTO');

     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency -
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;

  finally

  end;
end;

{procedure FatDeletarDevolvidoNfeIte;
var
  fiscal_entrada:string;
  existe_registro:boolean;
begin
   try
    // grdItensIButton.Enabled := false;
     fiscal_entrada := '';
     existe_registro := false;
     if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.FAT_CD_M_NFE_DEV.First;
     while (existe_registro=false) and (not dmGeral.FAT_CD_M_NFE_DEV.Eof) do
       begin
         if dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL;ID_SEQUENCIA',
                                      VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').Text,
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
           begin
             existe_registro := true;
           end
         else
           begin
             dmGeral.FAT_CD_M_NFE_DEV.Next;
           end;
       end;

     if existe_registro then
       begin
         fiscal_entrada := dmGeral.FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_FISCAL_DEV').AsString;
         dmGeral.FAT_CD_M_NFE_DEV_ITE.Delete;
         dmGeral.FAT_CD_M_NFE_DEV_ITE.Cancel;
         if not dmGeral.FAT_CD_M_NFE_DEV_ITE.Locate('ID_FISCAL;ID_FISCAL_DEV',
                                          VarArrayOf([dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').Text,
                                                      fiscal_entrada]),[]) then
            begin
              dmGeral.FAT_CD_M_NFE_DEV.Delete;
            end;

       end;

     dmGeral.FAT_CD_M_NFE_ITE.Delete;

     dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := nil;
     dmGeral.FAT_CD_M_NFEfre_valor.OnChange := nil;
     dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := nil;
     dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := nil;

     FatCalculaTotalNfd;

     dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFEvlr_descontoChange;
     dmGeral.FAT_CD_M_NFEfre_valor.OnChange := dmGeral.FAT_CD_M_NFEfre_valorChange;
     dmGeral.FAT_CD_M_NFEvlr_outras_desp.OnChange := dmGeral.FAT_CD_M_NFEvlr_outras_despChange;
     dmGeral.FAT_CD_M_NFEvlr_seguro.OnChange := dmGeral.FAT_CD_M_NFEvlr_seguroChange;

       //Instrução a seguir não é utilizado
     if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_PRODUCAO').AsBoolean = True then
       begin
         FatGeraObsNfd;
       end;

     FatCalculaFrePercentualNfd;

     FatRatNfd('FRE_VALOR');
     FatRatNfd('VLR_SEGURO');
     FatRatNfd('VLR_OUTRAS_DESP');
    // FatRatNfd('VLR_DESCONTO');

     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency -
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
                     dmGeral.FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;
  finally
    //grdItensIButton.Enabled := true;
  end;
end; }


procedure FatValidaNfeIte(DataSet:TDataSet);
begin
  if dmGeral.FAT_CD_M_NFE_ITE.State in [dsInsert,dsEdit] then
     begin
        if not FAT_CD_M_NFE_ITE_TesCampos then
           begin
             abort;
           end;
     end;
end;

procedure FatMascaraNfe(DataSet:TDataSet);
begin
  //Capa
  dmGeral.FAT_CD_M_NFEVLR_MERCADORIA.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_DESCONTO.DisplayFormat      :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_ACRESCIMO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_LIQUIDO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_ISENTA.DisplayFormat        :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_OUTRAS.DisplayFormat        :=CMascaraValor;

  dmGeral.FAT_CD_M_NFEVLR_SEGURO.DisplayFormat        :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_OUTRAS_DESP.DisplayFormat   :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEVLR_ICM_DESC.DisplayFormat      :=CMascaraValor;

  dmGeral.FAT_CD_M_NFEICM_N_VALOR.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEICM_N_BASE.DisplayFormat        :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEICM_S_VALOR.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEICM_S_BASE.DisplayFormat        :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEIPI_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEIPI_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEISS_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEISS_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEFRE_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEFRE_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEFRE_CUSTO.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEPIS_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEPIS_VALOR_ST.DisplayFormat      :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEPIS_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_NFECOF_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_NFECOF_VALOR_ST.DisplayFormat      :=CMascaraValor;
  dmGeral.FAT_CD_M_NFECOF_BASE.DisplayFormat          :=CMascaraValor;

  dmGeral.FAT_CD_M_NFEint_tot_vlr_bruto.DisplayFormat      :=CMascaraValor;
  dmGeral.FAT_CD_M_NFEint_tot_vlr_liquido.DisplayFormat    :=CMascaraValor;

  dmGeral.FAT_CD_M_NFEDTA_EMISSAO.EditMask            :=CMascaraData;
  dmGeral.FAT_CD_M_NFEDTA_DOCUMENTO.EditMask          :=CMascaraData;
  dmGeral.FAT_CD_M_NFEDTA_MOVIMENTO.EditMask          :=CMascaraData;

end;

procedure FatMascaraNfeCxa;
begin
  dmGeral.BUS_CD_M_NFE_CXAVLR_MERCADORIA.DisplayFormat    :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_DESCONTO.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_ACRESCIMO.DisplayFormat     :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_LIQUIDO.DisplayFormat       :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_ISENTA.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_OUTRAS.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_SEGURO.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAVLR_OUTRAS_DESP.DisplayFormat   :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAICM_N_VALOR.DisplayFormat       :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAICM_N_BASE.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAICM_S_VALOR.DisplayFormat       :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAICM_S_BASE.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAIPI_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAIPI_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAISS_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAISS_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAFRE_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAFRE_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAFRE_CUSTO.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAPIS_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAPIS_VALOR_ST.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAPIS_BASE.DisplayFormat          :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXACOF_VALOR.DisplayFormat         :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXACOF_VALOR_ST.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXACOF_BASE.DisplayFormat          :=CMascaraValor;

  dmGeral.BUS_CD_M_NFE_CXADTA_EMISSAO.EditMask            :=CMascaraData;
  dmGeral.BUS_CD_M_NFE_CXADTA_DOCUMENTO.EditMask          :=CMascaraData;
  dmGeral.BUS_CD_M_NFE_CXADTA_MOVIMENTO.EditMask          :=CMascaraData;

  dmGeral.BUS_CD_M_NFE_CXAvlr_liquido_ped_prod_1.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAvlr_liquido_ped_prod_2.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAvlr_liquido_ped_prod_3.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAvlr_liquido_ped_prod_4.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_CXAvlr_liquido_ped_prod_5.DisplayFormat      :=CMascaraValor;

end;

procedure FatMascaraNfeIte(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.DisplayFormat    := CMascaraVlrMerc;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.DisplayFormat  := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_outras.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_isenta.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_seguro.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEvlr_custo.DisplayFormat       := CMascaraValor;

  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_aliquota.DisplayFormat  := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.DisplayFormat := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.DisplayFormat     := CMascaraValor;
end;

procedure FatMascaraNfeIteCxa;
begin
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_unitario.DisplayFormat    := CMascaraVlrMerc;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_mercadoria.DisplayFormat  := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_liquido.DisplayFormat     := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_outras.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_isenta.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_seguro.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAvlr_custo.DisplayFormat       := CMascaraValor;

  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_n_base.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_n_valor.DisplayFormat     := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_n_aliquota.DisplayFormat  := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_per_reducao.DisplayFormat := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_s_base.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_CXAicm_s_valor.DisplayFormat     := CMascaraValor;

  dmGeral.BUS_CD_M_NFE_ITE_CXAdi_vlr_desconto.DisplayFormat     := CMascaraValor;
end;

procedure FatMascaraNfe_2;
begin
  dmGeral.BUS_CD_M_NFE_2VLR_MERCADORIA.DisplayFormat    :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_MERCADORIA.DisplayFormat    :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_DESCONTO.DisplayFormat      :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_ACRESCIMO.DisplayFormat     :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_LIQUIDO.DisplayFormat       :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_ISENTA.DisplayFormat        :=CMascaraValor;
  dmGeral.BUS_CD_M_NFE_2VLR_OUTRAS.DisplayFormat        :=CMascaraValor;
end;

procedure FatMascaraNfeIte_2;
begin
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_unitario.DisplayFormat    := CMascaraVlrMerc;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_mercadoria.DisplayFormat  := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_liquido.DisplayFormat     := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_outras.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_isenta.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_seguro.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2vlr_custo.DisplayFormat       := CMascaraValor;

  dmGeral.BUS_CD_M_NFE_ITE_2icm_n_base.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2icm_n_valor.DisplayFormat     := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2icm_n_aliquota.DisplayFormat  := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2icm_per_reducao.DisplayFormat := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2icm_s_base.DisplayFormat      := CMascaraValor;
  dmGeral.BUS_CD_M_NFE_ITE_2icm_s_valor.DisplayFormat     := CMascaraValor;
end;

procedure FatMascaraNfeNff;
begin
  dmGeral.FAT_CD_M_NFE_NFFnota_frete.DisplayFormat := CMascaraVlrInt;
  dmGeral.FAT_CD_M_NFE_NFFvlr_nota.DisplayFormat   := CMascaraValor;
  dmGeral.FAT_CD_M_NFE_NFFvlr_frete.DisplayFormat   := CMascaraValor;
end;

procedure FatMascaraNfeTit(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_NFE_TITid_forma_pag.DisplayFormat := CMascaraVlrInt;
  dmGeral.FAT_CD_M_NFE_TITvlr_titulo.DisplayFormat   := CMascaraValor;
end;

procedure FatMascaraNfeTitCxa;
begin
  dmGeral.BUS_CD_M_NFE_TIT_CXAid_forma_pag.DisplayFormat := CMascaraVlrInt;
  dmGeral.BUS_CD_M_NFE_TIT_CXAvlr_titulo.DisplayFormat   := CMascaraValor;
end;

procedure FatNovoNfe(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin

{
  DTA_EMISSAO       = emissão da nota;
  DTA_DOCUMENTO     = é a data de entrada da mercadoria.
  DTA_MOVIMENTO     = é a data do sistema gravado por baixo;


  NFE_FINALIDADE    =  1 - normal  2 - Complementar  3 - Ajuste   4 - Devolução

  NFE_TIPO_AMBIENTE =  1 - Produção 2 - Homologação

  NFE_TIPO_EMISSAO  =  1 – normal
                       2 – contigencia fs
                       3 – contigencia scan
                       4 – contigencia dpec
                       5 – contigencia fsda

  --Só tem utilização na NF de entrada.
  SITUACAO_INSPECAO = 0 - Não iniciada
                      1 - Em andamento
                      2 - Concluída

  STATUS       =  0 - Aberto    1 - Encerrada

  NFE_ECF      =  0 - NFE       1 - ECF

  -- Se for true quer dizer que a NF foi emitida pela própria empresa.
  FATURADA     =  True ou False;

  IND_OPERACAO =  0 - Entrada   1 - Saida

  IND_EMITENTE =  0 - Própria   1 - Terceiro

  IND_FRETE    =  0 - Emitente (por conta do emitente da nota, o valor compõe o
                      total da nota, Vai ser rateado para o campo9 FRE_VALOR.
                      Por conta do emitente: - Modalidade conhecida como CIF
                      (Cost, Insurance and Freight - “Custo, Seguros e Frete”).
                      Nesta opção todo o custo e responsabilidade sobre o frete
                      estão por conta do Emitente, ou seja, quem emite a Nota Fiscal.
                  1 - Destinatário (Frete com conhecimento, o frete tem influência
                      no custo e não no total da NF, alimenta automático com o
                      conhecimento e rateia para FRE_CUSTO)
                  2 - Terceiro (Repassa no campo FRE_VALOR=0, e FRE_CUSTO),
                  9 - Sem Frete (Repassa no campo FRE_VALOR=0, e FRE_CUSTO)
                      Definição:

  TIPO_NF      =  E - Nota de entrada  S - Nota de saída  -  D - Dev. de Fornecedor  R - Dev. de cliente   F - Frete

  ORIGEM_NF    =  A - Pedido de Venda  B - Estoque  C - Oficina  X - Importação XML  G - Gerada de cupom fiscal.}

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_NFE.FieldByName('nro_termo').AsInteger := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString :=
         dmGeral.CAD_CD_C_PARint_uf.AsString;


  dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger         := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
  dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger          := 1;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsString             := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsString                := '0';
  dmGeral.FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
  dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
  dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;

  //FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime          := ;
  //FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime        := ;
  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := xDataSis;

  dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';

  // FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').text                   := '';

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').AsInteger        := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := '';
  // FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsString                   := '';

  // Este campo deve ser repassado por a tela de nota, seja qual for.
  // dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger  := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TRANSPORTADORA').AsInteger       := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
  //dmGeral.FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('CANC_DATA').AsString                := '';

  dmGeral.FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

  dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency  := 0;
  dmGeral.FAT_CD_M_NFEvlr_desconto.AsCurrency    := 0;
  dmGeral.FAT_CD_M_NFEvlr_acrescimo.AsCurrency   := 0;
  dmGeral.FAT_CD_M_NFEvlr_liquido.AsCurrency     := 0;

  dmGeral.FAT_CD_M_NFEvlr_isenta.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFEvlr_outras.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFEvlr_seguro.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFEvlr_icm_desc.AsCurrency    := 0;



  dmGeral.FAT_CD_M_NFEicm_n_valor.AsCurrency     := 0;
  dmGeral.FAT_CD_M_NFEicm_n_base.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFEicm_s_valor.AsCurrency     := 0;
  dmGeral.FAT_CD_M_NFEicm_s_base.AsCurrency      := 0;

  // Ficou deste campo ser retirado da tabela de NF. Segundo o doc de entrada.
  //FAT_CD_M_NFEvlr_icm_ser_nao_incide.AsCurrency := 0;

  dmGeral.FAT_CD_M_NFEipi_base.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFEipi_valor.AsCurrency       := 0;

  dmGeral.FAT_CD_M_NFEiss_base.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFEiss_valor.AsCurrency       := 0;

  dmGeral.FAT_CD_M_NFEiss_valor_retido.AsCurrency := 0;

  dmGeral.FAT_CD_M_NFEfre_base.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFEfre_valor.AsCurrency       := 0;

  dmGeral.FAT_CD_M_NFEfre_custo.AsCurrency       := 0;

  dmGeral.FAT_CD_M_NFEcof_valor.AsCurrency       := 0;
  dmGeral.FAT_CD_M_NFEcof_base.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFEcof_valor_st.AsCurrency    := 0;

  dmGeral.FAT_CD_M_NFEpis_valor.AsCurrency       := 0;
  dmGeral.FAT_CD_M_NFEpis_valor_st.AsCurrency    := 0;
  dmGeral.FAT_CD_M_NFEpis_base.AsCurrency        := 0;

  dmGeral.FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
  dmGeral.FAT_CD_M_NFEvlr_outras_desp.AsCurrency                := 0;

  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_part_dest').asCurrency  := 0;
  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_part_orig').asCurrency  := 0;
  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_fcp').asCurrency        := 0;

  // Nota técnica: NT_2016_002_v1.42
  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_fcp_ope_int').asCurrency  := 0;
  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_fcp_st_ope_int').asCurrency  := 0;
  dmGeral.FAT_CD_M_NFE.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency := 0;
end;

procedure FatNovoNfeIte(DataSet: TDataSet);
begin
  dmGeral.FAT_CD_M_NFE_ITEid_fiscal_dev.AsInteger    := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_item.AsInteger              := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_sequencia.AsInteger         := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_cor.AsInteger               := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_tamanho.AsInteger           := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_inf_fisco.AsInteger:=0;
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.AsString                := dmGeral.FAT_CD_M_NFEid_cfo.AsString;
  dmGeral.FAT_CD_M_NFE_ITEID_ST_PIS.AsString             := ' ';
  dmGeral.FAT_CD_M_NFE_ITEID_ST_COF.AsString             := ' ';
  dmGeral.FAT_CD_M_NFE_ITEID_ST_IPI.AsString             := ' ';
  dmGeral.FAT_CD_M_NFE_ITEID_ST_ICM.AsString             := ' ';
  dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat                   := 0;
  dmGeral.FAT_CD_M_NFE_ITEqtde_devolvida.AsFloat         := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFE_ITEper_desconto.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_custo.AsCurrency           := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency         := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_outras.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_isenta.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_seguro.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_acrescimo.AsCurrency       := 0;
  dmGeral.FAT_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_dif_aliq.AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_n_vlr_dif_aliq.AsFloat     := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_icm_ser_nao_incide.AsCurrency := 0;
  dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency              := 0;
  dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEiss_base.AsCurrency              := 0;
  dmGeral.FAT_CD_M_NFE_ITEiss_aliquota.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEiss_valor.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_base.AsCurrency              := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency        := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat         := 0;
  dmGeral.FAT_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency       := 0;
  dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency              := 0;
  dmGeral.FAT_CD_M_NFE_ITEpis_aliquota.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEpis_valor_st.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency              := 0;
  dmGeral.FAT_CD_M_NFE_ITEcof_aliquota.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency             := 0;
  dmGeral.FAT_CD_M_NFE_ITEcof_valor_st.AsCurrency          := 0;
  dmGeral.FAT_CD_M_NFE_ITEpeso_liquido.AsFloat             := 0;
  dmGeral.FAT_CD_M_NFE_ITEpeso_bruto.AsFloat               := 0;
  dmGeral.FAT_CD_M_NFE_ITEnro_pedido.AsInteger             := 0;
  dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency       := 0;
  dmGeral.FAT_CD_M_NFE_ITEnum_lote.AsString                := '';
  dmGeral.FAT_CD_M_NFE_ITEpara_analise_raa.AsInteger       := 0;
  dmGeral.FAT_CD_M_NFE_ITEorigem_mercadoria.AsString       := '';
  dmGeral.FAT_CD_M_NFE_ITEicm_s_per_mva.AsFloat            := 0;
  dmGeral.FAT_CD_M_NFE_ITEicm_s_vlr_mva.AsFloat            := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_cmp_ped.AsInteger  := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger      := 0;
  dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_xml.AsInteger      := 0;
end;

procedure FatCalcNfeIte(DataSet: TDataSet);
begin
 
end;

procedure fatNfeCalcTotal(cdsNfe, cdsNfeIte: TClientDataSet);
Var
  PonteiroItens : TBookmark;
  lTotDescItens: Currency;
  lAtualizaDescPai: Boolean;

  lTotIteFreValor, lTotIteVlrOutDesp, lTotIteVlrSeg,lTotIteVlrIcmDesc,lTotIteVlrIPI,lTotIteIcmSub: Currency;
  lVlrDifFre,lVlrDifOutDesp, lVlrDifVlrSeg,lVlrDifVlrIcmDesc,lvlrDifIPI,lvlrDifIcmSub: Currency;

  lCalcularTrib: Boolean;
begin
  // Este campo é digitado pelo próprio usuário
  // FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency   := 0;

  // Este campo é digitado pelo próprio usuário
  // FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency  := 0;

  // Este campo é digitado pelo próprio usuário
  // FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency   := 0;


  //dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := 0;



  cdsNfe.FieldByName('VLR_ACRESCIMO').AsCurrency  := 0;
  cdsNfe.FieldByName('PESO_LIQUIDO').AsCurrency   := 0;
  cdsNfe.FieldByName('PESO_BRUTO').AsCurrency     := 0;
  cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency    := 0;


  // Na nota de entrada o próprio usuário informa o valor da mercadoria.
  if (cdsNfe.FieldByName('TIPO_NF').text <> 'E')   then
    begin
      cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency := 0;
    end;

  if (not ((cdsNfe.FieldByName('TIPO_NF').text = 'E') and (cdsNfe.FieldByName('ORIGEM_NF').text = 'X')))  then
    begin
      cdsNfe.FieldByName('IPI_VALOR').AsCurrency      := 0;
      cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency    := 0;
    end;

  cdsNfe.FieldByName('IPI_BASE').AsCurrency       := 0;
  //cdsNfe.FieldByName('IPI_VALOR').AsCurrency      := 0;
  cdsNfe.FieldByName('PIS_BASE').AsCurrency       := 0;
  cdsNfe.FieldByName('PIS_VALOR').AsCurrency      := 0;
  cdsNfe.FieldByName('PIS_VALOR_ST').AsCurrency   := 0;
  cdsNfe.FieldByName('COF_BASE').AsCurrency       := 0;
  cdsNfe.FieldByName('COF_VALOR').AsCurrency      := 0;
  cdsNfe.FieldByName('COF_VALOR_ST').AsCurrency   := 0;
  cdsNfe.FieldByName('ICM_N_BASE').AsCurrency     := 0;
  cdsNfe.FieldByName('ICM_N_VALOR').AsCurrency    := 0;
  cdsNfe.FieldByName('ICM_S_BASE').AsCurrency     := 0;
  //cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency    := 0;
  cdsNfe.FieldByName('VLR_OUTRAS').AsCurrency     := 0;
  cdsNfe.FieldByName('VLR_ISENTA').AsCurrency    := 0;
  cdsNfe.FieldByName('ISS_BASE').AsCurrency       := 0;
  cdsNfe.FieldByName('ISS_VALOR').AsCurrency      := 0;
  cdsNfe.FieldByName('ISS_VALOR_RETIDO').AsCurrency := 0;
  cdsNfe.FieldByName('TRI_VALOR').AsCurrency      := 0;

  cdsNfe.fieldByName('vlr_part_dest').asCurrency  := 0;
  cdsNfe.fieldByName('vlr_part_orig').asCurrency  := 0;
  cdsNfe.fieldByName('vlr_fcp').asCurrency        := 0;

  // Nota técnica: NT_2016_002_v1.42
  cdsNfe.fieldByName('vlr_fcp_ope_int').asCurrency  := 0;
  cdsNfe.fieldByName('vlr_fcp_st_ope_int').asCurrency  := 0;
  cdsNfe.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency  := 0;

  cdsNfe.fieldByName('dis_icm_dispensado').asCurrency := 0;

  if (cdsNfe.FieldByName('TIPO_NF').text = 'S') then
     cdsNfe.fieldByName('VLR_ICM_DESC').asCurrency := 0;

  if (cdsNfe.FieldByName('TIPO_NF').text = 'E') then
    begin
     cdsNfe.FieldByName('int_tot_vlr_bruto').AsCurrency :=  0;
     cdsNfe.FieldByName('int_tot_vlr_liquido').AsCurrency := 0;
    end;

  lTotIteFreValor   := 0;
  lTotIteVlrOutDesp := 0;
  lTotIteVlrSeg     := 0;
  lTotIteVlrIcmDesc := 0;
  lTotIteVlrIPI     := 0;
  lTotIteIcmSub     := 0;
  lVlrDifFre        := 0;
  lVlrDifVlrSeg     := 0;
  lVlrDifOutDesp    := 0;
  lTotDescItens     := 0;
  lVlrDifVlrIcmDesc := 0;
  lvlrDifIPI        := 0;
  lvlrDifIcmSub     := 0;

  lCalcularTrib := false;

  cdsNfeIte.First;
  if not cdsNfeIte.IsEmpty then
      begin
        while not cdsNfeIte.eof do
           begin
             lTotDescItens := lTotDescItens +
                              cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency;

             lTotIteFreValor   := lTotIteFreValor +
                                  cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency;
             lTotIteVlrSeg     := lTotIteVlrSeg +
                                  cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency;;
             lTotIteVlrOutDesp := lTotIteVlrOutDesp +
                                  cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency;;

             if (cdsNfe.FieldByName('TIPO_NF').text <> 'S') then
                 lTotIteVlrIcmDesc := lTotIteVlrIcmDesc +
                                     cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency;;

             lTotIteVlrIPI     := lTotIteVlrIPI +
                                  cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency;

             lTotIteIcmSub     := lTotIteIcmSub +
                                  cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency;

             cdsNfeIte.Next;
           end;
       end;

  if cdsNfe.FieldByName('FRE_VALOR').AsCurrency       > 0 then
     lVlrDifFre     :=  cdsNfe.FieldByName('FRE_VALOR').AsCurrency      - lTotIteFreValor;

  if cdsNfe.FieldByName('VLR_SEGURO').AsCurrency > 0 then
     lVlrDifVlrSeg  := cdsNfe.FieldByName('VLR_SEGURO').AsCurrency - lTotIteVlrSeg;

  if cdsNfe.FieldByName('VLR_OUTRAS_DESP').AsCurrency > 0 then
     lVlrDifOutDesp := cdsNfe.FieldByName('VLR_OUTRAS_DESP').AsCurrency - lTotIteVlrOutDesp;

   if (cdsNfe.FieldByName('TIPO_NF').text <> 'S') then
     begin
       if cdsNfe.FieldByName('VLR_ICM_DESC').AsCurrency > 0 then
         lVlrDifVlrIcmDesc := cdsNfe.FieldByName('VLR_ICM_DESC').AsCurrency - lTotIteVlrIcmDesc;
     end;

  if cdsNfe.FieldByName('IPI_VALOR').AsCurrency > 0 then
     lvlrDifIPI        := cdsNfe.FieldByName('IPI_VALOR').AsCurrency - lTotIteVlrIPI;

  if cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency > 0 then
     lvlrDifIcmSub        := cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency - lTotIteIcmSub;

  lAtualizaDescPai := false;
  try
   if cdsNfe.Name = 'FAT_CD_M_NFE' then
       begin
         dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := nil;
         dmGeral.FAT_CD_M_NFEvlr_icm_desc.OnChange := nil;
         dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
       end;


  if (cdsNfe.FieldByName('VLR_DESCONTO').AsCurrency <> lTotDescItens)  then
     begin
       lAtualizaDescPai := true;
       cdsNfe.FieldByName('VLR_DESCONTO').AsCurrency := 0;
     end;

 


  cdsNfeIte.First;
  if not cdsNfeIte.IsEmpty then
     begin
        while not cdsNfeIte.eof do
          begin

            if lVlrDifFre = 0.01 then
               begin
                 cdsNfeIte.Edit;
                 cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency :=
                         cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency + lVlrDifFre;
                 lCalcularTrib := true;
                 lVlrDifFre := 0;
               end
            else
               begin
                 if lVlrDifFre = -0.01 then
                    begin
                      if cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency > 0 then
                         begin
                           cdsNfeIte.Edit;
                           cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency  :=
                                      cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency - abs(lVlrDifFre);
                           lCalcularTrib := true;
                           lVlrDifFre := 0;
                         end;
                    end;
               end;

            if lVlrDifVlrSeg = 0.01 then
               begin
                 cdsNfeIte.Edit;
                 cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency  :=
                          cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency + lVlrDifVlrSeg;
                 lCalcularTrib := true;
                 lVlrDifVlrSeg := 0;
               end
            else
               begin
                 if lVlrDifVlrSeg = -0.01 then
                    begin
                      if cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency > 0 then
                         begin
                           cdsNfeIte.Edit;
                           cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency  :=
                                      cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency - abs(lVlrDifVlrSeg);
                           lCalcularTrib := true;
                           lVlrDifVlrSeg := 0;
                         end;
                    end;
               end;

            if lVlrDifOutDesp = 0.01 then
               begin
                 cdsNfeIte.Edit;
                 cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency  :=
                          cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency + lVlrDifOutDesp;
                 lCalcularTrib := true;
                 lVlrDifOutDesp := 0;
               end
            else
               begin
                 if lVlrDifOutDesp = -0.01 then
                    begin
                      if cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency > 0 then
                         begin
                           cdsNfeIte.Edit;
                           cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency  :=
                                      cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency - abs(lVlrDifOutDesp);
                           lCalcularTrib := true;
                           lVlrDifOutDesp := 0;
                         end;
                    end;
               end;

          if (cdsNfe.FieldByName('TIPO_NF').text <> 'S') then
              begin
                if lVlrDifVlrIcmDesc = 0.01 then
                   begin
                     cdsNfeIte.Edit;
                     cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency  :=
                              cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency + lVlrDifVlrIcmDesc;
                     lCalcularTrib := true;
                     lVlrDifVlrIcmDesc := 0;
                   end
                else
                   begin
                     if lVlrDifVlrIcmDesc = -0.01 then
                        begin
                          if cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency > 0 then
                             begin
                               cdsNfeIte.Edit;
                               cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency  :=
                                          cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency - abs(lVlrDifVlrIcmDesc);
                               lCalcularTrib := true;
                               lVlrDifVlrIcmDesc := 0;
                             end;
                        end;
                   end;
              end;



           if lvlrDifIPI = 0.01 then
               begin
                 cdsNfeIte.Edit;
                 cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency  :=
                          cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency + lvlrDifIPI;
                 lCalcularTrib := true;
                 lvlrDifIPI := 0;
               end
            else
               begin
                 if lvlrDifIPI = -0.01 then
                    begin
                      if cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency > 0 then
                         begin
                           cdsNfeIte.Edit;
                           cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency  :=
                                      cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency - abs(lvlrDifIPI);
                           lCalcularTrib := true;
                           lvlrDifIPI := 0;
                         end;
                    end;
               end;

            if lvlrDifIcmSub = 0.01 then
               begin
                 cdsNfeIte.Edit;
                 cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency  :=
                          cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency + lvlrDifIcmSub;
                 lCalcularTrib := true;
                 lvlrDifIcmSub := 0;
               end
            else
               begin
                 if lvlrDifIcmSub = -0.01 then
                    begin
                      if cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency > 0 then
                         begin
                           cdsNfeIte.Edit;
                           cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency  :=
                                      cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency - abs(lvlrDifIcmSub);
                           lCalcularTrib := true;
                           lvlrDifIcmSub := 0;
                         end;
                    end;
               end;

            // Esse código tem que ser aqui, logo após FRE_VALOR, VLR_SEGURO E   VLR_OUTRAS_DESP
            // devido ao cálculo da tributação.
            if lCalcularTrib then
               begin
                 dmGeral.BusItens(0,cdsNfeIte.FieldByName('id_item').AsString);
                 cdsNfeIte.Edit;
                 dmGeral.CalculaTributos(cdsNfe,cdsNfeIte);
               end;


             if cdsNfe.FieldByName('TIPO_NF').AsString = 'E' then
               begin
                 cdsNfeIte.Edit;
                 {cdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                     cdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency
                         - cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency
                         - cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency    +
                        cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency    +
                        cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency       +
                        cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency      +
                        cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                        cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency; }

                 cdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                     cdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency
                         - cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency;


               end;



            cdsNfe.FieldByName('IPI_BASE').AsCurrency       :=
                cdsNfe.FieldByName('IPI_BASE').AsCurrency   +
                cdsNfeIte.FieldByName('IPI_BASE').AsCurrency;

            if (not ((cdsNfe.FieldByName('TIPO_NF').text = 'E') and (cdsNfe.FieldByName('ORIGEM_NF').text = 'X')))  then
               begin
                cdsNfe.FieldByName('IPI_VALOR').AsCurrency      :=
                   cdsNfe.FieldByName('IPI_VALOR').AsCurrency  +
                   cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency;
               end;

            cdsNfe.FieldByName('PIS_BASE').AsCurrency       :=
                cdsNfe.FieldByName('PIS_BASE').AsCurrency +
                cdsNfeIte.FieldByName('PIS_BASE').AsCurrency;

            cdsNfe.FieldByName('PIS_VALOR').AsCurrency      :=
                cdsNfe.FieldByName('PIS_VALOR').AsCurrency   +
                cdsNfeIte.FieldByName('PIS_VALOR').AsCurrency;

            cdsNfe.FieldByName('PIS_VALOR_ST').AsCurrency   :=
                cdsNfe.FieldByName('PIS_VALOR_ST').AsCurrency +
                cdsNfeIte.FieldByName('PIS_VALOR_ST').AsCurrency;

            cdsNfe.FieldByName('COF_BASE').AsCurrency       :=
                cdsNfe.FieldByName('COF_BASE').AsCurrency   +
                cdsNfeIte.FieldByName('COF_BASE').AsCurrency;

            cdsNfe.FieldByName('COF_VALOR').AsCurrency      :=
                cdsNfe.FieldByName('COF_VALOR').AsCurrency  +
                cdsNfeIte.FieldByName('COF_VALOR').AsCurrency;

            cdsNfe.FieldByName('COF_VALOR_ST').AsCurrency   :=
                cdsNfe.FieldByName('COF_VALOR_ST').AsCurrency +
                cdsNfeIte.FieldByName('COF_VALOR_ST').AsCurrency;

            cdsNfe.FieldByName('ICM_N_BASE').AsCurrency     :=
                cdsNfe.FieldByName('ICM_N_BASE').AsCurrency +
                cdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency;

            cdsNfe.FieldByName('ICM_N_VALOR').AsCurrency    :=
                cdsNfe.FieldByName('ICM_N_VALOR').AsCurrency +
                cdsNfeIte.FieldByName('ICM_N_VALOR').AsCurrency;

            cdsNfe.FieldByName('ICM_S_BASE').AsCurrency     :=
                cdsNfe.FieldByName('ICM_S_BASE').AsCurrency +
                cdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency;

            if (not ((cdsNfe.FieldByName('TIPO_NF').text = 'E') and (cdsNfe.FieldByName('ORIGEM_NF').text = 'X')))  then
               begin
                cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency    :=
                   cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency +
                   cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency;
               end;

            cdsNfe.FieldByName('VLR_OUTRAS').AsCurrency     :=
                cdsNfe.FieldByName('VLR_OUTRAS').AsCurrency +
                cdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency;

            cdsNfe.FieldByName('VLR_ISENTA').AsCurrency    :=
                cdsNfe.FieldByName('VLR_ISENTA').AsCurrency +
                cdsNfeIte.FieldByName('VLR_ISENTA').AsCurrency;

            cdsNfe.FieldByName('ISS_BASE').AsCurrency       :=
                cdsNfe.FieldByName('ISS_BASE').AsCurrency +
                cdsNfeIte.FieldByName('ISS_BASE').AsCurrency;

            cdsNfe.FieldByName('ISS_VALOR').AsCurrency      :=
                cdsNfe.FieldByName('ISS_VALOR').AsCurrency +
                cdsNfeIte.FieldByName('ISS_VALOR').AsCurrency;

            cdsNfe.FieldByName('ISS_VALOR_RETIDO').AsCurrency      :=
                cdsNfe.FieldByName('ISS_VALOR_RETIDO').AsCurrency +
                cdsNfeIte.FieldByName('ISS_VALOR_RETIDO').AsCurrency;


            cdsNfe.FieldByName('TRI_VALOR').AsCurrency      :=
                cdsNfe.FieldByName('TRI_VALOR').AsCurrency +
                cdsNfeIte.FieldByName('TRI_VALOR').AsCurrency;

            cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency :=
                cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency +
                cdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;

            cdsNfe.FieldByName('PESO_LIQUIDO').AsCurrency   :=
                    cdsNfe.FieldByName('PESO_LIQUIDO').AsCurrency +
                            cdsNfeIte.FieldByName('PESO_LIQUIDO').AsCurrency;

            cdsNfe.FieldByName('PESO_BRUTO').AsCurrency     :=
                    cdsNfe.FieldByName('PESO_BRUTO').AsCurrency +
                            cdsNfeIte.FieldByName('PESO_BRUTO').AsCurrency;


            cdsNfe.fieldByName('vlr_part_dest').asCurrency :=
                  cdsNfe.fieldByName('vlr_part_dest').asCurrency   +
                     cdsNfeIte.fieldByName('vlr_part_dest').asCurrency;

            cdsNfe.fieldByName('vlr_part_orig').asCurrency :=
                  cdsNfe.fieldByName('vlr_part_orig').asCurrency   +
                     cdsNfeIte.fieldByName('vlr_part_orig').asCurrency;

            cdsNfe.fieldByName('vlr_fcp').asCurrency       :=
                   cdsNfe.fieldByName('vlr_fcp').asCurrency +
                       cdsNfeIte.fieldByName('vlr_fcp').asCurrency;


             // Nota técnica: NT_2016_002_v1.42

            cdsNfe.fieldByName('vlr_fcp_ope_int').asCurrency :=
                  cdsNfe.fieldByName('vlr_fcp_ope_int').asCurrency   +
                     cdsNfeIte.fieldByName('vlr_fcp_ope_int').asCurrency;

            cdsNfe.fieldByName('vlr_fcp_st_ope_int').asCurrency :=
                  cdsNfe.fieldByName('vlr_fcp_st_ope_int').asCurrency   +
                     cdsNfeIte.fieldByName('vlr_fcp_st_ope_int').asCurrency;

            cdsNfe.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency       :=
                   cdsNfe.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency +
                       cdsNfeIte.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency;
            // --------------------------------------------------------------

            cdsNfe.fieldByName('dis_icm_dispensado').asCurrency       :=
                   cdsNfe.fieldByName('dis_icm_dispensado').asCurrency +
                       cdsNfeIte.fieldByName('dis_icm_dispensado').asCurrency;

            if (cdsNfe.FieldByName('TIPO_NF').text = 'S') then
              begin
                 cdsNfe.FieldByName('VLR_ICM_DESC').AsCurrency     :=
                    cdsNfe.FieldByName('VLR_ICM_DESC').AsCurrency +
                    cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency;
              end;


           // Na nota de entrada o próprio usuário informa o valor da mercadoria.
           if (cdsNfe.FieldByName('TIPO_NF').text <> 'E') then
              begin
                 cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency :=
                     cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency +
                     cdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
              end;

           if (cdsNfe.FieldByName('TIPO_NF').text = 'E') then
              begin
                 cdsNfe.FieldByName('int_tot_vlr_bruto').AsCurrency :=
                   cdsNfe.FieldByName('int_tot_vlr_bruto').AsCurrency +
                           cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency;

                 cdsNfe.FieldByName('int_tot_vlr_liquido').AsCurrency :=
                    cdsNfe.FieldByName('int_tot_vlr_liquido').AsCurrency +
                           cdsNfeIte.FieldByName('vlr_liquido').AsCurrency;
              end;

           if lAtualizaDescPai = true then
              begin
                cdsNfe.FieldByName('VLR_DESCONTO').AsCurrency   :=
                     cdsNfe.FieldByName('VLR_DESCONTO').AsCurrency  +
                     cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency;
              end;

           cdsNfeIte.Next;
          end;
        FatAtualizarTotalLiqNfe(cdsNfe);
     end;
  finally
     if cdsNfe.Name = 'FAT_CD_M_NFE' then
        begin
          dmGeral.FAT_CD_M_NFE_ITE.AfterPost := dmGeral.FAT_CD_M_NFE_ITEAfterPost;
          dmGeral.FAT_CD_M_NFEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFEvlr_descontoChange;
          dmGeral.FAT_CD_M_NFEvlr_icm_desc.OnChange := dmGeral.FAT_CD_M_NFEvlr_icm_descChange;
        end;
  end;
end;

procedure FatAtualizarTotalLiqNfe(cdsNfe: TClientDataSet);
begin

  cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency   :=
       cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency
           - cdsNfe.FieldByName('VLR_ICM_DESC').AsCurrency
           - cdsNfe.FieldByName('VLR_DESCONTO').AsCurrency    +
          cdsNfe.FieldByName('ICM_S_VALOR').AsCurrency    +
          cdsNfe.FieldByName('FRE_VALOR').AsCurrency       +
          cdsNfe.FieldByName('VLR_SEGURO').AsCurrency      +
          //cdsNfe.FieldByName('VLR_OUTRAS').AsCurrency +
          cdsNfe.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
          cdsNfe.FieldByName('IPI_VALOR').AsCurrency;



  if (cdsNfe.FieldByName('ped_mod_frete').AsInteger = 1) then
     begin
         cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency   :=
            cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency -
            cdsNfe.FieldByName('PED_VLR_FRETE').AsCurrency;
     end;


  if cdsNfe.FieldByName('TIPO_NF').text = 'F' then // Nota que é   Frete
     begin
       cdsNfe.FieldByName('VLR_LIQUIDO').AsCurrency :=
               cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency;
     end;

end;

procedure FatAtuaVlrOutrasNFE_FRE(cdsNfe: TClientDataSet);
begin
  if cdsNfe.FieldByName('TIPO_NF').text = 'F' then // Nota que é Frete
     begin
       cdsNfe.FieldByName('VLR_OUTRAS').AsCurrency :=
          cdsNfe.FieldByName('VLR_MERCADORIA').AsCurrency -
               cdsNfe.FieldByName('ICM_N_BASE').AsCurrency;
     end;
end;


procedure FatNovoNfeTit(DataSet: TDataSet);
begin
  dmGeral.FAT_CD_M_NFE_TITid_forma_pag.AsInteger    := 0;
  dmGeral.FAT_CD_M_NFE_TITnum_parcela.AsString      := '0';
  dmGeral.FAT_CD_M_NFE_TITdias.AsInteger            := 0;
  dmGeral.FAT_CD_M_NFE_TITvlr_titulo.AsCurrency     := 0;
  dmGeral.FAT_CD_M_NFE_TITid_plano.AsString         := '';
  //dmGeral.FAT_CD_M_NFE_TITid_ccusto.AsInteger       := 0;
  dmGeral.FAT_CD_M_NFE_TITche_banco.AsString        := '';
  dmGeral.FAT_CD_M_NFE_TITche_agencia.AsString      := '';
  dmGeral.FAT_CD_M_NFE_TITche_conta.AsString        := '';
  dmGeral.FAT_CD_M_NFE_TITche_numero.AsInteger      := 0;
  dmGeral.FAT_CD_M_NFE_TITche_emitente.AsString     := '';
  //dmGeral.FAT_CD_M_NFE_TITbol_nosso_numero.AsString := '0';
end;

procedure FatNovoNfeIqmAna;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('num_plano_acao').AsInteger :=
         SMPrincipal.enValorChave('fat_tb_m_nfe_ite_iqm_ana');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;


procedure FatRatVlrEntreItens(const lVlrTotDoc, lVlrMontante: Currency; lNomeCampoIte, lNomeCampoBaseIte, lNomeCampoPerIte: String);
var
  lPonteiroItens: TBookmark;
 // lPercTemp, lPercAcum: Currency;
  lVlrTemp, lVlrAcum: Currency;
  lQtdeReg, lNroReg: Integer;
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL


  try

    {FAT_CD_M_NFE_ITE.AfterPost := nil;
    FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
    FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;}


  dmGeral.FAT_CD_M_NFE_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_NFE_ITE.RecordCount;
  lNroReg   := 0;
 // lPercAcum := 0;
  lVlrAcum := 0;
  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_NFE_ITE.First;
        if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_NFE_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.edit;
                  inc(lNroReg);
                  {if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end; }
                  if lNroReg < lQtdeReg then
                     begin
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo(((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency/lVlrTotDoc) * lVlrMontante),-2);
                     end
                  else
                     begin
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency := lVlrMontante - lVlrAcum;
                     end;

                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin

                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;  }

                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                     end;

                   if lNomeCampoIte = 'FRE_VALOR' then
                     begin
                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +

                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency; }
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     end;

                   if lNomeCampoIte = 'VLR_SEGURO' then
                     begin
                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +

                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency; }
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     end;

                   if lNomeCampoIte = 'VLR_OUTRAS_DESP' then
                     begin
                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +

                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency; }

                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     end;

                  if lNomeCampoIte = 'VLR_ICM_DESC' then
                     begin
                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +

                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency; }

                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     end;


                  if trim(lNomeCampoBaseIte) <> '' then
                     begin
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency :=
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;

                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                      // dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := lPercTemp;
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoPerIte).AsCurrency :=
                          100*(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency /
                          dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency);

                      { dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoPerIte).AsCurrency :=
                          100*(dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency /
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency); }
                     end;
                 // lPercAcum := lPercAcum + lPercTemp;
                  lVlrAcum := lVlrAcum + dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                  dmGeral.FAT_CD_M_NFE_ITE.post;
                  dmGeral.FAT_CD_M_NFE_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_NFE_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_NFE_ITE.First;
       if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_NFE_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_NFE_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      {dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;}
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                    end;

                 if lNomeCampoIte = 'FRE_VALOR' then
                    begin
                     { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency  +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency; }

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;

                 if lNomeCampoIte = 'VLR_SEGURO' then
                    begin
                     { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency  +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency       +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;  }

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;

                 if lNomeCampoIte = 'VLR_OUTRAS_DESP' then
                    begin
                      {dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;}
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;

                 if lNomeCampoIte = 'VLR_ICM_DESC' then
                    begin
                      {dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency     +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency      +
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoIte).AsCurrency;}
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                               - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;

                 if trim(lNomeCampoBaseIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency := 0;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_NFE_ITE.Post;
                 dmGeral.FAT_CD_M_NFE_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_NFE_ITE.First;
     end;
  finally
   { FAT_CD_M_NFE_ITE.afterpost :=  FAT_CD_M_NFE_ITEAfterPost;
    FAT_CD_M_NFE_ITEper_desconto.OnChange := FAT_CD_M_NFE_ITEper_descontoChange;
    FAT_CD_M_NFE_ITEvlr_desconto.OnChange := FAT_CD_M_NFE_ITEvlr_descontoChange;}
  end;
end;


procedure CalcPesoItem(cdsItens: TClientDataSet);
begin

  dmGeral.BusItens(0,cdsItens.FieldByName('ID_ITEM').text);

  if trim(dmGeral.BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
     begin
       cdsItens.FieldByName('PESO_LIQUIDO').AsFloat :=
                dmGeral.BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                cdsItens.FieldByName('QTDE').AsFloat;
     end;

  if trim(dmGeral.BUS_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
     begin
       cdsItens.FieldByName('PESO_BRUTO').AsFloat :=
                dmGeral.BUS_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                cdsItens.FieldByName('QTDE').AsFloat;
     end;
end;

procedure BuscarCstIcm(CdsNfeIte: TClientDataSet; lTipoEmitente: String; var lRegimeSimples:Boolean);
var
   lDocIE, lUFEmitente,lIdSitICMS : String;
begin
  lRegimeSimples := false;

  if lTipoEmitente = 'C' then
     begin
       lDocIE        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString;
       lUFEmitente   := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
       dmGeral.BusRamAtiv(0,dmGeral.CAD_CD_C_PARid_ramo.Text);

       if dmGeral.BUS_CD_C_RAMregime_tributario.AsInteger = 0 then
          lRegimeSimples := true;
     end;

  if lTipoEmitente = 'F' then
     begin
       lDocIE      := dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString;
       lUFEmitente := dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;

       if dmGeral.BUS_CD_C_FORregime.AsInteger = 2 then
          lRegimeSimples := true;
     end;

  if ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
       begin
         if lRegimeSimples then
            CdsNfeIte.FieldByName('ID_ST_ICM').AsString  :=
                      trim(dmGeral.BUS_CD_C_TRI_REG.FieldByName('cnt_csosn').Text)
         else
            CdsNfeIte.FieldByName('ID_ST_ICM').AsString  :=
                      trim(dmGeral.BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').Text);
      end
  else
      begin
         if lRegimeSimples then
            CdsNfeIte.FieldByName('ID_ST_ICM').AsString :=
                      trim(dmGeral.BUS_CD_C_TRI_REG.FieldByName('nct_csosn').Text)
         else
            CdsNfeIte.FieldByName('ID_ST_ICM').AsString :=
                      trim(dmGeral.BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').Text);

       end;
end;

function  VerifTribItem(lTipoNf,IdEmpresa,IdEmitente,IdItem,IdTipoEstoque,TipoAcao: String):Boolean;
var
  msg:String;
begin
  result := true;
  // TipoAcao - V - Utilizado para verificar se tá ok.
  //            C - Utilizado para calcular a tributação do item.

  dmGeral.BusTipoEstoque(0,IdTipoEstoque);
  dmGeral.BusItens(0,IdItem);
  dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').text);


  if (lTipoNf = 'E') or
     (lTipoNf = 'D') then // NF de (Entrada) e (Dev. fornecedor)
     begin
       dmGeral.BusFornecedor(0,IdEmitente);
       //removi o comentário para tratamento de nota de dev. do fornecedor. Data: 06/01/2015. Responsável: Luan
       if (lTipoNf = 'E') or (lTipoNf = 'D') then
         begin
           if trim(dmGeral.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').Text) = '' then
             begin
               msg := msg + 'Tributação do grupo'+#13+#10;
             end;
           if trim(IdTipoEstoque) = '' then
             begin
               msg := msg + 'Tipo de Estoque'+#13+#10;
             end;
           if trim(dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').Text) = '' then
             begin
               msg := msg + 'UF do Fornecedor'+#13+#10;
             end;
           if trim(IdEmpresa) = '' then
             begin
               msg := msg + 'Cod. Empresa'+#13+#10;
             end;

           if msg = '' then
             begin
               dmGeral.BusTriReg(dmGeral.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').Text,
                         IdTipoEstoque,
                         dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').Text,
                         IdEmpresa);
             end
           else
             begin
               ShowMessage('Devem estar preenchidos os seguintes campos: '+#13+#10+msg);
               result := false;
               exit;
               //abort;
             end;
         end;
     end;

   if (lTipoNf = 'S') or // NF (Saída) e (Dev. Cliente);
      (lTipoNf = 'R') then
     begin
       dmGeral.BusCliente(0,IdEmitente);

       dmGeral.BusTriReg(dmGeral.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').Text,
                         IdTipoEstoque,
                         dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').Text,
                         IdEmpresa);

     end;

   if TipoAcao = 'V' then
      begin
        if dmGeral.BUS_CD_C_TRI_REG.IsEmpty then
           begin
             result := false;
           end;
        dmGeral.BUS_CD_C_TME.close;
        dmGeral.BUS_CD_C_ITE.close;
        dmGeral.BUS_CD_C_GRU.Close;
        dmGeral.BUS_CD_C_CFO.Close;
        dmGeral.BUS_CD_C_CLI.Close;
        dmGeral.BUS_CD_C_FOR.Close;
      end;

end;


function  CalculaICMSNFE(CdsNfe,CdsNfeIte: TClientDataSet): Boolean;
begin
      CdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency  :=0;
     CdsNfeIte.FieldByName('VLR_ISENTA').AsCurrency := 0;

   if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'20-60-70-90') <> 0 then
           begin
             CdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency  :=
                        // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                           // que detectou que o IMCS estava sendo cálculado de maneira errada
                           // por Maxsuel Victor, 18/03/2016
                        //fOI destrocado vlr_liquido por vlr_mercadoria. Tarefa:1921.Data:03/06/2016.Resp:Luan
                       //CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency -
                       CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency -
                       CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency;
           end;

    if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'30-40-41-50') <> 0 then
            begin
              CdsNfeIte.FieldByName('VLR_ISENTA').AsCurrency :=

                        // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                           // que detectou que o IMCS estava sendo cálculado de maneira errada
                           // por Maxsuel Victor, 18/03/2016
                        //CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency -
                        CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency -
                        CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency;
            end;



end;


function CalculaICMS(CdsNfe,CdsNfeIte: TClientDataSet; TipoEmitente: String;var lRegimeSimples:Boolean): Boolean;
var
   lDocIE, lUFEmitente,lIdSitICMS : String;
   lTipo_Cliente, lContribuinte: Integer;
   lPerAliquota, lPercReducao: Currency;
   BaseICM_Dispensado,vlrICM_Dispensado: Currency;
begin
  { TipoEmitente: C - Cliente
                  F - Fornecedor
  }
  lPercReducao := 0;

  CdsNfeIte.FieldByName('ICM_S_PER_MVA').AsCurrency      := 0;
  CdsNfeIte.FieldByName('ICM_S_VLR_MVA').AsCurrency      := 0;
  CdsNfeIte.FieldByName('ICM_PER_REDUCAO').AsFloat       := 0;

  CdsNfeIte.FieldByName('dis_aliquota').AsCurrency       := 0;
  CdsNfeIte.FieldByName('dis_icm_dispensado').AsFloat    := 0;


  if (CdsNfe.FieldByName('TIPO_NF').text <> 'E') then
      begin
        CdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsFloat  := 0;
        CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency   := 0;
        CdsNfeIte.FieldByName('ICM_N_VALOR').AsCurrency  := 0;
        CdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency   := 0;
        CdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency  := 0;

        CdsNfeIte.FieldByName('vlr_fcp_ope_int').AsCurrency        := 0;
        CdsNfeIte.FieldByName('per_fcp_ope_int').AsCurrency        := 0;
        CdsNfeIte.FieldByName('vlr_fcp_base_ope_int').AsCurrency   := 0;
        CdsNfeIte.FieldByName('vlr_fcp_st_ope_int').AsCurrency     := 0;
        CdsNfeIte.FieldByName('per_fcp_st_ope_int').AsCurrency     := 0;
        CdsNfeIte.FieldByName('vlr_fcp_st_base_ope_int').AsCurrency         := 0;
        CdsNfeIte.FieldByName('per_st_sup_cons_final_ope_int').AsCurrency   := 0;
        CdsNfeIte.FieldByName('vlr_fcp_st_ret_ope_int').AsCurrency        := 0;
        CdsNfeIte.FieldByName('per_fcp_st_ret_ope_int').AsCurrency        := 0;
        CdsNfeIte.FieldByName('vlr_fcp_st_ret_base_ope_int').AsCurrency   := 0;

      end;

  CdsNfeIte.FieldByName('ICM_N_DIF_ALIQ').AsCurrency     := 0;
  CdsNfeIte.FieldByName('ICM_N_VLR_DIF_ALIQ').AsCurrency := 0;

  CdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency         := 0;
  CdsNfeIte.FieldByName('VLR_ISENTA').AsCurrency         := 0;

  if not lRegimeSimples then
     begin
        lIdSitICMS    := '';
        lPerAliquota  := 0;
        lPercReducao  := 0;
        lTipo_Cliente := -1;

        if TipoEmitente = 'C' then
           begin
             lDocIE        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString;
             lUFEmitente   := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
             lTipo_Cliente := dmGeral.BUS_CD_C_CLI.FieldByName('TIPO_CLIENTE').AsInteger;
             lContribuinte := dmGeral.BUS_CD_C_CLI.FieldByName('CONTRIBUINTE').AsInteger;
           end;

        if TipoEmitente = 'F' then
           begin
             lDocIE      := dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString;
             lUFEmitente := dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;
             lContribuinte := dmGeral.BUS_CD_C_FOR.FieldByName('CONTRIBUINTE').AsInteger;
           end;

       // Comentado depois que sangia viu um erro quando o cliente era pessoa JURIDICA  e não contribuinte.
          //  por Maxsuel
       // if ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
        if lContribuinte = 0 then  // Contribuinte de ICMS
             begin
               if (CdsNfe.FieldByName('TIPO_NF').text <> 'E') then
                  begin
                     CdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency  :=
                             dmGeral.BUS_CD_C_TRI_REG.FieldByName('CNT_ALIQUOTA').AsCurrency;
                     lPercReducao  := dmGeral.BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                  end;
            end
        else
            begin
              if (CdsNfe.FieldByName('TIPO_NF').text <> 'E') then
                  begin
                     CdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency  :=
                             dmGeral.BUS_CD_C_TRI_REG.FieldByName('NCT_ALIQUOTA').AsCurrency;
                     lPercReducao  := dmGeral.BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                  end;
             end;

       // Inserido por Maxsuel em 03/02/2017 para atender ICMS DISPENSADO , a pedido de Mariel.
       CdsNfeIte.FieldByName('dis_aliquota').AsCurrency :=
                 dmGeral.BUS_CD_C_TRI_REG.FieldByName('dis_aliquota').AsCurrency;

       //Inseri essa linha de codigo pois será util para o relatorio de estorno de credito
       CdsNfeIte.FieldByName('ICM_PER_REDUCAO').AsCurrency := lPercReducao;

        // Comentado, devido reunião com Mariel e Sangia em 02/05/2014
        {// A diferença de Alíquota deve ser calculado só na compra ou na devolução da compra
        if CAD_CD_C_PAR_CTR.FieldByName('calcula_autom_dif_alq').AsBoolean then
           begin
             if ( (FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString         = 'E') and (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) ) or  // Entrada de mercadoria
                ( (BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1  ) and (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 1)) then  // Devolução da nota de entrada
                 begin
                   FAT_CD_M_NFE_ITE.FieldByName('ICM_N_DIF_ALIQ').AsCurrency     :=  CAD_CD_C_PAR_CTR.FieldByName('aliq_interna_icms').AsCurrency -
                                                                                     lPerAliquota;

                   FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VLR_DIF_ALIQ').AsCurrency :=    roundTo(((FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency *
                                                                                         FAT_CD_M_NFE_ITE.FieldByName('ICM_N_DIF_ALIQ').AsCurrency) / 100),-2);
                 end;
           end;}

        if (CdsNfe.FieldByName('TIPO_NF').text <> 'E') then
            begin
              // por Maxsuel Victor, em 24/07/2020, foi retirado a tributação 90
              if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'00-10') <> 0 then
                 begin
                    CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency :=
                              // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                                 // que detectou que o IMCS estava sendo cálculado de maneira errada
                                 // por Maxsuel Victor, 18/03/2016

                              //    CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency +
                              CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency +
                              CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency +
                              CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency;
                 end
              else
                 begin
                   if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'20-70') <> 0 then
                      begin
                        CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency  :=
                                   // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                                   // que detectou que o IMCS estava sendo cálculado de maneira errada
                                   // por Maxsuel Victor, 18/03/2016

                                  (CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency  +
                                   CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency +
                                   CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency)  -

                                  roundTo( ((CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency * lPercReducao) / 100),-2);
                      end
                   else
                      begin
                         if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'30-40-41-50-51-60-101-102-103-201-202-203-300-400-500-900 ') <> 0 then
                            begin
                              //FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsFloat  := lPerAliquota;
                            end;
                      end;
                 end;

              CdsNfeIte.FieldByName('ICM_N_VALOR').AsCurrency   :=
                        roundTo(((CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency *
                        CdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency) / 100),-2);

              // If inserido por Maxsuel em 03/02/2017 a pedido de Mariel.
              if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('calc_icm_dispensado').AsBoolean)
                 and
                 ((CdsNfe.FieldByName('int_classe').AsString = 'SP10')or(CdsNfe.FieldByName('int_classe').AsString = 'SP70'))
                 and
                 ( (CdsNfeIte.FieldByName('ID_ST_ICM').AsString <>'10') and
                   (CdsNfeIte.FieldByName('ID_ST_ICM').AsString <>'30') and
                   (CdsNfeIte.FieldByName('ID_ST_ICM').AsString <>'70')
                 ) then
                 begin
                   if CdsNfeIte.FieldByName('dis_aliquota').AsCurrency > 0 then
                      begin
                        {ShowMessage('Operação cancelada!' + #13 +
                                    'O sistema está configurado para calcular o ICMS dispensado' + #13 +
                                    'mas a Alíquota Dispensado está ZERADA na tributação do item: ' +
                                     CdsNfeIte.FieldByName('ID_ITEM').AsString + ' - ' +
                                     CdsNfeIte.FieldByName('int_desc_item').AsString);
                        CdsNfe.Cancel;
                        abort;}

                        BaseICM_Dispensado :=
                                CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency +
                                   CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency +
                                        CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency;

                        vlrICM_Dispensado := roundTo(((BaseICM_Dispensado *
                                             CdsNfeIte.FieldByName('dis_aliquota').AsCurrency) / 100),-2);

                        CdsNfeIte.FieldByName('dis_icm_dispensado').AsCurrency :=
                            vlrICM_Dispensado - CdsNfeIte.FieldByName('ICM_N_VALOR').AsCurrency;
                      end;
                 end;
            end;





        if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'20-60-70-90') <> 0 then
           begin
             CdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency  :=
                        // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                           // que detectou que o IMCS estava sendo cálculado de maneira errada
                           // por Maxsuel Victor, 18/03/2016
                        //fOI destrocado vlr_liquido por vlr_mercadoria. Tarefa:1921.Data:03/06/2016.Resp:Luan
                       //CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency -
                       CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency -
                       CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency;
           end;


         if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'30-40-41-50') <> 0 then
            begin
              CdsNfeIte.FieldByName('VLR_ISENTA').AsCurrency :=

                        // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                           // que detectou que o IMCS estava sendo cálculado de maneira errada
                           // por Maxsuel Victor, 18/03/2016
                        //CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency -
                        CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency -
                        CdsNfeIte.FieldByName('ICM_N_BASE').AsCurrency;
            end;


         if pos(CdsNfeIte.FieldByName('ID_ST_ICM').AsString,'10-30-70') <> 0 then
            begin
              // Cálculo de substituição
              // Deve ser feito o seguinte teste
              // No caso de Cliente revenda esse cálculo deve ser feito, senão aplicar zero nos campos
              // Para nota fiscal de entrada deve ser feito normalmente o cálculo do imposto.

              CdsNfeIte.FieldByName('ICM_S_PER_MVA').AsCurrency :=
                        dmGeral.BUS_CD_C_GRU.FieldByName('MVA').AsCurrency;
              // Comentário inserido por Maxsuel devido reunião com sangia, no dia 23-09-2014
              // pois o cálculo de icms substituído na NFe de entrada será feito manualmente.

              //if (CdsNfe.FieldByName('TIPO_NF').AsString = 'E') or
              //   ( (CdsNfe.FieldByName('TIPO_NF').AsString = 'S') and (lTipo_Cliente = 1) ) then

              if ( (CdsNfe.FieldByName('TIPO_NF').AsString = 'S') and (lTipo_Cliente = 1) ) then
                 begin
                    if CdsNfeIte.FieldByName('ICM_S_PER_MVA').AsCurrency > 0 then
                       begin
                         CdsNfeIte.FieldByName('ICM_S_VLR_MVA').AsCurrency      :=
                                roundTo( ((
                                           (
                                             // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                                             // que detectou que o IMCS estava sendo cálculado de maneira errada
                                             // por Maxsuel Victor, 18/03/2016
                                            //CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency +
                                            CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency +
                                            CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                                            CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency +
                                            CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency
                                           ) *
                                            CdsNfeIte.FieldByName('ICM_S_PER_MVA').AsCurrency
                                          ) / 100),-2);

                         CdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency  :=
                                   roundTo(((
                                   // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                                             // que detectou que o IMCS estava sendo cálculado de maneira errada
                                             // por Maxsuel Victor, 18/03/2016
                                   //CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency +
                                   CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency +
                                   CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency +
                                   CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                                   CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency) +
                                   CdsNfeIte.FieldByName('ICM_S_VLR_MVA').AsCurrency),-2);
                       end
                    else
                       begin
                         CdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency :=
                                   // Foi substituído pelo VLR_LIQUIDO depois de conversar com a Globo
                                             // que detectou que o IMCS estava sendo cálculado de maneira errada
                                             // por Maxsuel Victor, 18/03/2016
                                   //CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency +
                                   CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency +
                                   CdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                                   CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency +
                                   CdsNfeIte.FieldByName('FRE_VALOR').AsCurrency;
                       end;

                    if CdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency > 0 then
                       begin
                         CdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency :=
                                   roundTo( (
                                                (
                                                   (CdsNfeIte.FieldByName('ICM_S_BASE').AsCurrency *
                                                    dmGeral.BUS_CD_C_GRU.FieldByName('ali_interna_icms').AsCurrency)
                                                    / 100
                                             ) -
                                   CdsNfeIte.FieldByName('ICM_N_VALOR').AsCurrency),-2) ;
                       end;
                 end;
            end;
     end;
end;

function  CalculaTriValor(CdsNfeIte: TClientDataSet): Boolean;
begin
  try
     dmGeral.BusItens(0,CdsNfeIte.FieldByName('ID_ITEM').AsString);
     if dmGeral.BUS_CD_C_ITE.FieldByName('INT_PERIMPOSTONCM').text <> '' then
        begin
          if dmGeral.BUS_CD_C_ITE.FieldByName('INT_PERIMPOSTONCM').AsCurrency > 0 then
             begin
               CdsNfeIte.fieldByName('TRI_INDICE').AsCurrency :=
                  dmGeral.BUS_CD_C_ITE.fieldByName('INT_PERIMPOSTONCM').asCurrency;

               CdsNfeIte.fieldByName('TRI_VALOR').asCurrency :=
                  RoundTo((dmGeral.BUS_CD_C_ITE.fieldByName('INT_PERIMPOSTONCM').asCurrency *
                       CdsNfeIte.fieldByName('VLR_LIQUIDO').asCurrency) /100,-2);
             end;
        end;
  finally
     dmGeral.BUS_CD_C_ITE.Close;
  end;
end;


function CalculaISS(CdsNfeIte: TClientDataSet): Currency;
begin
  CdsNfeIte.FieldByName('iss_base').AsCurrency  := 0;
  CdsNfeIte.FieldByName('iss_aliquota').AsFloat := 0;
  CdsNfeIte.FieldByName('iss_valor').AsCurrency := 0;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_iss').AsFloat > 0 then
     begin
       CdsNfeIte.FieldByName('iss_base').AsCurrency  :=
                 CdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency -
                 CdsNfeIte.FieldByName('vlr_desconto').AsCurrency;
       CdsNfeIte.FieldByName('iss_aliquota').AsFloat :=
                 dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_iss').AsFloat;
       CdsNfeIte.FieldByName('iss_valor').AsCurrency :=
                 roundTo(((CdsNfeIte.FieldByName('iss_base').AsCurrency *
                 CdsNfeIte.FieldByName('iss_aliquota').AsFloat) / 100),-2);
     end;
end;

function CalculaISSRetido(CdsNfe,CdsNfeIte: TClientDataSet): Currency;
begin

  CdsNfeIte.FieldByName('iss_valor_retido').AsCurrency := 0;

  if (CdsNfe.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').AsBoolean = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_iss').AsFloat > 0) then
     begin
       CdsNfeIte.FieldByName('iss_valor_retido').AsCurrency :=
                 roundTo((( (CdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency -
                 CdsNfeIte.FieldByName('vlr_desconto').AsCurrency) *
                 dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_iss').AsFloat) / 100),-2);
     end;
end;


function CalculaIPI(CdsNfe,CdsNfeIte: TClientDataSet): Boolean;
begin

  CdsNfeIte.FieldByName('IPI_BASE').AsCurrency     := 0;
  CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency    := 0;

  if (CdsNfe.FieldByName('tipo_nf').Text = 'E') then
     begin
        if trim(CdsNfeIte.FieldByName('ID_ST_IPI').AsString) = '' then
           begin
             CdsNfeIte.FieldByName('ID_ST_IPI').AsString :=
               trim(dmGeral.BUS_CD_C_GRUid_st_ipi_entrada.AsString);
           end;
        if pos(CdsNfeIte.FieldByName('ID_ST_IPI').AsString,'00') <> 0 then
           begin
             if CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency > 0 then
                begin
                  CdsNfeIte.FieldByName('IPI_BASE').AsCurrency  :=
                            CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                  CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency :=
                            roundTo( ((CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency *
                            CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency) / 100),-2);
                end;
           end;
     end;

  if (CdsNfe.FieldByName('tipo_nf').Text = 'S') then
     begin
        CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency :=
          dmGeral.BUS_CD_C_GRUper_ipi.AsCurrency;

        if trim(CdsNfeIte.FieldByName('ID_ST_IPI').AsString) = '' then
           begin
             CdsNfeIte.FieldByName('ID_ST_IPI').AsString :=
                       trim(dmGeral.BUS_CD_C_GRUid_st_ipi_saida.AsString);
           end;

        if pos(CdsNfeIte.FieldByName('ID_ST_IPI').AsString,'50') <> 0 then
           begin
             if dmGeral.BUS_CD_C_GRU.FieldByName('PER_IPI').AsCurrency > 0 then
                begin
                  CdsNfeIte.FieldByName('IPI_BASE').AsCurrency  := CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                  CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency :=
                            roundTo( ((CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency *
                            CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency) / 100),-2);
                end;
           end;
     end;
end;


function CalculaPIS(cdsNfe,CdsNfeIte: TClientDataSet;tipo: String): Boolean;
begin
   { tipo:  E - Entrada
            S - Saída}

   if (tipo = 'E') and
      (cdsNfe.FieldByName('TIPO_NF').AsString = 'E') and
      (trim(CdsNfeIte.FieldByName('ID_ST_PIS').AsString)= '') then
         CdsNfeIte.FieldByName('ID_ST_PIS').AsInteger := 99;

   // Comentado por Maxsuel Victor, 14/04/2016
      // Devido ter nova alteração
   {else
      if (tipo = 'S') and
         (cdsNfe.FieldByName('TIPO_NF').AsString = 'S') then
            CdsNfeIte.FieldByName('ID_ST_PIS').AsInteger := 99;}

   CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     := 0;
   CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    := 0;
   CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    := 0;
   CdsNfeIte.FieldByName('PIS_VALOR_ST').AsCurrency := 0;

  { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat > 0 then
      begin
         if tipo = 'E' then
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         CdsNfeIte.FieldByName('ID_ST_PIS').AsString      :=
                                   dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').Text;
                         CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat;
                         CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    :=
                                    roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;
     end;}
   if tipo = 'E' then
      begin
         dmGeral.BusFornecedor(0,cdsNfe.FieldByName('ID_EMITENTE').AsString);
         dmGeral.BusTipoEstoque(0,cdsNfe.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and    // Normal
            (dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger = 1)    then   // Regime Normal - Lucro Real
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_PIS').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_PIS').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').Text;
                         CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat;
                         CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    :=
                                    roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and    // Normal
            (dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger = 0)    then   // Regime Normal - Lucro Presumido
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_PIS').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_PIS').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').Text;
                         CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_presumido').AsFloat;
                         CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    :=
                                    roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) then    // Normal
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_PIS').Text,'67-98') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_PIS').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').Text;
                         CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     := 0;
                         CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    := 0;
                         CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    := 0;
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) then    // Transferência
             begin
               if CdsNfeIte.FieldByName('ID_ST_PIS').AsString  = '99' then
                  begin
                    CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     := 0;
                    CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    := 0;
                    CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    := 0;
                  end;
             end;
      end;


   if tipo = 'S' then
      begin
         { Ramo de atividade dos parâmetros
            0 - SimplesNacional,  1 - LucroPresumido, 2 - LucroReal }

         // SP10 -> VENDA
         // SP70 -> PRESTAÇÃO DE SERVIÇO
         // SP99 -> OUTRAS SAIDAS/PRESTACOES
         dmGeral.BusTipoEstoque(0,cdsNfe.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);
         CdsNfeIte.FieldByName('ID_ST_PIS').AsString    :=
                   dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) and // Transferencia
            (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1]) then // 1 - LucroPresumido
             begin
                CdsNfeIte.FieldByName('ID_ST_PIS').AsString    := '49';
                CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   := 0;
                CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  := 0;
                CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  := 0;
             end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
            (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
             begin
               if (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
                  (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
                  (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
                 begin
                   // Operações para Vendas
                   // ****** Calcular PIS ------------------------------------------------------
                   //'01 - Operação Tributável com Alíquota Básica.';
                   //'02 - Operação Tributável com Alíquota Diferenciada';
                   //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
                   //'05 - Operação Tributável por Substituição Tributária';

                   if (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 1) then // 1 - LucroPresumido
                       begin
                          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_presumido').AsFloat > 0 then
                            begin
                               if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'01-03-05') <> 0 then
                                  begin
                                    CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   :=
                                              CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                    CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  :=
                                              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_presumido').AsFloat;
                                    CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  :=
                                              roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                              CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                                  end;
                            end;
                       end;

                   if (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 2) then // 2 - LucroReal
                      begin
                         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat > 0 then
                            begin
                               if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'01-03-05') <> 0 then
                                  begin
                                    CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   :=
                                              CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                    CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  :=
                                              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat;
                                    CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  :=
                                              roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                              CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                                  end;
                            end;
                      end;
                 end;
             end;

         // Inserido por Maxsuel Victor, em 05/07/2017 devido tarefa 3481 (criado por Tamires)
         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) then //normal
             begin
                if (trim(CdsNfeIte.FieldByName('id_cfo').AsString) = '5910') or     // Cfop de Bonificação
                    (trim(CdsNfeIte.FieldByName('id_cfo').AsString) = '6910') then   // Cfop de Bonificação
                   begin
                     CdsNfeIte.FieldByName('ID_ST_PIS').AsString    := '49';
                     CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   := 0;
                     CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  := 0;
                     CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  := 0;
                   end;
             end;
       // Comentado por Maxsuel Victor, 14/04/2016
          // Devido ter nova alteração
       { if (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
           (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
           (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
           begin
             // Operações para Vendas
             // ****** Calcular PIS ------------------------------------------------------
             //'01 - Operação Tributável com Alíquota Básica.';
             //'02 - Operação Tributável com Alíquota Diferenciada';
             //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
             //'05 - Operação Tributável por Substituição Tributária';

             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat > 0 then
                begin
                   if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'01-03-05') <> 0 then
                      begin
                        CdsNfeIte.FieldByName('ID_ST_PIS').AsString    :=
                                  dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text;
                        CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   :=
                                  CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                        CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  :=
                                  dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat;
                        CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  :=
                                  roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                  CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                      end;
                end;  }
             // Retirado por mariel , em 05/05/2014 , dise que não vai precisar.

             {if CAD_CD_C_PAR_CTR.FieldByName('PER_PIS_DIF').AsFloat > 0 then
                begin
                  if pos(BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'02') <> 0 then
                      begin
                        FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString    := BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text;
                        FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency   := FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;
                        FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsFloat  := CAD_CD_C_PAR_CTR.FieldByName('PER_PIS_DIF').AsFloat;
                        FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency  := roundTo(((FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsFloat *
                                                                                           FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                      end;
                end;}
      end;
end;


function CalculaCofins(cdsNfe,CdsNfeIte: TClientDataSet; tipo: String): Boolean;
begin
   { tipo:  E - Entrada
            S - Saída}

   if (tipo = 'E') and
      (cdsNfe.FieldByName('TIPO_NF').AsString = 'E') and
      (trim(CdsNfeIte.FieldByName('ID_ST_COF').AsString)= '') then
         CdsNfeIte.FieldByName('ID_ST_COF').AsInteger := 99;

   // Comentado por Maxsuel Victor, 14/04/2016
      // Devido ter nova alteração
   {else
      if (tipo = 'S') and
         (cdsNfe.FieldByName('TIPO_NF').AsString = 'S') then
            CdsNfeIte.FieldByName('ID_ST_COF').AsInteger := 99;}


   CdsNfeIte.FieldByName('COF_BASE').AsCurrency     := 0;
   CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    := 0;
   CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    := 0;
   CdsNfeIte.FieldByName('COF_VALOR_ST').AsCurrency := 0;

   {if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat > 0 then
      begin
         if tipo = 'E' then
            begin
               // EA10-> COMPRA

               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         CdsNfeIte.FieldByName('ID_ST_COF').AsString    :=
                                   dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').Text;
                         CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat;
                         CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                   roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;
      end;}
   if tipo = 'E' then
      begin
         dmGeral.BusFornecedor(0,cdsNfe.FieldByName('ID_EMITENTE').AsString);
         dmGeral.BusTipoEstoque(0,cdsNfe.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and    // Normal
            (dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger = 1)    then   // Regime Normal - Lucro Real
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_COF').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_COF').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').Text;
                         CdsNfeIte.FieldByName('COF_BASE').AsCurrency     :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat;
                         CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    :=
                                    roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and    // Normal
            (dmGeral.BUS_CD_C_FOR.FieldByName('REGIME').AsInteger = 0)    then   // Regime Normal - Lucro Presumido
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_COF').Text,'50-51-52-53-54-55-56-60-61-62-63-64-65-66') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_COF').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').Text;
                         CdsNfeIte.FieldByName('COF_BASE').AsCurrency     :=
                                   CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                         CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    :=
                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_presumido').AsFloat;
                         CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    :=
                                    roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                   CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) then    // Normal
            begin
               // EA10-> COMPRA
               if dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'EA10' then // Compra
                  begin
                    // Operações de Entradas
                    if pos(CdsNfeIte.FieldByName('ID_ST_COF').Text,'67-98') <> 0 then
                       begin
                         //CdsNfeIte.FieldByName('ID_ST_COF').AsString      :=
                         //          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').Text;
                         CdsNfeIte.FieldByName('COF_BASE').AsCurrency     := 0;
                         CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    := 0;
                         CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    := 0;
                       end;
                  end;
            end;

         if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) then    // Transferência
             begin
               if CdsNfeIte.FieldByName('ID_ST_COF').AsString = '99' then
                  begin
                    CdsNfeIte.FieldByName('COF_BASE').AsCurrency     := 0;
                    CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    := 0;
                    CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    := 0;
                  end;
             end;
      end;


   if tipo = 'S' then
      begin
        { Ramo de atividade dos parâmetros
            0 - SimplesNacional,  1 - LucroPresumido, 2 - LucroReal }

        // SP10 -> VENDA
        // SP70 -> PRESTAÇÃO DE SERVIÇO
        // SP99 -> OUTRAS SAIDAS/PRESTACOES
        dmGeral.BusTipoEstoque(0,cdsNfe.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);
        CdsNfeIte.FieldByName('ID_ST_COF').AsString    :=
                  dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text;

        if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) and // Transferencia
            (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1]) then // 1 - LucroPresumido
             begin
                CdsNfeIte.FieldByName('ID_ST_COF').AsString    := '49';
                CdsNfeIte.FieldByName('COF_BASE').AsCurrency   := 0;
                CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  := 0;
                CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  := 0;
             end;

        if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
           (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
            begin
               // Comentado por Maxsuel Victor, 14/04/2016
                 // Devido ter nova alteração


               if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
                  (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
                   begin
                      if (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
                         (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
                         (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
                         begin
                           // ****** Calcular COFINS ---------------------------------------------------
                           //'01 - Operação Tributável com Alíquota Básica.';
                           //'02 - Operação Tributável com Alíquota Diferenciada';
                           //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
                           //'05 - Operação Tributável por Substituição Tributária';

                           if (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 1) then // 1 - LucroPresumido
                               begin
                                 if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_presumido').AsFloat > 0 then
                                    begin
                                       if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'01-03-05') <> 0 then
                                          begin
                                            CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                                      CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                            CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                                      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_presumido').AsFloat;
                                            CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                                      roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                                      CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                                          end;
                                    end;
                               end;

                           if (dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 2) then // 2 - LucroReal
                               begin
                                 if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat > 0 then
                                    begin
                                       if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'01-03-05') <> 0 then
                                          begin
                                            CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                                      CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                            CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                                      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat;
                                            CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                                      roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                                      CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                                          end;
                                    end;
                              end;

                         end;
                   end;



               { if (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
                   (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
                   (dmGeral.BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
                   begin
                     // ****** Calcular COFINS ---------------------------------------------------
                     //'01 - Operação Tributável com Alíquota Básica.';
                     //'02 - Operação Tributável com Alíquota Diferenciada';
                     //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
                     //'05 - Operação Tributável por Substituição Tributária';

                     if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat > 0 then
                        begin
                           if pos(dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'01-03-05') <> 0 then
                              begin
                                CdsNfeIte.FieldByName('ID_ST_COF').AsString    :=
                                          dmGeral.BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text;
                                CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                          CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
                                CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat;
                                CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                          roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                          CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                              end;
                        end;  }
                     // Retirado por mariel , em 05/05/2014 , dise que não vai precisar.
                     {if CAD_CD_C_PAR_CTR.FieldByName('PER_COF_DIF').AsFloat > 0 then
                        begin
                          if pos(BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'02') <> 0 then
                              begin
                                FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString    := BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text;
                                FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency   := FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;
                                FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsFloat  := CAD_CD_C_PAR_CTR.FieldByName('PER_COF_DIF').AsFloat;
                                FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency  := roundTo(((FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsFloat *
                                                                                                   FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                              end;
                        end;}
                   //end;
            end;
        // Inserido por Maxsuel Victor, em 10/07/2017 devido tarefa 3481 (criado por Tamires)
           if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) then //normal
               begin
                 if (trim(CdsNfeIte.FieldByName('id_cfo').AsString) = '5910') or     // Cfop de Bonificação
                    (trim(CdsNfeIte.FieldByName('id_cfo').AsString) = '6910') then   // Cfop de Bonificação
                     begin
                       CdsNfeIte.FieldByName('ID_ST_COF').AsString    := '49';
                       CdsNfeIte.FieldByName('COF_BASE').AsCurrency   := 0;
                       CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  := 0;
                       CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  := 0;
                     end;
               end;
      end;
end;

procedure nfeCalcTotalItem;
Var
  SMPrincipal : TSMClient;
  Perc: Extended;
begin

  Perc := 0;
  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text = 'E' then
     begin
       if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency > 0 then
         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsVariant:=
              (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsVariant/
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat);
     end;
  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text = 'S' then
     begin
          dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat*
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency;
          dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
     end;

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
     (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency);


   if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text = 'E' then
      begin
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency       := 0;
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency      := 0;
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency := 0;
        if (dmgeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString<>'X') then
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency    := 0;

        Perc := RoundTo((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency * 100) /
                 dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency,-2);

        if (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency      > 0)  then
            begin
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency :=
                       RoundTo( ((Perc * dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency) / 100),-2);
            end;

        if (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency      > 0)  then
            begin
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency :=
                       RoundTo( ((Perc * dmGeral.FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency) / 100),-2);
            end;

        if (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency > 0)  then
            begin
              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency :=
                       RoundTo( ((Perc * dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency) / 100),-2);
            end;

        if (dmgeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString<>'X') then
           begin
            if (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency > 0) and
               (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency > 0)  then
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency :=
                           RoundTo( ((Perc * dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency) / 100),-2);
                end;
           end;
      end;
end;

function  CalcVlrCustoIteEntrada(cdsNfeIte: TClientDataSet):Currency;
begin
   if cdsNfeIte.FieldByName('QTDE').AsCurrency>0 then
    begin
      result :=   (  cdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency
        - cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency
        - cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency     +
        cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency      +
        cdsNfeIte.FieldByName('FRE_CUSTO').AsCurrency        +
        cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency       +
        cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency  +
       // Alterado por Maxsuel Victor, em 09/08/17 devio ter encontrado problema nos custos
       // do cliente Tema.
       //  cdsNfeIte.FieldByName('VLR_OUTRAS').AsCurrency  +
        cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency  +
        cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency
        //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_SER_NÃO_INCIDE').AsCurrency;
      ) /
      cdsNfeIte.FieldByName('QTDE').AsCurrency;
    end
  else
    begin
      result :=0;
    end;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency := Result;

end;




function FAT_CD_M_NFE_Saida_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('dta_emissao').AsString = '' then
     begin
       mens := mens +'.Emissão' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('dta_documento').AsString = '' then
     begin
       mens := mens +'.Data da saída' + #13;
     end;

  if ((dmgeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) and
      (dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString = '')) then
     begin
       mens := mens +'.Nfe Referenciado' + #13;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsInteger < 0) then
    begin
       mens := mens + '.Série' + #13;
    end;


  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end;

end;








function FAT_CD_M_NFE_Ent_TesCampos: Boolean;
var
  mens,mens_aux: String;
  mensVlrDif: String;
begin
  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Empresa' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').IsNull) or
           (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger = 0) then
           begin
             mens := mens + '.Almoxarifado' + #13;
           end;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger = 0)  then
      mens := mens + '.Tipo de estoque' + #13;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').IsNull) then
     begin
       mens := mens + '.Número' + #13;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) then
      begin
          if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) = '') then
             begin
               mens := mens + '.Série' + #13;
             end;

          if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').text) = '') then
             begin
               mens := mens + '.Sub série' + #13;
             end;
      end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').text) = '' then
     begin
       mens := mens + '.Tipo frete' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').IsNull then
     begin
       mens := mens + '.Cfop' + #13;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
     begin
       if trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').Text) = '' then
          mens := mens + '.Chave de acesso' + #13;
     end;

  if (dmgeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 0) then
     begin
      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_caixa_nfe').AsBoolean=true) then
         begin
           if (not (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger>0)) then
             begin
                 mens := mens + '.Cód. Abertura do Caixa' + #13;
             end;
         end;
     end;


  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin

        dmGeral.FAT_CD_M_NFE_ITE.cancel;
        if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido na nota fiscal.' + #13;
           end;

        if not FAT_CD_M_NFE_ITE_VerifCampoCst then
           begin
             mens := mens + 'Existe item com CST em branco.' + #13;
           end;

        if FAT_CD_M_NFE_TesTotItensXTotNfe then
           begin
             mens := mens + 'Valor líquido dos itens diferente do total da nota fiscal.' + #13;
           end;

        if dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2 then
           begin
             mens_aux := FAT_CD_M_NFE_ITE_VerifCampoQtdeMercIcms;
             if mens_aux <> '' then
               begin
                 mens := mens +'Os itens ' +mens_aux+ ' devem ter quantidade, valor de mercadoria ou valor de icms maior que zero.'+#13;
               end;
           end;

        dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);
        if dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
           begin
             dmGeral.FAT_CD_M_NFE_TIT.cancel;

             if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
                begin
                  mens := mens + 'Nenhuma forma de pagamento foi inserido na nota fiscal.' + #13;
                end;

             if FAT_CD_M_NFE_TesTotFpgXTotNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT,mensVlrDif) then
                begin
                  mens := mens + 'Valor dos vencimentos diferente do total da nota fiscal.' + #13 + 'Diferença: ' + mensVlrDif;
                end;
           end;

        if ((dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 0) and
             (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger>0)) then
             begin
                dmGeral.FIN_CD_M_CXA.Close;
                dmGeral.FIN_CD_M_CXA.Data :=
                dmGeral.FIN_CD_M_CXA.DataRequest(
                        VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('id_abertura').AsString]));
                if dmGeral.FIN_CD_M_CXA.IsEmpty then
                   begin
                     mens := mens +'Não há caixa aberto.'+ #13;
                     dmGeral.FIN_CD_M_CXA.close;
                   end;

                if not (dmGeral.FIN_CD_M_CXA.locate('DTA_ABERTURA',dmGeral.FAT_CD_M_NFE.FieldByName('dta_documento').AsString,[])) then
                   begin
                     mens := mens +'Não foi encontrado um caixa aberto com esta data de entrada.'+ #13;
                     dmGeral.FIN_CD_M_CXA.close;
                   end;
                dmGeral.FIN_CD_M_CXA.close;
             end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
          end;
     end;
end;

function FAT_CD_M_NFE_Ent_TesPermEdicaoExclusao: Boolean;
var
  mens,codTituloConc: String;
  existeTituloPrazo:Boolean;
begin
   result := true;

   mens := '';

   // Essa é uma nota fiscal que é da própria empresa e que foi faturada (nf eletrônica).
   if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
      (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean)   then
      begin
        mens := mens + '.Nota fiscal de entrada já faturada' + #13;
      end;

   if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
     begin
       mens := mens + '.A data de entrada desta nota fiscal não está dentro do mês e ano atual.' + #13;
     end;

   // Verifica se o financeiro da nota fiscal já foi movimentado(baixado)
   dmGeral.FIN_CD_M_PAG.Close;
   dmGeral.FIN_CD_M_PAG.Data :=
   dmGeral.FIN_CD_M_PAG.DataRequest(
          VarArrayOf([91, dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

   existeTituloPrazo :=false;

   dmGeral.FIN_CD_M_PAG.First;
   while ((existeTituloPrazo =false) and (not dmGeral.FIN_CD_M_PAG.eof)) do
    begin
      if not ((dmGeral.FIN_CD_M_PAG.FieldByName('INT_TIPOPAG').AsInteger = 0) and
         (dmGeral.FIN_CD_M_PAG.FieldByName('INT_DOCIMPRESSO').AsInteger = 5)) then
           existeTituloPrazo :=true;
      dmGeral.FIN_CD_M_PAG.Next;
    end;

   if (existeTituloPrazo = true) then
     begin
       mens := mens + '.Nota fiscal com títulos já baixado.' + #13;
     end;


   dmGeral.FIN_CD_M_CTA_CXA.Close;
   dmGeral.FIN_CD_M_CTA_CXA.Data :=
   dmGeral.FIN_CD_M_CTA_CXA.DataRequest(
          VarArrayOf([96, dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

   try
     dmgeral.FIN_CD_M_CTA_CXA.Filtered := true;
     dmGeral.FIN_CD_M_CTA_CXA.Filter := 'CONCILIADO=TRUE';

     if not dmGeral.FIN_CD_M_CTA_CXA.IsEmpty then
      begin
       mens := mens + '.Nota fiscal com movimentação bancária já conciliado.' + #13;
      end;

   finally
     dmgeral.FIN_CD_M_CTA_CXA.Filtered := false;
   end;


   if mens <> '' then
      begin
        ShowMessage('Exclusão ou alteração não permitida!' + #13 + mens);
        mens := '';
        result := false;
      end;

   dmGeral.FIN_CD_M_PAG.Close;
   dmGeral.FIN_CD_M_CTA_CXA.Close;
end;

function FatGravarNumParcNfe(cdsNfe,cdsNfeTit: TClientDataSet): Boolean;
Var
  lPonteiroItens : TBookmark;
  lTotFpg: Currency;
  lQtdeReg: String;
  i: integer;
begin
  result := false;
  i:= 0;

  cdsNfeTit.cancel;

  cdsNfeTit.IndexFieldNames := 'DTA_VENCIMENTO';
  lPonteiroItens := cdsNfeTit.GetBookmark;
  cdsNfeTit.First;
  if not cdsNfeTit.IsEmpty then
     begin
        lQtdeReg := IntToStr(cdsNfeTit.RecordCount);
        while not cdsNfeTit.eof do
          begin
            inc(i);
            cdsNfeTit.edit;
            cdsNfeTit.FieldByName('NUM_PARCELA').AsString :=
                    cdsNfe.FieldByName('NUMERO').AsString + '-' +
                    inttostr(i) + '/' + lQtdeReg;
            cdsNfeTit.Post;
            cdsNfeTit.Next;
          end;
     end;
  cdsNfeTit.GotoBookmark(lPonteiroItens);
end;

function FAT_CD_M_NFE_TesTotFpgXTotNfe(DataSetPai,DataSetTit: TDataSet; var mensVlrDif:String): Boolean;
Var
  lPonteiroItens : TBookmark;
  lTotFpg: Currency;

  txtTotFpg,txtTotLiq:String;

begin
  result := false;
  lTotFpg := 0;
  txtTotFpg := '';
  txtTotLiq := '';

  mensVlrDif := '';

  DataSetTit.cancel;

  lPonteiroItens := DataSetTit.GetBookmark;
  DataSetTit.First;
  if not DataSetTit.IsEmpty then
     begin
        while not DataSetTit.eof do
          begin
            lTotFpg := lTotFpg + DataSetTit.FieldByName('VLR_TITULO').AsCurrency;
            DataSetTit.Next;
          end;

        txtTotFpg    := FormatCurr('#0.00',lTotFpg);
        txtTotLiq    := FormatCurr('#0.00',DataSetPai.FieldByName('VLR_LIQUIDO').AsCurrency);
        mensVlrDif   := FormatCurr('###,###,###,###,##0.00',StrToCurr(txtTotLiq) - StrToCurr(txtTotFpg));

        if txtTotFpg <> txtTotLiq then
           begin
             result := true;
           end;
     end;
  DataSetTit.GotoBookmark(lPonteiroItens);
  DataSetTit.edit;
end;


function FAT_CD_M_NFE_TesTotItensXTotNfe: Boolean;
var
  lPonteiroItens : TBookmark;
  lTotItens: Currency;
begin
  result := false;
  lTotItens := 0;


  dmGeral.FAT_CD_M_NFE_ITE.cancel;

  lPonteiroItens := dmGeral.FAT_CD_M_NFE_ITE.GetBookmark;
  dmGeral.FAT_CD_M_NFE_ITE.First;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
        dmGeral.FAT_CD_M_NFE_ITE.First;
        while not dmGeral.FAT_CD_M_NFE_ITE.eof do
          begin
            {
              lTotItens := lTotItens + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency       +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency      +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency -
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency;
            }

            //Subsitui a formula de cima por de baixo, para corrigir o problema do vlr_liquido do pai
            //difere da soma vlr_liquido dos itens quando vlr_icm_desc>0.Resp:Luan.Data:09/09/2016
            lTotItens := lTotItens + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency
                                   - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_ICM_DESC').AsCurrency
                                   - dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency    +
                                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency    +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency       +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency      +
                                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency;



            dmGeral.FAT_CD_M_NFE_ITE.Next;
          end;



        if lTotItens <> dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.FAT_CD_M_NFE_ITE.GotoBookmark(lPonteiroItens);
  dmGeral.FAT_CD_M_NFE_ITE.edit;
end;

function FAT_CD_M_NFE_ITE_TesCampos: Boolean;
var
  mens: String;
  CancelNFE_ITE : Boolean;
begin
  result := true;

  xMensErro := '';
  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S' then
     begin
      if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString) = '' then
         begin
           xMensErro := xMensErro + '.Item' + #13;
         end;
     end;
  if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger = 0 then
     begin
       xMensErro := xMensErro + '.Código do item' + #13;
     end;

  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsSTring) = '' then
     begin
      //xMensErro := xMensErro + '.CST' + #13;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'D') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'R')  then
     begin
     if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsString = '' then
       begin
         xMensErro := xMensErro + '.Fisco' + #13;
        end;
     end;

  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString) = '' then
     begin
       xMensErro := xMensErro + '.Cfop' + #13;
     end;

  if (not (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2)) then
     begin
      if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat = 0 then
         begin
           xMensErro := xMensErro + '.Qtde' + #13;
         end;
     end;

  CancelNFE_ITE := false;

  {if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D') then
      begin
       if not FAT_RN_M_NFE.FatTestaQtdeIte(2,dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE) then
         begin
           xMensErro := xMensErro + 'Produto sem saldo no estoque.' + #13;
          CancelNFE_ITE := false;
         end;
      end;}


  if (not (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2)) then
     begin
        if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
           begin
             xMensErro := xMensErro + '.Valor unitário' + #13;
           end;

        if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency = 0 then
           begin
             xMensErro := xMensErro + '.Valor da mercadoria' + #13;
           end;

        if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
           begin
             xMensErro := xMensErro + '.Valor líquido' + #13;
           end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').text = '' then
          begin
            xMensErro := xMensErro + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').text = '' then
          begin
            xMensErro := xMensErro + '.Tamanho' + #13;
          end;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R') then
     begin
       if not (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency >= 0) then
         begin
           xMensErro := xMensErro + '.Percentagem de desconto deve ser maior ou igual a zero' + #13;
         end;
       if not (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency >= 0) then
         begin
           xMensErro := xMensErro + '.Valor de desconto deve ser maior ou igual a zero' + #13;
         end;
     end;

  if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'D') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'R')) then
      begin
       if (trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString) = '00') and
          (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency = 0) then
          begin
            xMensErro := xMensErro + '.Devido a CST ipi ser "00" o campo "% ipi" deve ser preenchido' + #13;
          end;

       if (pos(trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString),'01-02-03-04-05') <> 0) and
           (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency > 0) then
          begin
            xMensErro := xMensErro + '.Devido a CST ipi informada não permite que o campo "% ipi" seja preenchido' + #13;
          end;

       if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('para_analise_raa').AsInteger = 1 then //  Se for para análise - RAA
          begin
            dmGeral.BusItens(0,dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString);
            if not (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger in [0,3])then
              begin
                xMensErro := xMensErro + '.Não é permitido marcar o campo "RAA", pois este item não controla lote por NFe de entrada e ntem por Inspeção' + #13;
              end;
          end;
      end;

   //Inserir o teste de validação para NF = S.Responsavel: Luan.Data: 31/08/2015
   if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') then
     begin
       if not (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency >= 0) then
         begin
           xMensErro := xMensErro + '.Valor base do ICMS deve ser maior ou igual a zero.' + #13;
         end;
     end;
    ////////FIM////////

   if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
     begin
       if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') and
          (dmgeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency=0) and
          (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency = 0) and
          (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency=0) then
        begin
         xMensErro := xMensErro + '.O valor da mercadoria, qtde ou valor do icms deve ser maior que zero.' + #13;
        end;
     end;

   if dmGeral.FAT_CD_M_NFEtipo_nf.text = 'E' then
      begin
        if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
           begin
              dmGeral.BUS_CD_C_ITE.Close;
              dmGeral.BUS_CD_C_ITE.Data :=
                   dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE_ITEid_item.Text]));
              if dmGeral.BUS_CD_C_ITEint_tipo_item.AsInteger <> 9 then
                 begin
                   // Quando o usuário estiver na tela de Nota Fiscal de Entrada
                   // O sistema poderá barrá-lo caso o controle de lote
                   // Não seja Por Nota de Entrada ou Não controla.
                    if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false then
                        begin
                         if ( (dmGeral.BUS_CD_C_ITEgeracao_lote_interno.AsInteger <> 0)   and
                              (dmGeral.BUS_CD_C_ITEgeracao_lote_interno.AsInteger <> 4) ) then
                            begin
                              // Estando na tela de Entrada, imagine que o usuário tente inseriri um
                              // produto manualmente , e que controla lote por Inspeção, daí caso
                              // o campo ID_IQM esteja com 0 o sistema não aceitará ou
                              // imagine que ele foi alterar a nota fiscal, que tem IQM e tente
                              // informar um produto que Controla Lote por Inspeção mas que não
                              // veio de um IQM.
                              if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger = 0) or
                                 (dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger = 0)  then
                                 begin
                                    if trim(dmGeral.FAT_CD_M_NFE_ITEnum_lote.text) = '' then
                                       begin
                                         xMensErro:= xMensErro + '.Este item não pode ser informado na nota fiscal de entrada, '+ #13 +
                                                                 ' pois a geração do nro do lote deste item é pela Inspeção de Itens.';
                                       end;
                                 end;
                            end;
                         end;

                     if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true then
                        begin
                         if dmGeral.BUS_CD_C_ITE.FieldByName('INT_CTR_LOT_ENTR').AsBoolean = true then
                           begin
                              if trim(dmGeral.FAT_CD_M_NFE_ITEnum_lote.text) = '' then
                                begin
                                   xMensErro:= xMensErro + '.Lote';
                                end;
                              if dmGeral.FAT_CD_M_NFE_ITEdta_vencimento.text = '' then
                                begin
                                   xMensErro := xMensErro + '.Data Vencimento';
                                end;
                           end;
                        end;
                 end;
           end;



         dmGeral.BUS_CD_C_ITE.Close;

      end;

  if xMensErro<>'' then
    begin
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     abort;
    end
  else
     begin
       //Foi colocado essa condicao(Para Importacao XML) que quando emitente for simples nacional e sendo
       //simples nacional CST_ICM é sempre com tres digitos, não é para fazer validacao.Luan.Data:20/05/2016
       if (Length(trim(dmGeral.FAT_CD_M_NFE_ITEid_st_icm.AsString)) <> 3) then
          begin
           xMensErro := ValidarTributItens;
          end;
       if xMensErro<>'' then
         begin
           if CancelNFE_ITE then
              dmGeral.FAT_CD_M_NFE_ITE.Cancel;
          raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
          abort;
         end;
     end;
end;


function FAT_CD_M_NFE_TIT_TesCampos: Boolean;
var
  mens: String;
begin

  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Forma de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').AsInteger = 0 then
     begin
       mens := mens + '.Sequência do título' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').AsInteger = 0 then
     begin
       mens := mens + '.Plano de contas' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').AsInteger = 0 then
     begin
       mens := mens + '.Centro de custo' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger = 0 then
     begin
       mens := mens + '.Dias' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsInteger = 0 then
     begin
       mens := mens + '.Vencimento' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').IsNull then
     begin
       mens := mens + '.Parcela' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsInteger = 0 then
     begin
       mens := mens + '.Vlr. Parcela' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end;
end;



function FAT_CD_M_NFE_AtuCmpPed(lTipo: integer): Boolean;
begin
  { lTipo:
     1 - Inclusão
     2 - Exclusão
  }

  { CMP_CD_M_PED
   0 – id_pedido
   1 – nome do fornecedor
   2 – data do pedido
   3 – nome do responsavel
   4 – observação
   90 – todos os pedidos em aberto por fornecedor
  }

  try
    dmGeral.CMP_CD_M_PED_ITE.AfterPost := nil;


  if lTipo = 1 then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.First;

       dmGeral.CMP_CD_M_PED_NFE.Filtered := false;
       dmGeral.CMP_CD_M_PED_NFE.Filtered := true;
       dmGeral.CMP_CD_M_PED_NFE.Filter   := ' ID_FISCAL = ' + dmGeral.FAT_CD_M_NFEid_fiscal.Text;
       dmGeral.CMP_CD_M_PED_NFE_ITE.First;

       while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
            begin
              if dmGeral.CMP_CD_M_PED_NFE_ITE.Locate('ID_SEQUENCIA',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsInteger,[]) then
                 begin
                   dmGeral.CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsInteger,[]);

                   dmGeral.CMP_CD_M_PED_NFE_ITE.edit;
                   if dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat >
                      (dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat - dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat) then
                      begin
                        dmGeral.CMP_CD_M_PED_NFE_ITEqtde.AsFloat  := dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat +
                                    (dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat - dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat)

                      end
                   else
                      begin
                        dmGeral.CMP_CD_M_PED_NFE_ITEqtde.AsFloat := dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat;
                      end;
                   dmGeral.CMP_CD_M_PED_NFE_ITE.Post;
                 end
              else
                 begin
                    dmGeral.CMP_CD_M_PED_NFE_ITE.Delete;
                 end;
              dmGeral.FAT_CD_M_NFE_ITE.Next;
            end;



        dmGeral.FAT_CD_M_NFE_ITE.First;
        while not dmGeral.FAT_CD_M_NFE_ITE.eof do
              begin
                // Atualizando a tabela CMP_CD_M_PED_ITE
                if dmGeral.CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsInteger,[]) then
                   begin
                       dmGeral.CMP_CD_M_PED_ITE.edit;
                       if dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat >
                          (dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat - dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat) then
                          begin
                            dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat  := dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat +
                                    (dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat - dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat)
                          end
                       else
                          begin
                            dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat  := dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat +
                                                                             dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat;
                          end;
                       dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat := 0;
                       dmGeral.CMP_CD_M_PED_ITE.Post;
                   end;
                dmGeral.FAT_CD_M_NFE_ITE.Next;
                // fim CMP_CD_M_PED_ITE
              end;
        dmGeral.FAT_CD_M_NFE_ITE.First;


        // Atualizando o Pedido de Compra
        dmGeral.CMP_CD_M_PED_ITE.Filtered := true;
             dmGeral.CMP_CD_M_PED_ITE.Filter   := ' QTDE <> QTDE_BAIXADA ';

         {  STATUS
           0 - pendente
           1 - entregue parcial
           2 - entregue total
           3 - finalizado
          }
        if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
           dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 1
        else
           dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 2;

        dmGeral.CMP_CD_M_PED_ITE.Filtered := false;
        dmGeral.CMP_CD_M_PED.Post;
     end;

  if lTipo = 2 then
     begin
      // Ao excluir a nota fiscal de entrada, o sistem irá atualizar o Pedido de compra.
      dmGeral.CMP_CD_M_PED.Close;
      dmGeral.CMP_CD_M_PED.Data :=
      dmGeral.CMP_CD_M_PED.DataRequest(
              VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').Text]));
      if not  dmGeral.CMP_CD_M_PED.IsEmpty then
         begin

           dmGeral.CMP_CD_M_PED_NFE.Filtered := false;
           dmGeral.CMP_CD_M_PED_NFE.Filtered := true;
           dmGeral.CMP_CD_M_PED_NFE.Filter   := ' ID_FISCAL = ' + dmGeral.FAT_CD_M_NFEid_fiscal.Text;

           dmGeral.FAT_CD_M_NFE_ITE.First;
           while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
              begin
                if dmGeral.CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',
                                                    dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_cmp_ped.AsInteger,[]) then
                   begin
                     dmGeral.CMP_CD_M_PED_NFE_ITE.Locate('ID_SEQUENCIA',dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_cmp_ped.AsInteger,[]);

                     dmGeral.CMP_CD_M_PED_ITE.edit;
                     dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat := dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat -
                                                                     dmGeral.CMP_CD_M_PED_NFE_ITEqtde.AsFloat;
                     dmGeral.CMP_CD_M_PED_ITE.Post;


                     dmGeral.CMP_CD_M_PED_NFE_ITE.Delete;
                   end;
                dmGeral.FAT_CD_M_NFE_ITE.Next;
              end;
           dmGeral.CMP_CD_M_PED_NFE.delete;

           // Atualizando o Pedido de Compra
           dmGeral.CMP_CD_M_PED_ITE.Filtered := true;
           dmGeral.CMP_CD_M_PED_ITE.Filter   := ' QTDE <> QTDE_BAIXADA and QTDE_BAIXADA > 0';

             {  STATUS
               0 - pendente
               1 - entregue parcial
               2 - entregue total
               3 - finalizado
              }
           dmGeral.CMP_CD_M_PED.Edit;
           if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
                  dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 1
           else
               dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 0;

           dmGeral.CMP_CD_M_PED_ITE.Filtered := false;

           dmGeral.CMP_CD_M_PED.Post;
         end;
      end;

  finally
     dmGeral.CMP_CD_M_PED_ITE.AfterPost := dmGeral.CMP_CD_M_PED_ITEAfterPost;
     dmGeral.CMP_CD_M_PED_NFE.Filtered      := false;
  end;
end;

function FAT_CD_M_NFE_ITEicm_n_baseChange:Boolean;
begin
 //Inseri esse if para essas instruções não sejam executadas para tipo NF = S. Responsavel: Luan. Data:31/08/2015
 if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'S') then
   begin
    if dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency < 0 then
      begin
       ShowMessage('O campo "Valor base de icms" não pode ser menor que 0.');
       dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency := 0;
       dmGeral.FAT_CD_M_NFE_ITEicm_n_base.FocusControl;
       abort;
      end;
    if trim(dmGeral.FAT_CD_M_NFE_ITEicm_n_base.text) = '' then
      begin
       dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency := 0;
      end;
     CalculaPercIcm;
   end;
end;

function FAT_CD_M_NFE_ITEicm_n_valorChange:Boolean;
begin
  //Inseri esse if para essas instruções não sejam executadas para tipo NF = S. Responsavel: Luan. Data:29/01/2016
 if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'S') then
   begin
      if dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency < 0 then
         begin
           ShowMessage('O campo "Valor do icms" não pode ser menor que 0.');
           dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency := 0;
           dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.FocusControl;
           abort;
         end;
      if trim(dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.text) = '' then
         begin
           dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency := 0;
         end;
      CalculaPercIcm;
   end;
end;

procedure CalculaPercIcm;
begin

  dmGeral.FAT_CD_M_NFE_ITEicm_n_aliquota.AsCurrency := 0;

  if (dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency > 0) and
     (dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency > 0) then
     begin
       dmGeral.FAT_CD_M_NFE_ITEicm_n_aliquota.AsCurrency :=
               roundTo( ((dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency * 100) /
                     dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency),-2);
     end;
end;

function FAT_CD_M_NFE_ITEicm_s_baseChange:Boolean;
begin
  if dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor base do icms substituído" não pode ser menor que 0.');
       dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency := 0;
       dmGeral.FAT_CD_M_NFE_ITEicm_s_base.FocusControl;
       abort;
     end;

  if trim(dmGeral.FAT_CD_M_NFE_ITEicm_s_base.text) = '' then
     begin
       dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency := 0;
     end;

end;

function FAT_CD_M_NFE_ITEicm_s_valorChange:Boolean;
begin
  if dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor do icms substituído" não pode ser menor que 0.');
       dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency := 0;
       dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.FocusControl;
       abort;
     end;

  if trim(dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.text) = '' then
     begin
       dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency := 0;
     end;
end;

function FAT_CD_M_NFE_ITE_VerifCampoCst:Boolean;
var
  lPonteiroItens : TBookmark;
begin
  result := true;

  lPonteiroItens := dmGeral.FAT_CD_M_NFE_ITE.GetBookmark;
  dmGeral.FAT_CD_M_NFE_ITE.First;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
        dmGeral.FAT_CD_M_NFE_ITE.First;
        while not dmGeral.FAT_CD_M_NFE_ITE.eof do
          begin
            if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').text) = '' then
               begin
                 result := false;
                 dmGeral.FAT_CD_M_NFE_ITE.Last;
               end;
            dmGeral.FAT_CD_M_NFE_ITE.Next;
          end;
     end;
  dmGeral.FAT_CD_M_NFE_ITE.GotoBookmark(lPonteiroItens);
  dmGeral.FAT_CD_M_NFE_ITE.edit;
end;


function FAT_CD_M_NFE_ITE_VerifCampoQtdeMercIcms:String;
var
  codItens:String;
begin
  codItens := '';
  result := '';
  dmGeral.FAT_CD_M_NFE_ITE.First;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
        dmGeral.FAT_CD_M_NFE_ITE.First;
        while not dmGeral.FAT_CD_M_NFE_ITE.eof do
          begin
            if ((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('qtde').AsCurrency=0) and
               (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency=0) and
               (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('icm_n_valor').AsCurrency=0)) then
               begin
                 if (codItens = '') then
                   codItens := codItens + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString
                 else
                   codItens := codItens +','+dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString;
               end;
            dmGeral.FAT_CD_M_NFE_ITE.Next;
          end;
         Result := codItens;
     end;
end;


function FAT_CD_M_NFEvlr_descontoChange: Boolean;
begin
  { TODO -oMaxsuel -cCriação :
    Criado em 09/03/2016
    Ratear o valor do campo VLR_ICM_DESC entre os itens. }




end;


function FAT_CD_M_NFE_ITE_IQM_TesCampos: Boolean;
var
  mens: String;
  lPonteiroItens: TBookmark;
begin
  result := true;
  mens := '';

{  lPonteiroItens := FAT_CD_M_NFE_ITE_IQM.GetBookmark;

  FAT_CD_M_NFE_ITE_IQM.First;
  while not FAT_CD_M_NFE_ITE_IQM.eof do
      begin}
        if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').text = '' then
           mens := mens + '.Data da inspeção' + #13;

        dmGeral.BusItens(0,dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').Text);
        if not dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             if dmGeral.BUS_CD_C_ITE.FieldByName('LOTE_FABRIC_OBRIGATORIO').AsInteger = 1 then
                begin
                  if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').text) = '') or
                     (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').text = '0') then
                      mens := mens + '.Número do lote do fabricante deve ser '+#13;
                end
             else
                begin
                  if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').text) = '') or
                     (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').IsNull) then
                      mens := mens +'.Número do lote do fabricante deve ter algum valor'+#13;
                end;
           end
        else
           begin
             if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').text) = '') or
                (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').IsNull) then
                 mens := mens + '.Número do lote do fabricante deve ter algum valor'+#13;
           end;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CND_COMERCIAL').text) = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CND_COMERCIAL').IsNull) then
            mens := mens + '.Condições comerciais' + #13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_PC_NF').text) = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_PC_NF').IsNull) then
            mens := mens + '.Quantidade(Pedido x NF)' + #13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QUALIDADE').text) = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QUALIDADE').IsNull) then
            mens := mens + '.Qualidade' + #13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PRES_PRODUTO').text) = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PRES_PRODUTO').IsNull) then
            mens := mens + '.Preservação do produto'+#13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CERT_QUALIDADE').text) = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CERT_QUALIDADE').IsNull) then
            mens := mens + '.Certificado de qualidade'+#13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').text) = '') or
            (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').IsNull) then
            mens := mens + '.Resultado da inspeção'+#10+#13;

        if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').text) = '') or
            (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').IsNull) then
            mens := mens + '.Demérito'+#10+#13;

        if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger = 0 then  // Reprovado
            begin
               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ORIGEM').text) = '') or
                  (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ORIGEM').IsNull) then
                   mens := mens +'.Origem'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').text) = '') or
                  (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').IsNull) then
                   mens := mens +'.Percentual não conforme'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').text) = '') or
                  (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').IsNull) then
                  begin
                    mens := mens +'.Quantidade não conforme'+#13
                  end;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('SITUACAO').text) = '') then
                   mens := mens +'.Relato da ocorrência'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DISPOSICAO').text) = '') then
                   mens := mens +'.Disposição'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('APRO_GERENTE').text) = '') then
                   mens := mens +'.Gerente responsável'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('APRO_DATA').text) = '') then
                   begin
                     mens := mens +'.Data da aprovação da disposição'+#10+#13;
                   end;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('EXEC_POR').text) = '')  then
                   mens := mens +'.Executado por'+#13;

               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_FINALISADO').text) = '') then
                  begin
                    mens := mens +'.Data da finalização da não conformidade'+#13;
                  end;
               if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PLANO_ACAO_FORN').text) = '') then
                   mens := mens+'.É necessário plano de ação para o fornecedor, não foi marcado'+#13;
            end;
      //end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin

       if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').AsDateTime <
           dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime) then
           mens := mens + '.Data da inspeção não pode ser menor que a data de entrada da nota fiscal'+#13;

       if not dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
          begin
            if not dmGeral.FAT_CD_M_IQM_ITEplano_acao_forn.AsBoolean then
               begin
                 mens := mens + '.O campo "Necessário plano de ação" não pode ser "Não" pois já existe plano de ação criado.' + #13;
               end;
          end;

       if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger = 0 then  // Reprovado
          begin
             if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat > 0 then
                begin
                  if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat = 0) then
                     begin
                       mens := mens +'.Percentual não conforme'+#13;
                     end;
                end;

             if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_FINALISADO').text) <> '') then
                begin
                   if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_FINALISADO').AsDateTime <
                      dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').AsDateTime then
                       begin
                         mens := mens+'.Data da finalização da não conformidade não pode ser menor que a data da inspeção'+#10+#13;
                       end
                end;

             if (trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('APRO_DATA').text) <> '') then
                begin
                   if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('APRO_DATA').AsDateTime >
                      dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_FINALISADO').AsDateTime then
                       begin
                         mens := mens+'.Data da aprovação da disposição não pode ser maior que a data da finalização da não conformidade'+#10+#13;
                       end
                end;
          end;
        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
          end;
     end;
end;

function FAT_CD_M_NFE_ITE_IQM_TesPermExclusao: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;
end;


function FAT_CD_M_IQM_ITE_AtuSitInspNF: Integer;
begin

  result := 0;
  // Inspeção não iniciada
  if (dmGeral.FAT_CD_M_IQM_ITE.RecordCount > 0) and (dmGeral.FAT_CD_M_IQM_ITE.RecordCount = 0) then
      begin
        result := 0;
      end
  else
      begin
        // Inspeção concluída
        if (dmGeral.FAT_CD_M_IQM_ITE.RecordCount = dmGeral.FAT_CD_M_IQM_ITE.RecordCount) then
            begin
              result := 2;
            end
        else
            begin
               // Inspeção em andamento
               result := 1;
            end;
      end;
end;


function FAT_CD_M_NFE_ANA_TesCampos: Boolean;
var
  mens: String;
begin

  result := true;

  mens := '';

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').text) = '') then
      mens := mens + '.Emissão' + #13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ESPECIFICADO').text) = '') then
      mens := mens + '.Especificado' + #13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ENCONTRADO').text) = '') then
      mens := mens + '.Encontrado' + #13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').text) = '')  then
      mens := mens + '.Responsável' + #13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_SETOR').text) = '') then
      mens := mens + '.Setor'+#13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_DEVOLVIDA').text) = '') then
      mens := mens + '.Quantidade devolvida'+#13;

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('situacao_analise').text = '1' then
     begin
       if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESP_ANALISE').text) = '') then
           mens := mens + '.Analisado por'+#13;
     end;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('CAUSA_DO_PROBLEMA_FORN').text) = '') then
      mens := mens + '.Causa do problema'+#10+#13;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('RESOLUCAO_PROBLEMA_FORN').text) = '') then
      begin
        mens := mens + '.Resolução do problema'+#10+#13;
      end;

  if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('RESPONSAVEL_FORN').text) = '') then
      begin
        mens := mens + '.Responsável do fornecedor' +#13;
      end;

   if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('CARGO_RESP_FORN').text) = '') then
       begin
         mens := mens + '.Cargo'+#13;
       end;

   if (trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_INF_FORN').text) = '') then
       begin
         mens := mens + '.Data' +#13;
       end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
       if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime <
           dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime) then
           begin
             mens := mens + '.Emissão não pode ser menor que a data de entrada da nota.' +#13;
           end;

       if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime >
           dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_INF_FORN').AsDateTime) then
           begin
              mens := mens + '.Data do fornecedor não pode ser menor que a data de emissão.' +#13;
           end;

       if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime <
           dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').AsDateTime) then
           begin
              mens := mens + '.Emissão não pode ser menor que a data da inspeção.' +#13;
           end;

       if trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_ANALISE').text) <> '' then
           begin
             if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_ANALISE').AsDateTime <
                 dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime) then
                 begin
                   mens := mens + '.A data de análise não pode ser menor que data de emissão do plano de ação.' +#13;
                 end;
           end;

       if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_DEVOLVIDA').AsInteger >
           dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_TOTAL').AsInteger) then
           begin
             mens := mens + '.Quantidade devolvida não pode ser maior que a quantidade total'+#10+#13;
           end;

       if mens <> '' then
          begin
            ShowMessage('Atenção:' + #13 + mens);
            mens := '';
            result := false;
          end
     end;
end;

function FAT_CD_M_NFE_ANA_TesPermExclusao: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

// Verifica o saldo do item vs a qtde do item digitada pelo usuário
function FatTestaQtdeIte(origem: integer;CdsPai, CdsIte: TClientDataSet): Boolean;
var
   Saldo_Fisico: String;

   QtdeAnt, SaldoIte: Extended;
begin

   { Origem:
          1 - Pedido De venda
          2 - Nota Fiscal de Saída / Nota Fiscal de Dev. de Fornecedor
          3 - Saída por Almoxarifado
   }

   result  := true;

   QtdeAnt := 0;

   case Origem of
     1:
       begin
         dmGeral.BUS_CD_M_PED.Close;
         dmGeral.BUS_CD_M_PED.Data :=
                 dmGeral.BUS_CD_M_PED.DataRequest(
                         VarArrayOf([0, CdsPai.FieldByName('id_empresa').AsString, CdsPai.FieldByName('id_pedido').AsString]));
         if not dmGeral.BUS_CD_M_PED.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_PED_ITE.locate('ID_PEDIDO;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('id_pedido').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_PED.Close;
       end;
     2:
       begin
         dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
                 dmGeral.BUS_CD_M_NFE.DataRequest(
                         VarArrayOf([12, CdsPai.FieldByName('ID_FISCAL').AsString]));
         if not dmGeral.BUS_CD_M_NFE.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_NFE_ITE.locate('ID_FISCAL;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('ID_FISCAL').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_NFE.Close;
       end;
     3:
       begin
         dmGeral.BUS_CD_M_MAL.Close;
         dmGeral.BUS_CD_M_MAL.Data :=
                 dmGeral.BUS_CD_M_MAL.DataRequest(
                         VarArrayOf([0, CdsPai.FieldByName('ID_EMPRESA').AsString,
                                        CdsPai.FieldByName('ID_MAL').AsString]));
         if not dmGeral.BUS_CD_M_MAL.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_MAL_ITE.locate('ID_MAL;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('ID_MAL').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_MAL_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_MAL.Close;
       end;
     4:
       begin
        { dmGeral.BUS_CD_M_ORV_2.Close;
         dmGeral.BUS_CD_M_ORV_2.Data :=
                 dmGeral.BUS_CD_M_ORV_2.DataRequest(
                         VarArrayOf([0,CdsPai.FieldByName('ID_ORDEM').AsString,
                                       CdsPai.FieldByName('ID_EMPRESA').AsString,1,'']));
         if not dmGeral.BUS_CD_M_ORV_2.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_ORV_ITE_2.locate('ID_ORDEM;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('ID_ORDEM').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_ORV_ITE_2.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_ORV_2.Close;  }
       end;

   end;

   dmGeral.BusItens(0,CdsIte.FieldByName('ID_ITEM').Text);

   if dmGeral.BUS_CD_C_ITE.FieldByName('int_tipo_item').AsInteger <> 9 then // Se não for serviço
      begin
        if origem <> 4 then
           dmGeral.BusTipoEstoque(0,CdsPai.FieldByName('ID_TIPO_MOV_ESTOQUE').Text)
        else
           dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_ID_TIPO_MOV_ESTOQUE').Text);

        if origem = 3 then
           begin
              if (dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0) and // Entrada
                 (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 1) then // Devolução
                  begin
                    dmGeral.BUS_CD_C_ITE.close;
                    dmGeral.BUS_CD_C_TME.Close;
                    exit;
                  end;
           end;

        if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean then
           begin
              dmGeral.BusSaldoItem(CdsPai.FieldByName('ID_EMPRESA').Text,
                                   CdsIte.FieldByName('ID_ITEM').Text,
                                   CdsIte.FieldByName('ID_COR').Text,
                                   CdsIte.FieldByName('ID_TAMANHO').Text,
                                   CdsPai.FieldByName('ID_ALMOXARIFADO').Text,
                                   saldo_fisico);

              // A variavel saldo_fisico tem este nome devido o sistema não trabalhar com estoque pendente por isso
              // não coloquei saldo disponivel.

              if CdsIte.FieldByName('num_lote').Text <> '' then
                 begin
                    if origem = 3 then // Saída de Almoxarifado
                       begin
                         saldo_fisico := '0';

                         dmGeral.BusLoteItem(
                                   CdsPai.FieldByName('ID_EMPRESA').Text,
                                   CdsIte.FieldByName('NUM_LOTE').Text,
                                   CdsIte.FieldByName('ID_ITEM').Text,
                                   CdsIte.FieldByName('ID_COR').Text,
                                   CdsIte.FieldByName('ID_TAMANHO').Text,
                                   CdsPai.FieldByName('ID_ALMOXARIFADO').Text);

                         if not dmGeral.EST_CD_M_LOT.IsEmpty then
                            begin
                              saldo_fisico := dmGeral.EST_CD_M_LOT.FieldByName('qtde_atual').AsString;
                            end;
                       end;
                 end;


              SaldoIte := StrToFloat(saldo_fisico);

              if QtdeAnt > 0 then
                 begin
                   SaldoIte := SaldoIte + QtdeAnt;
                 end;


              if (CdsIte.FieldByName('QTDE').AsFloat > SaldoIte) and
                 (CdsIte.FieldByName('QTDE').AsString <> FloatToStr(SaldoIte)) then
                 begin
                   if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and
                      ( dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false )  then
                      begin
                        result := false;
                        dmGeral.BUS_CD_C_ITE.close;
                        dmGeral.BUS_CD_C_TME.close;
                      end;
                 end;
           end;
      end;
   dmGeral.BUS_CD_C_ITE.close;
   dmGeral.BUS_CD_C_TME.close;
end;

function SAI_GRAVA_EST(const lOrigem: integer; const cds_pai,
  cds_itens, cds_itens_ant: TClientDataSet): Boolean;
var
  lFiltros,lCampo,lCampoSeq: String;
  lIndex: Integer;
  lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote: String;
  lAchou_Registro: Boolean;
begin


 { lOrigem:
     0 - Por Nota fiscal de entrada
     1 - Por Nota fiscal de saída
     2 - Por Ordem de saída
     3 - Por almoxarifado - Saída
     4 - Por inventário
     5 - Por almoxarifado - Devolucao
     6 - Por Pedido de Venda
  }
   case lorigem of
      1:
        begin
          lCampo     := 'ID_FISCAL' ;
          lCampoSeq  := 'ID_SEQUENCIA';
        end;
      3:
        begin
          lCampo    := 'ID_MAL';
          lCampoSeq := 'ID_SEQUENCIA';
        end;
      6:
        begin
          lCampo    := 'ID_PEDIDO';
          lCampoSeq := 'ID_SEQUENCIA';
        end;
   end;

   dmGeral.SelecionarItens(cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho, lCond_Lote,lCampo,lCampoSeq,lIndex,lOrigem);

   if trim(lCond_Item) <> '' then // Se existe produto
      begin
        dmGeral.SaiGravaFea(lOrigem, cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho,lCampo,lIndex);
        dmGeral.SaiGravaFes(lOrigem, cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote,lCampo,lIndex);
      end;
end;

function SAI_EXCLUI_EST(const lOrigem: integer; cds_pai, cds_itens,
  cds_itens_ant: TClientDataSet): Boolean;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote: String;
  lFiltros,lCampo,lCampoSeq: String;
  lExiste_Produto, lAchou_Registro: Boolean;
  lIndexLot: integer;
begin

 { lOrigem:
     0 - Por Nota fiscal de entrada
     1 - Por Nota fiscal de saída
     2 - Por Ordem de saída
     3 - Por almoxarifado - Saída
     4 - Por inventário
     5 - Por almoxarifado - Devolucao
     6 - Por Pedido de Venda
  }
   case lorigem of
      0,1:
        begin
          lCampo := 'ID_FISCAL' ;
          lCampoSeq  := 'ID_SEQUENCIA';
          { Filtros do BUS_CD_M_FEA:
              index 0, Empresa, Item               id_item
              index 1, Empresa, Pedido             id_pedido
              index 2, Empresa, Nota fiscal        id_fiscal
              index 3, Empresa, Mov. Almoxarifado  id_mal }
          // Irá excluir os movimento da ficha de estoque
          dmGeral.EST_CD_M_FEA.Close;
          dmGeral.EST_CD_M_FEA.Data :=
                  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([2, cds_pai.FieldByName('ID_EMPRESA').text, cds_pai.FieldByName(lCampo).text]));
          if not dmGeral.EST_CD_M_FEA.IsEmpty then
             begin
               while not dmGeral.EST_CD_M_FEA.Eof do
                   begin
                     dmGeral.EST_CD_M_FEA.delete;
                   end;
             end;
        end;
      3:
        begin
          lCampo := 'ID_MAL';
          lCampoSeq  := 'ID_SEQUENCIA';

          { Filtros do BUS_CD_M_FEA:
              index 0, Empresa, Item               id_item
              index 1, Empresa, Pedido             id_pedido
              index 2, Empresa, Nota fiscal        id_fiscal
              index 3, Empresa, Mov. Almoxarifado  id_mal }

          // Irá excluir os movimento da ficha de estoque
          dmGeral.EST_CD_M_FEA.Close;
          dmGeral.EST_CD_M_FEA.Data :=
                  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([3, cds_pai.FieldByName('ID_EMPRESA').text, cds_pai.FieldByName(lCampo).text]));
          if not dmGeral.EST_CD_M_FEA.IsEmpty then
             begin
               while not dmGeral.EST_CD_M_FEA.Eof do
                   begin
                     dmGeral.EST_CD_M_FEA.delete;
                   end;
             end;

        end;

      6:
        begin
          lCampo     := 'ID_PEDIDO';
          lCampoSeq  := 'ID_SEQUENCIA';

          { Filtros do BUS_CD_M_FEA:
              index 0, Empresa, Item               id_item
              index 1, Empresa, Pedido             id_pedido
              index 2, Empresa, Nota fiscal        id_fiscal
              index 3, Empresa, Mov. Almoxarifado  id_mal }

          // Irá excluir os movimento da ficha de estoque
          dmGeral.EST_CD_M_FEA.Close;
          dmGeral.EST_CD_M_FEA.Data :=
                  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([1, cds_pai.FieldByName('ID_EMPRESA').text, cds_pai.FieldByName(lCampo).text]));
          if not dmGeral.EST_CD_M_FEA.IsEmpty then
             begin
               while not dmGeral.EST_CD_M_FEA.Eof do
                   begin
                     dmGeral.EST_CD_M_FEA.delete;
                   end;
             end;
        end;
   end;

  dmGeral.SelecionarItens(cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho, lCond_Lote,lCampo,lCampoSeq,lIndex,lorigem);

   // Trabalhando com Tabela de Saldos -----------------------------------------

   { Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, int(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }


   // Com a exclusão do documento, a qtde dos itens deve ser retirado da tabela de saldo.
   if trim(lCond_Item) <> '' then // Se existe produto
      begin

         dmGeral.EST_CD_M_FES.Close;
         dmGeral.EST_CD_M_FES.Data :=
                 dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor, lCond_Tamanho]));

         if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
            begin
              dmGeral.EST_CD_M_FES_ALM.close;
              if lIndex = 7 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 4 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 5 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 6 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
            end;


          if trim(lCond_Lote) <> '' then
             begin
               { Filtros do EST_CD_M_LOT
                 8-  impresa + in(num lote) + in(item)
                 9-  impresa + in(num lote) + in(item) + in(cor)
                 10- impresa + in(num lote) + in(item) + in(cor) + in(tamanho)
                 11- impresa + in(num lote) + in(item) + in(tam)

                 12- impresa + in(num lote) + in(item) + almoxarifado
                 13- impresa + in(num lote) + in(item) + in(cor) + almoxarifado
                 14- impresa + in(num lote) + in(item) + in(tam) + almoxarifado
                 15- impresa + in(num lote) + in(item) + in(cor) + in(tam) + almoxarifado
               }

                 if lIndex = 7 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([12, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([8, cds_pai.FieldByName('ID_EMPRESA').text,lCond_Lote,lCond_Item]));


                 if lIndex = 4 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([13, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Cor,
                                                                    cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([9, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Cor]));

                 if lIndex = 5 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([14, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Tamanho,
                                                                    cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([11, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Tamanho]));

                 if lIndex = 6 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([15, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Lote,lCond_Item,lCond_Cor,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([10, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Lote,lCond_Item,lCond_Cor,lCond_Tamanho]));

             end;


         if not cds_itens.IsEmpty then
            begin
              cds_itens.First;
              while not cds_itens.eof do
                  begin
                    lAchou_Registro :=  dmGeral.localizar_FES(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                              cds_itens.FieldByName('ID_ITEM').text,
                                                              cds_itens.FieldByName('ID_COR').text,
                                                              cds_itens.FieldByName('ID_TAMANHO').text);
                    if lAchou_Registro then
                       begin
                         dmGeral.EST_CD_M_FES.Edit;

                         dmGeral.EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsFloat :=
                                dmGeral.EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsFloat -
                                cds_itens.FieldByName('QTDE').AsFloat;

                         dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat :=
                                dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat +
                                cds_itens.FieldByName('QTDE').AsFloat;

                         dmGeral.EST_CD_M_FES.Post;


                         if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean = true then
                            begin
                              lAchou_Registro :=  dmGeral.localizar_FES_ALM(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                            cds_itens.FieldByName('ID_ITEM').text,
                                                                            cds_pai.FieldByName('ID_ALMOXARIFADO').text,
                                                                            cds_itens.FieldByName('ID_COR').text,
                                                                            cds_itens.FieldByName('ID_TAMANHO').text);
                              if lAchou_Registro then
                                 begin

                                   dmGeral.EST_CD_M_FES_ALM.Edit;

                                   dmGeral.EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsFloat :=
                                       dmGeral.EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsFloat -
                                       cds_itens.FieldByName('QTDE').AsFloat;

                                   dmGeral.EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsFloat :=
                                       dmGeral.EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsFloat +
                                       cds_itens.FieldByName('QTDE').AsFloat;

                                   dmGeral.EST_CD_M_FES_ALM.Post;
                                 end;
                            end;

                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean = true then
                            begin
                              // Caso utiliza lote
                              if trim(lCond_Lote) <> '' then
                                 begin
                                   if (trim(cds_itens.FieldByName('NUM_LOTE').text) <> '') and
                                      (trim(cds_itens.FieldByName('NUM_LOTE').text) <> '0') then
                                      begin
                                        // Caso existe o registro de saldo de item por lote já exista
                                        lAchou_Registro :=  dmGeral.localizar_LOT(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                                       cds_itens.FieldByName('ID_ITEM').text,
                                                                                       cds_itens.FieldByName('NUM_LOTE').text,
                                                                                       cds_pai.FieldByName('ID_ALMOXARIFADO').text,
                                                                                       cds_itens.FieldByName('ID_COR').text,
                                                                                       cds_itens.FieldByName('ID_TAMANHO').text);

                                        if lAchou_Registro then
                                           begin
                                             dmGeral.EST_CD_M_LOT.Edit;
                                             dmGeral.EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsFloat :=
                                                    dmGeral.EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsFloat -
                                                        cds_itens.FieldByName('QTDE').AsFloat;

                                             dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsFloat :=
                                                 dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsFloat +
                                                     cds_itens.FieldByName('QTDE').AsFloat;
                                             dmGeral.EST_CD_M_LOT.Post;
                                           end;
                                      end;
                                  end;
                            end;
                       end;
                    cds_itens.next;
                  end;
            end;
      end;
end;

function CalcCustoMedioIte(const CdsNfe,CdsNfeIte,CdsEstFes: TClientDataSet): Currency;
begin

  result := 0;

  // TIPO_NF =  E - Nota de entrada     S - Nota de saída      -
  //            D - Dev. de Fornecedor  R - Dev. de cliente  F - Frete

  if CdsNfe.FieldByName('TIPO_NF').Text = 'E' then
     begin
       result :=
                 (
                 (CdsEstFes.FieldByName('VLR_CUSTO_MEDIO').AsCurrency *
                  CdsEstFes.FieldByName('SALDO_FISICO').AsFloat) +

                 (CdsNfeIte.FieldByName('VLR_CUSTO').AsCurrency *
                  CdsNfeIte.FieldByName('QTDE').AsFloat)
                  ) /

                 (CdsEstFes.FieldByName('SALDO_FISICO').AsFloat +
                  CdsNfeIte.FieldByName('QTDE').AsFloat);
     end;

  if CdsNfe.FieldByName('TIPO_NF').Text = 'D' then
     begin

     end;
end;

function ENT_GRAVA_EST(const lOrigem: integer; const cds_pai, cds_itens,cds_itens_ant: TClientDataSet): Boolean;
var
  SMPrincipal : TSMClient;
  lFiltros,lCampo,lCampoSeq: String;
  lIndex: Integer;
  lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote: String;
  lAchou_Registro: Boolean;
begin


 { lOrigem:
     0 - Por Nota fiscal de entrada
     1 - Por Nota fiscal de saída
     2 - Por Ordem de saída
     3 - Por almoxarifado - Saída
     4 - Por inventário
     5 - Por almoxarifado - Devolucao
  }
   case lorigem of
      0,1:
        begin
          lCampo := 'ID_FISCAL' ;
          lCampoSeq  := 'ID_SEQUENCIA';
        end;
      4:
        begin
          lCampo := 'ID_CONTROLE';
          lCampoSeq  := 'ID_SEQ_ITEM';
        end;
      5:
        begin
          lCampo := 'ID_MAL';
          lCampoSeq  := 'ID_SEQUENCIA';
        end;
   end;

   dmGeral.SelecionarItens(cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho, lCond_Lote,lCampo,lCampoSeq,lIndex,lorigem);

   if trim(lCond_Item) <> '' then // Se existe produto
      begin
        dmGeral.EntGravaFea(lOrigem, cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho,lCampo,lIndex);
        dmGeral.EntGravaFes(lOrigem, cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote,lCampo,lIndex);
      end;
end;

function ENT_GRAVA_PAG(const cds_pai,  cds_titulos: TClientDataSet): Boolean;
var
  lPonteiroItens : TBookmark;
begin
{
  dmGeral.FIN_CD_M_PAG.Close;
  dmGeral.FIN_CD_M_PAG.Data :=
  dmGeral.FIN_CD_M_PAG.DataRequest(
          VarArrayOf([90, cds_pai.FieldByName('ID_FISCAL').AsString]));

  if not dmGeral.FIN_CD_M_PAG.IsEmpty then
     begin
       dmGeral.FIN_CD_M_PAG.first;
       while not dmGeral.FIN_CD_M_PAG.eof do
           begin
             dmGeral.FIN_CD_M_PAG.delete;
           end;
     end;

  lPonteiroItens := cds_titulos.GetBookmark;

  cds_titulos.First;
  while not cds_titulos.Eof do
     begin
       dmGeral.FIN_CD_M_PAG.Insert;

       dmGeral.FIN_CD_M_PAGid_empresa.AsInteger      := cds_pai.FieldByName('ID_EMPRESA').AsInteger;
       dmGeral.FIN_CD_M_PAGid_fiscal.AsInteger       := cds_pai.FieldByName('ID_FISCAL').AsInteger;
       dmGeral.FIN_CD_M_PAGid_plano.AsString         := cds_titulos.FieldByName('ID_PLANO').AsString;
       dmGeral.FIN_CD_M_PAGid_ccusto.AsString        := cds_titulos.FieldByName('ID_CCUSTO').AsString;
       dmGeral.FIN_CD_M_PAGid_ccusto.AsString        := cds_titulos.FieldByName('ID_CCUSTO').AsString;
       dmGeral.FIN_CD_M_PAGid_fornecedor.AsInteger   := cds_pai.FieldByName('ID_EMITENTE').AsInteger;
       dmGeral.FIN_CD_M_PAGnum_parcela.AsString      := cds_titulos.FieldByName('NUM_PARCELA').AsString;
       dmGeral.FIN_CD_M_PAGdta_emissao.AsDateTime    := cds_pai.FieldByName('DTA_EMISSAO').AsDateTime;
      // dmGeral.FIN_CD_M_PAGvlr_parcela.AsCurrency    := cds_titulos.FieldByName('VLR_TITULO').AsCurrency;
       dmGeral.FIN_CD_M_PAGvlr_original.AsCurrency   := cds_titulos.FieldByName('VLR_TITULO').AsCurrency;
      // dmGeral.FIN_CD_M_PAGvlr_saldo.AsCurrency      := cds_titulos.FieldByName('VLR_TITULO').AsCurrency;
       dmGeral.FIN_CD_M_PAGdta_vencimento.AsDateTime := cds_titulos.FieldByName('DTA_VENCIMENTO').AsCurrency;
       dmGeral.FIN_CD_M_PAGdta_original.AsDateTime   := cds_titulos.FieldByName('DTA_VENCIMENTO').AsDateTime;
       dmGeral.FIN_CD_M_PAGhistorico.AsString        := 'Gerado pela NF: ' + cds_pai.FieldByName('NUMERO').AsString;
       // Origem
       // 0 - estoque
       // 1 - Caixa/Banco
       dmGeral.FIN_CD_M_PAGorigem.AsInteger          := 0;
       dmGeral.FIN_CD_M_PAGid_forma_pag.AsInteger    := cds_titulos.FieldByName('ID_FORMA_PAG').AsInteger;
       dmGeral.BusFormaPgtos(0,cds_titulos.FieldByName('ID_FORMA_PAG').AsString);
       dmGeral.FIN_CD_M_PAGid_local_titulo.AsString := dmGeral.BUS_CD_C_FPG.FieldByName('id_local_titulo').AsString;
       dmGeral.FIN_CD_M_PAGper_juros.AsFloat := 0;
       dmGeral.FIN_CD_M_PAGper_multa.AsFloat := 0;
       // 0 - Manual
       // 1 - Automática
       dmGeral.FIN_CD_M_PAGtipo_lancamento.AsInteger := 1;
       dmGeral.FIN_CD_M_PAG.Post;
       dmGeral.FAT_CD_M_NFE_TIT.Next;
     end;
  dmGeral.FAT_CD_M_NFE_TIT.GotoBookmark(lPonteiroItens);
}
end;


function ENT_EXCLUI_EST(const lOrigem: integer; cds_pai, cds_itens,cds_itens_ant: TClientDataSet): Boolean;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho,lCond_Lote: String;
  lFiltros,lCampo,lCampoSeq: String;
  lExiste_Produto, lAchou_Registro: Boolean;
  lIndexLot: integer;
  lVlrCustoMedio: Currency;
begin

 { lOrigem:
     0 - Por Nota fiscal de entrada
     1 - Por Nota fiscal de saída
     2 - Por Ordem de saída
     3 - Por almoxarifado - Saída
     4 - Por inventário
     5 - Por almoxarifado - Devolucao
  }
   case lorigem of
      0,1:
        begin
          lCampo := 'ID_FISCAL' ;
          lCampoSeq  := 'ID_SEQUENCIA';
          { Filtros do BUS_CD_M_FEA:
              index 0, Empresa, Item               id_item
              index 1, Empresa, Pedido             id_pedido
              index 2, Empresa, Nota fiscal        id_fiscal
              index 3, Empresa, Mov. Almoxarifado  id_mal }
          // Irá excluir os movimento da ficha de estoque
          dmGeral.EST_CD_M_FEA.Close;
          dmGeral.EST_CD_M_FEA.Data :=
                  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([2, cds_pai.FieldByName('ID_EMPRESA').text, cds_pai.FieldByName(lCampo).text]));
          if not dmGeral.EST_CD_M_FEA.IsEmpty then
             begin
               while not dmGeral.EST_CD_M_FEA.Eof do
                   begin
                     dmGeral.EST_CD_M_FEA.delete;
                   end;
             end;
        end;
      4:
        begin
          lCampo := 'ID_CONTROLE';
          lCampoSeq  := 'ID_SEQ_ITEM';
        end;
      5:
        begin
          lCampo := 'ID_MAL';
          lCampoSeq  := 'ID_SEQUENCIA';

          { Filtros do BUS_CD_M_FEA:
              index 0, Empresa, Item               id_item
              index 1, Empresa, Pedido             id_pedido
              index 2, Empresa, Nota fiscal        id_fiscal
              index 3, Empresa, Mov. Almoxarifado  id_mal }

          // Irá excluir os movimento da ficha de estoque
          dmGeral.EST_CD_M_FEA.Close;
          dmGeral.EST_CD_M_FEA.Data :=
                  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([3, cds_pai.FieldByName('ID_EMPRESA').text, cds_pai.FieldByName(lCampo).text]));
          if not dmGeral.EST_CD_M_FEA.IsEmpty then
             begin
               while not dmGeral.EST_CD_M_FEA.Eof do
                   begin
                     dmGeral.EST_CD_M_FEA.delete;
                   end;
             end;

        end;
   end;

  dmGeral.SelecionarItens(cds_pai, cds_itens,cds_itens_ant,lCond_Item, lCond_Cor, lCond_Tamanho, lCond_Lote,lCampo,lCampoSeq,lIndex,lorigem);

   // Trabalhando com Tabela de Saldos -----------------------------------------

   { Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, int(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }


   // Com a exclusão do documento, a qtde dos itens deve ser retirado da tabela de saldo.
   if trim(lCond_Item) <> '' then // Se existe produto
      begin

         dmGeral.EST_CD_M_FES.Close;
         dmGeral.EST_CD_M_FES.Data :=
                 dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor, lCond_Tamanho]));

         if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
            begin
              dmGeral.EST_CD_M_FES_ALM.close;
              if lIndex = 7 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 4 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 5 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
              if lIndex = 6 then
                 begin
                   dmGeral.EST_CD_M_FES_ALM.Data :=
                      dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Item,lCond_Cor,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]));
                 end;
            end;


          if trim(lCond_Lote) <> '' then
             begin
               { Filtros do EST_CD_M_LOT
                 8-  impresa + in(num lote) + in(item)
                 9-  impresa + in(num lote) + in(item) + in(cor)
                 10- impresa + in(num lote) + in(item) + in(cor) + in(tamanho)
                 11- impresa + in(num lote) + in(item) + in(tam)

                 12- impresa + in(num lote) + in(item) + almoxarifado
                 13- impresa + in(num lote) + in(item) + in(cor) + almoxarifado
                 14- impresa + in(num lote) + in(item) + in(tam) + almoxarifado
                 15- impresa + in(num lote) + in(item) + in(cor) + in(tam) + almoxarifado
               }

                 if lIndex = 7 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([12, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([8, cds_pai.FieldByName('ID_EMPRESA').text,lCond_Lote,lCond_Item]));


                 if lIndex = 4 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([13, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Cor,
                                                                    cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([9, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Cor]));

                 if lIndex = 5 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([14, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Tamanho,
                                                                    cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([11, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                    lCond_Lote,lCond_Item,lCond_Tamanho]));

                 if lIndex = 6 then
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([15, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Lote,lCond_Item,lCond_Cor,lCond_Tamanho,cds_pai.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       dmGeral.EST_CD_M_LOT.Data :=
                           dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([10, cds_pai.FieldByName('ID_EMPRESA').text, lCond_Lote,lCond_Item,lCond_Cor,lCond_Tamanho]));

             end;


         if not cds_itens.IsEmpty then
            begin
              cds_itens.First;
              while not cds_itens.eof do
                  begin
                    lAchou_Registro :=  dmGeral.localizar_FES(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                              cds_itens.FieldByName('ID_ITEM').text,
                                                              cds_itens.FieldByName('ID_COR').text,
                                                              cds_itens.FieldByName('ID_TAMANHO').text);
                    lVlrCustoMedio := 0;


                    { input[0] - id_empresa
                                   input[1] - id_fiscal
                                   input[2] - in id_item
                                   input[3] - in id_cor
                                   input[4] - in id_tamanho
                                  }
                     dmGeral.BUS_CD_M_FAT_NFE_CUS.Close;
                     dmGeral.BUS_CD_M_FAT_NFE_CUS.Data :=
                               dmGeral.BUS_CD_M_FAT_NFE_CUS.DataRequest(
                                    VarArrayOf([cds_pai.FieldByName('ID_EMPRESA').text,
                                                cds_pai.FieldByName('ID_FISCAL').text,
                                                ''''+cds_itens.FieldByName('ID_ITEM').text+'''',
                                                ''''+cds_itens.FieldByName('ID_COR').text+'''',
                                                ''''+cds_itens.FieldByName('ID_TAMANHO').text+'''']));

                    if not dmGeral.BUS_CD_M_FAT_NFE_CUS.IsEmpty then
                       begin
                         lVlrCustoMedio := dmGeral.BUS_CD_M_FAT_NFE_CUS.FieldByName('VLR_CUSTO_MEDIO').AsCurrency;
                       end;

                    if lAchou_Registro then
                       begin
                         dmGeral.EST_CD_M_FES.Edit;

                         dmGeral.EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsFloat := lVlrCustoMedio;

                         dmGeral.EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsFloat :=
                                dmGeral.EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsFloat -
                                cds_itens.FieldByName('QTDE').AsFloat;

                         dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat :=
                                dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat -
                                cds_itens.FieldByName('QTDE').AsFloat;
                         dmGeral.EST_CD_M_FES.Post;


                         if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean = true then
                            begin
                              lAchou_Registro :=  dmGeral.localizar_FES_ALM(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                            cds_itens.FieldByName('ID_ITEM').text,
                                                                            cds_pai.FieldByName('ID_ALMOXARIFADO').text,
                                                                            cds_itens.FieldByName('ID_COR').text,
                                                                            cds_itens.FieldByName('ID_TAMANHO').text);
                              if lAchou_Registro then
                                 begin

                                   dmGeral.EST_CD_M_FES_ALM.Edit;

                                   dmGeral.EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsFloat :=
                                       dmGeral.EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsFloat -
                                       cds_itens.FieldByName('QTDE').AsFloat;

                                   dmGeral.EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsFloat :=
                                       dmGeral.EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsFloat -
                                       cds_itens.FieldByName('QTDE').AsFloat;
                                   dmGeral.EST_CD_M_FES_ALM.Post;
                                 end;
                            end;

                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean = true then
                            begin
                              // Caso utiliza lote
                              if trim(lCond_Lote) <> '' then
                                 begin
                                   if (trim(cds_itens.FieldByName('NUM_LOTE').text) <> '') and
                                      (trim(cds_itens.FieldByName('NUM_LOTE').text) <> '0') then
                                      begin
                                        // Caso existe o registro de saldo de item por lote já exista
                                        lAchou_Registro :=  dmGeral.localizar_LOT(lIndex, cds_pai.FieldByName('ID_EMPRESA').text,
                                                                                       cds_itens.FieldByName('ID_ITEM').text,
                                                                                       cds_itens.FieldByName('NUM_LOTE').text,
                                                                                       cds_pai.FieldByName('ID_ALMOXARIFADO').text,
                                                                                       cds_itens.FieldByName('ID_COR').text,
                                                                                       cds_itens.FieldByName('ID_TAMANHO').text);

                                        if lAchou_Registro then
                                           begin
                                             dmGeral.EST_CD_M_LOT.Edit;
                                             dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsFloat :=
                                                    dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsFloat -
                                                        cds_itens.FieldByName('QTDE').AsFloat;

                                             dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsFloat :=
                                                 dmGeral.EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsFloat -
                                                     cds_itens.FieldByName('QTDE').AsFloat;
                                             dmGeral.EST_CD_M_LOT.Post;
                                           end;
                                      end;
                                  end;
                            end;
                       end;
                    cds_itens.next;
                  end;
            end;
      end;
   dmGeral.BUS_CD_M_FAT_NFE_CUS.Close;
end;


function ENT_EXCLUI_PAG(const cds_pai,  cds_titulos: TClientDataSet): Boolean;
begin
{
  dmGeral.FIN_CD_M_PAG.Close;
  dmGeral.FIN_CD_M_PAG.Data :=
  dmGeral.FIN_CD_M_PAG.DataRequest(
          VarArrayOf([90, cds_pai.FieldByName('ID_FISCAL').AsString]));

  if not dmGeral.FIN_CD_M_PAG.IsEmpty then
     begin
       dmGeral.FIN_CD_M_PAG.first;
       while not dmGeral.FIN_CD_M_PAG.eof do
           begin
             dmGeral.FIN_CD_M_PAG.delete;
           end;
     end;
}
end;


function FatValidaNfd: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString) = '') then
     begin
       mens := mens + '.Série' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end

end;




function FatValidaNfeFre: Boolean;
var
  mens: String;
  mensVlrDif: String;
begin
  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Empresa' + #13;
     end;


  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').IsNull) then
     begin
       mens := mens + '.Número' + #13;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) = '') then
     begin
       mens := mens + '.Série' + #13;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').text) = '') then
     begin
       mens := mens + '.Sub série' + #13;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').text) = '' then
     begin
       mens := mens + '.Tipo frete' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').IsNull then
     begin
       mens := mens + '.Cfop' + #13;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='57') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
     begin
       if trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').Text) = '' then
          mens := mens + '.Número da chave' + #13;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency = 0) then
     begin
       mens := mens + '.Valor da mercadoria' + #13;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency = 0) then
     begin
       mens := mens + '.Valor total' + #13;
     end;


  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
        if dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency >
           dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             mens := mens + '.Valor da mercadoria não pode ser maior que o valor total' + #13;
           end;

        dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);
        if dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then // A prazo
           begin
             dmGeral.FAT_CD_M_NFE_TIT.cancel;
             if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
                begin
                  mens := mens + 'Nenhuma forma de pagamento foi inserido na nota fiscal.' + #13;
                end;

             if FAT_CD_M_NFE_TesTotFpgXTotNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT,mensVlrDif) then
                begin
                  mens := mens + 'Valor dos vencimentos diferente do total do conhecimento de frete.' + #13;
                end;
           end;

        dmGeral.FAT_CD_M_NFE_NFF.cancel;
        if dmGeral.FAT_CD_M_NFE_NFF.IsEmpty then
          begin
            mens := mens + 'Nenhuma nota fiscal foi inserida neste conhecimento de frete.' + #13;
          end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
          end;
     end;
end;

procedure FatValidaNfeFreNff;
var
  xMensErro:string;
begin
  xMensErro:='';

  if (trim(dmGeral.FAT_CD_M_NFE_NFFid_fornecedor.text) = '') or
     (dmGeral.FAT_CD_M_NFE_NFFid_fornecedor.AsInteger  = 0)   then
      begin
        xMensErro:= xMensErro + '.Fornecedor'+ #13;
      end;

  if (trim(dmGeral.FAT_CD_M_NFE_NFFnota_frete.text) = '') or
     (dmGeral.FAT_CD_M_NFE_NFFnota_frete.AsInteger  = 0)   then
     begin
       xMensErro:= xMensErro + '.Número'+ #13;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE_NFFvlr_nota.text) = '') or
     (dmGeral.FAT_CD_M_NFE_NFFvlr_nota.AsInteger  = 0)   then
     begin
       xMensErro:= xMensErro + '.Valor da nota'+ #13;
     end;

 { if (trim(dmGeral.FAT_CD_M_NFE_NFFvlr_frete.text) = '') or
     (dmGeral.FAT_CD_M_NFE_NFFvlr_frete.AsInteger  = 0)   then
     begin
       xMensErro:= xMensErro + '.Valor do frete(rateio)'+ #13;
     end;}

  if xMensErro<>'' then
     begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        abort;
     end;
end;
procedure FatValidaNfeTitCxa(tipo: integer; DataSet: TDataSet);
var
  ExisteDig: Boolean;
  xMensErro: string;
begin

    xMensErro := '';

    { tipo
        0 - Somente 1 registro
        1 - Irá testar as informações dos cheques}
    if tipo = 0 then
       begin
          if trim(DataSet.FieldByName('che_banco').AsString) <> '' then
             ExisteDig := true;

          if trim(DataSet.FieldByName('che_agencia').AsString) <> '' then
             ExisteDig := true;

          if trim(DataSet.FieldByName('che_conta').AsString) <> '' then
             ExisteDig := true;

          if DataSet.FieldByName('che_numero').AsInteger > 0 then
             ExisteDig := true;

          if trim(DataSet.FieldByName('che_emitente').AsString) <> '' then
             ExisteDig := true;

          if ExisteDig then
             begin
                if trim(DataSet.FieldByName('che_banco').AsString) = '' then
                   xMensErro:= xMensErro + '.Banco'+ #13;

                if trim(DataSet.FieldByName('che_agencia').AsString) = '' then
                   xMensErro:= xMensErro + '.Agência'+ #13;

                if trim(DataSet.FieldByName('che_conta').AsString) = '' then
                   xMensErro:= xMensErro + '.Conta'+ #13;

                if DataSet.FieldByName('che_numero').AsInteger = 0 then
                   xMensErro:= xMensErro + '.Número'+ #13;

                if trim(DataSet.FieldByName('che_emitente').AsString) = '' then
                   xMensErro:= xMensErro + '.Emitente'+ #13;
             end;
          if xMensErro<>'' then
             begin
                raise Exception.Create(enConstantes.MensErro + #13 + xMensErro + #13 +
                                       'Caso deseje cancelar a alteração tecle <ESC>.');
                abort;
             end;
       end;

    if tipo = 1 then
       begin
          dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
          while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
             begin
                dmGeral.BusFormaPgtos(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').AsString);
                if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                   begin
                     if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                        begin
                          if (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_banco').AsString)    = '') or
                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_agencia').AsString)  = '') or
                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_conta').AsString)    = '') or
                             (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_numero').AsInteger        = 0)  or
                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_emitente').AsString) = '') then
                             begin
                               dmGeral.BUS_CD_C_FPG.close;
                               raise Exception.Create(enConstantes.MensErro + #13 +
                                       'Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!');
                               abort;
                             end;
                        end
                    end;

                if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency = 0 then
                   begin
                     raise Exception.Create(enConstantes.MensErro + #13 +
                           'Existe forma de pagamento sem valor!');
                     abort;
                   end;

                dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
             end;
          dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
       end;
end;

procedure FatValidaEdtNfe;
var
  xMensErro:string;
begin
  xMensErro:='';
  if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'E') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D')) then
      begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
           (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString) <> '') and
           (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean=false) then
           begin
             xMensErro:= xMensErro + '.Nota fiscal não pode ser editada pois o número já foi gerado pelo controle de caixa'+ #13;
           end;
      end;

  if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'E')) then
      begin
         dmGeral.FAT_CD_M_NFE_ITE.First;
          while not dmGeral.FAT_CD_M_NFE_ITE.eof do
            begin
              if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE_DEVOLVIDA').AsCurrency >0 then
                begin
                   xMensErro:= xMensErro + '.Nota fiscal não pode ser editada pois a mesma tinha sido utilizado na devolução'+ #13;
                   break;
                end;
              dmGeral.FAT_CD_M_NFE_ITE.Next;
            end;
         dmGeral.FAT_CD_M_NFE_ITE.First;
      end;


   if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') then
      begin

        if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean) and
           ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_protocolo').AsString) <> '') and
           ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_recibo').AsString) <> '') then
           begin
             xMensErro:= xMensErro + '.Nota fiscal não pode ser editada pois já foi faturada pelo controle de caixa'+ #13;
           end;
      end
  else
      begin

        if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'F') then
           begin
              if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
                 (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean) and
                 (dmGeral.FAT_CD_M_NFE.FieldByName('status').AsInteger = 1) then
                 begin
                   xMensErro:= xMensErro + '.Nota fiscal não pode ser editada pois já foi faturada pelo controle de caixa'+ #13;
                 end;
           end;
      end;



  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;


procedure FatValidaExcNfe;
var
  xMensErro:string;
begin
  xMensErro:='';
   if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'E') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D')) then
      begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
           (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString) <> '') and
           (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean=false) then
           begin
             xMensErro:= xMensErro + '.Nota fiscal não pode ser excluída pois o número já foi gerado pelo controle de caixa'+ #13;
           end;
      end;

  if ((dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
      (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'E')) then
      begin
         dmGeral.FAT_CD_M_NFE_ITE.First;
          while not dmGeral.FAT_CD_M_NFE_ITE.eof do
            begin
              if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE_DEVOLVIDA').AsCurrency >0 then
                begin
                   xMensErro:= xMensErro + '.Nota fiscal não pode ser excluída pois a mesma tinha sido utilizado na devolução'+ #13;
                   break;
                end;
              dmGeral.FAT_CD_M_NFE_ITE.Next;
            end;
         dmGeral.FAT_CD_M_NFE_ITE.First;
      end;



  if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') then
      begin

        if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean) and
           ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_protocolo').AsString) <> '') and
           ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_recibo').AsString) <> '') then
           begin
             xMensErro:= xMensErro + '.Nota fiscal não pode ser excluída pois já foi faturada pelo controle de caixa'+ #13;
           end;

        if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('prevenda').AsBoolean) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger=1) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean) and
           (dmGeral.FAT_CD_M_NFE.FieldByName('status').AsBoolean) then
           begin
             xMensErro:= xMensErro + '.Nota fiscal não pode ser excluída pois o cupom já foi emitido'+ #13;
           end;
      end
  else
      begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString <> 'F') then
           begin
              if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger   > 0) and
                 (dmGeral.FAT_CD_M_NFE.FieldByName('faturada').AsBoolean) and
                 (dmGeral.FAT_CD_M_NFE.FieldByName('status').AsInteger = 1) then
                 begin
                   xMensErro:= xMensErro + '.Nota fiscal não pode ser excluída pois já foi faturada pelo controle de caixa'+ #13;
                 end;
           end;
      end;

  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;


procedure FatFormarNfeObs(CdsPai,CdsIte: TClientDataSet);
var
  CodInfFis:String;
  NfeObsAnt,NfeObsAtu:String;
begin
  if (CdsPai.FieldByName('TIPO_NF').Text = 'S') and
     (CdsPai.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
     begin
       CodInfFis := '';

       NfeObsAnt := CdsPai.FieldByName('NFE_OBS').Text;
       NfeObsAtu := CdsPai.FieldByName('NFE_OBS').Text;
       cdsIte.First;
       while not cdsIte.Eof do
          begin
             if CodInfFis <> '' then
                 begin
                   CodInfFis :=
                        CodInfFis + ',' +''''+ cdsIte.FieldByName('ID_INF_FISCO').AsString+'''';
                 end;
             if CodInfFis = '' then
                begin
                  CodInfFis :=
                       CodInfFis +''''+cdsIte.FieldByName('ID_INF_FISCO').AsString+'''';
                end;
             cdsIte.Next;
          end;
       cdsIte.First;

       if CodInfFis <> '' then
          begin
             dmGeral.BusInfoFis(2,CodInfFis);
             if not dmGeral.BUS_CD_C_INF.IsEmpty then
                begin
                  while not dmGeral.BUS_CD_C_INF.eof do
                     begin
                       //  = 0 quer dizer que não achou
                       if pos(dmGeral.BUS_CD_C_INF.FieldByName('DESCRICAO').AsString,NfeObsAnt) = 0 then
                          begin
                            NfeObsAtu := dmGeral.BUS_CD_C_INF.FieldByName('DESCRICAO').AsString + #13 +
                                         NfeObsAtu;
                          end;
                       dmGeral.BUS_CD_C_INF.Next;
                     end;
                  dmGeral.BUS_CD_C_INF.First;
                end;

             if NfeObsAnt <> NfeObsAtu then
                begin
                  CdsPai.edit;
                  CdsPai.FieldByName('NFE_OBS').Text :=  NfeObsAtu;
                end;
          end;


        if (CdsPai.FieldByName('ID_PEDIDO_VENDA').AsInteger>0) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('exibir_obs_ped_nfe_fisco').AsBoolean=true) then
           begin

               dmGeral.BUS_CD_M_PED.Close;
               dmGeral.BUS_CD_M_PED.Data :=
               dmGeral.BUS_CD_M_PED.DataRequest(
                       VarArrayOf([0,CdsPai.FieldByName('id_empresa').AsString,
                                    CdsPai.FieldByName('id_pedido_venda').AsString]));


              CdsPai.edit;
                  CdsPai.FieldByName('NFE_OBS').Text := CdsPai.FieldByName('NFE_OBS').Text+#13+#10+
                   dmGeral.BUS_CD_M_PED.FieldByName('OBS').Text ;
              dmGeral.BUS_CD_M_PED.Close;
           end;

        if (dmGeral.BUS_CD_M_NFE_CXA.fieldByName('vlr_fcp_ope_int').asCurrency > 0) then
            begin
              CdsPai.FieldByName('NFE_OBS').Text := CdsPai.FieldByName('NFE_OBS').Text+#13+#10+
                 ' Total(R$) do FCP ' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_ope_int').AsCurrency);
            end;

        if  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency > 0) then
            begin
              CdsPai.FieldByName('NFE_OBS').Text := CdsPai.FieldByName('NFE_OBS').Text+#13+#10+
                 ' Total(R$) do FCP ST' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency);
            end;

     end;

   if (CdsPai.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
     begin
       dmGeral.BUS_CD_M_NFE_2.Close;
       dmGeral.BUS_CD_M_NFE_2.Data :=
       dmGeral.BUS_CD_M_NFE_2.DataRequest(
         VarArrayOf([12,CdsPai.FieldByName('id_fiscal_ref_comp').AsString]));

       NfeObsAnt := CdsPai.FieldByName('NFE_OBS').Text;
       NfeObsAtu := CdsPai.FieldByName('NFE_OBS').Text;

       NfeObsAtu := 'NFe complementar referente a NFe de nº '+dmGeral.BUS_CD_M_NFE_2.FieldByName('numero').AsString+' emitido dia '+
                    dmGeral.BUS_CD_M_NFE_2.FieldByName('DTA_EMISSAO').AsString+' , chave de acesso: '+
                       dmGeral.BUS_CD_M_NFE_2.FieldByName('nfe_chave').AsString +'.'+#13+
                    NfeObsAtu;

       if NfeObsAnt <> NfeObsAtu then
        begin
          CdsPai.edit;
          CdsPai.FieldByName('NFE_OBS').Text :=  NfeObsAtu;
        end;

       dmGeral.BUS_CD_M_NFE_2.Close;
     end;

end;

procedure FatFormarNfeObs_NFE(CdsPai,CdsIte: TClientDataSet);
var
  CodInfFis:String;
  NfeObsAnt,NfeObsAtu:String;
begin
  // Criado por Maxsuel Victor, em 06/06/2017 devido tarefa 3236
  if (CdsPai.FieldByName('TIPO_NF').Text = 'E') and
     (CdsPai.FieldByName('NUMERO').AsExtended = 0) then
     begin
       CodInfFis := '';

       NfeObsAnt := CdsPai.FieldByName('NFE_OBS').Text;
       NfeObsAtu := CdsPai.FieldByName('NFE_OBS').Text;
       cdsIte.First;
       while not cdsIte.Eof do
          begin
             if CodInfFis <> '' then
                 begin
                   CodInfFis :=
                        CodInfFis + ',' +''''+ cdsIte.FieldByName('ID_INF_FISCO').AsString+'''';
                 end;
             if CodInfFis = '' then
                begin
                  CodInfFis :=
                       CodInfFis +''''+cdsIte.FieldByName('ID_INF_FISCO').AsString+'''';
                end;
             cdsIte.Next;
          end;
       cdsIte.First;

       if CodInfFis <> '' then
          begin
             dmGeral.BusInfoFis(2,CodInfFis);
             if not dmGeral.BUS_CD_C_INF.IsEmpty then
                begin
                  while not dmGeral.BUS_CD_C_INF.eof do
                     begin
                       //  = 0 quer dizer que não achou
                       if pos(dmGeral.BUS_CD_C_INF.FieldByName('DESCRICAO').AsString,NfeObsAnt) = 0 then
                          begin
                            NfeObsAtu := dmGeral.BUS_CD_C_INF.FieldByName('DESCRICAO').AsString + #13 +
                                         NfeObsAtu;
                          end;
                       dmGeral.BUS_CD_C_INF.Next;
                     end;
                  dmGeral.BUS_CD_C_INF.First;
                end;

             if NfeObsAnt <> NfeObsAtu then
                begin
                  CdsPai.edit;
                  CdsPai.FieldByName('NFE_OBS').Text :=  NfeObsAtu;
                end;
          end;
     end;
end;

procedure FatValidaNfeFreTit;
var
  xMensErro:string;
begin

  {dmGeral.FAT_CD_M_NFE_TITnum_parcela.AsString      := '0';
  dmGeral.FAT_CD_M_NFE_TITdias.AsInteger            := 0;
  dmGeral.FAT_CD_M_NFE_TITche_banco.AsString        := '';
  dmGeral.FAT_CD_M_NFE_TITche_agencia.AsString      := '';
  dmGeral.FAT_CD_M_NFE_TITche_conta.AsString        := '';
  dmGeral.FAT_CD_M_NFE_TITche_numero.AsInteger      := 0;
  dmGeral.FAT_CD_M_NFE_TITche_emitente.AsString     := '';
  dmGeral.FAT_CD_M_NFE_TITbol_nosso_numero.AsString := '0';}

  xMensErro:='';


  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text = 'S' then
    begin
      dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').AsString);
      if not dmGeral.BUS_CD_C_FPG.IsEmpty then
        begin
          if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7' then  //Credito
            begin
              if ((dmGeral.CAD_CD_C_PAR_CTRrcr_id_plano_sef.IsNull) or (dmGeral.CAD_CD_C_PAR_CTRrcr_id_plano_sef.AsString = '')) then
                 begin
                     xMensErro:= xMensErro + '.Plano de contas sem fluxo'+ #13;
                 end;
              if ((dmGeral.CAD_CD_C_PAR_CTRrcr_id_tif_cre.IsNull) or (dmGeral.CAD_CD_C_PAR_CTRrcr_id_tif_cre.AsString = '')) then
                 begin
                     xMensErro:= xMensErro + '.Tipo Crédito'+ #13;
                 end;
              if ((dmGeral.CAD_CD_C_PAR_CTRrcr_id_tif_deb.IsNull) or (dmGeral.CAD_CD_C_PAR_CTRrcr_id_tif_deb.AsString = '')) then
                 begin
                     xMensErro:= xMensErro + '.Tipo Débito'+ #13;
                 end;

              if xMensErro<>'' then
                 begin
                   raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                   abort;
                 end;
            end;
        end;
    end;


  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text = 'F' then // Conhecimento de frete
     begin
        if (trim(dmGeral.FAT_CD_M_NFE_TITid_forma_pag.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITid_forma_pag.AsInteger  = 0)   then
           begin
             xMensErro:= xMensErro + '.Forma de pagamento'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITid_plano.text) = '') then
           begin
             xMensErro:= xMensErro + '.Plano de contas'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITid_ccusto.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITid_ccusto.AsInteger = 0)   then
           begin
             xMensErro:= xMensErro + '.Centro de custo'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITdta_vencimento.text) = '') then
           begin
             xMensErro:= xMensErro + '.Data de vencimento'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITvlr_titulo.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITvlr_titulo.AsCurrency  = 0)   then
           begin
             xMensErro:= xMensErro + '.Valor da parcela'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text = 'E' then // NFE
     begin
        dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').AsString);
        if (trim(dmGeral.FAT_CD_M_NFE_TITid_forma_pag.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITid_forma_pag.AsInteger  = 0)   then
           begin
             xMensErro:= xMensErro + '.Forma de pagamento'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITid_plano.text) = '') then
           begin
             xMensErro:= xMensErro + '.Plano de contas'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITid_ccusto.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITid_ccusto.AsInteger = 0)   then
           begin
             xMensErro:= xMensErro + '.Centro de custo'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITdta_vencimento.text) = '') then
           begin
             xMensErro:= xMensErro + '.Data de vencimento'+ #13;
           end;

        if (trim(dmGeral.FAT_CD_M_NFE_TITvlr_titulo.text) = '') or
           (dmGeral.FAT_CD_M_NFE_TITvlr_titulo.AsCurrency  = 0)   then
           begin
             xMensErro:= xMensErro + '.Valor da parcela'+ #13;
           end;

        if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 6) and
            ((dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_banco').text = '') or
            (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_agencia').text = '') or
            (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_conta').text = '') or
            (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_numero').text = '') or
            (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_emitente').text = ''))  then
          begin
            xMensErro:= xMensErro + '.Dados do cheque'+ #13;
          end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;

function  FatValidaExcNfeFre:Boolean;
var
  mens: String;
begin

   if dmGeral.FAT_CD_M_NFEtipo_nf.Text = 'F' then
      begin
         mens := '';

         if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
           begin
             mens := mens + '.A data de entrada desta nota fiscal não está dentro do mês e ano atual.' + #13;
           end;

         // Verifica se o financeiro da nota fiscal já foi movimentado(baixado)
         if FIN_RN_M_PAG.FatExisteFinBxaNfe(dmGeral.FAT_CD_M_NFE, dmGeral.FAT_CD_M_NFE_TIT) then
            begin
              mens := mens + '.Nota fiscal com títulos baixados.' + #13;
            end;

         if mens <> '' then
            begin
              ShowMessage('Exclusão não permitida!' + #13 + mens);
              mens := '';
              abort;
            end;
      end;
end;


procedure FatRatVlrFreteNfeNff;
var
  lPonteiroItens: TBookmark;
  lPercTemp, lPercAcum: Currency;
  lQtdeReg, lNroReg: Integer;
  lVlrTotNotas,lVlrMercadoria: Currency;
begin

  // lVlrTotNotas  = Ao valor da soma das notas do NFE_NFF
  // lVlrMercadoria = Refere-se ao valor da mercadoria que é o Valor do Frete do conhecimento de frete.


  dmGeral.FAT_CD_M_NFE_NFF.cancel;

  while not dmGeral.FAT_CD_M_NFE_NFF.eof do
     begin
       lVlrTotNotas := lVlrTotNotas + dmGeral.FAT_CD_M_NFE_NFFvlr_nota.AsCurrency;
       dmGeral.FAT_CD_M_NFE_NFF.Next;
     end;
  dmGeral.FAT_CD_M_NFE_NFF.First;

  lVlrMercadoria := dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency;

  lQtdeReg  := dmGeral.FAT_CD_M_NFE_NFF.RecordCount;
  lNroReg   := 0;
  lPercAcum := 0;
  if lVlrTotNotas > 0 then
     begin
        dmGeral.FAT_CD_M_NFE_NFF.First;
        if not dmGeral.FAT_CD_M_NFE_NFF.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_NFE_NFF.eof do
                begin
                  dmGeral.FAT_CD_M_NFE_NFF.edit;
                  inc(lNroReg);

                  if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_NFE_NFF.FieldByName('VLR_NOTA').AsCurrency) /  lVlrTotNotas,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end;
                  dmGeral.FAT_CD_M_NFE_NFF.FieldByName('VLR_FRETE').AsCurrency := roundTo((lPercTemp * lVlrMercadoria) / 100,-2);

                  lPercAcum := lPercAcum + lPercTemp;
                  //FAT_CD_M_NFE_ITE.post;
                  dmGeral.FAT_CD_M_NFE_NFF.Next;
                end;
           end;
        dmGeral.FAT_CD_M_NFE_NFF.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_NFE_NFF.First;
       if not dmGeral.FAT_CD_M_NFE_NFF.IsEmpty then
          begin
             while not dmGeral.FAT_CD_M_NFE_NFF.eof do
               begin
                 dmGeral.FAT_CD_M_NFE_NFF.edit;
                 dmGeral.FAT_CD_M_NFE_NFF.FieldByName('VLR_FRETE').AsCurrency := 0;
                 dmGeral.FAT_CD_M_NFE_NFF.Post;
                 dmGeral.FAT_CD_M_NFE_NFF.Next;
               end;
           end;
       dmGeral.FAT_CD_M_NFE_NFF.First;
     end;
end;
function ValidarTributItens: String;
begin
  result := '';
  if ((dmGeral.FAT_CD_M_NFEtipo_nf.text = 'E') and (dmGeral.FAT_CD_M_NFEnfe_finalidade.AsInteger <> 2)) then
     begin
        //Foi retirado ID_ST_ICM=90 para importação xml.Responsavel:Luan. Data:03/05/2016

        if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString,'00-20-10-70') <> 0 then
           begin
             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency = 0 then
                begin
                  result := result +'O campo "Valor base icms" deve ser preenchido.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency = 0 then
                begin
                  result := result +'O campo "Valor do icms" deve ser preenchido.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency >
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency then
                begin
                  result := result +'O campo "Valor do icms" não pode ser maior que a "Base de icms".' + #13;
                end;
           end
        else
           begin
             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency > 0 then
                begin
                  result := result + 'O campo "Valor base icms" deve ter valor 0.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency > 0 then
                begin
                  result := result +'O campo "Valor do icms" deve ter valor 0.' + #13;
                end;
           end;

        if pos(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString,'10-30-70') <> 0 then
           begin
             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency = 0 then
                begin
                  result := result + 'O campo "Valor base do icms substituído" deve ser preenchido.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency = 0 then
                begin
                  result := result + 'O campo "Valor do icms substituído" deve ser preenchido.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency >
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency then
                begin
                  result := result +'O campo "Valor do icms substituído" não pode ser maior que a "Base de icms substituído".' + #13;
                end;
           end
        else
           begin
             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency > 0 then
                begin
                  result := result + 'O campo "Valor base do icms substituído" deve ter valor 0.' + #13;
                end;

             if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency > 0 then
                begin
                  result := result + 'O campo "Valor do icms substituído" deve ter valor 0.' + #13;
                end
           end;
     end;
end;

procedure FatRecalTributItens(cdsNfe,cdsNfeIte: TClientDataSet);
var
  lPonteiroItens : TBookmark;
begin

  try

  if cdsNfe.Name = 'FAT_CD_M_NFE' then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
     end;


  lPonteiroItens := cdsNfeIte.GetBookmark;


  cdsNfeIte.First;
  while not cdsNfeIte.eof do
      begin
        dmGeral.BusItens(0,cdsNfeIte.FieldByName('id_item').AsString);
        cdsNfeIte.Edit;
        // essa linha é pra que o evento do OnChange deste campo seja disparado.
        if (cdsNfe.FieldByName('TIPO_NF').AsString <> 'D') and
           (cdsNfe.FieldByName('TIPO_NF').AsString <> 'R') and
           (cdsNfe.FieldByName('TIPO_NF').AsString <> 'S') and
           (cdsNfe.FieldByName('TIPO_NF').AsString <> 'E') then
          begin
             cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency :=
                  cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency;
          end;
        // --------------------------------------------------------------------

        dmGeral.CalculaTributos(cdsNfe,cdsNfeIte);


        // Este if foi colocado a pedido de Mariel, devido legislação do estado de Maranhão em
        // conjunto com conversa com o cliente Welligton proprietário da Taresina Agrícola
        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('calc_icm_dispensado').AsBoolean) and
           (xNFCe <> true) and  // NF-e
           (cdsNfe.FieldByName('uf_emitente').AsString  = 'MA') and
           (cdsNfe.FieldByName('TIPO_NF').AsString =  'S')  then
           begin
             if cdsNfeIte.FieldByName('dis_icm_dispensado').AsCurrency > 0 then
                begin
                  cdsNfeIte.FieldByName('vlr_desconto').AsCurrency :=
                     cdsNfeIte.FieldByName('vlr_desconto').AsCurrency +
                       cdsNfeIte.FieldByName('dis_icm_dispensado').AsCurrency;

                  cdsNfeIte.FieldByName('vlr_liquido').AsCurrency :=
                     cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency -
                     cdsNfeIte.FieldByName('vlr_desconto').AsCurrency;
                end;
           end;

        cdsNfeIte.Post;
        cdsNfeIte.Next;
      end;

  finally
    if cdsNfe.Name = 'FAT_CD_M_NFE' then
       begin
         dmGeral.FAT_CD_M_NFE_ITE.beforepost :=  dmGeral.FAT_CD_M_NFE_ITEBeforePost;
         dmGeral.FAT_CD_M_NFE_ITE.afterpost  :=  dmGeral.FAT_CD_M_NFE_ITEAfterPost;
       end;
  end;
  cdsNfeIte.GotoBookmark(lPonteiroItens);
end;


procedure PreencherFisco(cdsNfe,cdsNfeIte: TClientDataSet);
var
  lPonteiroItens : TBookmark;
begin
  try

  if cdsNfe.Name = 'FAT_CD_M_NFE' then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
     end;


  lPonteiroItens := cdsNfeIte.GetBookmark;


  cdsNfeIte.First;
  while not cdsNfeIte.eof do
      begin
        dmGeral.BusItens(0,cdsNfeIte.FieldByName('id_item').AsString);
        cdsNfeIte.Edit;


        FAT_RN_M_NFE.VerifTribItem(CdsNfe.FieldByName('TIPO_NF').Text,CdsNfe.FieldByName('ID_EMPRESA').Text,
                             CdsNfe.FieldByName('ID_EMITENTE').Text,
                             CdsNfeIte.FieldByName('ID_ITEM').Text,
                             CdsNfe.FieldByName('id_tipo_mov_estoque').Text,
                             'C');
        CdsNfeIte.FieldByName('ID_INF_FISCO').text :=
                dmGeral.BUS_CD_C_TRI_REG.FieldByName('ID_INF').text;


        cdsNfeIte.Post;
        cdsNfeIte.Next;
      end;
  finally
    if cdsNfe.Name = 'FAT_CD_M_NFE' then
       begin
         dmGeral.FAT_CD_M_NFE_ITE.beforepost :=  dmGeral.FAT_CD_M_NFE_ITEBeforePost;
         dmGeral.FAT_CD_M_NFE_ITE.afterpost  :=  dmGeral.FAT_CD_M_NFE_ITEAfterPost;
       end;
  end;
  cdsNfeIte.GotoBookmark(lPonteiroItens);

end;

procedure FatCalculaPart(cdsNfe,cdsNfeIte: TClientDataSet);
var
  indFin: TpcnConsumidorFin;
  idDestino: TpcnDestinoOper;
  indIEDestino: TpcnindIEDestino;

  VlrIcmsOperacao,DiferencaOri,DiferencaDes: Currency;
  icm_n_base, aliquota: Currency;
begin
  { TODO -oMaxsuel -cCriação :
    Método criado em 22-03-2016
    Irá gravar os dados da partilha na nota fiscal }


  if (cdsNfe.FieldByName('TIPO_NF').AsString <> 'R') and
     (cdsNfe.FieldByName('TIPO_NF').AsString <> 'D') then
      begin

          cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency :=
                        cdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency -
                        cdsNfeIte.FieldByName('VLR_ICM_DESC').AsCurrency -
                        cdsNfeIte.FieldByName('VLR_DESCONTO').AsCurrency +
                        cdsNfeIte.FieldByName('ICM_S_VALOR').AsCurrency    +
                        cdsNfeIte.FieldByName('VLR_SEGURO').AsCurrency      +
                        cdsNfeIte.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
                        cdsNfeIte.FieldByName('IPI_VALOR').AsCurrency;

          if cdsNfe.FieldByName('IND_EMITENTE').AsString ='1'  then  //Destinatario
             cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency :=
                           cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency +
                           cdsNfeIte.FieldByName('FRE_VALOR').AsCurrency;

        //if dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2] then
           //begin
              if cdsNfe.FieldByName('INT_TIPOFINAL').AsInteger = 0 Then
                 indFin  := fConsumidorFinal
              else
                 indFin  := fNao;


              if cdsNfe.FieldByName('UF_EMPRESA').AsString <> cdsNfe.FieldByName('UF_EMITENTE').AsString Then
                 idDestino := oInterestadual
              else if cdsNfe.FieldByName('UF_EMPRESA').AsString = cdsNfe.FieldByName('UF_EMITENTE').AsString  Then
                 idDestino := oInterna
              else
                 idDestino := oExterior;

              if (cdsNfe.FieldByName('int_contribuinte').AsInteger=0) then
                  begin
                    indIEDestino := nContribuinte;
                  end;
              if (cdsNfe.FieldByName('int_contribuinte').AsInteger=1) then
                  begin
                    indIEDestino := nNaoContribuinte;
                  end;

              if (cdsNfe.FieldByName('int_contribuinte').AsInteger=2) then
                  begin
                    indIEDestino := nIsento;
                  end;


              if cdsNfeIte.fieldByName('icm_n_valor').asCurrency >  0 then
                 begin
                    //dmGeral.BUS_CD_M_NFE_CXA.Edit;
                    //dmGeral.BUS_CD_M_NFE_CXA.fieldByName('vlr_part_dest').asCurrency := 0;
                    //dmGeral.BUS_CD_M_NFE_CXA.fieldByName('vlr_part_orig').asCurrency := 0;
                    //dmGeral.BUS_CD_M_NFE_CXA.fieldByName('vlr_fcp').asCurrency       := 0;



                    //Nota Tecnica 2015.003 v04
                   if (idDestino = oInterestadual) and
                      (indFin = fConsumidorFinal) and
                      (indIEDestino = nNaoContribuinte) then
                       begin
                         if (dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_int_isen').AsBoolean) and
                            (dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_ext_isen').AsBoolean) then
                             begin
                               cdsNfeIte.fieldByName('part_per_aliq_dest').asCurrency := 0;
                               cdsNfeIte.fieldByName('per_fcp').asCurrency        := 0;
                               cdsNfeIte.fieldByName('vlr_fcp').asCurrency        := 0;
                               cdsNfeIte.fieldByName('part_per_red_int_dest').asCurrency := 0;
                             end
                         else
                             begin
                               VlrIcmsOperacao := roundTo( (cdsNfeIte.fieldByName('icm_n_base').asCurrency *
                                                             cdsNfeIte.fieldByName('icm_n_aliquota').asCurrency) /100,-2);


                               DiferencaOri := ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {cdsNfeIte.fieldByName('icm_n_base').asCurrency} *
                                                dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {cdsNfeIte.fieldByName('icm_n_base').asCurrency} *
                                               cdsNfeIte.fieldByName('icm_n_aliquota').asCurrency) / 100);

                               // Comentado por Maxsuel Victor, em 01/07/2017 , devido a Rejeição da Sefaz na Teresina Agrícola
                                  //              17846-> Valor do ICMS Interestadual para UF de Destino difere do calculado
                                  //                      [nItem:1] (Valor Informado: 1,66,  Valor Calculado: 0,66

                               {DiferencaDes := ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                 cdsNfeIte.fieldByName('icm_n_aliquota').asCurrency) / 100);}



                               DiferencaDes := ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {cdsNfeIte.fieldByName('icm_n_base').asCurrency} *
                                                dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {cdsNfeIte.fieldByName('icm_n_base').asCurrency} *
                                                 cdsNfeIte.fieldByName('icm_n_aliquota').asCurrency) / 100);


                               if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_int_isen').AsBoolean then
                                  cdsNfeIte.fieldByName('vlr_part_orig').asCurrency := 0
                               else
                                  cdsNfeIte.fieldByName('vlr_part_orig').asCurrency :=
                                     roundTo(((DiferencaOri * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsCurrency) / 100),-2);


                               if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_ext_isen').AsBoolean then
                                  cdsNfeIte.fieldByName('vlr_part_dest').asCurrency := 0
                               else
                                  begin
                                     if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency > 0 then
                                        begin
                                          cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                               roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);

                                          {cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                             cdsNfeIte.fieldByName('vlr_part_dest').asCurrency -
                                                       roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                  dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency)
                                                                                                                          / 100),-2); }
                                          cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                       roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                  dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency) / 100),-2);

                                        end
                                     else
                                        begin
                                          cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                               roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);
                                        end;
                                  end;

                               cdsNfeIte.fieldByName('part_per_aliq_dest').asCurrency :=
                                       dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency;

                               cdsNfeIte.fieldByName('per_fcp').asCurrency :=
                                       cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp_base_uf_dest').asCurrency :=
                                   cdsNfeIte.fieldByName('icm_n_base').asCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp').asCurrency :=
                                       roundTo(((cdsNfeIte.fieldByName('icm_n_base').asCurrency *
                                                 cdsNfeIte.fieldByName('per_fcp').asCurrency) / 100),-2);

                               cdsNfeIte.fieldByName('part_per_red_int_dest').asCurrency :=
                                         dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency;
                             end;
                       end
                   else
                       begin
                          // Nota técnica: NT_2016_002_v1.42, por Maxsuel Victor  em  19/03/2018
                          if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger = 1 then // Normal
                             begin
                                if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '00')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '10')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '20')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '51')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '70')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '90')  then
                                    begin
                                      if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) <> '00') then
                                         begin
                                            cdsNfeIte.fieldByName('vlr_fcp_base_ope_int').asCurrency :=
                                               cdsNfeIte.fieldByName('icm_n_base').asCurrency;
                                         end;

                                      cdsNfeIte.fieldByName('per_fcp_ope_int').asCurrency :=
                                             cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                                      cdsNfeIte.fieldByName('vlr_fcp_ope_int').asCurrency :=
                                             roundTo(((cdsNfeIte.fieldByName('vlr_fcp_base_uf_dest').asCurrency *
                                                       cdsNfeIte.fieldByName('per_fcp_ope_int').asCurrency) / 100),-2);
                                    end;

                                if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '10')   or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '30')   or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '70')   or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '90')   or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '201')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '202')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '203')  or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '900')  then
                                    begin
                                      cdsNfeIte.fieldByName('vlr_fcp_st_base_ope_int').asCurrency :=
                                         cdsNfeIte.fieldByName('icm_s_base').asCurrency;

                                      cdsNfeIte.fieldByName('per_fcp_st_ope_int').asCurrency :=
                                             cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                                      cdsNfeIte.fieldByName('vlr_fcp_st_ope_int').asCurrency :=
                                             roundTo(((cdsNfeIte.fieldByName('vlr_fcp_st_base_ope_int').asCurrency *
                                                       cdsNfeIte.fieldByName('per_fcp_st_ope_int').asCurrency) / 100),-2);
                                    end;

                                if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '60')   or
                                   (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '500')  then
                                    begin
                                      CdsNfeIte.FieldByName('per_st_sup_cons_final_ope_int').AsCurrency :=
                                         cdsNfeIte.fieldByName('icm_n_aliquota').asCurrency +
                                              cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;



                                      cdsNfeIte.fieldByName('vlr_fcp_st_ret_base_ope_int').asCurrency :=
                                         cdsNfeIte.fieldByName('icm_s_base').asCurrency;

                                      cdsNfeIte.fieldByName('per_fcp_st_ret_ope_int').asCurrency :=
                                             cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                                      cdsNfeIte.fieldByName('vlr_fcp_st_ret_ope_int').asCurrency :=
                                             roundTo(((cdsNfeIte.fieldByName('vlr_fcp_st_ret_base_ope_int').asCurrency *
                                                       cdsNfeIte.fieldByName('per_fcp_st_ret_ope_int').asCurrency) / 100),-2);
                                    end;
                                {
                                CdsNfeIte.FieldByName('vlr_fcp_ope_int').AsCurrency        := 0;
                                CdsNfeIte.FieldByName('per_fcp_ope_int').AsCurrency        := 0;
                                CdsNfeIte.FieldByName('vlr_fcp_base_ope_int').AsCurrency   := 0;

                                CdsNfeIte.FieldByName('vlr_fcp_st_ope_int').AsCurrency     := 0;
                                CdsNfeIte.FieldByName('per_fcp_st_ope_int').AsCurrency     := 0;
                                CdsNfeIte.FieldByName('vlr_fcp_st_base_ope_int').AsCurrency         := 0;

                                CdsNfeIte.FieldByName('per_st_sup_cons_final_ope_int').AsCurrency   := 0;
                                CdsNfeIte.FieldByName('vlr_fcp_st_ret_ope_int').AsCurrency        := 0;
                                CdsNfeIte.FieldByName('per_fcp_st_ret_ope_int').AsCurrency        := 0;
                                CdsNfeIte.FieldByName('vlr_fcp_st_ret_base_ope_int').AsCurrency   := 0; }
                             end;
                       end;
                 end
              else
                 begin
                   if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '60')  or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '101') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '102') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '103') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '201') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '202') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '203') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '500') or
                      (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '900') then
                      begin
                        if (idDestino = oInterestadual) and
                           (indFin = fConsumidorFinal) and
                           (indIEDestino = nNaoContribuinte) then
                            begin
                              icm_n_base  := cdsNfeIte.fieldByName('icm_n_base').asCurrency;
                               aliquota    := 12;

                               if cdsNfeIte.FieldByName('int_origem').AsInteger in [1,2,3,8] then
                                  aliquota := 4;

                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) <> '60') then
                                   icm_n_base := cdsNfeIte.fieldByName('vlr_liquido').asCurrency;

                               VlrIcmsOperacao := roundTo( (icm_n_base * aliquota) /100,-2);

                               DiferencaOri := ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {icm_n_base} * dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {icm_n_base} * aliquota) / 100);

                               DiferencaDes := ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                 aliquota) / 100);


                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) <> '60') then
                                  begin
                                    cdsNfeIte.fieldByName('vlr_part_orig').asCurrency := 0;
                                  end
                               else
                                  begin
                                     if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_int_isen').AsBoolean then
                                        cdsNfeIte.fieldByName('vlr_part_orig').asCurrency := 0
                                     else
                                        cdsNfeIte.fieldByName('vlr_part_orig').asCurrency :=
                                           roundTo(((DiferencaOri * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsCurrency) / 100),-2);
                                  end;


                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) <> '60') then
                                  begin
                                    cdsNfeIte.fieldByName('vlr_part_dest').asCurrency := 0;
                                  end
                               else
                                  begin
                                     if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_ext_isen').AsBoolean then
                                        cdsNfeIte.fieldByName('vlr_part_dest').asCurrency := 0
                                     else
                                        begin
                                           if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency > 0 then
                                              begin
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                     roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);

                                                {cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                   cdsNfeIte.fieldByName('vlr_part_dest').asCurrency -
                                                             roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                        dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency)
                                                                                                                                / 100),-2); }
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                             roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                        dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency) / 100),-2);

                                              end
                                           else
                                              begin
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                     roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);
                                              end;
                                        end;
                                  end;

                               cdsNfeIte.fieldByName('part_per_aliq_dest').asCurrency :=
                                       dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp_base_uf_dest').asCurrency :=
                                   cdsNfeIte.fieldByName('icm_n_base').asCurrency;

                               cdsNfeIte.fieldByName('per_fcp').asCurrency :=
                                       cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp').asCurrency :=
                                       roundTo(((cdsNfeIte.fieldByName('icm_n_base').asCurrency *
                                                 cdsNfeIte.fieldByName('per_fcp').asCurrency) / 100),-2);

                               cdsNfeIte.fieldByName('part_per_red_int_dest').asCurrency :=
                                         dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency;
                            end
                        else
                            begin
                               icm_n_base  := cdsNfeIte.fieldByName('icm_n_base').asCurrency;
                               aliquota    := 12;

                               if cdsNfeIte.FieldByName('int_origem').AsInteger in [1,2,3,8] then
                                  aliquota := 4;

                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) <> '60') then
                                   icm_n_base := cdsNfeIte.fieldByName('vlr_liquido').asCurrency;

                               VlrIcmsOperacao := roundTo( (icm_n_base * aliquota) /100,-2);

                               DiferencaOri := ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {icm_n_base} * dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_base_icms_dest').AsCurrency {icm_n_base} * aliquota) / 100);

                               DiferencaDes := ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency) / 100)
                                               -
                                               ((cdsNfeIte.FieldByName('vlr_liquido').AsCurrency *
                                                 aliquota) / 100);


                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '60') then
                                  begin
                                    cdsNfeIte.fieldByName('vlr_part_orig').asCurrency := 0;
                                  end
                               else
                                  begin
                                     if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_int_isen').AsBoolean then
                                        cdsNfeIte.fieldByName('vlr_part_orig').asCurrency := 0
                                     else
                                        cdsNfeIte.fieldByName('vlr_part_orig').asCurrency :=
                                           roundTo(((DiferencaOri * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsCurrency) / 100),-2);
                                  end;


                               if (trim(CdsNfeIte.FieldByName('ID_ST_ICM').AsString) = '60') then
                                  begin
                                    cdsNfeIte.fieldByName('vlr_part_dest').asCurrency := 0;
                                  end
                               else
                                  begin
                                     if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_ope_ext_isen').AsBoolean then
                                        cdsNfeIte.fieldByName('vlr_part_dest').asCurrency := 0
                                     else
                                        begin
                                           if dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency > 0 then
                                              begin
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                     roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);

                                                {cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                   cdsNfeIte.fieldByName('vlr_part_dest').asCurrency -
                                                             roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                        dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency)
                                                                                                                                / 100),-2); }
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                             roundTo(( (cdsNfeIte.fieldByName('vlr_part_dest').asCurrency *
                                                                        dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency) / 100),-2);

                                              end
                                           else
                                              begin
                                                cdsNfeIte.fieldByName('vlr_part_dest').asCurrency :=
                                                     roundTo(((DiferencaDes * dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency) / 100),-2);
                                              end;
                                        end;
                                  end;

                               cdsNfeIte.fieldByName('part_per_aliq_dest').asCurrency :=
                                       dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').AsCurrency;

                               cdsNfeIte.fieldByName('per_fcp').asCurrency :=
                                       cdsNfeIte.fieldByName('int_part_perc_fcp').AsCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp_base_uf_dest').asCurrency :=
                                   cdsNfeIte.fieldByName('icm_n_base').asCurrency;

                               cdsNfeIte.fieldByName('vlr_fcp').asCurrency :=
                                       roundTo(((cdsNfeIte.fieldByName('icm_n_base').asCurrency *
                                                 cdsNfeIte.fieldByName('per_fcp').asCurrency) / 100),-2);

                               cdsNfeIte.fieldByName('part_per_red_int_dest').asCurrency :=
                                         dmGeral.BUS_CD_C_TRI_REG.FieldByName('part_per_red_dest').AsCurrency;
                            end;
                      end;
                  end;

           //end;
      end;
end;



procedure FatRatValoresEntreNfeIte;
begin
  try
     dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
     dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
     dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;

     FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEvlr_seguro.AsCurrency, 'VLR_SEGURO', '', '');
     FatRatVlrEntreItens(dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency, dmGeral.FAT_CD_M_NFEvlr_outras_desp.AsCurrency, 'VLR_OUTRAS_DESP', '', '');

     fatNfeCalcTotal(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);
  finally
     dmGeral.FAT_CD_M_NFE_ITE.afterpost :=  dmGeral.FAT_CD_M_NFE_ITEAfterPost;
     dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEper_descontoChange;
     dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
  end;
end;


function FatAtualizarFinPcp(tipo: integer; cdsOrsPcp,cdsFinPcp, cdsBoletosFatura: TClientDataSet; GerandoBoleto:Boolean=false): String;
var
   i,n,z, qtdeRegFin: integer;
   id_fiscal: array[1..5] of integer;
   notas: string;
   registros: array of integer;

   mensTemp: String;
begin

   // tipo
      // 1 = É utiliazado quando está na tela de faturamento (FAT_FM_M_CXA)
      // 2 = É utiliazado quando está na tela de ordem de faturamento (PCP_FM_M_ORS)
      // Essa rotina foi criada com o objetivo do banco de dados da produção poder ter
      // seu financeiro atualizado conforme o faturamento do banco de dados do fatura.

   result := '';

   if tipo = 1 then
      begin
         cdsOrsPcp.Close;
           cdsOrsPcp.Data :=
            cdsOrsPcp.DataRequest(
               VarArrayOf([4,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsString]));

         n:= 1;
         id_fiscal[n] := cdsOrsPcp.FieldByName('id_fiscal').AsInteger;
         id_fiscal[2] := 0;
         id_fiscal[3] := 0;
         id_fiscal[4] := 0;
         id_fiscal[5] := 0;

         notas := '''' + inttostr(id_fiscal[n]) + '''';

          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger <> 0) then
              begin
                cdsOrsPcp.Close;
                  cdsOrsPcp.Data :=
                    cdsOrsPcp.DataRequest(
                       VarArrayOf([4,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsString]));

                 inc(n);
                 id_fiscal[n] := cdsOrsPcp.FieldByName('id_fiscal').AsInteger;
                 notas := notas + ',' +'''' + inttostr(id_fiscal[n]) + '''';
              end;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger <> 0) then
              begin
                cdsOrsPcp.Close;
                  cdsOrsPcp.Data :=
                    cdsOrsPcp.DataRequest(
                       VarArrayOf([4,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsString]));


                 inc(n);
                 id_fiscal[n] := cdsOrsPcp.FieldByName('id_fiscal').AsInteger;
                 notas := notas + ',' +'''' + inttostr(id_fiscal[n]) + '''';
              end;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger <> 0) then
              begin
                cdsOrsPcp.Close;
                  cdsOrsPcp.Data :=
                    cdsOrsPcp.DataRequest(
                       VarArrayOf([4,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsString]));


                 inc(n);
                 id_fiscal[n] := cdsOrsPcp.FieldByName('id_fiscal').AsInteger;
                 notas := notas + ',' +'''' + inttostr(id_fiscal[n]) + '''';
              end;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger <> 0) then
              begin
                cdsOrsPcp.Close;
                  cdsOrsPcp.Data :=
                    cdsOrsPcp.DataRequest(
                       VarArrayOf([4,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsString]));
                 inc(n);
                 id_fiscal[n] := cdsOrsPcp.FieldByName('id_fiscal').AsInteger;
                 notas := notas + ',' +'''' + inttostr(id_fiscal[n]) + '''';
              end;


        if  (id_fiscal[1] > 0) then
            begin

              if GerandoBoleto then
                 begin
                   dmGeral.BUS_CD_M_REC_BOL.Close;
                     dmGeral.BUS_CD_M_REC_BOL.Data :=
                       dmGeral.BUS_CD_M_REC_BOL.DataRequest(VarArrayOf([92,
                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));
                 end;

              cdsFinPcp.Close;
              cdsFinPcp.Data :=
                 cdsFinPcp.DataRequest(
                    VarArrayOf([100,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                    notas]));
              cdsFinPcp.recordcount;
              if not cdsFinPcp.IsEmpty then
                 begin
                   cdsFinPcp.Filtered := true;
                   cdsFinPcp.Filter   := 'id_fiscal = ' + inttostr(id_fiscal[1]);


                   if cdsFinPcp.RecordCount <> dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount then
                      begin
                        ShowMessage('A qtde de parcelas da nota fiscal está diferente da quantidade de parcelas do pedido 1 da produção.');
                      end
                   else
                      begin
                        dmGeral.BUS_CD_M_NFE_TIT_CXA.First;

                        //cdsFinPcp.IndexFieldNames := 'DTA_VENCIMENTO';
                        cdsFinPcp.IndexFieldNames := 'ID_TITULO';
                        cdsFinPcp.First;

                        for i := 1 to n do
                            begin
                              if i > 1 then
                                 begin
                                   cdsFinPcp.Filtered := true;
                                   cdsFinPcp.Filter   := 'id_fiscal = ' + inttostr(id_fiscal[i]);
                                 end;

                              dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                              while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                                 begin
                                   cdsFinPcp.Edit;
                                   cdsFinPcp.FieldByName('dta_vencimento').AsDateTime :=
                                      dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('dta_vencimento').AsDateTime;

                                   if GerandoBoleto then
                                      begin
                                        // Maxsuel Victor, em 07/06/2019
                                        // Só irá atualizar os dados do boleto se a nota fiscal do fatura tiver apenas um pedido de venda da produção
                                        if (id_fiscal[2] = 0) and (id_fiscal[3] = 0) and (id_fiscal[4] = 0) and (id_fiscal[5] = 0) then
                                            begin
                                              if dmGeral.BUS_CD_M_REC_BOL.locate('id_fiscal;id_titulo',
                                                 VarArrayOf([dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_fiscal').AsString,
                                                             dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_nfe_tit').AsString]),[]) then
                                                 begin
                                                   cdsFinPcp.FieldByName('HISTORICO').AsString         :=
                                                       cdsFinPcp.FieldByName('HISTORICO').AsString +
                                                       ' Nro parcela anterior: ' + cdsFinPcp.FieldByName('NUM_PARCELA').AsString;
                                                   cdsFinPcp.fieldByName('BOL_ID_CONTA').AsInteger     := dmGeral.BUS_CD_M_REC_BOL.fieldByName('BOL_ID_CONTA').AsInteger;
                                                   cdsFinPcp.fieldByName('BOL_BANCO').AsInteger        := dmGeral.BUS_CD_M_REC_BOL.fieldByName('BOL_BANCO').AsInteger;
                                                   cdsFinPcp.FieldByName('NUM_PARCELA').AsString       := dmGeral.BUS_CD_M_REC_BOL.FieldByName('NUM_PARCELA').AsString;
                                                   cdsFinPcp.fieldByName('BOL_NOSSO_NUMERO').AsInteger := dmGeral.BUS_CD_M_REC_BOL.fieldByName('BOL_NOSSO_NUMERO').AsInteger;
                                                   cdsFinPcp.FieldByName('SEQ_NOSSO_NUMERO').AsInteger := dmGeral.BUS_CD_M_REC_BOL.FieldByName('SEQ_NOSSO_NUMERO').AsInteger;
                                                   cdsFinPcp.FieldByName('BOL_CHAVE').AsString         := dmGeral.BUS_CD_M_REC_BOL.FieldByName('BOL_CHAVE').AsString;
                                                 end;
                                            end;
                                      end;

                                   cdsFinPcp.Post;
                                   cdsFinPcp.Next;
                                   dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                                 end;
                            end;

                        cdsFinPcp.Filtered := false;


                        if cdsFinPcp.ApplyUpdates(0) <> 0 then
                           begin
                             Showmessage('Erro ao tentar atualizar as informações do financeiro com o faturamento.'+#13+
                                         'Por favor chamar o técnico responsável.');
                           end
                        else
                           result := 'OK';

                      end;
                 end;
            end;
      end;

   if tipo = 2 then
      begin

          //  Busca os títulos da base da produção
          cdsFinPcp.Close;
              cdsFinPcp.Data :=
                 cdsFinPcp.DataRequest(VarArrayOf([100,cdsOrsPcp.FieldByName('id_empresa').AsString,
                                   ''''+cdsOrsPcp.FieldByName('id_fiscal').AsString+'''']));

          //cdsFinPcp.IndexFieldNames := 'DTA_VENCIMENTO';
          cdsFinPcp.IndexFieldNames := 'ID_TITULO';
          cdsBoletosFatura.IndexFieldNames := 'DTA_VENCIMENTO';

          SetLength(registros,cdsFinPcp.recordcount);
          qtdeRegFin := cdsFinPcp.recordcount;
          z := -1;
          cdsFinPcp.First;
          while not cdsFinPcp.eof do
             begin
               inc(z);
               registros[z] := cdsFinPcp.FieldByName('id_titulo').AsInteger;
               cdsFinPcp.next;
             end;
          cdsFinPcp.First;
          z := -1;

          cdsBoletosFatura.First;
          while not cdsBoletosFatura.eof do
             begin
               if z < qtdeRegFin-1 then
                  inc(z);

               cdsFinPcp.locate('id_titulo',registros[z],[]);

               showmessage(cdsFinPcp.FieldByName('NUM_PARCELA').AsString + ' - Faturamento: ' +
                           cdsBoletosFatura.FieldByName('NUM_PARCELA').AsString + ' - ' +
                           cdsBoletosFatura.FieldByName('dta_vencimento').Asstring);
               cdsFinPcp.Edit;
               cdsFinPcp.FieldByName('dta_vencimento').AsDateTime :=
                  cdsBoletosFatura.FieldByName('dta_vencimento').AsDateTime;


               cdsFinPcp.FieldByName('HISTORICO').AsString         :=
                   cdsFinPcp.FieldByName('HISTORICO').AsString +
                   ' Dados atualizado pela base do faturamento';
               cdsFinPcp.fieldByName('BOL_ID_CONTA').AsString     := cdsBoletosFatura.fieldByName('BOL_ID_CONTA').AsString;
               cdsFinPcp.fieldByName('BOL_BANCO').AsString        := cdsBoletosFatura.fieldByName('BOL_BANCO').AsString;
               cdsFinPcp.FieldByName('NUM_PARCELA').AsString       := cdsBoletosFatura.FieldByName('NUM_PARCELA').AsString;
               cdsFinPcp.fieldByName('BOL_NOSSO_NUMERO').AsString  := cdsBoletosFatura.fieldByName('BOL_NOSSO_NUMERO').AsString;
               cdsFinPcp.FieldByName('SEQ_NOSSO_NUMERO').AsString := cdsBoletosFatura.FieldByName('SEQ_NOSSO_NUMERO').AsString;
               cdsFinPcp.FieldByName('BOL_CHAVE').AsString         := cdsBoletosFatura.FieldByName('BOL_CHAVE').AsString;

               cdsFinPcp.Post;

               cdsBoletosFatura.Next;
             end;
                   // showmessage('5');
          if cdsFinPcp.ApplyUpdates(0) <> 0then
             begin
               Showmessage('Erro ao tentar atualizar as informações do financeiro com o faturamento.'+#13+
                           'Por favor chamar o técnico responsável.');
             end;
      end;
end;


end.
