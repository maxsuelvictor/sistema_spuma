   { TODO -oMaxsuel  -cCriação :
- Unit criada por Maxsuel Victor em 25/02/2015
- Esta unit terá a responsabilidade de realizar as entradas e saídas
  do estoque seja qual for sua origem. }

unit FAT_RN_M_EST;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Forms,Vcl.Dialogs,System.Math,System.Classes,
     Datasnap.DBClient,Datasnap.Provider,enSM,Data.DBXCommon,Data.SqlExpr, uServer;

procedure FAT_DP_M_NFEUpdateData(Sender: TObject;
                                 origem_doc, id_doc: integer;
                                 Pai_DataSet: TCustomClientDataSet;
                                 BUS_DP_DOC_ITENS,
                                 CAD_DP_C_TME,
                                 BUS_DP_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,
                                 EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS,
                                 BUS_DP_M_PED_ITE_INT: TDataSetProvider; NFCancelada: Boolean; SmAtual: TSM);

// Entradas --------------------------------------------------------------------------------
function FatEntrada_FeaEst(origem_doc, id_doc: integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; EST_DP_M_FEA,
                         EST_DP_M_FES: TDataSetProvider; NFCancelada: Boolean; SmAtual: TSM): String;

function FatEntrada_FesEst(origem_doc:integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; BUS_DP_DOC_ITENS,EST_DP_M_FES,
                         EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS: TDataSetProvider; NFCancelada: Boolean): String;

procedure FatAtuDocFea(index,id_empresa,id_doc, nro_documento: integer; CAD_DP_C_TME,EST_DP_M_FEA: TDataSetProvider);


// --------------------------------------------------------------------------------------


// Saídas --------------------------------------------------------------------------------
function FatSaida_FeaEst(origem_doc, id_doc: integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; EST_DP_M_FEA,
                         EST_DP_M_FES: TDataSetProvider; NFCancelada: Boolean; SmAtual: TSM): String;

function FatSaida_FesEst(origem_doc:integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; BUS_DP_DOC_ITENS,EST_DP_M_FES,
                         EST_DP_M_FES_ALM,EST_DP_M_LOT: TDataSetProvider; NFCancelada: Boolean): String;

// Rotina responsável de gerar a nota fiscal de saída quando se Grava um Pedido de Venda ou uma Orde de Serviço
function FatGerNfs(origem: integer; DataSet: TCustomClientDataSet;
         CAD_DP_C_PAR,BUS_DP_C_PAR_CTR,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
         FAT_DP_M_NFE,BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_TIT_INT,BUS_DP_M_ORV_ITE_INT,BUS_DP_M_ORV_TIT_INT,
         BUS_DP_M_ORV_TIT_SER_INT,
         BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT,BUS_DP_C_CLI, BUS_DP_C_RAM, BUS_DP_C_TRI_REG,DP_BR_CUPOM_MESTRE: TDataSetProvider;
         Conn: TSQLConnection; SmAtual: TSM): Boolean;


function FatGerNfsIte(Origem: integer;DataSet: TCustomClientDataSet; FAT_CD_M_NFE,BUS_CD_C_PAR_CTR:TClientDataSet;
         CAD_DP_C_ITE:TDataSetProvider; cdsNfeIte,DataSetIte: TDataSet; TipoItem: Integer;
         DocIE,UFEmitente: String; RegimeSimples: Boolean;BUS_DP_C_TRI_REG: TDataSetProvider;
         BUS_CD_C_CLI:TClientDataSet;tipoDataSetIte:Integer=0): Boolean;

function FatGerNfsTit(Origem: integer;DataSet: TCustomClientDataSet; FAT_CD_M_NFE:TClientDataSet;
       CAD_DP_C_FPG:TDataSetProvider; cdsNfeTit:TClientDataSet; DataSetTit, DataSetTitINT: TDataSet;tipoTitulo:Integer=0): Boolean;


function FatGerNfsPed(origem: integer; DataSet: TCustomClientDataSet;
         CAD_DP_C_PAR,BUS_DP_C_PAR_CTR,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
         FAT_DP_M_NFE,BUS_DP_M_PED,EST_DP_M_FES,EST_DP_M_FEA,EST_DP_M_LOT,
         BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT,BUS_DP_C_CLI, BUS_DP_C_RAM, BUS_DP_C_TRI_REG: TDataSetProvider;
         Conn: TSQLConnection; SmAtual: TSM): Boolean;


// --------------------------------------------------------------------------------------


// Outras rotinas de atualização ---------------------------------------------------------------------------------

procedure FatImortarCmpPedEst(DataSet: TCustomClientDataSet; CMP_DP_M_PED,BUS_DP_M_NFE_ITE_INT:TDataSetProvider);

procedure FatAtuQtdDevIte(Pai_DataSet: TCustomClientDataSet; BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_DEV_INT, BUS_DP_M_NFE_DEV_ITE_INT:TDataSetProvider; NFCancelada: Boolean);

//function  FatAtuCustoMedItens(const IdEmpresa: String; var EST_CD_M_FES, cdsItens: TClientDataSet; BUS_DP_M_FES_INT: TDataSetProvider; Conn: TSQLConnection): Currency;
function  FatAtuCustoMedItens(const IdEmpresa,IdItem,IdCor,IdTamanho, IdFiscal: String): Currency;
// ---------------------------------------------------------------------------------------------------------------

{ Rotinas auxiliares }

function AtualiarPesoNf(cdsPai,cdsItens: TClientDataSet): Boolean;

function localizar_FES(index: integer; empresa, item, cor, tamanho: String;
                       EST_CD_M_FES: TClientDataSet): Boolean;

function CriarReg_FES(id_empresa,id_item,data_ult_movimento,data_ult_inventario: String; qtde_entrada,
                      qtde_saida,saldo_fisico,qtde_ped_compra,
                      qtde_ped_venda: Double; vlr_custo_medio,vlr_custo_ult_compra: Currency;
                      id_cor,id_tamanho: String; EST_CD_M_FES: TClientDataSet): boolean;

function localizar_FES_ALM(index: integer; empresa, item, almoxarifado, cor, tamanho: String;
                           EST_CD_M_FES_ALM: TClientDataSet): Boolean;

function CriarReg_FES_ALM(id_empresa, id_item, id_almoxarifado,
                          data_ult_movimento, data_ult_inventario: String; qtde_entrada, qtde_saida,
                          saldo_fisico,qtde_ult_inventario: Double; vlr_custo_medio, vlr_custo_ult_compra: Currency;
                          id_cor, id_tamanho: String; EST_CD_M_FES_ALM: TClientDataSet): boolean;



function localizar_LOT(index: integer; empresa, item, num_lote,almoxarifado,
                       cor, tamanho: String; utiliza_almox: Boolean; EST_CD_M_LOT: TClientDataSet): Boolean;

function CriarReg_LOT(id_empresa, id_item, num_lote, id_almoxarifado: String; qtde_entrada, qtde_saida,
                      qtde_atual: Double; id_fiscal, id_controle: Integer; id_cor,
                      id_tamanho: String; EST_CD_M_LOT: TClientDataSet): boolean;



function FatBusCustoMedItemEst(id_empresa,id_item, id_cor, id_tamanho: String;
                               BUS_CD_C_PAR_CTR: TClientDataSet;
                               EST_DP_M_FES: TDataSetProvider;
                               var vlr_custo_medio: Currency): Boolean;
function FatCalcCusMedioIte(Pai_DataSet: TCustomClientDataSet; VlrCusto: Currency; Qtde: Currency; EST_CD_M_FES: TClientDataSet): Currency;

procedure SelecionarItens(var origem_doc,index: integer; Ite_DataSet: TDataSet; BUS_CD_C_PAR_CTR: TClientDataSet;
                          var itens_sel, cores_sel, tam_sel, lotes_sel: String);

function  FatBusSaldoIte(empresa, id_item, id_cor, id_tamanho,
                         id_almoxarifado: String; EST_DP_M_FES, EST_DP_M_FES_ALM: TDataSetProvider; BUS_CD_C_PAR_CTR: TClientDataSet; var saldo_fisico: Extended): Boolean;

function  FatVerifSldIte(origem_doc: integer; Pai_DataSet: TCustomClientDataSet; BUS_CD_C_PAR_CTR: TClientDataSet; EST_DP_M_FES, EST_DP_M_FES_ALM,BUS_DP_M_PED_ITE_INT: TDataSetProvider): string;
function  FatVerfifSaldoIte(tipo: integer; EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT: TClientDataSet): boolean;

function  FatBusTriReg(BUS_DP_C_TRI_REG: TDataSetProvider; id_tributo, id_tipo_mov_estoque, uf,id_empresa: String): OleVariant;

function  FatBuscarCfoIte(DocIE,UFEmitente: String; RegimeSimples: Boolean; CdsPai, CdsItens: TDataSet; BUS_CD_C_TRI_REG,BUS_CD_C_CLI:TClientDataSet): String;

function  AtuSeqItens(NomeSeq: String; QtdeItens: integer): Integer;

function BuscarItensConj(Itens:String):String;

procedure GerarTxt(path_arquivo,texto: String);

procedure FatSaida_FeaEstCoj(origem_doc,documento,index,codTME:Integer;codSeqIte,codItem:String;codItemHrq:String;data:TDate;nome_doc,codAlm:String;
qtde_ant,qtde:Currency;Pai_DataSet: TCustomClientDataSet;var EST_CD_M_FEA: TClientDataSet;BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD: TClientDataSet;
          operacao:Integer; SmAtual: TSM);
procedure FatSaida_FesEstCoj(index:Integer;codItem:String;qtde:Currency;Pai_DataSet: TCustomClientDataSet;var cdsItensEstoque: TClientDataSet;tabela,operacao:Integer;firstNivel:Boolean);
{ ------------------ }


var
 sm:Tsm;
 xConn: TSQLConnection;
 ComUpdateStatusIte,ComUpdateStatusTit:Boolean;

implementation

uses uDmApoio;


procedure FatSaida_FeaEstCoj(origem_doc,documento,index,codTME:Integer;codSeqIte,codItem:String;
                             codItemHrq:String;data:TDate;nome_doc,codAlm:String;qtde_ant,qtde:Currency;
                             Pai_DataSet: TCustomClientDataSet;var EST_CD_M_FEA: TClientDataSet;
                             BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD: TClientDataSet;operacao:Integer; SmAtual: TSM);
var
   BUS_CD_C_ITE_COJ,BUS_CD_C_ITE:TClientDataSet;
   vlrCustoMedio,vlrCusto,vlrBruto,vlrMovimento:Currency;
begin

   SM := SmAtual;

   BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
   BUS_CD_C_ITE_COJ.SetProvider(SM.BUS_DP_C_ITE_COJ);
   BUS_CD_C_ITE_COJ.Close;
   BUS_CD_C_ITE_COJ.Data :=
   BUS_CD_C_ITE_COJ.DataRequest(
                    VarArrayOf([0,codItem]));

   if (BUS_CD_C_ITE_COJ.RecordCount >0) then
      begin
        BUS_CD_C_ITE_COJ.First;
        while not BUS_CD_C_ITE_COJ.EOF do
          begin
            FatSaida_FeaEstCoj(origem_doc,documento,index,codTME,codSeqIte,BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                          codItem+'-'+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,data,nome_doc,codAlm,
                           qtde_ant*BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency,qtde*BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FEA,
                           BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,operacao,SM);
            BUS_CD_C_ITE_COJ.Next;
          end;
      end
    else
      begin
        if (codItemHrq <> '') then
          begin
            BUS_CD_C_ITE := TClientDataSet.Create(nil);
            BUS_CD_C_ITE.SetProvider(sm.CAD_DP_C_ITE);
            BUS_CD_C_ITE.Close;
            BUS_CD_C_ITE.Data :=
            BUS_CD_C_ITE.DataRequest(
                           VarArrayOf([0,codItem]));
            if (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString<>'09') then
              begin
                 if (operacao=0) then
                   begin

                     if (origem_doc=9) then
                       begin
                        VlrCusto     := 0;
                        VlrBruto     := 0;
                        VlrMovimento := 0;
                        VlrCustoMedio := 0;
                       { if (BUS_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = TRUE) then
                          begin }

                            if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                            codItem,'0','0',
                                            BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                            VlrCustoMedio) then
                             begin
                               if VlrCustoMedio > 0 then
                                  begin
                                    VlrCusto     := roundTo(VlrCustoMedio,-2);
                                    VlrBruto     := roundTo(qtde * VlrCustoMedio,-2);
                                    VlrMovimento := VlrBruto;
                                  end;
                             end;
                          //end;
                       end;

                     EST_CD_M_FEA.Insert;

                     //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');
                     // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
                     EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := SM.enValorChave('EST_TB_M_FEA');

                     EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := documento;
                     EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                     EST_CD_M_FEA.FieldByName('QTDE').AsCurrency       := qtde;

                     EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;
                     EST_CD_M_FEA.FieldByName('ID_ITEM').AsString      := codItem;
                     EST_CD_M_FEA.FieldByName('ID_COR').text           := '0';
                     EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := '0';
                     EST_CD_M_FEA.FieldByName('ID_SEQ_COJ').AsString   := codSeqIte;
                     EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := 0;
                     EST_CD_M_FEA.FieldByName('COJ_ITE_HRQ').AsString  := codItemHrq;

                     EST_CD_M_FEA.FieldByName('DATA').AsDateTime      := data;

                     EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := codTME;
                     EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := origem_doc;
                     if not (origem_doc in [10]) then
                        begin
                           if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                              begin
                                EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                                   Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                              end;
                        end;

                     EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := vlrCusto;
                     EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := vlrBruto;
                     EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := 0;
                     EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := 0;
                     EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                     EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                     EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := vlrMovimento;

                     EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := 0;
                     EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                     EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                     EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                     EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                     EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                     EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';


                     if (origem_doc = 1) then
                        EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger   := documento;
                     if (origem_doc = 6) then
                        EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger   := documento;
                     if (origem_doc = 9) then
                        EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger    := documento;

                     EST_CD_M_FEA.post;
                   end;

                 if (operacao=1) then
                   begin
                     if EST_CD_M_FEA.Locate('ID_EMPRESA;'+nome_doc+';ID_ITEM;ID_SEQ_COJ;COJ_ITE_HRQ;ID_COR;ID_TAMANHO',
                          VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                       documento,codItem,codSeqIte,codItemHrq,'0','0']),[]) then
                       begin
                         EST_CD_M_FEA.Edit;

                         EST_CD_M_FEA.FieldByName('QTDE').AsFloat  :=
                                       (EST_CD_M_FEA.FieldByName('QTDE').AsCurrency - qtde_ant) + qtde;


                         EST_CD_M_FEA.FieldByName('ID_COR').text           := '0';
                         EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := '0';
                         EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := 0;

                         if not (origem_doc in [10]) then
                           begin
                            if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                               begin
                                 EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsString := codAlm;
                               end;
                           end;

                         EST_CD_M_FEA.post;
                       end;
                   end;

                 if (operacao=2) then
                   begin
                     if EST_CD_M_FEA.Locate('ID_EMPRESA;'+nome_doc+';ID_ITEM;ID_SEQ_COJ;COJ_ITE_HRQ;ID_COR;ID_TAMANHO',
                          VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                       documento,codItem,codSeqIte,codItemHrq,'0','0']),[]) then
                       begin
                        EST_CD_M_FEA.Delete;
                       end;
                   end;
              end;
              BUS_CD_C_ITE.Close;
              BUS_CD_C_ITE.Free;
          end;
      end;
         ////////////////////////////////////////////
    BUS_CD_C_ITE_COJ.Close;
    BUS_CD_C_ITE_COJ.Free;
end;

procedure FatSaida_FesEstCoj(index:Integer;codItem:String;qtde:Currency;Pai_DataSet: TCustomClientDataSet;
        var cdsItensEstoque: TClientDataSet;tabela,operacao:Integer;firstNivel:Boolean);
var
   BUS_CD_C_ITE_COJ,BUS_CD_C_ITE:TClientDataSet;
begin
   BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
   BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
   BUS_CD_C_ITE_COJ.Close;
   BUS_CD_C_ITE_COJ.Data :=
   BUS_CD_C_ITE_COJ.DataRequest(
                    VarArrayOf([0,codItem]));


    if (BUS_CD_C_ITE_COJ.RecordCount >0) then
      begin
        BUS_CD_C_ITE_COJ.First;
        while not BUS_CD_C_ITE_COJ.EOF do
          begin
            firstNivel:=false;
            FatSaida_FesEstCoj(index,BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                              qtde*BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency,Pai_DataSet,cdsItensEstoque,tabela,operacao,false);
            BUS_CD_C_ITE_COJ.Next;
          end;
      end
    else
      begin
        if (firstNivel=false) then
          begin
            BUS_CD_C_ITE := TClientDataSet.Create(nil);
            BUS_CD_C_ITE.SetProvider(sm.CAD_DP_C_ITE);
            BUS_CD_C_ITE.Close;
            BUS_CD_C_ITE.Data :=
            BUS_CD_C_ITE.DataRequest(
                           VarArrayOf([0,codItem]));
            if (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString<>'09') then
              begin
                 if (operacao=0) then
                   begin
                     if (tabela = 0) then
                       begin
                         localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,'0','0',cdsItensEstoque);

                         if cdsItensEstoque.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,'0','0']),[]) then
                           begin
                             cdsItensEstoque.Edit;
                             cdsItensEstoque.FieldByName('data_ult_movimento').AsDateTime  := Date;
                             cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency :=
                                (cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency + Qtde);

                             cdsItensEstoque.FieldByName('SALDO_FISICO').AsCurrency :=
                                cdsItensEstoque.FieldByName('QTDE_ENTRADA').AsCurrency -
                                cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency;

                             cdsItensEstoque.Post;
                           end;
                       end;
                      if (tabela = 1) then
                       begin
                        localizar_FES_ALM(Index,Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,
                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,'0','0',cdsItensEstoque);

                        if cdsItensEstoque.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                               VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                           codItem,'0','0']),[]) then
                           begin
                             cdsItensEstoque.Edit;
                             cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency :=
                                (cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency + Qtde);

                             cdsItensEstoque.FieldByName('SALDO_FISICO').AsCurrency :=
                                cdsItensEstoque.FieldByName('QTDE_ENTRADA').AsCurrency -
                                cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency;

                             cdsItensEstoque.Post;
                           end;
                       end;
                   end;

                 if (operacao=1) then
                   begin
                     if (tabela = 0) then
                       begin
                         localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,'0','0',cdsItensEstoque);

                         if cdsItensEstoque.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,'0','0']),[]) then
                           begin
                             cdsItensEstoque.Edit;
                             cdsItensEstoque.FieldByName('data_ult_movimento').AsDateTime  := Date;
                             cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency :=
                                (cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency - Qtde);

                             cdsItensEstoque.FieldByName('SALDO_FISICO').AsCurrency :=
                                cdsItensEstoque.FieldByName('QTDE_ENTRADA').AsCurrency -
                                cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency;

                             cdsItensEstoque.Post;
                           end;
                       end;
                      if (tabela = 1) then
                       begin
                        localizar_FES_ALM(Index,Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codItem,
                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,'0','0',cdsItensEstoque);

                        if cdsItensEstoque.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                               VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                           codItem,'0','0']),[]) then
                           begin
                             cdsItensEstoque.Edit;
                             cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency :=
                                (cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency - Qtde);

                             cdsItensEstoque.FieldByName('SALDO_FISICO').AsCurrency :=
                                cdsItensEstoque.FieldByName('QTDE_ENTRADA').AsCurrency -
                                cdsItensEstoque.FieldByName('QTDE_SAIDA').AsCurrency;

                             cdsItensEstoque.Post;
                           end;
                       end;
                   end;
              end;
              BUS_CD_C_ITE.Close;
              BUS_CD_C_ITE.Free;
          end;
      end;
    BUS_CD_C_ITE_COJ.Close;
    BUS_CD_C_ITE_COJ.Free;
end;

function BuscarItensConj(Itens:String):String;
var
 BUS_CD_C_ITE,BUS_CD_C_ITE_COJ:TClientDataSet;
 NovoItens,ItensCoj:String;
 ListaCodItens:TStrings;
 i:Integer;
begin
   BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
   BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
   BUS_CD_C_ITE_COJ.Close;
   BUS_CD_C_ITE_COJ.Data :=
   BUS_CD_C_ITE_COJ.DataRequest(
                    VarArrayOf([1,Itens]));


   ListaCodItens := TStringList.Create;
   LIstaCodItens.Delimiter:=',';
   LIstaCodItens.StrictDelimiter:=True;
   ListaCodItens.DelimitedText :=  Itens;

   ItensCoj := '';
   NovoItens := '';
   for i := 0 to ListaCodItens.Count-1 do
     begin
        try
         BUS_CD_C_ITE_COJ.Filtered := true;
         BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+ ListaCodItens[i];
         BUS_CD_C_ITE_COJ.First;
         if BUS_CD_C_ITE_COJ.RecordCount > 0 then
           begin
            ItensCoj := '';
            while not BUS_CD_C_ITE_COJ.eof do
              begin
               if ItensCoj = '' then
                 ItensCoj := ItensCoj +''''+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString+''''
               else
                 ItensCoj := ItensCoj + ',' +''''+ BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString+'''';
               BUS_CD_C_ITE_COJ.Next;
              end;

            if NovoItens <> '' then
              NovoItens :=  NovoItens +','+BuscarItensConj(ItensCoj)
            else
               NovoItens :=  NovoItens +BuscarItensConj(ItensCoj);
           end
         else
           begin
             {BUS_CD_C_ITE := TClientDataSet.Create(nil);
             BUS_CD_C_ITE.SetProvider(sm.CAD_DP_C_ITE);
             BUS_CD_C_ITE.Close;
             BUS_CD_C_ITE.Data :=
             BUS_CD_C_ITE.DataRequest(
                    VarArrayOf([0,ListaCodItens[i]]));

             if BUS_CD_C_ITE.FieldByname('INT_TIPO_ITEM').AsString <> '09' then
               begin  }
                if NovoItens <> '' then
                  NovoItens := NovoItens +','+ListaCodItens[i]
                else
                  NovoItens := NovoItens +ListaCodItens[i];
              // end;
           end;
        finally
          BUS_CD_C_ITE_COJ.Filtered := false;
        end;
     end;

    Result := NovoItens;
    BUS_CD_C_ITE_COJ.Close;
   // BUS_CD_C_ITE.Close;
    BUS_CD_C_ITE_COJ.Free;
   // BUS_CD_C_ITE.Free;

end;

procedure GerarTxt(path_arquivo,texto: String);
var
  Arquivo: TextFile;
  txt: string;
begin
   { TODO -oMaxsuel -cCriação : Criado em 12-04-18 }

   if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'logs')) then
      ForceDirectories(ExtractFilePath(Application.ExeName)+'logs');

   txt := path_arquivo;

   AssignFile(Arquivo,txt);

    if not (FileExists(txt)) then
      Rewrite(Arquivo) //abre o arquivo para escrita
   else
      append(Arquivo);

   //Rewrite(Arquivo); //abre o arquivo para escrita

   Writeln(Arquivo,texto);
   Closefile(Arquivo); //fecha o handle de arquivo

end;


function AtualiarPesoNf(cdsPai,cdsItens: TClientDataSet): Boolean;
begin
  cdsItens.First;
  while not cdsItens.Eof do
      begin
        cdsPai.FieldByName('PESO_LIQUIDO').AsFloat    :=
            cdsPai.FieldByName('PESO_LIQUIDO').AsFloat +
                cdsItens.FieldByName('PESO_LIQUIDO').AsFloat;

        cdsPai.FieldByName('PESO_BRUTO').AsFloat     :=
            cdsPai.FieldByName('PESO_BRUTO').AsFloat  +
                cdsItens.FieldByName('PESO_BRUTO').AsFloat;

        cdsItens.Next;
      end;
  cdsItens.First;
end;

function localizar_FES(index: integer; empresa, item, cor, tamanho: String;
                       EST_CD_M_FES: TClientDataSet): Boolean;
begin
result := false;

    { Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, in(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }


  {(lid_empresa,        lid_item: integer;
    ldata_ult_movimento,ldata_ult_inventario: String;
    lqtde_entrada,      lqtde_saida,   lsaldo_fisico,lqtde_ped_compra, lqtde_ped_venda: Double;
    lvlr_custo_medio,   lvlr_custo_ult_compra: Currency;
    lid_cor,            lid_tamanho: Integer)}

  if index = 7 then
     begin
       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,item,0,0]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES(empresa,item,'','',0,0,0,0,0,0,0,'0','0',EST_CD_M_FES);
            result := true;
          end;
     end;

  if index = 4 then
     begin
       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,item,cor,0]),[]) then
          begin
            result := true;
          end
       else
          begin
             CriarReg_FES(empresa,item,'','',0,0,0,0,0,0,0,cor,'0',EST_CD_M_FES);
             result := true;
          end;
     end;

  if index = 5 then
     begin
       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,item,0,tamanho]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES(empresa,item,'','',0,0,0,0,0,0,0,'0',tamanho,EST_CD_M_FES);
            result := true;
          end;
     end;

  if index = 6 then
     begin
       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,item,cor,tamanho]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES(empresa,item,'','',0,0,0,0,0,0,0,cor,tamanho,EST_CD_M_FES);
            result := true;
          end;
     end;
end;

function CriarReg_FES(id_empresa,id_item,data_ult_movimento,data_ult_inventario: String; qtde_entrada,
                      qtde_saida,saldo_fisico,qtde_ped_compra,
                      qtde_ped_venda: Double; vlr_custo_medio,vlr_custo_ult_compra: Currency;
                      id_cor,id_tamanho: String; EST_CD_M_FES: TClientDataSet): boolean;
begin
  EST_CD_M_FES.Insert;
  EST_CD_M_FES.FieldByName('id_empresa').AsString             := id_empresa;
  EST_CD_M_FES.FieldByName('id_item').AsString                := id_item;
  EST_CD_M_FES.FieldByName('id_cor').AsString                 := id_cor;
  EST_CD_M_FES.FieldByName('id_tamanho').AsString             := id_tamanho;
  EST_CD_M_FES.FieldByName('data_ult_movimento').text         := data_ult_movimento;
  EST_CD_M_FES.FieldByName('data_ult_inventario').text        := data_ult_inventario;
  EST_CD_M_FES.FieldByName('qtde_entrada').AsCurrency            := qtde_entrada;
  EST_CD_M_FES.FieldByName('qtde_saida').AsCurrency              := qtde_saida;
  EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency            := saldo_fisico;
  EST_CD_M_FES.FieldByName('qtde_ped_compra').AsCurrency         := qtde_ped_compra;
  EST_CD_M_FES.FieldByName('qtde_ped_venda').AsCurrency          := qtde_ped_venda;
  EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      := vlr_custo_medio;
  EST_CD_M_FES.FieldByName('vlr_custo_ult_compra').AsCurrency := vlr_custo_ult_compra;
  EST_CD_M_FES.Post;
end;

function localizar_FES_ALM(index: integer; empresa, item, almoxarifado, cor, tamanho: String;
                           EST_CD_M_FES_ALM: TClientDataSet): Boolean;
begin
    result := false;

  { Filtros do EST_CD_M_FES_ALM:
      Index 0 - Empresa, Item, almoxarifado
      Index 1 - Empresa, Item, Cor, almoxarifado
      Index 2 - Empresa, Item, Tamanho, almoxarifado
      Index 3 - Empresa, Item, Cor,Tamanho, almoxarifado

      Index 4 - empresa, in(item),  in(cores), almoxarifado
      Index 5 - empresa, in(item),  in(tamanho), almoxarifado
      Index 6 - empresa, int(item), in(cor) in(tamanho), almoxarifado
      Index 7 - empresa, in(item), almoxarifado
      }


  if index = 7 then
     begin
       if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',
                                 VarArrayOf([empresa,item,0,0,almoxarifado]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES_ALM(empresa,item,almoxarifado,'','',0,0,0,0,0,0,'0','0',EST_CD_M_FES_ALM);
            result := true;
          end;
     end;
  if index = 4 then
     begin
       if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,item,cor,0,almoxarifado]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES_ALM(empresa,item,almoxarifado,'','',0,0,0,0,0,0,cor,'0',EST_CD_M_FES_ALM);
            result := true;
          end;
     end;

  if index = 5 then
     begin
       if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,item,0,tamanho,almoxarifado]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES_ALM(empresa,item,almoxarifado,'','',0,0,0,0,0,0,'0',tamanho,EST_CD_M_FES_ALM);
            result := true;
          end;
     end;

  if index = 6 then
     begin
       if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,item,cor,tamanho,almoxarifado]),[]) then
          begin
            result := true;
          end
       else
          begin
            CriarReg_FES_ALM(empresa,item,almoxarifado,'','',0,0,0,0,0,0,cor,tamanho,EST_CD_M_FES_ALM);
            result := true;
          end;
     end;
end;


function CriarReg_FES_ALM(id_empresa, id_item, id_almoxarifado,
                          data_ult_movimento, data_ult_inventario: String; qtde_entrada, qtde_saida,
                          saldo_fisico,qtde_ult_inventario: Double; vlr_custo_medio, vlr_custo_ult_compra: Currency;
                          id_cor, id_tamanho: String; EST_CD_M_FES_ALM: TClientDataSet): boolean;
begin
  EST_CD_M_FES_ALM.Insert;
  EST_CD_M_FES_ALM.FieldByName('id_empresa').AsString       := id_empresa;
  EST_CD_M_FES_ALM.FieldByName('id_item').AsString          := id_item;
  EST_CD_M_FES_ALM.FieldByName('id_almoxarifado').AsString  := id_almoxarifado;
  EST_CD_M_FES_ALM.FieldByName('id_cor').AsString           := id_cor;
  EST_CD_M_FES_ALM.FieldByName('id_tamanho').AsString       := id_tamanho;
  EST_CD_M_FES_ALM.FieldByName('data_ult_movimento').text   := data_ult_movimento;
  EST_CD_M_FES_ALM.FieldByName('data_ult_inventario').text  := data_ult_inventario;
  EST_CD_M_FES_ALM.FieldByName('qtde_entrada').AsCurrency      := qtde_entrada;
  EST_CD_M_FES_ALM.FieldByName('qtde_saida').AsCurrency        := qtde_saida;
  EST_CD_M_FES_ALM.FieldByName('saldo_fisico').AsCurrency      := saldo_fisico;
  EST_CD_M_FES_ALM.Post;
end;


function localizar_LOT(index: integer; empresa, item, num_lote,almoxarifado,
                       cor, tamanho: String; utiliza_almox: Boolean; EST_CD_M_LOT: TClientDataSet): Boolean;
begin
  { Filtros do EST_CD_M_LOT
   0-empresa + lote + item
   1-empresa + lote + item + cor
   2-empresa + lote + item + cor + tamanho
   3-empresa + lote + item + Tamanho
   4-empresa + lote + item + almoxarifado
   5-empresa + lote + item + cor + almoxarifado
   6-empresa + lote + item + tamanho + almoxarifado
   7-empresa + lote + item + cor + tamanho + almoxarifado

   8-impresa  + in(num lote) + in(item)
   9-impresa  + in(num lote) + in(item) + in(cor)
   10-impresa + in(num lote) + in(item) + in(cor) + in(tamanho)
   11-impresa + in(num lote) + in(item) + in(tam)
   12-impresa + in(num lote) + in(item) + almoxarifado
   13-impresa + in(num lote) + in(item) + in(cor) + almoxarifado
   14-impresa + in(num lote) + in(item) + in(tam) + almoxarifado
   15-impresa + in(num lote) + in(item) + in(cor) + in(tam) + almoxarifado
   }


  if index = 7 then
     begin
       if utiliza_almox then
          begin
            if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,num_lote,item,0,0,almoxarifado]),[]) then
               result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,almoxarifado,0,0,0,0,0,'0','0',EST_CD_M_LOT);
                 result := true;
               end;
          end
       else
          begin
            if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,num_lote,item,0,0]),[]) then
               result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,'0',0,0,0,0,0,'0','0',EST_CD_M_LOT);
                 result := true;
               end;
          end;
     end;

  if index = 4 then
     begin
       if utiliza_almox then
          begin
             if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,num_lote,item,cor,0,almoxarifado]),[]) then
                result := true
             else
                begin
                  CriarReg_LOT(empresa,item,num_lote,almoxarifado,0,0,0,0,0,cor,'0',EST_CD_M_LOT);
                  result := true;
                end;
          end
       else
          begin
            if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,num_lote,item,cor,0]),[]) then
               result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,'0',0,0,0,0,0,cor,'0',EST_CD_M_LOT);
                 result := true;
               end;
          end;
     end;

      {(lid_empresa,lid_item: integer;
    lnum_lote: String; lid_almoxarifado: integer;
    lqtde_entrada,lqtde_saida,lqtde_atual: Double;
    lid_fiscal, lid_controle, lid_cor, lid_tamanho: integer): boolean;}

  if index = 5 then
     begin
       if utiliza_almox then
          begin
             if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,num_lote,item,0,tamanho,almoxarifado]),[]) then
                result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,almoxarifado,0,0,0,0,0,'0',tamanho,EST_CD_M_LOT);
                 result := true;
               end;
          end
       else
          begin
             if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,num_lote,item,0,tamanho]),[]) then
                result := true
             else
                begin
                  CriarReg_LOT(empresa,item,num_lote,'0',0,0,0,0,0,'0',tamanho,EST_CD_M_LOT);
                  result := true;
                end;
          end;
     end;

  if index = 6 then
     begin
       if utiliza_almox then
          begin
            if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',VarArrayOf([empresa,num_lote,item,cor,tamanho,almoxarifado]),[]) then
               result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,almoxarifado,0,0,0,0,0,cor,tamanho,EST_CD_M_LOT);
                 result := true;
               end;
          end
       else
          begin
            if EST_CD_M_LOT.Locate('ID_EMPRESA;NUM_LOTE;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([empresa,num_lote,item,cor,tamanho]),[]) then
               result := true
            else
               begin
                 CriarReg_LOT(empresa,item,num_lote,'0',0,0,0,0,0,cor,tamanho,EST_CD_M_LOT);
                 result := true;
               end;
          end;
     end;
end;


function CriarReg_LOT(id_empresa, id_item, num_lote, id_almoxarifado: String; qtde_entrada, qtde_saida,
                      qtde_atual: Double; id_fiscal, id_controle: Integer; id_cor,
                      id_tamanho: String; EST_CD_M_LOT: TClientDataSet): boolean;
begin
  EST_CD_M_LOT.Insert;
  EST_CD_M_LOT.FieldByName('id_empresa').AsString      := id_empresa;
  EST_CD_M_LOT.FieldByName('id_item').AsString         := id_item;
  EST_CD_M_LOT.FieldByName('num_lote').AsString        := num_lote;
  EST_CD_M_LOT.FieldByName('id_almoxarifado').AsString := id_almoxarifado;
  EST_CD_M_LOT.FieldByName('id_cor').AsString          := id_cor;
  EST_CD_M_LOT.FieldByName('id_tamanho').AsString      := id_tamanho;
  EST_CD_M_LOT.FieldByName('qtde_entrada').AsCurrency     := qtde_entrada;
  EST_CD_M_LOT.FieldByName('qtde_saida').AsCurrency       := qtde_saida;
  EST_CD_M_LOT.FieldByName('qtde_atual').AsCurrency       := qtde_atual;
  EST_CD_M_LOT.FieldByName('id_fiscal').AsInteger      := id_fiscal;
  EST_CD_M_LOT.FieldByName('id_controle').AsInteger    := id_controle;
  EST_CD_M_LOT.Post;
end;

function FatBusCustoMedItemEst(id_empresa,id_item, id_cor, id_tamanho: String;
                               BUS_CD_C_PAR_CTR: TClientDataSet;
                               EST_DP_M_FES: TDataSetProvider;
                               var vlr_custo_medio: Currency): Boolean;

var
  EST_CD_M_FES: TClientDataSet;
  index: integer;
  filtro: string;
begin
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


     result := true;

     filtro := id_empresa + ',' + id_item;
     index := 0;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = false) and
        (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
        begin
          index := 1;
          filtro := filtro + ',' + id_cor;
        end;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = false) and
        (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true) then
        begin
          index := 2;
          filtro := filtro + ',' + id_tamanho;
        end;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) and
        (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true) then
        begin
          index := 3;
          filtro := filtro + ',' + id_cor + ',' + id_tamanho;
        end;

     EST_CD_M_FES := TClientDataSet.Create(nil);
     EST_CD_M_FES.SetProvider(EST_DP_M_FES);
     EST_CD_M_FES.Close;

     if index = 0 then
         EST_CD_M_FES.Data :=
             EST_CD_M_FES.DataRequest(VarArrayOf([3, id_empresa, id_item,0,0]));
     if index = 1 then
         EST_CD_M_FES.Data :=
             EST_CD_M_FES.DataRequest(VarArrayOf([3, id_empresa, id_item, id_cor,0]));
     if index = 2 then
         EST_CD_M_FES.Data :=
              EST_CD_M_FES.DataRequest(VarArrayOf([3, id_empresa, id_item,0,id_tamanho]));
     if index = 3 then
         EST_CD_M_FES.Data :=
              EST_CD_M_FES.DataRequest(VarArrayOf([3, id_empresa, id_item, id_cor, id_tamanho]));

     if not EST_CD_M_FES.IsEmpty then
        begin
          vlr_custo_medio := EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency;
        end
    else
       begin
         result := false;
       end;
end;


function FatCalcCusMedioIte(Pai_DataSet: TCustomClientDataSet; VlrCusto: Currency; Qtde: Currency; EST_CD_M_FES: TClientDataSet):Currency;
var
  SaldoFisico, VlrCustoMedio: Currency;
begin
   result := 0;

  // TIPO_NF =  E - Nota de entrada     S - Nota de saída      -
  //            D - Dev. de Fornecedor  R - Dev. de cliente  F - Frete

  // Maxsuel Victor
     // 1ª Parte ok!

  if (Pai_DataSet.FieldByName('TIPO_NF').Text = 'E') or (Pai_DataSet.FieldByName('TIPO_NF').Text = 'D') then
     begin
       SaldoFisico   := EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency;
       VlrCustoMedio := EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency;

       if (SaldoFisico + Qtde) = 0  then
           begin
             result := VlrCusto;
           end
       else
           begin
              result :=
                       ( (VlrCustoMedio * SaldoFisico) + (VlrCusto * Qtde) ) /
                       (SaldoFisico + Qtde);
           end;
     end;

  // Comentado por Maxsuel Victor em 14/04/2016
     // devido a tarefa 422 - (Atualizar o cálculo do Custo Médio, conforme novo modelo do enLoja)
  {if Pai_DataSet.FieldByName('TIPO_NF').Text = 'E' then
     begin
       if (EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat + Qtde) = 0  then
           begin
             result := VlrCusto;
           end
       else
           begin
              result :=
                       (
                       (EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency *
                        EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat) +

                       (VlrCusto * Qtde)
                        ) /

                       (EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat + Qtde);
           end;
     end;

  if Pai_DataSet.FieldByName('TIPO_NF').Text = 'D' then
     begin

     end;  }
end;

procedure FAT_DP_M_NFEUpdateData(Sender: TObject;
                                 origem_doc, id_doc: integer;
                                 Pai_DataSet: TCustomClientDataSet;
                                 BUS_DP_DOC_ITENS,
                                 CAD_DP_C_TME,
                                 BUS_DP_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,
                                 EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS,
                                 BUS_DP_M_PED_ITE_INT: TDataSetProvider; NFCancelada: Boolean; SmAtual: TSM);
var
  CAD_CD_C_TME: TClientDataSet;
  BUS_CD_C_PAR_CTR: TClientDataSet;
  msgSaldoIte: String;
  Vtran: TDBXTransaction;
begin

   // Buscar dados do parâmetros de controle
   BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
   BUS_CD_C_PAR_CTR.Close;
   BUS_CD_C_PAR_CTR.Data :=
       BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString]));

  if origem_doc = 9 then // Se for Ordem de Serviço
     begin
       CAD_CD_C_TME := TClientDataSet.Create(nil);
       CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
       CAD_CD_C_TME.Close;
       CAD_CD_C_TME.Data :=
            CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString]));
     end
  else
     begin
       if origem_doc = 14 then // Se for Entrada por O.P
           begin
             if Pai_DataSet.FieldByName('tipo_entrada').AsInteger = 0 then // entrada normal
                begin
                   CAD_CD_C_TME := TClientDataSet.Create(nil);
                   CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                   CAD_CD_C_TME.Close;
                   CAD_CD_C_TME.Data :=
                        CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('pcp_epp_id_tipo_mov_estoque').AsString]));
                end;
             if Pai_DataSet.FieldByName('tipo_entrada').AsInteger = 1 then // Entrada por Contagem
                begin
                   CAD_CD_C_TME := TClientDataSet.Create(nil);
                   CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                   CAD_CD_C_TME.Close;
                   CAD_CD_C_TME.Data :=
                        CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('pcp_cpa_id_tipo_mov_estoque').AsString]));
                end;
           end
       else
           begin
              if origem_doc = 15 then
                 begin
                   CAD_CD_C_TME := TClientDataSet.Create(nil);
                     CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                     CAD_CD_C_TME.Close;
                     CAD_CD_C_TME.Data :=
                         CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('pcp_opb_id_tipo_mov_estoque').AsString]));
                 end
              else
                 begin
                    CAD_CD_C_TME := TClientDataSet.Create(nil);
                    CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                    CAD_CD_C_TME.Close;
                    CAD_CD_C_TME.Data :=
                        CAD_CD_C_TME.DataRequest(VarArrayOf([0,Pai_DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString]));
                 end;
           end;
     end;

  // Se movimenta estoque
  if CAD_CD_C_TME.FieldByName('esto_movimenta').AsBoolean = true then
     begin

       {if origem_doc in [1,2,3,6,7,9] then
          begin
            msgSaldoIte := FatVerifSldIte(origem_doc, Pai_DataSet, BUS_CD_C_PAR_CTR, EST_DP_M_FES, EST_DP_M_FES_ALM, BUS_DP_M_PED_ITE_INT);
            if msgSaldoIte <> 'OK' then
               begin
                 raise Exception.Create(msgSaldoIte);
               end;
          end;  }

       try
           // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
           //SM := TSM.Create(nil);

           SM := SmAtual;
           if origem_doc in [1,2,3,6,7,9,10,13,15] then
              begin
                {
                  1 - Por Nota fiscal de saída
                  2 - Por Ordem de Faturamento
                  3 - Por almoxarifado - Saída Normal/Saida Transferencia
                  6 - Por Pedido de Venda
                  7 - Por Dev. de NF de Fornecedor
                  9 - Por Ordem de Serviço
                  10 - Por Movimento de Estoque - Saida Normal
                  13 - Por Movimento de Estoque - Saida Transferencia
                  15 - Order de Produção de Blobo de Espuma
                }

                FatSaida_FeaEst(origem_doc,id_doc,Pai_DataSet,BUS_CD_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,NFCancelada,SmAtual);
                FatSaida_FesEst(origem_doc,Pai_DataSet,BUS_CD_C_PAR_CTR,BUS_DP_DOC_ITENS,EST_DP_M_FES,EST_DP_M_FES_ALM,EST_DP_M_LOT,NFCancelada);
              end;

           if origem_doc in [0,4,5,8,11,12,14] then
              begin
                {
                  0 - Por Nota fiscal de entrada
                  4 - Por inventário
                  5 - Por almoxarifado - Devolucao
                  8 - Por Dev. de NF de Cliente
                  11 - Por Movimento de Estoque - Entrada Normal
                  12 - Por Almoxarifado - Entrada Normal
                  14 - Por Entrada de Produto por O.P

                }

                FatEntrada_FeaEst(origem_doc,id_doc,Pai_DataSet,BUS_CD_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,NFCancelada,SmAtual);
                FatEntrada_FesEst(origem_doc,Pai_DataSet,BUS_CD_C_PAR_CTR,BUS_DP_DOC_ITENS,EST_DP_M_FES,EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS,NFCancelada);
              end;
       finally
           // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
           //FreeAndNil(SM);
       end;
     end;

  CAD_CD_C_TME.Free;
  BUS_CD_C_PAR_CTR.Free;
end;


function FatEntrada_FeaEst(origem_doc, id_doc: integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; EST_DP_M_FEA,
                         EST_DP_M_FES: TDataSetProvider; NFCancelada: Boolean;SmAtual: TSM): String;
var
  EST_CD_M_FEA: TClientDataSet;
  Ite_DataSet: TDataSet;
  NomeCampo,NomeCampoSeq, NomeCampoAlm: String;
  DataDoc, NumeroDoc: String;
  IndexFea: integer;
  VlrCustoMedio: Currency;

  id_doc_ant, id_item_ant, id_cor_ant, id_tamanho_ant, id_seq_ant: String;
  qtde_ant,qtde: Extended;
  num_lote_ant: String;

  id_almoxarifado_Pai: String;
  NumLote: String;

  IdFiscal,IdPedido,IdMal,IdMet,IdControle, IdTipoMovEstoque,IdEpp: integer;

  VlrCusto,VlrBruto,VlrMovimento,PerDesconto,VlrDesconto,PerFrete,VlrFrete: Currency;

  VlrCusto_ant,VlrBruto_ant,VlrMovimento_ant,PerDesconto_ant,VlrDesconto_ant,PerFrete_ant,VlrFrete_ant: Currency;
  id_empresa: integer;

  NF_Inutizada: Boolean;
  IdFea:Integer;
begin
  { TODO -oMaxsuel Victor -cCriação :
    Método criado em 08/04/2015
    - Este método terá a responsabilidade de realizar as ENTRADAS do estoque
      seja qual for a sua origem. }

   {
     0 - Por Nota fiscal de entrada
     4 - Por inventário
     5 - Por almoxarifado - Devolucao
     8 - Por Dev. de NF de Cliente
     11 - Por Movimento de Estoque

     14 - Entrada de Produto por O.P
   }

  SM := SmAtual;

  id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

  case origem_doc of
     0,8:
       begin
         NomeCampo     := 'ID_FISCAL' ;
         NomeCampoSeq  := 'ID_SEQUENCIA';
         DataDoc       := 'DTA_DOCUMENTO';
         NumeroDoc     := 'NUMERO';
         NomeCampoAlm  := 'ID_ALMOXARIFADO';
         Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;

         IndexFea      := 2;
       end;
     4:
       begin
         NomeCampo     := 'ID_CONTROLE' ;
         NomeCampoSeq  := 'ID_SEQ_ITEM';
         DataDoc       := 'DTA_CONTAGEM';
         NumeroDoc     := 'ID_CONTROLE';
         NomeCampoAlm  := 'ID_ALMOXARIFADO';
         Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_CTE_ITE')).NestedDataSet;

         IndexFea      := 4;
       end;
     5:
       begin
         NomeCampo    := 'ID_MAL';
         NomeCampoSeq := 'ID_SEQUENCIA';
         DataDoc      := 'DATA';
         NumeroDoc    := 'ID_MAL';
         NomeCampoAlm  := 'ID_ALMOXARIFADO';
         Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;

         IndexFea     := 3;
       end;
     11:
       begin
         NomeCampo    := 'ID_MET';
         NomeCampoSeq := 'ID_SEQUENCIA';
         DataDoc      := 'DATA';
         NumeroDoc    := 'ID_MET';
         NomeCampoAlm  := 'ID_ALMOXARIFADO';
         Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MET_ITE')).NestedDataSet;

         IndexFea     := 5;
       end;
     12:
        begin
          NomeCampo    := 'ID_MAL';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MAL';
          NomeCampoAlm  := 'ID_ALMOXARIFADO_DEST';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;
          IndexFea     := 7;
        end;

     14:
        begin
          NomeCampo     := 'ID_EPP';
          NomeCampoSeq  := 'ID_EPP_ITE';
          DataDoc       := 'DTA_ENTRADA';
          NumeroDoc     := 'ID_EPP';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_EPP_ITE')).NestedDataSet;
          IndexFea     := 8;
        end;
  end;


 { Filtros do BUS_CD_M_FEA:
    index 0, Empresa, Item               id_item
    index 1, Empresa, Pedido             id_pedido
    index 2, Empresa, Nota fiscal        id_fiscal
    index 3, Empresa, Mov. Almoxarifado  id_mal
    index 4, NÃO PRECISA POIS A CONTAGEM NÃO SE ALTERA MOVIMENTO}


   EST_CD_M_FEA := TClientDataSet.Create(nil);
   EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
   EST_CD_M_FEA.Close;
   EST_CD_M_FEA.Data :=
           EST_CD_M_FEA.DataRequest(VarArrayOf([IndexFea, id_empresa, id_doc,
                                        Pai_DataSet.FieldByName(NomeCampoAlm).AsString]));

   // if origem_doc=12 then
      // EST_CD_M_FEA.Locate('ID_ALMOXARIFADO',Pai_DataSet.FieldByName(NomeCampoAlm).AsInteger,[]);




   if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
      begin
         if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
            begin
              if not (origem_doc in [11]) then
                begin
                  id_almoxarifado_Pai := Pai_DataSet.FieldByName(NomeCampoAlm).AsString;
                  Pai_DataSet.Next;
                  if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                     begin
                       if Pai_DataSet.FieldByName(NomeCampoAlm).AsInteger > 0 then
                          begin
                            id_almoxarifado_Pai := Pai_DataSet.FieldByName(NomeCampoAlm).AsString;
                          end;
                     end;
                  Pai_DataSet.Prior; // Volta para o registro anterior.
                end;
            end;


         Ite_DataSet.First;
         while not Ite_DataSet.eof do
               begin
                 if (Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger <> 9) and (not ((origem_doc=0) and (Ite_DataSet.FieldByName('QTDE').AsCurrency=0)))  then // Se não for item do tipo SERVIÇO.
                    begin
                       { ******************
                         QUANDO HÁ INSERÇÃO
                         ****************** }

                       if Ite_DataSet.UpdateStatus in [usInserted] then
                          begin
                             // Criando a Ficha de Estoque
                             IdTipoMovEstoque := 0;
                             Qtde             := 0;
                             VlrCusto         := 0;
                             VlrBruto         := 0;
                             VlrCustoMedio    := 0;
                             PerDesconto      := 0;
                             VlrDesconto      := 0;
                             PerFrete         := 0;
                             VlrFrete         := 0;
                             VlrMovimento     := 0;
                             IdPedido         := 0;
                             IdFiscal         := 0;
                             IdControle       := 0;
                             IdMal            := 0;
                             IdMet            := 0;
                             if not (origem_doc in [11,14]) then  //Movimento de Estoque
                               begin
                                NumLote          := Ite_DataSet.FieldByName('NUM_LOTE').text;
                               end;
                             case origem_doc of
                                0,8: // Entrada por Nota Fiscal e Por Dev. de NF de Cliente
                                  begin
                                    IdTipoMovEstoque := Pai_DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                                    Qtde             := Ite_DataSet.FieldByName('QTDE').AsFloat;
                                    VlrBruto         := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                    PerDesconto      := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                    VlrDesconto      := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                    PerFrete         := Ite_DataSet.FieldByName('FRE_PERCENTUAL').AsCurrency;
                                    VlrFrete         := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                    VlrCusto         := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;
                                    IdFiscal         := Pai_DataSet.FieldByName('ID_FISCAL').AsInteger;
                                    VlrMovimento     := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                  end;

                                4: // Por inventário
                                  begin
                                    IdControle          := Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
                                    Qtde                := Ite_DataSet.FieldByName('DIFERENCA').AsFloat;
                                    if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                       IdTipoMovEstoque := BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsInteger;
                                    if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                       IdTipoMovEstoque := BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsInteger;
                                    VlrBruto            := roundTo(Ite_DataSet.FieldByName('DIFERENCA').AsFloat *
                                                           Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency,-2);
                                    VlrMovimento        := VlrBruto;
                                  end;

                                5: // Devolução por almoxarifado
                                  begin
                                    IdTipoMovEstoque := Pai_DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                                    IdMal            := Pai_DataSet.FieldByName('ID_MAL').AsInteger;
                                    Qtde             := Ite_DataSet.FieldByName('QTDE').AsFloat;

                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                             Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                             Ite_DataSet.FieldByName('ID_COR').AsString,
                                                             Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                             BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                             VlrCustoMedio) then
                                       begin
                                         if VlrCustoMedio > 0 then
                                            begin
                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                              VlrMovimento := VlrBruto;
                                            end;
                                       end;
                                  end;

                                 11: // Movimento de Estoque
                                  begin
                                    IdTipoMovEstoque := Pai_DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                                    IdMet            := Pai_DataSet.FieldByName('ID_MET').AsInteger;
                                    Qtde             := Ite_DataSet.FieldByName('QTDE').AsFloat;

                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                             Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                             Ite_DataSet.FieldByName('ID_COR').AsString,
                                                             Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                             BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                             VlrCustoMedio) then
                                       begin
                                         if VlrCustoMedio > 0 then
                                            begin
                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                              VlrMovimento := VlrBruto;
                                            end;
                                       end;
                                  end;

                                  12: // Entrada Transferencia
                                  begin
                                    IdTipoMovEstoque := BUS_CD_C_PAR_CTR.FieldByName('MAL_TIPO_ESTOQUE_ENT').AsInteger;
                                    IdMal := Pai_DataSet.FieldByName('ID_MAL').AsInteger;
                                    VlrCustoMedio := 0;
                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                      Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                      Ite_DataSet.FieldByName('ID_COR').AsString,
                                                      Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                      VlrCustoMedio) then
                                       begin
                                         if VlrCustoMedio > 0 then
                                            begin
                                              VlrCusto     := roundTo(VlrCustoMedio,-2);
                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                              VlrMovimento := VlrBruto;
                                            end;
                                       end;
                                   end;
                                  14: // Entrada por entrada por O.P - Sgq
                                  begin
                                    if Pai_DataSet.FieldByName('tipo_entrada').AsInteger = 0 then // entrada normal
                                       IdTipoMovEstoque := BUS_CD_C_PAR_CTR.FieldByName('pcp_epp_id_tipo_mov_estoque').AsInteger;

                                    if Pai_DataSet.FieldByName('tipo_entrada').AsInteger = 1 then // Entrada por Contagem
                                       IdTipoMovEstoque := BUS_CD_C_PAR_CTR.FieldByName('pcp_cpa_id_tipo_mov_estoque').AsInteger;

                                    IdEpp := Pai_DataSet.FieldByName('ID_EPP').AsInteger;
                                    VlrCustoMedio := 0;
                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                      Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                      Ite_DataSet.FieldByName('ID_COR').AsString,
                                                      Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                      VlrCustoMedio) then
                                       begin
                                         if VlrCustoMedio > 0 then
                                            begin
                                              VlrCusto     := roundTo(VlrCustoMedio,-2);
                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                              VlrMovimento := VlrBruto;
                                            end;
                                       end;
                                   end;
                             end;

                             EST_CD_M_FEA.Insert;


                             //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger              := sm.enValorChave('EST_TB_M_FEA');
                             //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger              := IdFea;
                             //Inc(IdFea);
                             EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger              := sm.enValorChave('EST_TB_M_FEA');
                                                                                          // DmApoio.enBusValorChave('EST_TB_M_FEA');

                             EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger           := Pai_DataSet.FieldByName(NumeroDoc).AsInteger;
                             EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger         := 0;
                             EST_CD_M_FEA.FieldByName('QTDE').AsFloat                  := Ite_DataSet.FieldByName('QTDE').AsFloat;
                             EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger          := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;
                             EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger             := Ite_DataSet.FieldByName('ID_ITEM').AsInteger;
                             EST_CD_M_FEA.FieldByName('ID_COR').text                   := Ite_DataSet.FieldByName('ID_COR').text;
                             EST_CD_M_FEA.FieldByName('ID_TAMANHO').text               := Ite_DataSet.FieldByName('ID_TAMANHO').text;
                             EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat           := Ite_DataSet.FieldByName(NomeCampoSeq).Asfloat;
                             EST_CD_M_FEA.FieldByName('DATA').AsDateTime               := Pai_DataSet.FieldByName(DataDoc).AsDateTime;
                             EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := IdTipoMovEstoque;
                             EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger              := origem_doc;
                             if not (origem_doc in [11]) then
                                begin
                                 if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                                    begin
                                      EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                                         Pai_DataSet.FieldByName(NomeCampoAlm).AsInteger;
                                    end;
                                end;
                             EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := VlrCusto;
                             EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := VlrBruto;
                             EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := PerDesconto;
                             EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := VlrDesconto;
                             EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := PerFrete;
                             EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := VlrFrete;
                             EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := VlrMovimento;
                             EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := IdPedido;
                             EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := IdFiscal;
                             EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger    := IdControle;
                             EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := IdMal;
                             EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := IdMet;
                             EST_CD_M_FEA.FieldByName('ID_EPP').AsInteger         := IdEpp;
                             EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := NumLote;
                             EST_CD_M_FEA.Post;
                          end;

                       { *******************
                         QUANDO HÁ ALTERAÇÃO
                         ******************* }

                       if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                          begin
                            id_doc_ant       := Ite_DataSet.FieldByName(NomeCampo).AsString;
                            id_item_ant      := Ite_DataSet.FieldByName('ID_ITEM').AsString;
                            id_cor_ant       := Ite_DataSet.FieldByName('ID_COR').AsString;
                            id_tamanho_ant   := Ite_DataSet.FieldByName('ID_TAMANHO').AsString;
                            id_seq_ant       := Ite_DataSet.FieldByName(NomeCampoSeq).AsString;
                            qtde_ant         := Ite_DataSet.FieldByName('QTDE').AsFloat;

                            if not origem_doc in [11] then  // Não é Movimento de Estoque
                               begin
                                num_lote_ant     := Ite_DataSet.FieldByName('NUM_LOTE').AsString;
                               end;

                            PerFrete_ant     := 0;
                            VlrFrete_ant     := 0;
                            PerDesconto_ant  := 0;
                            VlrDesconto_ant  := 0;
                            VlrBruto_ant     := 0;
                            VlrMovimento_ant := 0;

                            case origem_doc of
                                 0,8: // Entrada por Nota Fiscal e Por Dev. de NF de Cliente
                                  begin
                                    VlrBruto_ant     := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                    PerDesconto_ant  := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                    VlrDesconto_ant  := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                    PerFrete_ant     := Ite_DataSet.FieldByName('FRE_PERCENTUAL').AsCurrency;
                                    VlrFrete_ant     := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                    IdFiscal         := Pai_DataSet.FieldByName('ID_FISCAL').AsInteger;
                                    VlrMovimento_ant := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                  end;

                                 4: // Por inventário
                                    // (Pega os valores do FEA por que na tabela de itens do CTE não exsite os campos de valores
                                  begin
                                    VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                    VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                  end;

                                 5: // Devolução por almoxarifado
                                    // (Pega os valores do FEA por que na tabela de itens do MAL_ITE não exsite os campos de valores
                                  begin
                                    VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                    VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                  end;

                                 11: // Movimento de Estoque
                                    // (Pega os valores do FEA por que na tabela de itens do MAL_ITE não exsite os campos de valores
                                  begin
                                    VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                    VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                  end;

                                 12: // / Movimento por Almoxarifado -Entrada/Transferencia
                                  begin
                                    VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                    VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                  end;
                                 14: // / Entrada de Produtos por O.P - Sgq
                                  begin
                                    VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                    VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                  end;

                            end;

                            Ite_DataSet.Next;

                            if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                               begin
                                 if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_SEQ_ITEM',
                                             VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                         id_doc_ant, id_item_ant, id_seq_ant]),[]) then
                                    begin
                                      VlrBruto      := VlrBruto_ant;
                                      PerDesconto   := PerDesconto_ant;
                                      VlrDesconto   := VlrDesconto_ant;
                                      PerFrete      := PerFrete_ant;
                                      VlrFrete      := VlrFrete_ant;
                                      VlrMovimento  := VlrMovimento_ant;
                                      NumLote       := '';
                                      VlrCustoMedio := 0;

                                      if origem_doc in [0,8] then // NF de entrada e Por Dev. de NF de Cliente
                                         begin
                                           if Ite_DataSet.FieldByName('fre_percentual').AsCurrency > 0 then
                                              PerFrete := Ite_DataSet.FieldByName('fre_percentual').AsCurrency;
                                           if Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency > 0 then
                                              VlrFrete := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                           if Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency > 0 then
                                              PerDesconto := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                           if Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                                              VlrDesconto := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                           if Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency > 0 then
                                              VlrBruto := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                           if Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
                                              VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                         end;

                                      if origem_doc = 4 then // Por inventário
                                         begin
                                           if Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency > 0 then
                                              begin
                                                VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency,-2);
                                                VlrMovimento := VlrBruto;
                                              end;
                                         end;

                                      if origem_doc = 5 then // Devolução por almoxarifado
                                         begin
                                           VlrCustoMedio := 0;
                                           if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                              begin
                                                if VlrCustoMedio > 0 then
                                                   begin
                                                     if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                        begin
                                                           // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                           // para devolução de almoxarifado.
                                                           VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                           VlrCustoMedio,-2);
                                                           VlrMovimento := VlrBruto;
                                                        end;
                                                   end;
                                              end;
                                         end;

                                       if origem_doc = 11 then // Movimento de Estoque
                                         begin
                                           VlrCustoMedio := 0;
                                           if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                              begin
                                                if VlrCustoMedio > 0 then
                                                   begin
                                                     if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                        begin
                                                           // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                           // para devolução de almoxarifado.
                                                           VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                           VlrCustoMedio,-2);
                                                           VlrMovimento := VlrBruto;
                                                        end;
                                                   end;
                                              end;
                                         end;

                                        if origem_doc = 12 then // Movimento por Almoxarifado -Entrada/Transferencia
                                         begin
                                           VlrCustoMedio := 0;
                                           if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                              begin
                                                if VlrCustoMedio > 0 then
                                                   begin
                                                     if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                        begin
                                                           // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                           // para devolução de almoxarifado.
                                                           VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                           VlrCustoMedio,-2);
                                                           VlrMovimento := VlrBruto;
                                                        end;
                                                   end;
                                              end;
                                         end;

                                        if origem_doc = 14 then // Entrada de Produto por ordem de Produção
                                         begin
                                           VlrCustoMedio := 0;
                                           if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                              begin
                                                if VlrCustoMedio > 0 then
                                                   begin
                                                     if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                        begin
                                                           // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                           // para devolução de almoxarifado.
                                                           VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                           VlrCustoMedio,-2);
                                                           VlrMovimento := VlrBruto;
                                                        end;
                                                   end;
                                              end;
                                         end;

                                      EST_CD_M_FEA.edit;
                                      EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsString := id_almoxarifado_Pai;
                                      if Ite_DataSet.FieldByName('ID_COR').AsCurrency > 0 then
                                         begin
                                           EST_CD_M_FEA.FieldByName('ID_COR').AsCurrency  :=
                                                    Ite_DataSet.FieldByName('ID_COR').AsCurrency;
                                         end;
                                      if Ite_DataSet.FieldByName('ID_TAMANHO').AsCurrency > 0 then
                                         begin
                                           EST_CD_M_FEA.FieldByName('ID_TAMANHO').AsCurrency  :=
                                                    Ite_DataSet.FieldByName('ID_TAMANHO').AsCurrency;
                                         end;
                                      if not origem_doc in [11,14] then  // Não é Movimento de Estoque
                                         begin
                                          if trim(Ite_DataSet.FieldByName('NUM_LOTE').AsString) <> '' then // Se houve modificação no campo
                                             begin
                                                EST_CD_M_FEA.FieldByName('NUM_LOTE').text :=
                                                        Ite_DataSet.FieldByName('NUM_LOTE').text;
                                             end;
                                         end;
                                      if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                         begin
                                           EST_CD_M_FEA.FieldByName('QTDE').AsFloat :=
                                              (EST_CD_M_FEA.FieldByName('QTDE').AsFloat - qtde_ant) +
                                               Ite_DataSet.FieldByName('QTDE').AsFloat;
                                         end;

                                      if PerFrete <> PerFrete_ant then
                                         EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := PerFrete;
                                      if VlrFrete <> VlrFrete_ant then
                                         EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := VlrFrete;
                                      if PerDesconto <> PerDesconto_ant then
                                         EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := PerDesconto;
                                      if VlrDesconto <> VlrDesconto_ant then
                                         EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := VlrDesconto;
                                      if VlrBruto <> VlrBruto_ant then
                                         EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := VlrBruto;
                                      if VlrMovimento <> VlrMovimento_ant then
                                         EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := VlrMovimento;

                                      EST_CD_M_FEA.Post;
                                    end;
                               end
                            else
                               Ite_DataSet.Prior; // Retornará para o registro anterior já que o registro não foi modificado.
                          end;

                       { *****************
                         QUANDO HÁ DELEÇÃO
                         ***************** }

                       // Caso o item tenha sido excluído o sistema deverá excluir o registro da ficha de estoque.
                       if Ite_DataSet.UpdateStatus in [usDeleted] then // Se o registro está com status de Deleção
                          begin
                            if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_SEQ_ITEM',
                                             VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                         Ite_DataSet.FieldByName(NomeCampo).AsString,
                                                         Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                         Ite_DataSet.FieldByName(NomeCampoSeq).AsString]),[]) then
                               begin
                                 EST_CD_M_FEA.Delete;
                               end;
                          end;
                    end;
                 Ite_DataSet.Next;
               end;
      end
   else
      begin
        if not EST_CD_M_FEA.IsEmpty then
           begin
             while not EST_CD_M_FEA.Eof do
                begin
                  EST_CD_M_FEA.delete;
                end;
           end;
      end;

   if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
           abort;

   EST_CD_M_FEA.Free;
end;


function FatSaida_FeaEst(origem_doc, id_doc: integer;
                        Pai_DataSet: TCustomClientDataSet;
                        BUS_CD_C_PAR_CTR: TClientDataSet;
                        EST_DP_M_FEA,
                        EST_DP_M_FES: TDataSetProvider; NFCancelada: Boolean; SmAtual: TSM): String;
var
  EST_CD_M_FEA,BUS_CD_C_ITE_COJ,BUS_CD_C_PAR_MOD: TClientDataSet;
  Ite_DataSet: TDataSet;
  NomeCampo,NomeCampoSeq: String;
  DataDoc, NumeroDoc: String;
  IndexFea: integer;
  VlrCustoMedio: Currency;

  id_doc_ant, id_item_ant, id_cor_ant, id_tamanho_ant, id_seq_ant: String;
  qtde_ant: Extended;
  num_lote_ant: String;
  int_tipo_item: Integer;
  qtde:Currency;

  id_almoxarifado_Pai: String;
  NumLote: String;
  IdFiscal,IdPedido,IdMal,IdOrdem,IdMet,IdOrs,IdOpb: integer;
  VlrCusto,VlrBruto,VlrMovimento,PerDesconto,VlrDesconto,PerFrete,VlrFrete: Currency;
  VlrCusto_ant,VlrBruto_ant,VlrMovimento_ant,PerDesconto_ant,VlrDesconto_ant,PerFrete_ant,VlrFrete_ant: Currency;
  id_empresa,IdTipoMovEst: integer;
  OrdServCanc, PecaCancelada, PedVendaCanc, PedVendaReprov: Boolean;

  qry:TSqlQuery;
  qryNova:TSqlQuery;
  xSeq:Integer;

  IdFea: Integer;
  dataIteCoj:TDate;
begin
   //SM := TSM.Create(nil);
  { TODO -oMaxsuel  -cCriação :
    Método criado por Maxsuel Victor em 25/02/2015
    - Este método terá a responsabilidade de realizar as SAÍDAS do estoque
      seja qual for a sua origem. }

   {
    origem_doc:
      1 - Por Nota fiscal de saída
      2 - Por Ordem de Faturamento
      3 - Por almoxarifado - Saída
      6 - Por Pedido de Venda
      7 - Por Dev. de NF de Fornecedor
      9 - Por Ordem de Serviço
      10 - Por Movimento de Estoque - Saida Normal
      15 - Order de Produção de Blobo de Espuma
   }


   SM := SmAtual;

   id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

   case origem_doc of
      1,7:
        begin
          NomeCampo     := 'ID_FISCAL' ;
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DTA_DOCUMENTO';
          NumeroDoc     := 'NUMERO';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;
          {if Pai_DataSet.FieldByName('ORIGEM_NF').AsString = 'D' then
             begin
               qry:=TSqlQuery.Create(nil);
               qry.SQLConnection:=xConn;

               qry.Close;
               qry.SQL.Clear;
               qry.SQL.Add('Select * from FAT_TB_M_NFE_ITE where ID_FISCAL='''+Pai_DataSet.FieldByName('ID_FISCAL').AsString+''' ');
               qry.Open;

               Ite_DataSet := qry;
             end;            }

          IndexFea      := 2;
        end;
      2:
        begin
          NomeCampo    := 'ID_ORS';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'dta_emissao';
          NumeroDoc    := 'ID_ORS';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_ORS_ICO')).NestedDataSet;

          IndexFea     := 6;
        end;

      3:
        begin
          NomeCampo    := 'ID_MAL';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MAL';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;

          IndexFea     := 3;
        end;
      6:
        begin
          NomeCampo    := 'ID_PEDIDO';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'dta_pedido';
          NumeroDoc    := 'ID_PEDIDO';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;

          IndexFea     := 1;
        end;
      9:
        begin
          NomeCampo    := 'ID_ORDEM';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DTA_REQUISICAO';   // Esse é do filho

          if (Pai_DataSet.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean=true) then
            begin
             NumeroDoc    := 'ID_ORDEM_ASUB';
             IndexFea := 9;
            end
          else
            begin
             NumeroDoc    := 'ID_ORDEM';
             IndexFea     := 4;
            end;
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;
        end;
      10:
         begin
          NomeCampo    := 'ID_MET';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MET';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MET_ITE')).NestedDataSet;

          IndexFea     := 5;
        end;
      13:
        begin
          NomeCampo    := 'ID_MAL';
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MAL';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;

          IndexFea     := 7;
        end;
       15:
        begin
          NomeCampo    := 'ID_OPB';
          NomeCampoSeq := 'ID_OPB_OBL';
          DataDoc      := 'DTA_EMISSAO';
          NumeroDoc    := 'ID_OPB';

          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_OPB_OBL')).NestedDataSet;

          Ite_DataSet.Filtered   := true;
          Ite_DataSet.Filter := ' qtde_abater_sld > 0 ';

          IndexFea     := 10;
        end;
   end;


     { Filtros do BUS_CD_M_FEA:
    index 0, Empresa, Item               id_item
    index 1, Empresa, Pedido             id_pedido
    index 2, Empresa, Nota fiscal        id_fiscal
    index 3, Empresa, Mov. Almoxarifado  id_mal
    index 4, Empresa, Ordem de Serviço   id_ordem
    index 6, Empresa, Ordem de Faturamento id_ors
    }

   OrdServCanc    := false;
   PedVendaCanc   := false;
   PedVendaReprov := false;





   EST_CD_M_FEA := TClientDataSet.Create(nil);
   EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
   EST_CD_M_FEA.Close;
   EST_CD_M_FEA.Data :=
           EST_CD_M_FEA.DataRequest(VarArrayOf([IndexFea, id_empresa, id_doc,
                                        Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString]));



   //  if origem_doc=13 then
      // EST_CD_M_FEA.Locate('ID_ALMOXARIFADO',Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsInteger,[]);

   if origem_doc = 6 then  // Se for pedido de venda.
      begin
        if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
            begin
              if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
                 begin
                   Pai_DataSet.Next;
                   if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                      begin
                        if Pai_DataSet.FieldByName('SITUACAO').text <> '' then
                           if Pai_DataSet.FieldByName('SITUACAO').AsInteger = 4 then
                              PedVendaCanc := true;

                        if Pai_DataSet.FieldByName('situacao_aprovacao').text <> '' then
                           if Pai_DataSet.FieldByName('situacao_aprovacao').AsInteger = 2 then
                              PedVendaReprov := true;
                      end;
                 end;
              Pai_DataSet.Prior; // Volta para o registro anterior.
            end;
      end;
   if origem_doc = 9 then  // Se for Ordem de Serviço
      begin
        if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
            begin
              if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
                 begin
                   Pai_DataSet.Next;
                   if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                      begin
                        if Pai_DataSet.FieldByName('STATUS').text <> '' then
                           if Pai_DataSet.FieldByName('STATUS').AsInteger = 4 then
                              OrdServCanc := true;
                      end;
                 end;
              Pai_DataSet.Prior; // Volta para o registro anterior.
            end;
      end;

   if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) and (OrdServCanc = false) and (PedVendaCanc = false) and (PedVendaReprov = false) then
      begin

         if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
            begin
              if not (origem_doc in [10]) then
                begin
                  id_almoxarifado_Pai := Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString;
                  Pai_DataSet.Next;
                  if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                     begin
                       if Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsInteger > 0 then
                          begin
                            id_almoxarifado_Pai := Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString;
                          end;
                     end;
                  Pai_DataSet.Prior; // Volta para o registro anterior.
                end;
            end;

         Ite_DataSet.First;
         while ((not Ite_DataSet.eof) and (not ((origem_doc=1) and (Ite_DataSet.FieldByName('QTDE').AsCurrency=0)))) do
               begin

                     ///Busca os itens conjugados
                    { BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
                     BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
                     BUS_CD_C_ITE_COJ.Close;
                     BUS_CD_C_ITE_COJ.Data :=
                                       BUS_CD_C_ITE_COJ.DataRequest(VarArrayOf([0,'0']));

                     if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_ITE_CONJ').AsBoolean = true) then
                       begin
                           if origem_doc in [6,1,9] then
                             begin
                               BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
                               BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
                               BUS_CD_C_ITE_COJ.Close;
                               BUS_CD_C_ITE_COJ.Data :=
                                       BUS_CD_C_ITE_COJ.DataRequest(VarArrayOf([0,Ite_DataSet.FieldByName('ID_ITEM').AsString]));

                             end;
                      end;  }
                     /////////FIM//////////////////////


                 //if Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for item do tipo SERVIÇO.
                    //begin
                       { ******************
                         QUANDO HÁ INSERÇÃO
                         ****************** }

                       if Ite_DataSet.UpdateStatus in [usInserted] then
                          begin
                             //Condicao foi retirada e colocado no while.Resp:Luan.Data:12-07-2017
                            {if  (not ((origem_doc=1) and (Ite_DataSet.FieldByName('QTDE').AsCurrency=0))) then
                               begin }
                                   // Se não for Ordem de Serviço ou se for uma Ordem de Serviço e a Peça não for cancelada
                                   if (origem_doc <> 9) or ( (origem_doc = 9) and (Ite_DataSet.FieldByName('cancelada').AsBoolean = false)  ) then
                                      begin
                                         // Criando a Ficha de Estoque
                                         VlrCusto     := 0;
                                         VlrBruto     := 0;
                                         PerDesconto  := 0;
                                         VlrDesconto  := 0;
                                         PerFrete     := 0;
                                         VlrFrete     := 0;
                                         VlrMovimento := 0;
                                         IdPedido     := 0;
                                         IdOrs        := 0;
                                         IdFiscal     := 0;
                                         IdMal        := 0;
                                         IdOrdem      := 0;
                                         IdMet        := 0;
                                         IdOpb        := 0;
                                         NumLote      := '';
                                         if origem_doc = 9 then
                                            begin
                                              IdTipoMovEst := BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsInteger;
                                            end
                                         else
                                            begin
                                               if origem_doc = 15 then
                                                  begin
                                                    IdTipoMovEst := BUS_CD_C_PAR_CTR.FieldByName('pcp_opb_id_tipo_mov_estoque').AsInteger;
                                                  end
                                               else
                                                  begin
                                                    IdTipoMovEst :=   Pai_DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                                                  end;
                                            end;
                                         case origem_doc of
                                            1,7: // Saída por Nota Fiscal ou Saída Por Dev. de NF de Fornecedor
                                              begin
                                                VlrCusto    := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;
                                                VlrBruto    := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                                PerDesconto := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                                VlrDesconto := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                                PerFrete    := Ite_DataSet.FieldByName('FRE_PERCENTUAL').AsCurrency;
                                                VlrFrete    := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                                IdFiscal    := Pai_DataSet.FieldByName('ID_FISCAL').AsInteger;
                                                VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                              end;

                                           2: // Ordem de Faturamento (PCP_TB_M_ORS)
                                                begin
                                                  VlrBruto     := Ite_DataSet.FieldByName('VLR_BRUTO').AsCurrency;
                                                  PerDesconto  := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                                  VlrDesconto  := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                                  IdOrs        := Ite_DataSet.FieldByName('ID_ORS').AsInteger;
                                                  VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                                  VlrCustoMedio := 0;
                                                  if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                    Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                    Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                                     begin
                                                       if VlrCustoMedio > 0 then
                                                          begin
                                                            VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                          end;
                                                     end;
                                                end;

                                            3: // Saída por almoxarifado
                                              begin
                                                IdMal := Pai_DataSet.FieldByName('ID_MAL').AsInteger;
                                                VlrCustoMedio := 0;
                                                if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                  Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                  Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                  Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                  BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                  VlrCustoMedio) then
                                                   begin
                                                     if VlrCustoMedio > 0 then
                                                        begin
                                                          VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                          VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                                          VlrMovimento := VlrBruto;
                                                        end;
                                                   end;
                                                end;

                                              6: // Pedido de Venda
                                                begin
                                                  VlrBruto     := Ite_DataSet.FieldByName('VLR_BRUTO').AsCurrency;
                                                  PerDesconto  := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                                  VlrDesconto  := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                                  IdPedido     := Ite_DataSet.FieldByName('ID_PEDIDO').AsInteger;
                                                  VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                                end;
                                              9: // Por Ordem de Serviço
                                                begin
                                                  IdOrdem := Pai_DataSet.FieldByName('ID_ORDEM').AsInteger;
                                                  VlrCustoMedio := 0;
                                                  if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                    Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                    Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                    Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                    BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                    VlrCustoMedio) then
                                                     begin
                                                       if VlrCustoMedio > 0 then
                                                          begin
                                                            VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                            VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                                            VlrMovimento := VlrBruto;
                                                          end;
                                                     end;
                                                  end;
                                               10: //Movimento de Estoque
                                                 begin
                                                   IdMet := Pai_DataSet.FieldByName('ID_MET').AsInteger;
                                                   VlrCustoMedio := 0;
                                                   if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                  Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                  Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                  Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                  BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                  VlrCustoMedio) then
                                                     begin
                                                       if VlrCustoMedio > 0 then
                                                         begin
                                                           VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                           VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                                           VlrMovimento := VlrBruto;
                                                         end;
                                                     end;
                                                 end;

                                                13: // Saída Transferencia
                                                  begin
                                                    IdMal := Pai_DataSet.FieldByName('ID_MAL').AsInteger;
                                                    VlrCustoMedio := 0;
                                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                      Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                      Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                      Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                      VlrCustoMedio) then
                                                       begin
                                                         if VlrCustoMedio > 0 then
                                                            begin
                                                              VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat * VlrCustoMedio,-2);
                                                              VlrMovimento := VlrBruto;
                                                            end;
                                                       end;
                                                    end;
                                                15: // Ordem de Produção de Bloco de Espuma
                                                  begin
                                                    IdOpb := Pai_DataSet.FieldByName('ID_OPB').AsInteger;
                                                    VlrCustoMedio := 0;
                                                    if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                      Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                      Ite_DataSet.FieldByName('ID_COR').AsString,
                                                                      Ite_DataSet.FieldByName('ID_TAMANHO').AsString,
                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                      VlrCustoMedio) then
                                                       begin
                                                         if VlrCustoMedio > 0 then
                                                            begin
                                                              VlrCusto     := roundTo(VlrCustoMedio,-2);
                                                              VlrBruto     := roundTo(Ite_DataSet.FieldByName('qtde_abater_sld').AsFloat * VlrCustoMedio,-2);
                                                              VlrMovimento := VlrBruto;
                                                            end;
                                                       end;
                                                    end;

                                         end;

                                         if not (origem_doc in [2,6,9,10,15]) then // Se for diferente de Ordem de Faturamento , Pedido de Venda , Ordem de Serviço e Ordem de Produção de Bloco
                                            begin
                                              NumLote := Ite_DataSet.FieldByName('NUM_LOTE').text;
                                            end;

                                        if (Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger <> 9) then
                                            begin
                                             EST_CD_M_FEA.Insert;
                                             //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');;

                                             //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := IdFea;
                                             //Inc(IdFea);

                                             EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');
                                                                                                  //   DmApoio.enBusValorChave('EST_TB_M_FEA');

                                             EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := Pai_DataSet.FieldByName(NumeroDoc).AsInteger;
                                             EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;

                                             if origem_doc = 15 then // Ordem de Produção do Bloco
                                                EST_CD_M_FEA.FieldByName('QTDE').AsFloat          := Ite_DataSet.FieldByName('qtde_abater_sld').AsFloat
                                             else
                                                EST_CD_M_FEA.FieldByName('QTDE').AsFloat          := Ite_DataSet.FieldByName('QTDE').AsFloat;


                                             EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

                                             EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := Ite_DataSet.FieldByName('ID_ITEM').AsInteger;

                                             EST_CD_M_FEA.FieldByName('ID_COR').text           := Ite_DataSet.FieldByName('ID_COR').text;
                                             EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := Ite_DataSet.FieldByName('ID_TAMANHO').text;
                                             EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := Ite_DataSet.FieldByName(NomeCampoSeq).Asfloat;
                                             if origem_doc = 9 then // Ordem de Serviço
                                                // Será pela data da requisição da peça
                                                EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := Ite_DataSet.FieldByName(DataDoc).AsDateTime
                                             else
                                                EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := Pai_DataSet.FieldByName(DataDoc).AsDateTime;
                                             EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := IdTipoMovEst;
                                             EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := origem_doc;
                                             if not (origem_doc in [10]) then
                                                begin
                                                   if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                                                      begin
                                                        EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                                                           Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                                                      end;
                                                end;
                                             EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := VlrCusto;
                                             EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := VlrBruto;
                                             EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := PerDesconto;
                                             EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := VlrDesconto;
                                             EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := PerFrete;
                                             EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := VlrFrete;
                                             EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := VlrMovimento;
                                             EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := IdPedido;
                                             EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := IdOrs;
                                             EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := IdFiscal;
                                             EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := IdMal;
                                             EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := IdMet;
                                             EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := IdOrdem;
                                             EST_CD_M_FEA.FieldByName('ID_OPB').AsInteger         := IdOpb;
                                             EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := NumLote;
                                             EST_CD_M_FEA.Post;
                                            end;


                                         ////Items Conjugados///////
                                        { BUS_CD_C_ITE_COJ.First;
                                         while not BUS_CD_C_ITE_COJ.EOF do
                                           begin
                                             EST_CD_M_FEA.Insert;

                                             //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');
                                             EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := DmApoio.enBusValorChave('EST_TB_M_FEA');

                                             EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := Pai_DataSet.FieldByName(NumeroDoc).AsInteger;
                                             EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                                             EST_CD_M_FEA.FieldByName('QTDE').AsFloat          :=
                                                           BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsFloat*Ite_DataSet.FieldByName('QTDE').AsFloat;
                                             EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;
                                             EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsInteger;
                                             EST_CD_M_FEA.FieldByName('ID_COR').text           := BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text;;
                                             EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text;;
                                             EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := 0;
                                             EST_CD_M_FEA.FieldByName('ID_COJ_ITE').AsInteger  := Ite_DataSet.FieldByName('ID_ITEM').AsInteger;
                                             if origem_doc = 9 then // Ordem de Serviço
                                             // Será pela data da requisição da peça
                                               EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := Ite_DataSet.FieldByName(DataDoc).AsDateTime
                                             else
                                               EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := Pai_DataSet.FieldByName(DataDoc).AsDateTime;
                                             EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := IdTipoMovEst;
                                             EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := origem_doc;
                                             if not (origem_doc in [10]) then
                                                begin
                                                   if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                                                      begin
                                                        EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                                                           Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                                                      end;
                                                end;

                                             EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                                             EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := 0;
                                             EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := 0;
                                             EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := 0;
                                             EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                                             EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                                             EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := 0;
                                             EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := IdPedido;
                                             EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := IdOrs;
                                             EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := IdFiscal;
                                             EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := IdMal;
                                             EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := IdMet;
                                             EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := IdOrdem;
                                             EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';

                                             EST_CD_M_FEA.post;
                                             BUS_CD_C_ITE_COJ.Next;
                                           end;  }
                                           ////////////////////////////////////////////

                                           if origem_doc = 9 then // Ordem de Serviço
                                             // Será pela data da requisição da peça
                                               dataIteCoj    := Ite_DataSet.FieldByName(DataDoc).AsDateTime
                                             else
                                               dataIteCoj    := Pai_DataSet.FieldByName(DataDoc).AsDateTime;

                                           // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                              // e de Ordem de Produção de Bloco de Espuma
                                           if (origem_doc <> 2) and (origem_doc <> 15) then
                                              begin
                                                 FatSaida_FeaEstCoj(origem_doc,Pai_DataSet.FieldByName(NumeroDoc).AsInteger,IndexFea,IdTipoMovEst,
                                                               Ite_DataSet.FieldByName(NomeCampoSeq).AsString,Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                               '',dataIteCoj,NumeroDoc,Pai_DataSet.FieldByName('id_almoxarifado').AsString,
                                                               0,Ite_DataSet.FieldByName('QTDE').AsCurrency,
                                                               Pai_DataSet,EST_CD_M_FEA,BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,0,SM);
                                              end;
                                      end;
                               //end;
                          end;

                       { *******************
                         QUANDO HÁ ALTERAÇÃO
                         ******************* }

                       if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                          begin
                            int_tipo_item    := Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger;
                            qtde :=  Ite_DataSet.FieldByName('QTDE').AsCurrency;
                            Ite_DataSet.Next;

                            if Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsString <> '' then
                               int_tipo_item    := Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger;
                            if Ite_DataSet.FieldByName('QTDE').AsString <> '' then
                               qtde :=  Ite_DataSet.FieldByName('QTDE').AsCurrency;

                            {if  (not ((origem_doc=1) and (qtde=0))) then
                               begin }
                                  Ite_DataSet.Prior;
                                  id_doc_ant       := Ite_DataSet.FieldByName(NomeCampo).AsString;
                                  id_item_ant      := Ite_DataSet.FieldByName('ID_ITEM').AsString;
                                  id_cor_ant       := Ite_DataSet.FieldByName('ID_COR').AsString;
                                  id_tamanho_ant   := Ite_DataSet.FieldByName('ID_TAMANHO').AsString;
                                  id_seq_ant       := Ite_DataSet.FieldByName(NomeCampoSeq).AsString;
                                  qtde_ant         := Ite_DataSet.FieldByName('QTDE').AsFloat;
                                  if not (origem_doc in [6,9,10,15]) then // Se for diferente de Pedido de Venda , Ordem de Serviço ou Mov. Estoque, Ordem de Produção de Bloco de Espuma
                                     num_lote_ant     := Ite_DataSet.FieldByName('NUM_LOTE').AsString;

                                  PerFrete_ant     := 0;
                                  VlrFrete_ant     := 0;
                                  PerDesconto_ant  := 0;
                                  VlrDesconto_ant  := 0;
                                  VlrBruto_ant     := 0;
                                  VlrMovimento_ant := 0;

                                  case origem_doc of
                                      1,7: // Saída por Nota Fiscal ou Saída Por Dev. de NF de Fornecedor
                                        begin
                                          VlrBruto_ant     := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                          PerDesconto_ant  := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                          VlrDesconto_ant  := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                          PerFrete_ant     := Ite_DataSet.FieldByName('FRE_PERCENTUAL').AsCurrency;
                                          VlrFrete_ant     := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                          IdFiscal         := Pai_DataSet.FieldByName('ID_FISCAL').AsInteger;
                                          VlrMovimento_ant := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                        end;

                                      3,13: // Saída por almoxarifado
                                        begin
                                          VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                          VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                        end;

                                      2,6: // Pedido de Venda ou Ordem Faturamento (PCP_TB_M_ORS)
                                         begin
                                           VlrBruto_ant     := Ite_DataSet.FieldByName('VLR_BRUTO').AsCurrency;
                                           PerDesconto_ant  := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                           VlrDesconto_ant  := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                           VlrMovimento_ant := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                         end;
                                      9: // Ordem de Serviço
                                        begin
                                          VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                          VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                        end;

                                      10: // Movimento de Estoque
                                        begin
                                          VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                          VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                        end;
                                      15: // Ordem de Produção de Bloco de Espuma
                                        begin
                                          VlrBruto_ant     := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                                          VlrMovimento_ant := EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency;
                                        end;
                                  end;

                                  Ite_DataSet.Next;

                                  if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                                     begin
                                       if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_SEQ_ITEM',
                                                   VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                               id_doc_ant, id_item_ant, id_seq_ant]),[]) or (int_tipo_item=9) then
                                          begin
                                           { if (int_tipo_item <>9) then
                                               begin  }
                                                  if origem_doc = 9 then // Se for Ordem de Serviço
                                                     begin
                                                       PecaCancelada := false;
                                                       if Ite_DataSet.FieldByName('cancelada').text <> '' then
                                                          begin
                                                            if Ite_DataSet.FieldByName('cancelada').AsBoolean = true then
                                                               begin
                                                                 PecaCancelada := true;
                                                                 if int_tipo_item<>9 then
                                                                    EST_CD_M_FEA.Delete
                                                                 else  // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS) e Ordem de Produção de Bloco de Espuma
                                                                   if (origem_doc <> 2) and (origem_doc <> 15)  then
                                                                      begin
                                                                        FatSaida_FeaEstCoj(origem_doc,StrToInt(id_doc_ant),IndexFea,IdTipoMovEst,id_seq_ant,id_item_ant,
                                                                        '',dataIteCoj,NumeroDoc,Pai_DataSet.FieldByName('id_almoxarifado').AsString,
                                                                           0,0,Pai_DataSet,EST_CD_M_FEA,BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,2,SM);
                                                                      end;
                                                               end;
                                                          end;
                                                     end;

                                                  // Se não for uma Ordem de saída ou  for uma Ordem de Saída e a peça não foi cancelada
                                                  if (int_tipo_item <>9) and ((origem_doc <> 9) or ((origem_doc = 9) and (PecaCancelada = false))) then
                                                      begin
                                                        VlrBruto      := VlrBruto_ant;
                                                        PerDesconto   := PerDesconto_ant;
                                                        VlrDesconto   := VlrDesconto_ant;
                                                        PerFrete      := PerFrete_ant;
                                                        VlrFrete      := VlrFrete_ant;
                                                        VlrMovimento  := VlrMovimento_ant;
                                                        NumLote       := '';
                                                        VlrCustoMedio := 0;

                                                        if origem_doc in [1,7] then // NF de saída
                                                           begin
                                                             if Ite_DataSet.FieldByName('fre_percentual').AsCurrency > 0 then
                                                                PerFrete := Ite_DataSet.FieldByName('fre_percentual').AsCurrency;
                                                             if Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency > 0 then
                                                                VlrFrete := Ite_DataSet.FieldByName('FRE_VALOR').AsCurrency;
                                                             if Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency > 0 then
                                                                PerDesconto := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                                                                VlrDesconto := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency > 0 then
                                                                VlrBruto := Ite_DataSet.FieldByName('VLR_MERCADORIA').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
                                                                VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                                           end;

                                                        if origem_doc in [3,13] then // Saída por almoxarifado
                                                           begin
                                                             VlrCustoMedio := 0;
                                                             if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                      id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                                      VlrCustoMedio) then
                                                                begin
                                                                  if VlrCustoMedio > 0 then
                                                                     begin
                                                                       if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                                          begin
                                                                             // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                                             // para saída de almoxarifado.
                                                                             VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                                             VlrCustoMedio,-2);
                                                                             VlrMovimento := VlrBruto;
                                                                          end;
                                                                     end;
                                                                end;
                                                           end;

                                                        if origem_doc in [2,6] then // Pedido de Venda ou Ordem Faturamento (PCP_TB_M_ORS)
                                                           begin
                                                             if Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency > 0 then
                                                                PerDesconto := Ite_DataSet.FieldByName('PER_DESCONTO').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                                                                VlrDesconto := Ite_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_BRUTO').AsCurrency > 0 then
                                                                VlrBruto := Ite_DataSet.FieldByName('VLR_BRUTO').AsCurrency;
                                                             if Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
                                                                VlrMovimento := Ite_DataSet.FieldByName('VLR_LIQUIDO').AsCurrency;
                                                           end;

                                                        if origem_doc = 9 then // Saída por almoxarifado
                                                           begin
                                                             VlrCustoMedio := 0;
                                                             if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                      id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                                      VlrCustoMedio) then
                                                                begin
                                                                  if VlrCustoMedio > 0 then
                                                                     begin
                                                                       if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                                          begin
                                                                             // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                                             // para saída de almoxarifado.
                                                                             VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                                             VlrCustoMedio,-2);
                                                                             VlrMovimento := VlrBruto;
                                                                          end;
                                                                     end;
                                                                end;
                                                           end;

                                                        if origem_doc = 10 then // Movimento de Estoque - Saida Normal
                                                           begin
                                                             VlrCustoMedio := 0;
                                                             if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                      id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                                      VlrCustoMedio) then
                                                                begin
                                                                  if VlrCustoMedio > 0 then
                                                                     begin
                                                                       if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                                          begin
                                                                             // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade
                                                                             // para saída de almoxarifado.
                                                                             VlrBruto     := roundTo(Ite_DataSet.FieldByName('QTDE').AsFloat *
                                                                                             VlrCustoMedio,-2);
                                                                             VlrMovimento := VlrBruto;
                                                                          end;
                                                                     end;
                                                                end;
                                                           end;

                                                        if origem_doc = 15 then // Ordem de Produção de Bloco de Espuma
                                                           begin
                                                             VlrCustoMedio := 0;
                                                             if FatBusCustoMedItemEst(Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                      id_item_ant,id_cor_ant,id_tamanho_ant,
                                                                                      BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                                                      VlrCustoMedio) then
                                                                begin
                                                                  if VlrCustoMedio > 0 then
                                                                     begin
                                                                       if Ite_DataSet.FieldByName('qtde_abater_sld').AsFloat > 0 then
                                                                          begin
                                                                             // Não é preciso atualizar o campo VLR_DESCONTO pois não tem necessidade

                                                                             VlrBruto     := roundTo(Ite_DataSet.FieldByName('qtde_abater_sld').AsFloat *
                                                                                             VlrCustoMedio,-2);
                                                                             VlrMovimento := VlrBruto;
                                                                          end;
                                                                     end;
                                                                end;
                                                           end;

                                                        EST_CD_M_FEA.edit;

                                                        if not (origem_doc in [10]) then
                                                           begin
                                                            if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                                                               begin
                                                                 EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsString := id_almoxarifado_Pai;
                                                               end;
                                                           end;
                                                        if Ite_DataSet.FieldByName('ID_COR').AsCurrency > 0 then
                                                           begin
                                                             EST_CD_M_FEA.FieldByName('ID_COR').AsCurrency  :=
                                                                      Ite_DataSet.FieldByName('ID_COR').AsCurrency;
                                                           end;
                                                        if Ite_DataSet.FieldByName('ID_TAMANHO').AsCurrency > 0 then
                                                           begin
                                                             EST_CD_M_FEA.FieldByName('ID_TAMANHO').AsCurrency  :=
                                                                      Ite_DataSet.FieldByName('ID_TAMANHO').AsCurrency;
                                                           end;
                                                        if not (origem_doc in [2,6,9,10,15]) then // Se for diferente de Ordem de Faturamento ,Pedido de Venda, Ordem de Serviço ou Mov. de Estoque, Ordem de Produção de Bloco de Espuma
                                                           begin
                                                            if trim(Ite_DataSet.FieldByName('NUM_LOTE').AsString) <> '' then // Se houve modificação no campo
                                                               begin
                                                                  EST_CD_M_FEA.FieldByName('NUM_LOTE').text :=
                                                                          Ite_DataSet.FieldByName('NUM_LOTE').text;
                                                               end;
                                                           end;
                                                        if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                                           begin
                                                             EST_CD_M_FEA.FieldByName('QTDE').AsFloat :=
                                                                (EST_CD_M_FEA.FieldByName('QTDE').AsFloat - qtde_ant) +
                                                                 Ite_DataSet.FieldByName('QTDE').AsFloat;
                                                           end;

                                                        if PerFrete <> PerFrete_ant then
                                                           EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := PerFrete;
                                                        if VlrFrete <> VlrFrete_ant then
                                                           EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := VlrFrete;
                                                        if PerDesconto <> PerDesconto_ant then
                                                           EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := PerDesconto;
                                                        if VlrDesconto <> VlrDesconto_ant then
                                                           EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := VlrDesconto;
                                                        if VlrBruto <> VlrBruto_ant then
                                                           EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := VlrBruto;
                                                        if VlrMovimento <> VlrMovimento_ant then
                                                           EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := VlrMovimento;

                                                        EST_CD_M_FEA.Post;

                                                        if origem_doc <> 2 then // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                           begin
                                                              FatSaida_FeaEstCoj(origem_doc,StrToInt(id_doc_ant),IndexFea,IdTipoMovEst,id_seq_ant,id_item_ant,
                                                               '',dataIteCoj,NumeroDoc,Pai_DataSet.FieldByName('id_almoxarifado').AsString,
                                                                  qtde_ant,Ite_DataSet.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FEA,BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,1,SM);
                                                           end;
                                                      end;
                                                  //////Itens Conjugados
                                                  { BUS_CD_C_ITE_COJ.First;
                                                   while not BUS_CD_C_ITE_COJ.EOF do
                                                     begin
                                                       if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_COJ_ITE',
                                                            VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                         id_doc_ant, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,id_item_ant]),[]) then
                                                         begin
                                                           EST_CD_M_FEA.Edit;

                                                           EST_CD_M_FEA.FieldByName('QTDE').AsFloat  :=
                                                                         (EST_CD_M_FEA.FieldByName('QTDE').AsFloat - BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsFloat*qtde_ant) +
                                                                          BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsFloat*Ite_DataSet.FieldByName('QTDE').AsFloat;

                                                           EST_CD_M_FEA.FieldByName('ID_COR').text           := BUS_CD_C_ITE_COJ.FieldByName('id_cor').text;
                                                           EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := BUS_CD_C_ITE_COJ.FieldByName('id_tamanho').text;
                                                           EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := 0;

                                                           if not (origem_doc in [10]) then
                                                             begin
                                                              if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                                                                 begin
                                                                   EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsString := id_almoxarifado_Pai;
                                                                 end;
                                                             end;

                                                           EST_CD_M_FEA.post;
                                                         end;
                                                       BUS_CD_C_ITE_COJ.Next;
                                                     end;   }
                                                    /////////FIM///////////////////////




                                          end;
                                     end
                                  else
                                     Ite_DataSet.Prior; // Retornará para o registro anterior já que o registro não foi modificado.
                               //end;
                          end;

                       { *****************
                         QUANDO HÁ DELEÇÃO
                         ***************** }

                       // Caso o item tenha sido excluído o sistema deverá excluir o registro da ficha de estoque.
                       if Ite_DataSet.UpdateStatus in [usDeleted] then // Se o registro está com status de Deleção
                          begin
                            if Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for item do tipo SERVIÇO.
                               begin
                                   if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_SEQ_ITEM',
                                                     VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                 Ite_DataSet.FieldByName(NomeCampo).AsString,
                                                                 Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                                 Ite_DataSet.FieldByName(NomeCampoSeq).AsString]),[]) then
                                      begin
                                        EST_CD_M_FEA.Delete;
                                      end;
                               end;

                           /////Itens Conjugados////////////
                          { BUS_CD_C_ITE_COJ.First;
                           while not BUS_CD_C_ITE_COJ.EOF do
                             begin
                               if EST_CD_M_FEA.Locate('ID_EMPRESA;'+NomeCampo+';ID_ITEM;ID_COJ_ITE;ID_COR;ID_TAMANHO',
                                    VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                 Ite_DataSet.FieldByName(NomeCampo).AsString , BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                 Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                 BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                 BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                 begin
                                  EST_CD_M_FEA.Delete;
                                 end;

                               BUS_CD_C_ITE_COJ.Next;
                             end; }
                            /////////FIM////////////////
                            ///
                            {FatSaida_FeaEstCoj(origem_doc,Ite_DataSet.FieldByName(NomeCampo).AsInteger,IndexFea,IdTipoMovEst,Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                     '',Pai_DataSet.FieldByName(DataDoc).AsDateTime,
                                                     dataIteCoj,NumeroDoc,Pai_DataSet.FieldByName('id_almoxarifado').AsString,
                                                       0,Ite_DataSet.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FEA,BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,2);}

                             // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                // e se for diferente de Ordem de Bloco de Espuma
                             if (origem_doc <> 2) and (origem_doc <> 15) then
                                begin
                                  FatSaida_FeaEstCoj(origem_doc,Ite_DataSet.FieldByName(NomeCampo).AsInteger,IndexFea,IdTipoMovEst,
                                                     Ite_DataSet.FieldByName(NomeCampoSeq).AsString,Ite_DataSet.FieldByName('ID_ITEM').AsString,
                                                     '',dataIteCoj,NumeroDoc,Pai_DataSet.FieldByName('id_almoxarifado').AsString,
                                                       0,Ite_DataSet.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FEA,BUS_CD_C_PAR_CTR,BUS_CD_C_PAR_MOD,2,SM);
                                end;
                          end;
                    //end;
                 Ite_DataSet.Next;
               end;
         // Inserido em 12/11/2021 por Maxsuel Victor
         if origem_doc = 15 then
            begin
              Ite_DataSet.Filtered   := false;
            end;
      end
   else
      begin
        if not EST_CD_M_FEA.IsEmpty then
           begin
             while not EST_CD_M_FEA.Eof do
                begin
                  EST_CD_M_FEA.delete;
                end;
           end;
      end;

   if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
           abort;

   EST_CD_M_FEA.Free;
   BUS_CD_C_ITE_COJ.Free;
end;

function FatEntrada_FesEst(origem_doc:integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; BUS_DP_DOC_ITENS,EST_DP_M_FES,
                         EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS: TDataSetProvider; NFCancelada: Boolean): String;
var
  EST_CD_M_FES, EST_CD_M_FES_ALM, EST_CD_M_LOT: TClientDataSet;
  FAT_CD_M_NFE_ITE, EST_CD_M_CTE_ITE, EST_CD_M_MAL_ITE, EST_CD_M_MET_ITE: TClientDataSet;
  BUS_CD_M_FAT_NFE_CUS,BUS_CD_C_CFO: TClientDataSet;
  Ite_DataSet: TDataSet;

  cdsTempIte: TClientDataSet;

  NomeCampo,NomeCampoSeq,NomeCampoQtde,NomeCampoAlm: String;
  DataDoc, NumeroDoc: String;
  Index: integer;

  Itens_Sel, Cores_Sel, Tam_Sel, Lotes_Sel: String;
  VlrCustoAnt, VlrCustoAtual: Currency;
  Id_Item, NumLote, Id_Cor_ant, Id_Tam_ant, Id_Cor_atual, id_tam_atual,cfop_atual: String;

  tipo_diferenca_ant,tipo_diferenca_atual: integer;

  Qtde_Ant,Qtde_Atual: Currency;

  AtualizaFesAlm, AtualizaLot: Boolean;

  AchouRegFes, AchouRegFesAlm, AchouRegLot: Boolean;
  dta_vencimento:TDateTime;
  id_empresa: String;

begin

   { TODO -oMaxsuel Victor -cCriação :
    Método criado em 09/04/2015
    - Este método terá a responsabilidade de realizar as ENTRADAS do estoque
      seja qual for a sua origem. }
   {
    origem_doc:
      0 - Por Nota fiscal de entrada
      4 - Por inventário
      5 - Por almoxarifado - Devolucao
      8 - Por Dev. de NF de Cliente
      11 - Movimento de Estoque - Entrada
      12 - Por Almoxarifado - Saida Transferencia
      14 - Entrada de Produto da Produção - SGQ
   }

   id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsString;

   case origem_doc of
      0,8:
        begin
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DTA_DOCUMENTO';
          NumeroDoc     := 'NUMERO';
          NomeCampoQtde := 'QTDE';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';
          Ite_DataSet   := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;

          BUS_CD_M_FAT_NFE_CUS := TClientDataSet.Create(nil);
        end;
      4:
        begin
          NomeCampoSeq  := 'ID_SEQ_ITEM';
          DataDoc       := 'DTA_CONTAGEM';
          NumeroDoc     := 'ID_CONTROLE';
          NomeCampoQtde := 'DIFERENCA';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';
          Ite_DataSet   := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_CTE_ITE')).NestedDataSet;
        end;
      5:
        begin
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DATA';
          NumeroDoc     := 'ID_MAL';
          NomeCampoQtde := 'QTDE';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;
        end;
      11:
        begin
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DATA';
          NumeroDoc     := 'ID_MET';
          NomeCampoQtde := 'QTDE';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MET_ITE')).NestedDataSet;
        end;
       12:
        begin
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DATA';
          NumeroDoc     := 'ID_MAL';
          NomeCampoQtde := 'QTDE';
          NomeCampoAlm  := 'ID_ALMOXARIFADO_DEST';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;
        end;
       14:
        begin
          NomeCampoSeq  := 'ID_EPP_ITE';
          DataDoc       := 'DTA_ENTRADA';
          NumeroDoc     := 'ID_EPP';
          NomeCampoQtde := 'QTDE';
          NomeCampoAlm  := 'ID_ALMOXARIFADO';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_EPP_ITE')).NestedDataSet;
        end;

   end;


   { Detectar qual com index irá trabalhar a busca de saldos dos itens }
   index := 7;

   if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
      begin
         SelecionarItens(origem_doc,index,Ite_DataSet,BUS_CD_C_PAR_CTR,itens_sel,cores_sel,tam_sel,lotes_sel);
      end
   else
      begin
        cdsTempIte := TClientDataSet.Create(nil);
        case origem_doc of
              0,8:
                begin
                  // Itens da nota fiscal
                  FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  FAT_CD_M_NFE_ITE.Close;
                  FAT_CD_M_NFE_ITE.Data :=
                           FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_FISCAL').text]));

                  cdsTempIte.Data := FAT_CD_M_NFE_ITE.Data;
                end;
              4:
                begin
                  // Itens da Contagem
                  EST_CD_M_CTE_ITE      := TClientDataSet.Create(nil);
                  EST_CD_M_CTE_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  EST_CD_M_CTE_ITE.Close;
                  EST_CD_M_CTE_ITE.Data :=
                           EST_CD_M_CTE_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_CONTROLE').text]));

                  cdsTempIte.Data := EST_CD_M_CTE_ITE.Data;
                end;
              5,12:
                begin
                  // Itens da devolução do almoxarifado
                  EST_CD_M_MAL_ITE := TClientDataSet.Create(nil);
                  EST_CD_M_MAL_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  EST_CD_M_MAL_ITE.Close;
                  EST_CD_M_MAL_ITE.Data :=
                           EST_CD_M_MAL_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_MAL').text]));

                  cdsTempIte.Data := EST_CD_M_MAL_ITE.Data;
                end;
               11:
                begin
                  // Movimento de Estoque - Entrada Normal
                  EST_CD_M_MET_ITE := TClientDataSet.Create(nil);
                  EST_CD_M_MET_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  EST_CD_M_MET_ITE.Close;
                  EST_CD_M_MET_ITE.Data :=
                           EST_CD_M_MET_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_MET').text]));

                  cdsTempIte.Data := EST_CD_M_MET_ITE.Data;
                end;
               // 14: Para o 14 não tem necessidade
           end;
        SelecionarItens(origem_doc,index,cdsTempIte,BUS_CD_C_PAR_CTR,itens_sel,cores_sel,tam_sel,lotes_sel);
      end;

   if (itens_sel <> '') then
       begin

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

           // Buscará todos os saldos dos itens do documento em questão
           EST_CD_M_FES := TClientDataSet.Create(nil);
           EST_CD_M_FES.SetProvider(EST_DP_M_FES);
           EST_CD_M_FES.Close;
           EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel, Tam_Sel]));

           AtualizaFesAlm := false;

           if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
              begin
                if not (origem_doc in [11]) then
                   begin
                      AtualizaFesAlm := true;

                      // Buscará todos os saldos do almoxarifados dos itens do documento em questão

                      EST_CD_M_FES_ALM := TClientDataSet.Create(nil);
                      EST_CD_M_FES_ALM.SetProvider(EST_DP_M_FES_ALM);
                      EST_CD_M_FES_ALM.close;
                      if Index = 7 then
                         EST_CD_M_FES_ALM.Data :=
                              EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Pai_DataSet.FieldByName(NomeCampoAlm).text]));

                      if Index = 4 then
                         EST_CD_M_FES_ALM.Data :=
                             EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel,Pai_DataSet.FieldByName(NomeCampoAlm).text]));

                      if Index = 5 then
                         EST_CD_M_FES_ALM.Data :=
                              EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Tam_Sel,Pai_DataSet.FieldByName(NomeCampoAlm).text]));

                      if Index = 6 then
                         EST_CD_M_FES_ALM.Data :=
                              EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName(NomeCampoAlm).text]));
                   end;
              end;

           AtualizaLot := false;
           if trim(Lotes_Sel) <> '' then
              begin
                 AtualizaLot := true;
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

                 // Buscará todos os saldos do almoxarifados dos itens do documento em questão
                 EST_CD_M_LOT := TClientDataSet.Create(nil);
                 EST_CD_M_LOT.SetProvider(EST_DP_M_LOT);
                 EST_CD_M_LOT.Close;
                 if Index = 7 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([12, id_empresa, Lotes_Sel,Itens_Sel,
                                                                    Pai_DataSet.FieldByName(NomeCampoAlm).text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([8, id_empresa,Lotes_Sel,Itens_Sel]));


                 if Index = 4 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([13, id_empresa,
                                                                    Lotes_Sel,Itens_Sel,Cores_Sel,
                                                                    Pai_DataSet.FieldByName(NomeCampoAlm).text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([9, id_empresa,Lotes_Sel,Itens_Sel,Cores_Sel]));

                 if Index = 5 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([14, id_empresa,
                                                                    Lotes_Sel,Itens_Sel,Tam_Sel,
                                                                    Pai_DataSet.FieldByName(NomeCampoAlm).text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([11, id_empresa,Lotes_Sel,Itens_Sel,Tam_Sel]));

                 if Index = 6 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([15, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName(NomeCampoAlm).text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([10, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel]));
              end;

          if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
             begin
                Ite_DataSet.First;
                while (not Ite_DataSet.Eof) and (not ((origem_doc=0) and (Ite_DataSet.FieldByName('QTDE').AsCurrency=0)))   do
                    begin
                      AchouRegFes :=  localizar_FES(Index, id_empresa, Ite_DataSet.FieldByName('ID_ITEM').text,
                                                  Ite_DataSet.FieldByName('ID_COR').text, Ite_DataSet.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

                      // Caso utiliza o almoxarifado
                      if AtualizaFesAlm then
                         begin
                           // Caso a tabela de saldo do produto por almoxarifado já exista
                           AchouRegFesAlm := localizar_FES_ALM(Index, id_empresa,
                                                                     Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                     Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                     Ite_DataSet.FieldByName('ID_COR').text,
                                                                     Ite_DataSet.FieldByName('ID_TAMANHO').text,
                                                                     EST_CD_M_FES_ALM);
                         end;


                      // Caso utiliza lote
                      if AtualizaLot then
                         begin
                          AchouRegLot := false;
                          if (trim(Ite_DataSet.FieldByName('NUM_LOTE').text) <> '') and
                             (trim(Ite_DataSet.FieldByName('NUM_LOTE').text) <> '0') then
                              begin
                                AchouRegLot :=  localizar_LOT(Index, id_empresa,
                                                              Ite_DataSet.FieldByName('ID_ITEM').text,
                                                              Ite_DataSet.FieldByName('NUM_LOTE').text,
                                                              Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                              Ite_DataSet.FieldByName('ID_COR').text,
                                                              Ite_DataSet.FieldByName('ID_TAMANHO').text,
                                                              BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                              EST_CD_M_LOT);
                              end;
                         end;

                      if AchouRegFes then
                         begin
                            Id_Item       := Ite_DataSet.FieldByName('ID_ITEM').text;
                            if not (origem_doc in [11,14]) then  //Não é Movimento de Estoque, Entrada por O.P
                               begin
                                 NumLote       := Ite_DataSet.FieldByName('NUM_LOTE').text;
                               end;
                            Id_Cor_ant    := Ite_DataSet.FieldByName('ID_COR').text;
                            Id_Tam_ant    := Ite_DataSet.FieldByName('ID_TAMANHO').text;
                            Qtde_Atual    := Ite_DataSet.FieldByName(NomeCampoQtde).AsCurrency;
                            VlrCustoAtual := 0;

                            if not (origem_doc in [5,12,11,14]) then // Diferente de Dev. por Almoxarifado, Movimento de Estoque e Entrada por O.P
                               VlrCustoAtual := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;


                            EST_CD_M_FES.edit;

                            { ******************
                              QUANDO HÁ INSERÇÃO
                              ****************** }
                            if Ite_DataSet.UpdateStatus in [usInserted] then
                               begin
                                  case origem_doc of
                                     0,8:  // Nota Fiscal de Entrada e Por Dev. de NF de Cliente
                                       begin
                                         EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime   := Date;
                                         if origem_doc = 0 then
                                            begin
                                               EST_CD_M_FES.FieldByName('vlr_custo_ult_compra').AsCurrency :=
                                                     VlrCustoAtual;
                                               EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                     FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);


                                               BUS_CD_C_CFO := TClientDataSet.Create(nil);
                                               BUS_CD_C_CFO.SetProvider(sm.CAD_DP_C_CFO);
                                               BUS_CD_C_CFO.Close;
                                               BUS_CD_C_CFO.Data :=
                                               BUS_CD_C_CFO.DataRequest(VarArrayOf([0,Ite_DataSet.FieldByName('ID_CFO').AsString]));

                                               if (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA10') or
                                                   (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA50') or
                                                   (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA60') then
                                                   EST_CD_M_FES.FieldByName('data_ult_compra').AsDateTime   := Date;



                                            end;
                                         EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                       end;
                                    4: // Por inventário
                                      begin
                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;
                                        EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency    :=
                                                    Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;

                                        if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                           begin
                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                            Qtde_Atual;
                                           end;

                                        if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                           begin
                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                    EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                           Qtde_Atual;
                                           end;
                                      end;
                                     11: //Movimento de Estoque (EST_FM_M_MET) Para  tipo mov. estoque "Entrada"
                                      begin
                                          EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                          EST_CD_M_FES.FieldByName('vlr_custo_ult_compra').AsCurrency :=
                                                     VlrCustoAtual;
                                          EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                      end;
                                   else
                                      begin
                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime   := Date;

                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                      end;
                                  end;

                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                  EST_CD_M_FES.Post;

                                  // Caso utiliza o almoxarifado
                                  if AtualizaFesAlm then
                                     begin
                                       EST_CD_M_FES_ALM.Edit;

                                       if origem_doc = 4 then // Por inventário
                                          begin
                                            if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                               begin
                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                Qtde_Atual;
                                               end;

                                            if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                               begin
                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                        EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                                Qtde_Atual;
                                               end;
                                          end
                                       else
                                          begin
                                            EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                          end;


                                       EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                             EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;
                                       EST_CD_M_FES_ALM.post;
                                     end;

                                  // Caso utiliza lote
                                  if AtualizaLot then
                                     begin
                                       if AchouRegLot then
                                          begin
                                             EST_CD_M_LOT.Edit;

                                             if origem_doc =0 then
                                                begin
                                                  EST_CD_M_LOT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                                             Ite_DataSet.FieldByName('DTA_VENCIMENTO').AsDateTime;
                                                end;

                                             if origem_doc = 4 then // Por inventário
                                                begin
                                                  if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                                     begin
                                                       EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                    EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                    Qtde_Atual;
                                                     end;

                                                  if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                                     begin
                                                       EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                              EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                              Qtde_Atual;
                                                     end;
                                                end
                                             else
                                                begin
                                                  EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                      EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                      Qtde_Atual;
                                                end;

                                             EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                               EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                  EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                             EST_CD_M_LOT.post;
                                          end;
                                     end;
                               end;


                            { *******************
                             QUANDO HÁ ALTERAÇÃO
                             ******************* }
                            if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                               begin
                                  if origem_doc=0 then
                                    begin
                                     dta_vencimento := Ite_DataSet.FieldByName('DTA_VENCIMENTO').AsDateTime;
                                     cfop_atual := Ite_DataSet.FieldByName('ID_CFO').AsString;
                                    end;
                                 Qtde_Ant := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                 id_cor_atual := id_cor_ant;
                                 id_tam_atual := id_tam_ant;

                                 if origem_doc = 4 then // Por inventário
                                    tipo_diferenca_ant := Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger;

                                 Ite_DataSet.Next;

                                   if origem_doc=0 then
                                    begin
                                       if (Ite_DataSet.FieldByName('DTA_VENCIMENTO').AsString <> '') then
                                          dta_vencimento := Ite_DataSet.FieldByName('DTA_VENCIMENTO').AsDateTime;
                                       if (Ite_DataSet.FieldByName('ID_CFO').AsString <> '') then
                                          cfop_atual := Ite_DataSet.FieldByName('ID_CFO').AsString;
                                    end;
                                 Qtde_Atual := Qtde_Ant;
                                 if Ite_DataSet.FieldByName('QTDE').AsCurrency > 0 then  // Se houve alteração no campo QTDE do registro alterado
                                    Qtde_Atual := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                 if not (origem_doc in [5,11,12]) then // Diferente de Dev. por Almoxarifado e Movimentacao de Estoque
                                    if Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency > 0 then  // Se houve alteração no campo VLR_CUSTO do registro alterado
                                       VlrCustoAtual := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;


                                 if origem_doc = 4 then // Por inventário
                                    begin
                                       tipo_diferenca_atual :=  tipo_diferenca_ant;
                                       if Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger > 0 then
                                          tipo_diferenca_atual := Ite_DataSet.FieldByName('TIPO_DIFERENCA').AsInteger;
                                    end;

                                 if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                                    begin

                                      if (Ite_DataSet.FieldByName('ID_COR').AsInteger  > 0)   then
                                          id_cor_atual := Ite_DataSet.FieldByName('ID_COR').text;
                                      if (Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0) then
                                          id_tam_atual := Ite_DataSet.FieldByName('ID_TAMANHO').text;


                                      if (Ite_DataSet.FieldByName('ID_COR').AsInteger  > 0) or      // Quer dizer que o campo foi alterado
                                         (Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0) then // Quer dizer que o campo foi alterado
                                          begin
                                            {  *****************************************
                                               Atualizará a tabela de saldo EST_TB_M_FES
                                               ***************************************** }
                                            // Volta para o registro origem
                                            Ite_DataSet.Prior;
                                            // Busca o saldo do registro origem
                                            AchouRegFes :=  localizar_FES(Index, id_empresa, Id_Item,
                                                                        Id_Cor_ant,Id_Tam_ant, EST_CD_M_FES);
                                            if AchouRegFes then
                                               begin
                                                  EST_CD_M_FES.edit;

                                                  if origem_doc = 4 then // Por inventário
                                                     begin
                                                       if tipo_diferenca_ant = 1 then
                                                          begin
                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                 Qtde_Ant);
                                                          end;

                                                       if tipo_diferenca_ant = 2 then
                                                          begin
                                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                 (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                  Qtde_Ant);
                                                          end;
                                                     end
                                                  else
                                                     begin
                                                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                           (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                           Qtde_Ant);
                                                     end;

                                                  if origem_doc = 0 then // NF de entrada
                                                     begin
                                                        FatAtuCustoMedItens(
                                                             EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                             EST_CD_M_FES.FieldByName('id_item').AsString,
                                                             EST_CD_M_FES.FieldByName('id_cor').AsString,
                                                             EST_CD_M_FES.FieldByName('id_tamanho').AsString,Pai_DataSet.FieldByName('id_fiscal').text);
                                                     end;

                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                      EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                  EST_CD_M_FES.Post;
                                               end;

                                            Ite_DataSet.Next;

                                            AchouRegFes :=  localizar_FES(Index, id_empresa, Id_Item,
                                                                        Id_Cor_atual,Id_Tam_atual,EST_CD_M_FES);
                                            if AchouRegFes then
                                               begin
                                                  EST_CD_M_FES.edit;

                                                  case origem_doc of
                                                     0,8:  // Nota Fiscal de Entrada e Por Dev. de NF de Cliente
                                                      begin
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime   := Date;
                                                        if origem_doc = 0 then
                                                           begin
                                                              EST_CD_M_FES.FieldByName('vlr_custo_ult_compra').AsCurrency :=
                                                                     Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;
                                                              EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                                    FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);

                                                              BUS_CD_C_CFO := TClientDataSet.Create(nil);
                                                              BUS_CD_C_CFO.SetProvider(sm.CAD_DP_C_CFO);
                                                              BUS_CD_C_CFO.Close;
                                                              BUS_CD_C_CFO.Data :=
                                                              BUS_CD_C_CFO.DataRequest(VarArrayOf([0,cfop_atual]));

                                                              if (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA10') or
                                                                 (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA50') or
                                                                 (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA60') then
                                                                 EST_CD_M_FES.FieldByName('data_ult_compra').AsDateTime   := Date;


                                                           end;
                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                                      end;
                                                    4: // Por inventário
                                                      begin

                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;
                                                        EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency    :=
                                                                    Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;

                                                        if tipo_diferenca_atual = 1 then
                                                           begin
                                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                            Qtde_Atual;
                                                           end;

                                                        if tipo_diferenca_atual = 2 then
                                                           begin
                                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                    EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                                           Qtde_Atual;
                                                           end;
                                                      end;
                                                   else
                                                      begin
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                                      end;
                                                  end;

                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                  EST_CD_M_FES.Post;
                                               end;

                                            { 222222222222222222222222222222222222222222222
                                              Atualizará a tabela de saldo EST_TB_M_FES_ALM
                                              222222222222222222222222222222222222222222222}

                                            // Caso utiliza o almoxarifado
                                            if AtualizaFesAlm then
                                               begin
                                                  // Volta para o registro origem
                                                  Ite_DataSet.Prior;
                                                  // Busca o saldo do registro origem
                                                  AchouRegFesAlm :=  localizar_FES_ALM(Index, id_empresa,
                                                                                       Id_Item,
                                                                                       Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                                       Id_Cor_ant,Id_Tam_ant,EST_CD_M_FES_ALM);

                                                  if AchouRegFesAlm then
                                                     begin
                                                       EST_CD_M_FES_ALM.edit;

                                                       if origem_doc = 4 then // Por inventário
                                                          begin
                                                            if tipo_diferenca_ant = 1 then
                                                               begin
                                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                     (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                      Qtde_Ant);
                                                               end;

                                                            if tipo_diferenca_ant = 2 then
                                                               begin
                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                      (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                       Qtde_Ant);
                                                               end;
                                                          end
                                                       else
                                                          begin
                                                            EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                Qtde_Ant);
                                                          end;

                                                       EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                           EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                               EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                       EST_CD_M_FES_ALM.Post;
                                                     end;

                                                  Ite_DataSet.Next;
                                                  // Irá atualizar o saldo do item de acordo com o registro alterado

                                                  AchouRegFesAlm :=  localizar_FES_ALM(Index, id_empresa,
                                                                                       Id_Item,
                                                                                       Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                                       Id_Cor_atual,Id_Tam_atual,EST_CD_M_FES_ALM);
                                                  if AchouRegFesAlm then
                                                     begin
                                                       EST_CD_M_FES_ALM.edit;

                                                       case origem_doc of
                                                          4: // Por inventário
                                                            begin

                                                              if tipo_diferenca_atual = 1 then
                                                                 begin
                                                                   EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                           EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                                  Qtde_Atual;
                                                                 end;

                                                              if tipo_diferenca_atual = 2 then
                                                                 begin
                                                                   EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                          EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                                                 Qtde_Atual;
                                                                 end;
                                                            end;
                                                         else
                                                            begin
                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                                            end;
                                                        end;

                                                        EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                       EST_CD_M_FES_ALM.Post;
                                                     end;
                                               end;

                                            { 33333333333333333333333333333333333333333
                                              Atualizará a tabela de saldo EST_TB_M_LOT
                                              33333333333333333333333333333333333333333 }
                                            if AtualizaLot then
                                               begin
                                                  // Volta para o registro origem
                                                  if (trim(NumLote) <> '') and
                                                     (trim(NumLote) <> '0') then
                                                      begin
                                                        Ite_DataSet.Prior;
                                                        // Busca o saldo do registro origem

                                                        AchouRegLot :=  localizar_LOT(Index,  id_empresa,
                                                                                      Id_Item,
                                                                                      NumLote,
                                                                                      Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                                      Id_Cor_ant,id_tam_ant,
                                                                                      BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                                      EST_CD_M_LOT);
                                                        if AchouRegLot then
                                                           begin
                                                             EST_CD_M_LOT.delete;
                                                           end;

                                                        Ite_DataSet.Next;
                                                        // Irá atualizar o saldo do item de acordo com o registro alterado
                                                        AchouRegLot :=  localizar_LOT(Index,  id_empresa,
                                                                                      Id_Item,
                                                                                      NumLote,
                                                                                      Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                                      Id_Cor_atual,Id_Tam_atual,
                                                                                      BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                                      EST_CD_M_LOT);
                                                        if AchouRegLot then
                                                           begin
                                                              EST_CD_M_LOT.Edit;
                                                              if origem_doc=0 then
                                                                begin
                                                                  EST_CD_M_LOT.FieldByName('DTA_VENCIMENTO').AsDateTime := dta_vencimento;
                                                                end;
                                                              case origem_doc of
                                                                4: // Por inventário
                                                                  begin

                                                                    if tipo_diferenca_atual = 1 then
                                                                       begin
                                                                         EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                 EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                                        Qtde_Atual;
                                                                       end;

                                                                    if tipo_diferenca_atual = 2 then
                                                                       begin
                                                                         EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                                EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                                                       Qtde_Atual;
                                                                       end;
                                                                  end;
                                                               else
                                                                  begin
                                                                    EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                        EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency + Qtde_Atual;
                                                                  end;
                                                              end;

                                                              EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                     EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                           EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                              EST_CD_M_LOT.post;
                                                           end;
                                                      end;
                                               end;
                                          end
                                      else
                                          begin
                                            if Ite_DataSet.FieldByName('QTDE').AsCurrency > 0 then // Quer dizer que o campo foi alterado
                                               begin
                                                  {  11111111111111111111111111111111111111111
                                                     Atualizará a tabela de saldo EST_TB_M_FES
                                                     11111111111111111111111111111111111111111 }
                                                  EST_CD_M_FES.edit;

                                                  case origem_doc of
                                                     0,8:  // Nota Fiscal de Entrada e Por Dev. de NF de Cliente
                                                      begin
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime   := Date;
                                                        if origem_doc = 0 then
                                                           begin
                                                              EST_CD_M_FES.FieldByName('vlr_custo_ult_compra').AsCurrency :=
                                                                     Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;

                                                              BUS_CD_C_CFO := TClientDataSet.Create(nil);
                                                              BUS_CD_C_CFO.SetProvider(sm.CAD_DP_C_CFO);
                                                              BUS_CD_C_CFO.Close;
                                                              BUS_CD_C_CFO.Data :=
                                                              BUS_CD_C_CFO.DataRequest(VarArrayOf([0,cfop_atual]));

                                                              if (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA10') or
                                                                 (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA50') or
                                                                 (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA60') then
                                                                 EST_CD_M_FES.FieldByName('data_ult_compra').AsDateTime   := Date;

                                                           end;
                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                            (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                           Qtde_Ant) + Qtde_Atual;
                                                      end;
                                                    4: // Por inventário
                                                      begin
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;
                                                        EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency    :=
                                                                    Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;

                                                        if tipo_diferenca_atual = 1 then
                                                           begin
                                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                 (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency  -
                                                                   Qtde_Ant) + Qtde_Atual;
                                                           end;

                                                        if tipo_diferenca_atual = 2 then
                                                           begin
                                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                    (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                      Qtde_Ant) + Qtde_Atual;
                                                           end;
                                                      end;
                                                   else
                                                      begin
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime   := Date;

                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                            (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                      Qtde_Ant) + Qtde_Atual;
                                                      end;
                                                  end;

                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;


                                                  if origem_doc = 0 then // Nota Fiscal de entrada
                                                     begin
                                                       EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency  :=
                                                              FatAtuCustoMedItens(
                                                                   EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                                   EST_CD_M_FES.FieldByName('id_item').AsString,
                                                                   EST_CD_M_FES.FieldByName('id_cor').AsString,
                                                                   EST_CD_M_FES.FieldByName('id_tamanho').AsString,Pai_DataSet.FieldByName('id_fiscal').text);

                                                       EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                                    FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);

                                                     end;

                                                  EST_CD_M_FES.Post;


                                                 {  22222222222222222222222222222222222222222
                                                    Atualizará a tabela de saldo EST_TB_M_FES_ALM
                                                    222222222222222222222222222222222222222222 }
                                                 if AtualizaFesAlm then
                                                    begin
                                                       EST_CD_M_FES_ALM.edit;

                                                       case origem_doc of
                                                          4: // Por inventário
                                                            begin
                                                              if tipo_diferenca_atual = 1 then
                                                                 begin
                                                                   EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                       (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency  -
                                                                         Qtde_Ant) + Qtde_Atual;
                                                                 end;

                                                              if tipo_diferenca_atual = 2 then
                                                                 begin
                                                                   EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                          (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                            Qtde_Ant) + Qtde_Atual;
                                                                 end;
                                                            end;
                                                          else
                                                             begin
                                                               EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                   (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                            Qtde_Ant) + Qtde_Atual;
                                                             end;
                                                       end;

                                                       EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                       EST_CD_M_FES_ALM.Post;
                                                    end;


                                                {  3333333333333333333333333333333333333333333
                                                   Atualizará a tabela de saldo EST_TB_M_LOT
                                                   3333333333333333333333333333333333333333333 }
                                                if AtualizaLot then
                                                   begin
                                                     if (trim(NumLote) <> '') and
                                                        (trim(NumLote) <> '0') then
                                                         begin
                                                            if AchouRegLot then
                                                               begin
                                                                  EST_CD_M_LOT.edit;
                                                                  if origem_doc=0 then
                                                                    begin
                                                                     EST_CD_M_LOT.FieldByName('DTA_VENCIMENTO').AsDateTime := dta_vencimento;
                                                                   end;

                                                                  case origem_doc of
                                                                      4: // Por inventário
                                                                        begin
                                                                          if tipo_diferenca_atual = 1 then
                                                                             begin
                                                                               EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                   (EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency  -
                                                                                     Qtde_Ant) + Qtde_Atual;
                                                                             end;

                                                                          if tipo_diferenca_atual = 2 then
                                                                             begin
                                                                               EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                                      (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                                        Qtde_Ant) + Qtde_Atual;
                                                                             end;
                                                                        end;
                                                                      else
                                                                         begin
                                                                           EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                               (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency  -
                                                                                        Qtde_Ant) + Qtde_Atual;
                                                                         end;
                                                                  end;

                                                                  EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                          EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                          EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                  EST_CD_M_LOT.Post;
                                                               end;
                                                         end;
                                                   end;
                                               end
                                            else
                                               begin
                                                 if Ite_DataSet.FieldByName('VLR_UNITARIO').AsCurrency > 0 then // Quer dizer que o campo foi alterado
                                                    begin
                                                      if origem_doc = 0 then
                                                         begin
                                                           EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                              EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency -
                                                              Qtde_Atual;

                                                           EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                                 FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);

                                                           EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                              EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency +
                                                              Qtde_Atual;

                                                           BUS_CD_C_CFO := TClientDataSet.Create(nil);
                                                           BUS_CD_C_CFO.SetProvider(sm.CAD_DP_C_CFO);
                                                           BUS_CD_C_CFO.Close;
                                                           BUS_CD_C_CFO.Data :=
                                                           BUS_CD_C_CFO.DataRequest(VarArrayOf([0,cfop_atual]));

                                                           if (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA10') or
                                                             (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA50') or
                                                             (trim(BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString) = 'EA60') then
                                                             EST_CD_M_FES.FieldByName('data_ult_compra').AsDateTime   := Date;
                                                         end;
                                                    end;
                                               end;
                                          end;
                                    end;
                               end;


                            { *******************
                              QUANDO HÁ DELEÇÃO
                              ******************* }
                            if Ite_DataSet.UpdateStatus in [usDeleted] then // Se o registro foi deletado.
                               begin
                                  { *****************************************
                                    Atualizará a tabela de saldo EST_TB_M_FES
                                    ***************************************** }
                                  EST_CD_M_FES.Edit;

                                  case origem_doc of // Por Nota Fiscal de Entrada e Por Dev. de NF de Cliente
                                     0,8:
                                      begin
                                        if origem_doc = 0 then
                                           begin
                                              BUS_CD_M_FAT_NFE_CUS.SetProvider(BUS_DP_M_FAT_NFE_CUS);
                                              BUS_CD_M_FAT_NFE_CUS.Close;
                                              BUS_CD_M_FAT_NFE_CUS.Data :=
                                                          BUS_CD_M_FAT_NFE_CUS.DataRequest(
                                                               VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').text,
                                                                           Pai_DataSet.FieldByName('ID_FISCAL').text,
                                                                           ''''+Ite_DataSet.FieldByName('ID_ITEM').text+'''',
                                                                           ''''+Ite_DataSet.FieldByName('ID_COR').text+'''',
                                                                           ''''+Ite_DataSet.FieldByName('ID_TAMANHO').text+'''']));
                                              EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsFloat :=
                                                             BUS_CD_M_FAT_NFE_CUS.FieldByName('VLR_CUSTO_MEDIO').AsFloat;
                                              BUS_CD_M_FAT_NFE_CUS.Close;
                                           end;

                                        EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                           (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                Qtde_Atual);
                                      end;

                                     4: // Por inventário
                                      begin
                                        if tipo_diferenca_atual = 1 then
                                           begin
                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                 (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                  Qtde_Atual);
                                           end;

                                        if tipo_diferenca_atual = 2 then
                                           begin
                                              EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                  (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                   Qtde_Atual);
                                           end;
                                      end;
                                  else
                                     begin
                                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                           (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                           Qtde_Atual);
                                     end;
                                  end;

                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                      EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                  EST_CD_M_FES.post;


                                  if AtualizaFesAlm then
                                     begin
                                       if AchouRegFesAlm then
                                          begin
                                            EST_CD_M_FES_ALM.Edit;

                                            if origem_doc = 4 then // Por inventário
                                               begin
                                                  if tipo_diferenca_atual = 1 then
                                                     begin
                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                           (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                            Qtde_Atual);
                                                     end;

                                                  if tipo_diferenca_atual = 2 then
                                                     begin
                                                        EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                            (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                             Qtde_Atual);
                                                     end;
                                               end
                                            else
                                               begin
                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                     (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                     Qtde_Atual);
                                               end;

                                            EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                            EST_CD_M_FES_ALM.Post;
                                          end;
                                     end;
                                  if AtualizaLot then
                                     begin
                                        if (trim(NumLote) <> '') and
                                           (trim(NumLote) <> '0') then
                                            begin
                                              if AchouRegLot then
                                                 begin
                                                    EST_CD_M_LOT.Edit;

                                                    if origem_doc = 4 then // Por inventário
                                                       begin
                                                          if tipo_diferenca_atual = 1 then
                                                             begin
                                                               EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                   (EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                    Qtde_Atual);
                                                             end;

                                                          if tipo_diferenca_atual = 2 then
                                                             begin
                                                                EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                                    (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                     Qtde_Atual);
                                                             end;
                                                       end
                                                    else
                                                       begin
                                                         EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                             (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                             Qtde_Atual);
                                                       end;
                                                    EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                          EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                 EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                    EST_CD_M_LOT.Post;
                                                 end;
                                            end;
                                     end;
                               end;
                         end;
                       Ite_DataSet.Next;
                    end;
             end
          else
             begin
                cdsTempIte.First;
                while ((not cdsTempIte.eof)  and (not ((origem_doc=0) and (cdsTempIte.FieldByName('QTDE').AsCurrency=0))))  do
                   begin
                      AchouRegFes :=  localizar_FES(Index, id_empresa, cdsTempIte.FieldByName('ID_ITEM').text,
                                                  cdsTempIte.FieldByName('ID_COR').text,
                                                  cdsTempIte.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

                      // Caso utiliza o almoxarifado
                      if AtualizaFesAlm then
                         begin
                           // Caso a tabela de saldo do produto por almoxarifado já exista
                           AchouRegFesAlm := localizar_FES_ALM(Index, id_empresa,
                                                                     cdsTempIte.FieldByName('ID_ITEM').text,
                                                                     Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                                     cdsTempIte.FieldByName('ID_COR').text,
                                                                     cdsTempIte.FieldByName('ID_TAMANHO').text,
                                                                     EST_CD_M_FES_ALM);
                         end;


                      // Caso utiliza lote
                      if AtualizaLot then
                         begin
                          AchouRegLot := false;
                          if (trim(cdsTempIte.FieldByName('NUM_LOTE').text) <> '') and
                             (trim(cdsTempIte.FieldByName('NUM_LOTE').text) <> '0') then
                              begin
                                AchouRegLot :=  localizar_LOT(Index, id_empresa,
                                                              cdsTempIte.FieldByName('ID_ITEM').text,
                                                              cdsTempIte.FieldByName('NUM_LOTE').text,
                                                              Pai_DataSet.FieldByName(NomeCampoAlm).text,
                                                              cdsTempIte.FieldByName('ID_COR').text,
                                                              cdsTempIte.FieldByName('ID_TAMANHO').text,
                                                              BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                              EST_CD_M_LOT);
                              end;
                         end;

                      if AchouRegFes then
                         begin
                           Qtde_Atual := cdsTempIte.FieldByName('QTDE').AsCurrency;

                           {  *****************************************
                              Atualizará a tabela de saldo EST_TB_M_FES
                              ***************************************** }
                            EST_CD_M_FES.Edit;


                            case origem_doc of
                                 0,8: // Por Nota Fiscal de Entrada e Por Dev. de NF de Cliente
                                  begin
                                    if origem_doc = 0 then
                                       begin
                                         { BUS_CD_M_FAT_NFE_CUS.SetProvider(BUS_DP_M_FAT_NFE_CUS);
                                          BUS_CD_M_FAT_NFE_CUS.Close;
                                          BUS_CD_M_FAT_NFE_CUS.Data :=
                                                      BUS_CD_M_FAT_NFE_CUS.DataRequest(
                                                           VarArrayOf([id_empresa,
                                                                       Pai_DataSet.FieldByName('ID_FISCAL').text,
                                                                       ''''+cdsTempIte.FieldByName('ID_ITEM').text+'''',
                                                                       ''''+cdsTempIte.FieldByName('ID_COR').text+'''',
                                                                       ''''+cdsTempIte.FieldByName('ID_TAMANHO').text+'''']));
                                          EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsFloat :=
                                                         BUS_CD_M_FAT_NFE_CUS.FieldByName('VLR_CUSTO_MEDIO').AsFloat;
                                          BUS_CD_M_FAT_NFE_CUS.Close;}

                                          EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency :=
                                                FatAtuCustoMedItens(EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                     EST_CD_M_FES.FieldByName('id_item').AsString,
                                                     EST_CD_M_FES.FieldByName('id_cor').AsString,
                                                     EST_CD_M_FES.FieldByName('id_tamanho').AsString,
                                                     Pai_DataSet.FieldByName('id_fiscal').text);

                                       end;

                                    EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                       (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                            Qtde_Atual);
                                  end;

                                 4: // Por inventário
                                  begin
                                    if tipo_diferenca_atual = 1 then
                                       begin
                                         EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                             (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                              Qtde_Atual);
                                       end;

                                    if tipo_diferenca_atual = 2 then
                                       begin
                                          EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                              (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                               Qtde_Atual);
                                       end;
                                  end;
                            else
                               begin
                                 EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                       (EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                       Qtde_Atual);
                               end;
                            end;

                            EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                            EST_CD_M_FES.post;

                            if AtualizaFesAlm then
                               begin
                                 if AchouRegFesAlm then
                                    begin
                                      EST_CD_M_FES_ALM.Edit;

                                      if origem_doc = 4 then // Por inventário
                                         begin
                                            if tipo_diferenca_atual = 1 then
                                               begin
                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                     (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                      Qtde_Atual);
                                               end;

                                            if tipo_diferenca_atual = 2 then
                                               begin
                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                      (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                       Qtde_Atual);
                                               end;
                                         end
                                      else
                                         begin
                                           EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                               (EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                               Qtde_Atual);
                                         end;

                                      EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                          EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                               EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                      EST_CD_M_FES_ALM.Post;
                                    end;
                               end;
                            if AtualizaLot then
                               begin
                                  if AchouRegLot then
                                     begin
                                        EST_CD_M_LOT.Edit;

                                        if origem_doc = 4 then // Por inventário
                                           begin
                                              if tipo_diferenca_atual = 1 then
                                                 begin
                                                   EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                       (EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -
                                                        Qtde_Atual);
                                                 end;

                                              if tipo_diferenca_atual = 2 then
                                                 begin
                                                    EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                        (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                         Qtde_Atual);
                                                 end;
                                           end
                                        else
                                           begin
                                             EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                 (EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                 Qtde_Atual);
                                           end;

                                        EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                              EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                        EST_CD_M_LOT.Post;
                                     end;
                               end;
                         end;
                      cdsTempIte.Next;
                   end;
             end;
       end;

    if EST_CD_M_FES <> nil then
       if not EST_CD_M_FES.IsEmpty then
          if not (EST_CD_M_FES.ApplyUpdates(0) = 0) then
                  abort;

    if EST_CD_M_FES_ALM <> nil then
       if not EST_CD_M_FES_ALM.IsEmpty then
          if not (EST_CD_M_FES_ALM.ApplyUpdates(0) = 0) then
                  abort;

    if EST_CD_M_LOT <> nil then
       if not EST_CD_M_LOT.IsEmpty then
          if not (EST_CD_M_LOT.ApplyUpdates(0) = 0) then
                  abort;

    EST_CD_M_FES.Free;
    EST_CD_M_FES_ALM.Free;
    EST_CD_M_LOT.Free;
    FAT_CD_M_NFE_ITE.Free;
    EST_CD_M_MAL_ITE.Free;
    BUS_CD_M_FAT_NFE_CUS.Free;
    BUS_CD_C_CFO.Free;
    cdsTempIte.Free;
end;

procedure FatAtuDocFea(index,id_empresa,id_doc, nro_documento: integer; CAD_DP_C_TME,EST_DP_M_FEA : TDataSetProvider);
var
   EST_CD_M_FEA: TClientDataSet;
begin


  { Filtros do BUS_CD_M_FEA:
    index 0, Empresa, Item               id_item
    index 1, Empresa, Pedido             id_pedido
    index 2, Empresa, Nota fiscal        id_fiscal
    index 3, Empresa, Mov. Almoxarifado  id_mal
    index 4, NÃO PRECISA POIS A CONTAGEM NÃO SE ALTERA MOVIMENTO}

   EST_CD_M_FEA := TClientDataSet.Create(nil);
   EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
   EST_CD_M_FEA.Close;
   EST_CD_M_FEA.Data :=
           EST_CD_M_FEA.DataRequest(VarArrayOf([Index, id_empresa, id_doc]));

   EST_CD_M_FEA.First;
   while not EST_CD_M_FEA.Eof do
      begin
        EST_CD_M_FEA.Edit;
        EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger := nro_documento;
        EST_CD_M_FEA.Post;
        EST_CD_M_FEA.Next;
      end;

   if EST_CD_M_FEA.ChangeCount > 0 then
      if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
              abort;

   EST_CD_M_FEA.Free;
end;



function FatSaida_FesEst(origem_doc: integer;
                         Pai_DataSet: TCustomClientDataSet;
                         BUS_CD_C_PAR_CTR: TClientDataSet; BUS_DP_DOC_ITENS,EST_DP_M_FES,
                         EST_DP_M_FES_ALM,EST_DP_M_LOT: TDataSetProvider; NFCancelada: Boolean): String;

var
  EST_CD_M_FES,
  EST_CD_M_FES_ALM, EST_CD_M_LOT: TClientDataSet;
  FAT_CD_M_NFE_ITE, FAT_CD_M_PED_ITE, EST_CD_M_MAL_ITE, OFI_CD_M_ORV_ITE,EST_CD_M_MET_ITE,
  PCP_CD_M_ORS_ITE, PCP_CD_M_OPB_OBL, BUS_CD_C_ITE_COJ: TClientDataSet;
  Ite_DataSet: TDataSet;

  cdsTempIte: TClientDataSet;

  NomeCampo,NomeCampoSeq: String;
  DataDoc, NumeroDoc: String;
  Index: integer;

  Itens_Sel, Cores_Sel, Tam_Sel, Lotes_Sel: String;
  Id_Item, Id_Cor_ant, Id_Tam_ant, Id_Cor_atual, id_tam_atual: String;
  NumLote: String;
  int_tipo_item: Integer;
  qtde:Currency;

  Qtde_Ant,Qtde_Atual: Currency;//Extended;

  AtualizaFesAlm, AtualizaLot: Boolean;

  AchouRegFes, AchouRegFesAlm, AchouRegLot: Boolean;
  OrdServCanc,IteOrdServCanc, PedVendaCanc, PedVendaReprov: Boolean;
  id_empresa: String;

  VlrCustoAnt, VlrCustoAtual: Currency;

  OrvStatusIteAlterado,OrvGarantia:Boolean;


begin

   { TODO -oMaxsuel -cCriação :
     Método criado por Maxsuel Victor em 26/02/2015
     - Este método terá a responsabilidade de realizar as SAÍDAS do estoque
       seja qual for a sua origem. }
   {
    origem_doc:
      1 - Por Nota fiscal de saída
      2 - Por Ordem de saída
      3 - Por almoxarifado - Saída
      6 - Por Pedido de Venda
      7 - Por Dev. de NF de Fornecedor
      9 - Por Ordem de Serviço
      10 - Por Movimento de Estoque - Saida Normal
      15 - Por Ordem de Produção de Bloco de Espuma
   }
   // SM := TSM.Create(nil);
   id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsString;

   case origem_doc of
      1,7:
        begin
          NomeCampoSeq  := 'ID_SEQUENCIA';
          DataDoc       := 'DTA_DOCUMENTO';
          NumeroDoc     := 'NUMERO';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;
        end;
      2:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'dta_emissao';
          NumeroDoc    := 'ID_ORS';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_ORS_ICO')).NestedDataSet;
        end;
      3,13:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MAL';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;
        end;
      6:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'dta_pedido';
          NumeroDoc    := 'ID_PEDIDO';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;
        end;
      9:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'dta_requisicao';
          NumeroDoc    := 'ID_ORDEM';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;
        end;
      10:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DATA';
          NumeroDoc    := 'ID_MET';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MET_ITE')).NestedDataSet;
        end;
      15:
        begin
          NomeCampoSeq := 'ID_SEQUENCIA';
          DataDoc      := 'DTA_MISSAO';
          NumeroDoc    := 'ID_OPB';
          Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_OPB_OBL')).NestedDataSet;

          Ite_DataSet.Filtered   := true;
          Ite_DataSet.Filter := ' qtde_abater_sld > 0 ';

        end;

   end;


   { Detectar com qual index irá trabalhar a busca de saldos dos itens }
   index := 7;

   PedVendaCanc   := false;
   PedVendaReprov := false;
   OrvGarantia :=false;
   if origem_doc = 6 then  // Se for Pedido de venda
      begin
        if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
            begin
              if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
                 begin
                   Pai_DataSet.Next;
                   if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                      begin
                        if Pai_DataSet.FieldByName('SITUACAO').text <> '' then
                           if Pai_DataSet.FieldByName('SITUACAO').AsInteger = 4 then
                              PedVendaCanc := true;

                        if Pai_DataSet.FieldByName('SITUACAO_APROVACAO').text <> '' then
                           if Pai_DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 2 then
                              PedVendaReprov := true;
                      end;
                 end;
              Pai_DataSet.Prior; // Volta para o registro anterior.
            end;
      end;

   if origem_doc = 7 then  //Se for devolução do fornecedor
      begin
         if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
            begin
              if Pai_DataSet.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                 OrvGarantia := true;
            end;
      end;


   if origem_doc = 9 then  // Se for Ordem de Serviço
      begin
        if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
            begin
              if Pai_DataSet.FieldByName('INT_TIPO_OS').AsInteger = 1 then
                 OrvGarantia := true;

              if Pai_DataSet.UpdateStatus in [usUnmodified] then // Se o registro Pai teve modificações
                 begin
                   Pai_DataSet.Next;

                   if Pai_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                      begin
                        if Pai_DataSet.FieldByName('STATUS').text <> '' then
                           if Pai_DataSet.FieldByName('STATUS').AsInteger = 4 then
                              OrdServCanc := true;
                      end;
                 end;
              Pai_DataSet.Prior; // Volta para o registro anterior.
            end;
      end;

   if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) and (OrdServCanc = false) and (PedVendaCanc = false) and (PedVendaReprov = false) then
      begin
         SelecionarItens(origem_doc,index,Ite_DataSet,BUS_CD_C_PAR_CTR,itens_sel,cores_sel,tam_sel,lotes_sel);
      end
   else
      begin
        cdsTempIte := TClientDataSet.Create(nil);
        case origem_doc of
              1,7:
                begin
                  // Itens da nota fiscal
                  FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  FAT_CD_M_NFE_ITE.Close;
                  FAT_CD_M_NFE_ITE.Data :=
                           FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_FISCAL').text]));
                  cdsTempIte.Data := FAT_CD_M_NFE_ITE.Data;
                end;
              2:
                begin
                  // Itens da Ordem de Faturamento (PCP_TB_M_ORS)
                  PCP_CD_M_ORS_ITE := TClientDataSet.Create(nil);
                  PCP_CD_M_ORS_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  PCP_CD_M_ORS_ITE.Close;
                  PCP_CD_M_ORS_ITE.Data :=
                           PCP_CD_M_ORS_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_ORS').text]));
                  cdsTempIte.Data := PCP_CD_M_ORS_ITE.Data;
                end;
              3,13:
                begin
                  // Itens da saída do almoxarifado
                  EST_CD_M_MAL_ITE := TClientDataSet.Create(nil);
                  EST_CD_M_MAL_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  EST_CD_M_MAL_ITE.Close;
                  EST_CD_M_MAL_ITE.Data :=
                           EST_CD_M_MAL_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_MAL').text]));
                  cdsTempIte.Data := EST_CD_M_MAL_ITE.Data;
                end;
              6:
                begin
                   // Itens do Pedido de Venda
                  FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_PED_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  FAT_CD_M_PED_ITE.Close;
                  FAT_CD_M_PED_ITE.Data :=
                           FAT_CD_M_PED_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_PEDIDO').text]));

                  cdsTempIte.Data := FAT_CD_M_PED_ITE.Data;
                end;
              9:
                begin
                   // Itens da Ordem de Serviço
                  OFI_CD_M_ORV_ITE := TClientDataSet.Create(nil);
                  OFI_CD_M_ORV_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  OFI_CD_M_ORV_ITE.Close;
                  OFI_CD_M_ORV_ITE.Data :=
                           OFI_CD_M_ORV_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_ORDEM').text]));
                  cdsTempIte.Data := OFI_CD_M_ORV_ITE.Data;
                end;
              10:
                begin
                  // Itens do Movimento de Estoque
                  EST_CD_M_MET_ITE := TClientDataSet.Create(nil);
                  EST_CD_M_MET_ITE.SetProvider(BUS_DP_DOC_ITENS);
                  EST_CD_M_MET_ITE.Close;
                  EST_CD_M_MET_ITE.Data :=
                           EST_CD_M_MET_ITE.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_MET').text]));
                  cdsTempIte.Data := EST_CD_M_MET_ITE.Data;
                end;
              15:
                begin
                  // Itens da Ordem de Produção de Bloco de Espuma
                  PCP_CD_M_OPB_OBL := TClientDataSet.Create(nil);
                  PCP_CD_M_OPB_OBL.SetProvider(BUS_DP_DOC_ITENS);
                  PCP_CD_M_OPB_OBL.Close;
                  PCP_CD_M_OPB_OBL.Data :=
                           PCP_CD_M_OPB_OBL.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_OPB').text]));
                  cdsTempIte.Data := PCP_CD_M_OPB_OBL.Data;
                end;

           end;
        SelecionarItens(origem_doc,index,cdsTempIte,BUS_CD_C_PAR_CTR,itens_sel,cores_sel,tam_sel,lotes_sel);
      end;

   if (itens_sel <> '') then
       begin

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

           /////Busca os itens conjugados/////

          { BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
           BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
           BUS_CD_C_ITE_COJ.Close;
           BUS_CD_C_ITE_COJ.Data :=
           BUS_CD_C_ITE_COJ.DataRequest(VarArrayOf([0,'0']));
           if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_ITE_CONJ').AsBoolean = true) then
             begin
                 if origem_doc in [6,1,9] then
                   begin
                     BUS_CD_C_ITE_COJ := TClientDataSet.Create(nil);
                     BUS_CD_C_ITE_COJ.SetProvider(sm.BUS_DP_C_ITE_COJ);
                     BUS_CD_C_ITE_COJ.Close;
                     BUS_CD_C_ITE_COJ.Data :=
                       BUS_CD_C_ITE_COJ.DataRequest(VarArrayOf([1,itens_sel]));

                     if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) then
                        cores_sel := '''0''';

                     if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false) then
                        tam_sel := '''0''';



                     BUS_CD_C_ITE_COJ.First;
                     while not BUS_CD_C_ITE_COJ.EOF do
                       begin
                          itens_sel := itens_sel + ',' +''''+
                                  BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString+'''';

                          if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = true) then
                             cores_sel := cores_sel + ',' +''''+
                                    BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString+'''';

                          if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true) then
                             tam_sel := tam_sel + ',' +''''+
                                  BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString+'''';

                          BUS_CD_C_ITE_COJ.Next;
                       end;
                   end;
             end;   }
            ////////////FIM/////////////////////////


           itens_sel := itens_sel +','+BuscarItensConj(itens_sel);

           // Buscará todos os saldos dos itens do documento em questão


           EST_CD_M_FES := TClientDataSet.Create(nil);
           EST_CD_M_FES.SetProvider(EST_DP_M_FES);
           EST_CD_M_FES.Close;
           EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel, Tam_Sel]));

           AtualizaFesAlm := false;

           if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
              begin
               if not (origem_doc in [10]) then  //Não é Movimento de estoque (EST_FM_M_MET)
                  begin
                    AtualizaFesAlm := true;

                    // Buscará todos os saldos do almoxarifados dos itens do documento em questão

                    EST_CD_M_FES_ALM := TClientDataSet.Create(nil);
                    EST_CD_M_FES_ALM.SetProvider(EST_DP_M_FES_ALM);
                    EST_CD_M_FES_ALM.close;
                    if Index = 7 then
                       EST_CD_M_FES_ALM.Data :=
                            EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

                    if Index = 4 then
                       EST_CD_M_FES_ALM.Data :=
                           EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

                    if Index = 5 then
                       EST_CD_M_FES_ALM.Data :=
                            EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

                    if Index = 6 then
                       EST_CD_M_FES_ALM.Data :=
                            EST_CD_M_FES_ALM.DataRequest(VarArrayOf([Index, id_empresa, Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));
                  end;
              end;

           AtualizaLot := false;
           if trim(Lotes_Sel) <> '' then
              begin
                 AtualizaLot := true;
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

                 // Buscará todos os saldos do almoxarifados dos itens do documento em questão
                 EST_CD_M_LOT := TClientDataSet.Create(nil);
                 EST_CD_M_LOT.SetProvider(EST_DP_M_LOT);
                 EST_CD_M_LOT.Close;
                 if Index = 7 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([12, id_empresa, Lotes_Sel,Itens_Sel,
                                                                    Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([8, id_empresa,Lotes_Sel,Itens_Sel]));


                 if Index = 4 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([13, id_empresa,
                                                                    Lotes_Sel,Itens_Sel,Cores_Sel,
                                                                    Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([9, id_empresa,Lotes_Sel,Itens_Sel,Cores_Sel]));

                 if Index = 5 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([14, id_empresa,
                                                                    Lotes_Sel,Itens_Sel,Tam_Sel,
                                                                    Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([11, id_empresa,Lotes_Sel,Itens_Sel,Tam_Sel]));

                 if Index = 6 then
                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([15, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
                    else
                       EST_CD_M_LOT.Data :=
                           EST_CD_M_LOT.DataRequest(VarArrayOf([10, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel]));
              end;

          if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) and (OrdServCanc = false) and (PedVendaCanc = false) and (PedVendaReprov = false) then
             begin
                Ite_DataSet.First;
                while ( (not Ite_DataSet.Eof) and (not ( (origem_doc=1) and (Ite_DataSet.FieldByName('QTDE').AsCurrency=0)))) do
                    begin
                      int_tipo_item := Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger;

                      if origem_doc = 15 then
                         qtde := Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency
                      else
                         qtde := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                      if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                         begin
                           Ite_DataSet.Next;
                           if Ite_DataSet.UpdateStatus in [usModified] then // Se o registro teve modificações
                               begin
                                 if Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsString <> '' then
                                    int_tipo_item := Ite_DataSet.FieldByName('INT_TIPO_ITEM').AsInteger;


                               end;
                           //if int_tipo_item <> 9 then
                           Ite_DataSet.Prior;
                         end;
                       //Antes a condicao era (not ((origem_doc=1) and (qtde=0))).Essa condicao foi retirada e colocado no while.Resp:Luan.Data:12-07-2017
                      if true{(int_tipo_item <> 9) and (not ((origem_doc=1) and (qtde=0)))} then
                         begin

                            if (int_tipo_item <> 9) then
                              begin
                                AchouRegFes :=  localizar_FES(Index, id_empresa, Ite_DataSet.FieldByName('ID_ITEM').text,
                                                            Ite_DataSet.FieldByName('ID_COR').text, Ite_DataSet.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

                                // Caso utiliza o almoxarifado
                                if AtualizaFesAlm then
                                   begin
                                     // Caso a tabela de saldo do produto por almoxarifado já exista
                                     AchouRegFesAlm := localizar_FES_ALM(Index, id_empresa,
                                                                               Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                               Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                               Ite_DataSet.FieldByName('ID_COR').text,
                                                                               Ite_DataSet.FieldByName('ID_TAMANHO').text,
                                                                               EST_CD_M_FES_ALM);
                                   end;


                                // Caso utiliza lote
                                if AtualizaLot then
                                   begin
                                    AchouRegLot := false;
                                    if (trim(Ite_DataSet.FieldByName('NUM_LOTE').text) <> '') and
                                       (trim(Ite_DataSet.FieldByName('NUM_LOTE').text) <> '0') then
                                        begin
                                          AchouRegLot :=  localizar_LOT(Index, id_empresa,
                                                                        Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                        Ite_DataSet.FieldByName('NUM_LOTE').text,
                                                                        Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                        Ite_DataSet.FieldByName('ID_COR').text,
                                                                        Ite_DataSet.FieldByName('ID_TAMANHO').text,
                                                                        BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                        EST_CD_M_LOT);
                                        end;
                                   end;
                              end;
                            if AchouRegFes or (int_tipo_item = 9) then
                               begin
                                  Id_Item     := Ite_DataSet.FieldByName('ID_ITEM').text;

                                  if origem_doc = 15 then
                                     Qtde_Atual  := Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency
                                  else
                                     Qtde_Atual  := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                  if (int_tipo_item <> 9) then
                                    begin
                                      Id_Item     := Ite_DataSet.FieldByName('ID_ITEM').text;
                                      Id_Cor_ant  := Ite_DataSet.FieldByName('ID_COR').text;
                                      Id_Tam_ant  := Ite_DataSet.FieldByName('ID_TAMANHO').text;

                                      if origem_doc = 15 then
                                         Qtde_Atual  := Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency
                                      else
                                         Qtde_Atual  := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                      NumLote     := '';
                                      VlrCustoAnt   := 0;
                                      VlrCustoAtual := 0;
                                      if origem_doc = 3 then
                                         NumLote     := Ite_DataSet.FieldByName('NUM_LOTE').text;

                                      if origem_doc = 7 then // Devolução de Fornecedor
                                         begin
                                           VlrCustoAtual := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;
                                           VlrCustoAnt   := VlrCustoAtual;
                                         end;

                                      EST_CD_M_FES.edit;
                                    end;
                                  { ******************
                                    QUANDO HÁ INSERÇÃO
                                    ****************** }
                                  if Ite_DataSet.UpdateStatus in [usInserted] then
                                     begin
                                       // Se não for Ordem de Serviço ou se for uma Ordem de Serviço e a Peça não for cancelada
                                       if (origem_doc <> 9) or ( (origem_doc = 9) and (Ite_DataSet.FieldByName('cancelada').AsBoolean = false)  ) then
                                          begin

                                             if (int_tipo_item <> 9) then
                                               begin
                                                  EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  := Date;

                                                  // Esse código não pode acontecer
                                                  {if origem_doc = 1 then // NF Saída
                                                     EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency  :=
                                                          Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;}

                                                  if origem_doc = 7 then // Devolução de Forncedor.
                                                     begin
                                                        EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                            FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);
                                                     end;

                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                          EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +   Qtde_Atual;

                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                               EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                    EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                  if (not (AtualizaFesAlm)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                     begin
                                                        FatVerfifSaldoIte(1,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                     end;

                                                  EST_CD_M_FES.Post;
                                                end;

                                              {try
                                                 BUS_CD_C_ITE_COJ.Filtered := true;
                                                 BUS_CD_C_ITE_COJ.Filter := ' ID_ITEM='+Ite_DataSet.FieldByName('ID_ITEM').text;                                                                         ;
                                                 BUS_CD_C_ITE_COJ.First;
                                                 while not BUS_CD_C_ITE_COJ.EOF do
                                                  begin
                                                     localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);



                                                    if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                          VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                     BUS_CD_C_ITE_COJ.FieldByName('id_item_conjugado').AsString,
                                                                     BUS_CD_C_ITE_COJ.FieldByName('id_cor').AsString,
                                                                     BUS_CD_C_ITE_COJ.FieldByName('id_tamanho').AsString]),[]) then
                                                      begin
                                                        EST_CD_M_FES.Edit;
                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  := Date;
                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                          (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                            BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual);

                                                        EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                          EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                              EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                        EST_CD_M_FES.Post;
                                                      end
                                                    else
                                                      begin
                                                        raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                        abort;
                                                      end;
                                                    BUS_CD_C_ITE_COJ.Next;
                                                  end;
                                              finally
                                                 BUS_CD_C_ITE_COJ.Filtered := false;
                                              end; }

                                              // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                              //  e se for Ordem de Produção de Blooco de Espuma
                                              if (origem_doc <> 2) and (origem_doc <> 15) then
                                                 begin
                                                  FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                        Ite_DataSet.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FES,0,0,true);
                                                 end;

                                              // Caso utiliza o almoxarifado
                                              if AtualizaFesAlm  then
                                                 begin

                                                   if (int_tipo_item <> 9) then
                                                     begin
                                                       EST_CD_M_FES_ALM.Edit;
                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency + Qtde_Atual;

                                                       EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                       if (not ( AtualizaLot)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                          begin
                                                            FatVerfifSaldoIte(2,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                          end;

                                                       EST_CD_M_FES_ALM.post;
                                                     end;


                                                   {try
                                                     BUS_CD_C_ITE_COJ.Filtered := true;
                                                     BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Ite_DataSet.FieldByName('ID_ITEM').text;
                                                     BUS_CD_C_ITE_COJ.First;
                                                     while not BUS_CD_C_ITE_COJ.EOF do
                                                      begin
                                                        localizar_FES_ALM(Index, id_empresa,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                           EST_CD_M_FES_ALM);

                                                        if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                    VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                               Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                               BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                               BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                               BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                          begin
                                                            EST_CD_M_FES_ALM.Edit;

                                                            EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                 (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                  BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual);

                                                            EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                            EST_CD_M_FES_ALM.Post;
                                                          end
                                                        else
                                                          begin
                                                             raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                             abort;
                                                          end;
                                                        BUS_CD_C_ITE_COJ.Next;
                                                      end;
                                                   finally
                                                     BUS_CD_C_ITE_COJ.Filtered := false;
                                                   end;}
                                                   // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                  //   e de Ordem de Produção de Produto Acabado
                                                   if (origem_doc <> 2) and (origem_doc <> 15) then
                                                      begin
                                                        FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                            Ite_DataSet.FieldByName('QTDE').AsCurrency,Pai_DataSet,EST_CD_M_FES_ALM,1,0,true);
                                                      end;
                                                 end;

                                              // Caso utiliza lote
                                              if AtualizaLot then
                                                 begin
                                                   if AchouRegLot  or (int_tipo_item = 9) then
                                                      begin
                                                        if (int_tipo_item <> 9) then
                                                           begin
                                                             EST_CD_M_LOT.Edit;

                                                             EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                    EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency + Qtde_Atual;

                                                             EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                               EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                  EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                             if ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                begin
                                                                  FatVerfifSaldoIte(3,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                end;

                                                             EST_CD_M_LOT.post;
                                                           end;
                                                      end;
                                                 end;
                                          end;
                                     end;

                                  { *******************
                                   QUANDO HÁ ALTERAÇÃO
                                   ******************* }
                                  if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                                     begin
                                         IteOrdServCanc := false;
                                         OrvStatusIteAlterado := false;
                                         if origem_doc = 9 then
                                            begin
                                              IteOrdServCanc := Ite_DataSet.FieldByName('cancelada').AsBoolean;
                                              Ite_DataSet.Next;
                                              if Ite_DataSet.UpdateStatus in [usModified] then // Se o registro teve modificações
                                                 begin
                                                   if Ite_DataSet.FieldByName('cancelada').text <> '' then
                                                     begin
                                                       IteOrdServCanc := Ite_DataSet.FieldByName('cancelada').AsBoolean;
                                                       OrvStatusIteAlterado := true;
                                                     end;
                                                   if not IteOrdServCanc then
                                                      Ite_DataSet.Prior;
                                                 end
                                              else
                                                 Ite_DataSet.Prior;
                                            end;

                                         // Se não for Ordem de Serviço ou se for uma Ordem de Serviço e a Peça não for cancelada
                                         if (origem_doc <> 9) or ( (origem_doc = 9) and ( IteOrdServCanc = false)  ) then
                                            begin

                                               if origem_doc = 15 then
                                                  Qtde_Ant := Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency
                                               else
                                                  Qtde_Ant := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                               id_cor_atual := id_cor_ant;
                                               id_tam_atual := id_tam_ant;

                                               Ite_DataSet.Next;

                                               Qtde_Atual := Qtde_Ant;

                                               if origem_doc = 15 then
                                                  begin
                                                    if Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency > 0 then  // Se houve alteração no campo QTDE do registro alterado
                                                       Qtde_Atual := Ite_DataSet.FieldByName('qtde_abater_sld').AsCurrency;
                                                  end
                                               else
                                                  if Ite_DataSet.FieldByName('QTDE').AsCurrency > 0 then  // Se houve alteração no campo QTDE do registro alterado
                                                     Qtde_Atual := Ite_DataSet.FieldByName('QTDE').AsCurrency;

                                               if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                                                  begin

                                                    if (Ite_DataSet.FieldByName('ID_COR').AsInteger  > 0)   then
                                                        id_cor_atual := Ite_DataSet.FieldByName('ID_COR').text;
                                                    if (Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0) then
                                                        id_tam_atual := Ite_DataSet.FieldByName('ID_TAMANHO').text;

                                                    if not (Origem_doc in [6,3,13,9,15]) then//Que não seja pedido de venda, Movimento por Almoxarifado,Ordem de Servico, Ordem de Produção de B. de Espuma
                                                       begin
                                                          if (Ite_DataSet.FieldByName('VLR_CUSTO').AsInteger > 0) then
                                                              VlrCustoAtual := Ite_DataSet.FieldByName('VLR_CUSTO').AsCurrency;
                                                       end;

                                                    if (Ite_DataSet.FieldByName('ID_COR').AsInteger  > 0) or      // Quer dizer que o campo foi alterado
                                                       (Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0) then // Quer dizer que o campo foi alterado
                                                        begin
                                                          {  *****************************************
                                                             Atualizará a tabela de saldo EST_TB_M_FES
                                                             ***************************************** }
                                                          // Volta para o registro origem
                                                          Ite_DataSet.Prior;
                                                          // Busca o saldo do registro origem
                                                          if (int_tipo_item <> 9) then
                                                              AchouRegFes :=  localizar_FES(Index, id_empresa, Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                      Id_Cor_ant,Id_Tam_ant, EST_CD_M_FES);

                                                          if AchouRegFes or (int_tipo_item = 9) then
                                                             begin
                                                               if (int_tipo_item <> 9) then
                                                                 begin
                                                                   EST_CD_M_FES.edit;

                                                                   if origem_doc = 7 then // Devolução de Forncedor.
                                                                     begin
                                                                       EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency :=
                                                                              FatAtuCustoMedItens(EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                                                   Id_Item,Id_Cor_ant,Id_Tam_ant, Pai_DataSet.FieldByName('id_fiscal').text);
                                                                     end;

                                                                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                      (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -  Qtde_Ant);

                                                                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                      EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                   EST_CD_M_FES.Post;
                                                                 end;

                                                               { try
                                                                  BUS_CD_C_ITE_COJ.Filtered := true;
                                                                  BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                                  BUS_CD_C_ITE_COJ.First;
                                                                  while not BUS_CD_C_ITE_COJ.EOF do
                                                                     begin
                                                                       localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                            BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);



                                                                       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                              VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                         begin
                                                                            EST_CD_M_FES.Edit;

                                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                               (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Ant);

                                                                            EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                              EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                            EST_CD_M_FES.Post;
                                                                         end
                                                                       else
                                                                         begin
                                                                           raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                           abort;
                                                                         end;
                                                                       BUS_CD_C_ITE_COJ.Next;
                                                                     end;
                                                                finally
                                                                  BUS_CD_C_ITE_COJ.Filtered := false;
                                                                end;  }
                                                                // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                //  e Ordem de Produção de Bloco de Espuma
                                                                if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                   begin
                                                                     FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                         Qtde_Ant,Pai_DataSet,EST_CD_M_FES,0,1,true);
                                                                   end;
                                                             end;

                                                          Ite_DataSet.Next;
                                                          if (int_tipo_item <> 9) then
                                                             AchouRegFes :=  localizar_FES(Index, id_empresa, Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                      Id_Cor_atual,Id_Tam_atual,EST_CD_M_FES);
                                                          if AchouRegFes or (int_tipo_item = 9) then
                                                             begin
                                                              if (int_tipo_item <> 9) then
                                                                begin
                                                                   EST_CD_M_FES.edit;

                                                                   EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                                   if origem_doc = 7 then // Devolução de Forncedor.
                                                                       begin
                                                                          EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                                              FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);
                                                                       end;

                                                                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                       EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency + Qtde_Atual;

                                                                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                         EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                 EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                   if (not (AtualizaFesAlm)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                      begin
                                                                        FatVerfifSaldoIte(1,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                      end;
                                                                   EST_CD_M_FES.Post;
                                                                end;

                                                             { try
                                                                  BUS_CD_C_ITE_COJ.Filtered := true;
                                                                  BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                                  BUS_CD_C_ITE_COJ.First;
                                                                  while not BUS_CD_C_ITE_COJ.EOF do
                                                                     begin
                                                                       localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                               BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);



                                                                       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                              VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                         begin
                                                                            EST_CD_M_FES.Edit;
                                                                            EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                               (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                                BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual);

                                                                            EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                              EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                            EST_CD_M_FES.Post;
                                                                         end
                                                                       else
                                                                         begin
                                                                           raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                           abort;
                                                                         end;
                                                                        BUS_CD_C_ITE_COJ.Next;
                                                                     end;
                                                               finally
                                                                  BUS_CD_C_ITE_COJ.Filtered := false;
                                                               end;}

                                                               // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                //  e Ordem de Produção de Bloco de Espuma
                                                              if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                 begin
                                                                    FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                       Qtde_Atual,Pai_DataSet,EST_CD_M_FES,0,0,true);
                                                                 end;

                                                             end;

                                                          { 222222222222222222222222222222222222222222222
                                                            Atualizará a tabela de saldo EST_TB_M_FES_ALM
                                                            222222222222222222222222222222222222222222222}

                                                          // Caso utiliza o almoxarifado
                                                          if AtualizaFesAlm then
                                                             begin
                                                                // Volta para o registro origem
                                                                Ite_DataSet.Prior;
                                                                // Busca o saldo do registro origem
                                                                if (int_tipo_item <> 9) then
                                                                   AchouRegFesAlm :=  localizar_FES_ALM(Index, id_empresa,
                                                                                                     Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                                     Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                                     Id_Cor_ant,Id_Tam_ant,EST_CD_M_FES_ALM);

                                                                if AchouRegFesAlm or (int_tipo_item = 9) then
                                                                   begin
                                                                    if (int_tipo_item <> 9) then
                                                                      begin
                                                                        EST_CD_M_FES_ALM.edit;

                                                                        EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                         (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -  Qtde_Ant);

                                                                        EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                         EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                         EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                        EST_CD_M_FES_ALM.Post;
                                                                      end;





                                                                     {try
                                                                       BUS_CD_C_ITE_COJ.Filtered := true;
                                                                       BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                                       BUS_CD_C_ITE_COJ.First;
                                                                       while not BUS_CD_C_ITE_COJ.EOF do
                                                                         begin
                                                                           localizar_FES_ALM(Index, id_empresa,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                                             Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                                             EST_CD_M_FES_ALM);

                                                                           if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                                  VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                              Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                              begin
                                                                                EST_CD_M_FES_ALM.Edit;

                                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                  (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                   BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Ant);

                                                                                EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                      EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                                EST_CD_M_FES_ALM.Post;
                                                                              end
                                                                            else
                                                                              begin
                                                                                raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                                abort;
                                                                              end;
                                                                            BUS_CD_C_ITE_COJ.Next;
                                                                         end;
                                                                     finally
                                                                        BUS_CD_C_ITE_COJ.Filtered := false;
                                                                     end;}


                                                                    // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                    //  e Ordem de Produção de Bloco de Espuma
                                                                    if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                        begin
                                                                          FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                             Qtde_ant,Pai_DataSet,EST_CD_M_FES_ALM,1,1,true);
                                                                        end;
                                                                  end;

                                                                Ite_DataSet.Next;
                                                                // Irá atualizar o saldo do item de acordo com o registro alterado
                                                                if (int_tipo_item <> 9) then
                                                                   AchouRegFesAlm :=  localizar_FES_ALM(Index, id_empresa,
                                                                                                     Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                                     Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                                     Id_Cor_atual,Id_Tam_atual,EST_CD_M_FES_ALM);
                                                                if AchouRegFesAlm or (int_tipo_item = 9) then
                                                                   begin
                                                                     if (int_tipo_item <> 9) then
                                                                       begin
                                                                         EST_CD_M_FES_ALM.edit;

                                                                         EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency + Qtde_Atual;

                                                                         EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                               EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                         if  (not ( AtualizaLot)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                            begin
                                                                               FatVerfifSaldoIte(2,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                            end;

                                                                         EST_CD_M_FES_ALM.Post;
                                                                       end;


                                                                    { try
                                                                       BUS_CD_C_ITE_COJ.Filtered := true;
                                                                       BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                                       BUS_CD_C_ITE_COJ.First;
                                                                       while not BUS_CD_C_ITE_COJ.EOF do
                                                                         begin
                                                                           localizar_FES_ALM(Index, id_empresa,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                                             Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                                             EST_CD_M_FES_ALM);


                                                                           if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                                  VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                              Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                             begin
                                                                                EST_CD_M_FES_ALM.Edit;

                                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                  (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency +
                                                                                   BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual);

                                                                                EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                      EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                                EST_CD_M_FES_ALM.Post;
                                                                             end
                                                                           else
                                                                             begin
                                                                               raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                               abort;
                                                                             end;
                                                                            BUS_CD_C_ITE_COJ.Next;
                                                                         end;
                                                                     finally
                                                                        BUS_CD_C_ITE_COJ.Filtered := false;
                                                                     end; }

                                                                       // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                       //  e Ordem de Produção de Bloco de Espuma
                                                                       if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                           begin
                                                                             FatSaida_FesEstCoj(index,Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                               Qtde_Atual,Pai_DataSet,EST_CD_M_FES_ALM,1,0,true);
                                                                           end;
                                                                   end;
                                                             end;

                                                          { 33333333333333333333333333333333333333333
                                                            Atualizará a tabela de saldo EST_TB_M_LOT
                                                            33333333333333333333333333333333333333333 }
                                                          if AtualizaLot then
                                                             begin
                                                                // Volta para o registro origem
                                                                if (trim(NumLote) <> '') and
                                                                   (trim(NumLote) <> '0') then
                                                                    begin
                                                                      Ite_DataSet.Prior;
                                                                      // Busca o saldo do registro origem
                                                                      if (int_tipo_item <> 9) then
                                                                        AchouRegLot :=  localizar_LOT(Index,  id_empresa,
                                                                                                    Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                                    NumLote,
                                                                                                    Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                                    Id_Cor_ant,id_tam_ant,
                                                                                                    BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                                                    EST_CD_M_LOT);
                                                                      if AchouRegLot or (int_tipo_item = 9) then
                                                                         begin
                                                                           if (int_tipo_item <> 9) then
                                                                              begin
                                                                                EST_CD_M_LOT.edit;



                                                                                EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                  (EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Ant);

                                                                                EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                                    EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                    EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                                EST_CD_M_LOT.Post;
                                                                              end;
                                                                         end;

                                                                      Ite_DataSet.Next;
                                                                      // Irá atualizar o saldo do item de acordo com o registro alterado
                                                                      if (int_tipo_item <> 9) then
                                                                        AchouRegLot :=  localizar_LOT(Index,  id_empresa,
                                                                                                    Ite_DataSet.FieldByName('ID_ITEM').text,
                                                                                                    NumLote,
                                                                                                    Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                                    Id_Cor_ant,id_tam_ant,
                                                                                                    BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                                                    EST_CD_M_LOT);
                                                                      if AchouRegLot or (int_tipo_item = 9) then
                                                                         begin
                                                                           if (int_tipo_item <> 9) then
                                                                             begin
                                                                                EST_CD_M_LOT.Edit;



                                                                                EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                         EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency + Qtde_Atual;

                                                                                EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                                         EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                             EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                               if ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                                  begin
                                                                                     FatVerfifSaldoIte(3,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                                  end;

                                                                                EST_CD_M_LOT.post;
                                                                             end;
                                                                         end;
                                                                    end;
                                                             end;
                                                        end
                                                    else
                                                        begin
                                                          if Ite_DataSet.FieldByName('QTDE').AsCurrency > 0 then // Quer dizer que o campo foi alterado
                                                             begin
                                                               {  11111111111111111111111111111111111111111
                                                                  Atualizará a tabela de saldo EST_TB_M_FES
                                                                  11111111111111111111111111111111111111111 }
                                                               if (int_tipo_item <>9) then
                                                                  begin
                                                                   EST_CD_M_FES.edit;
                                                                   EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;


                                                                   if origem_doc = 7 then // Devolução de Forncedor.
                                                                      begin
                                                                          EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency      :=
                                                                              FatCalcCusMedioIte(Pai_DataSet,VlrCustoAtual,Qtde_Atual,EST_CD_M_FES);
                                                                      end;

                                                                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                            (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                             Qtde_Ant) + Qtde_Atual;

                                                                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;


                                                                   if (not (AtualizaFesAlm)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                      begin
                                                                         FatVerfifSaldoIte(1,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                      end;

                                                                   EST_CD_M_FES.Post;
                                                                  end;


                                                              { try
                                                                  BUS_CD_C_ITE_COJ.Filtered := true;
                                                                  BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+ Id_Item;
                                                                  BUS_CD_C_ITE_COJ.First;
                                                                  while not BUS_CD_C_ITE_COJ.EOF do
                                                                     begin
                                                                       localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);



                                                                       if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                              VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                         begin
                                                                            EST_CD_M_FES.Edit;
                                                                            EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                               (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Ant)+
                                                                                 BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual;

                                                                            EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                              EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                            EST_CD_M_FES.Post;
                                                                         end
                                                                       else
                                                                         begin
                                                                           raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                           abort;
                                                                         end;
                                                                       BUS_CD_C_ITE_COJ.Next;
                                                                     end;
                                                                finally
                                                                  BUS_CD_C_ITE_COJ.Filtered := false;
                                                                end; }

                                                                // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                //  e Ordem de Produção de Bloco de Espuma
                                                                if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                   begin
                                                                     FatSaida_FesEstCoj(index,id_item,
                                                                        Qtde_ant,Pai_DataSet,EST_CD_M_FES,0,1,true);
                                                                     FatSaida_FesEstCoj(index,id_item,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES,0,0,true);
                                                                   end;


                                                               {  22222222222222222222222222222222222222222
                                                                  Atualizará a tabela de saldo EST_TB_M_FES_ALM
                                                                  222222222222222222222222222222222222222222 }
                                                               if AtualizaFesAlm  then
                                                                  begin
                                                                   if (int_tipo_item <> 9) then
                                                                      begin
                                                                       EST_CD_M_FES_ALM.edit;

                                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                 Qtde_Ant) + Qtde_Atual;

                                                                       EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                       if (not ( AtualizaLot)) and ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                          begin
                                                                             FatVerfifSaldoIte(2,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                          end;

                                                                       EST_CD_M_FES_ALM.Post;
                                                                       end;


                                                                     {try
                                                                       BUS_CD_C_ITE_COJ.Filtered := true;
                                                                       BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                                       BUS_CD_C_ITE_COJ.First;
                                                                       while not BUS_CD_C_ITE_COJ.EOF do
                                                                         begin
                                                                           localizar_FES_ALM(Index, id_empresa,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                                             Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                                             BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                                             EST_CD_M_FES_ALM);

                                                                           if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                                  VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                              Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                              BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                             begin
                                                                                EST_CD_M_FES_ALM.Edit;

                                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=

                                                                                  (EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                   BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Ant)+
                                                                                    BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual;

                                                                                EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                      EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                                EST_CD_M_FES_ALM.Post;
                                                                             end
                                                                           else
                                                                             begin
                                                                                raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                                abort;
                                                                             end;
                                                                            BUS_CD_C_ITE_COJ.Next;
                                                                         end;
                                                                     finally
                                                                        BUS_CD_C_ITE_COJ.Filtered := false;
                                                                     end;}

                                                                        // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                        //  e Ordem de Produção de Bloco de Espuma
                                                                    if (origem_doc <> 2) and (origem_doc <> 15) then
                                                                        begin
                                                                          FatSaida_FesEstCoj(index,id_item,
                                                                           Qtde_ant,Pai_DataSet,EST_CD_M_FES_ALM,1,1,true);
                                                                          FatSaida_FesEstCoj(index,id_item,
                                                                           Qtde_atual,Pai_DataSet,EST_CD_M_FES_ALM,1,0,true);
                                                                        end;


                                                                  end;


                                                              {  3333333333333333333333333333333333333333333
                                                                 Atualizará a tabela de saldo EST_TB_M_LOT
                                                                 3333333333333333333333333333333333333333333 }
                                                              if AtualizaLot then
                                                                 begin
                                                                   if (trim(NumLote) <> '') and
                                                                      (trim(NumLote) <> '0') then
                                                                       begin
                                                                          if AchouRegLot or (int_tipo_item=9) then
                                                                             begin
                                                                               if (int_tipo_item<>9) then
                                                                                  begin
                                                                                    EST_CD_M_LOT.edit;



                                                                                    EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                                            (EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                                                Qtde_Ant) + Qtde_Atual;

                                                                                    EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                                            EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                            EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                                    if ((not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean) and (OrvGarantia=false)) then
                                                                                       begin
                                                                                         FatVerfifSaldoIte(3,EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT);
                                                                                       end;

                                                                                    EST_CD_M_LOT.Post;
                                                                                  end;
                                                                             end;
                                                                       end;
                                                                 end;

                                                             end;
                                                        end;
                                                  end;
                                            end
                                         else
                                            begin
                                              if (origem_doc = 9) and (IteOrdServCanc = true) and (OrvStatusIteAlterado=true) then
                                                  begin
                                                    {  *****************************************
                                                      Atualizará a tabela de saldo EST_TB_M_FES
                                                      ***************************************** }
                                                    if (int_tipo_item <>9) then
                                                      begin
                                                        EST_CD_M_FES.Edit;

                                                        EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                                        EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                        EST_CD_M_FES.post;
                                                       end;


                                                   // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                   //  e Ordem de Produção de Bloco de Espuma
                                                   if (origem_doc <> 2) and (origem_doc <> 15) then
                                                       begin
                                                         FatSaida_FesEstCoj(index,id_item,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES,0,1,true);
                                                       end;

                                                    if AtualizaFesAlm then
                                                       begin
                                                         if AchouRegFesAlm  or (int_tipo_item = 9) then
                                                            begin
                                                              if (int_tipo_item <> 9) then
                                                                 begin
                                                                    EST_CD_M_FES_ALM.Edit;

                                                                    EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                                                    EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                        EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                    EST_CD_M_FES_ALM.Post;
                                                                 end;

                                                               if origem_doc <> 2 then // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                                   begin
                                                                     FatSaida_FesEstCoj(index,id_item,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES_ALM,1,1,true);
                                                                   end;
                                                            end;
                                                       end;
                                                    if AtualizaLot then
                                                       begin
                                                         if (trim(NumLote) <> '') and
                                                            (trim(NumLote) <> '0') then
                                                             begin
                                                                if AchouRegLot or (int_tipo_item = 9)  then
                                                                   begin
                                                                     if (int_tipo_item <> 9) then
                                                                       begin
                                                                        EST_CD_M_LOT.Edit;



                                                                        EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                           EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -  Qtde_Atual;

                                                                        EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                              EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                        EST_CD_M_LOT.Post;
                                                                       end;
                                                                   end;
                                                             end;
                                                       end;
                                                  end;
                                            end;
                                     end;

                                  { *******************
                                    QUANDO HÁ DELEÇÃO
                                    ******************* }
                                  if Ite_DataSet.UpdateStatus in [usDeleted] then // Se o registro foi deletado.
                                     begin
                                       // Se não for Ordem de Serviço ou se for uma Ordem de Serviço e a Peça não for cancelada
                                       if (origem_doc <> 9) or ( (origem_doc = 9) and (Ite_DataSet.FieldByName('cancelada').AsBoolean = false)  ) then
                                          begin
                                             {  *****************************************
                                                Atualizará a tabela de saldo EST_TB_M_FES
                                                ***************************************** }
                                             if (int_tipo_item <> 9) then
                                                begin
                                                  EST_CD_M_FES.Edit;

                                                  if origem_doc = 7 then // Devolução de Forncedor.
                                                     begin
                                                        EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency :=
                                                              FatAtuCustoMedItens(EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                                   Id_Item,Id_Cor_atual,id_tam_atual,Pai_DataSet.FieldByName('id_fiscal').text);
                                                     end;

                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                      EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                  EST_CD_M_FES.post;
                                                end;

                                             { try
                                                BUS_CD_C_ITE_COJ.Filtered := true;
                                                BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                BUS_CD_C_ITE_COJ.First;
                                                while not BUS_CD_C_ITE_COJ.EOF do
                                                   begin
                                                     localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                          BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);


                                                     if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                            VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                       BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                       BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                       BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                        begin
                                                          EST_CD_M_FES.Edit;
                                                          EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                          EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                               BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual;

                                                          EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                          EST_CD_M_FES.Post;
                                                        end
                                                      else
                                                        begin
                                                          raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                          abort;
                                                        end;
                                                      BUS_CD_C_ITE_COJ.Next;
                                                   end;
                                              finally
                                                BUS_CD_C_ITE_COJ.Filtered := false;
                                              end;      }

                                             // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                             //  e Ordem de Produção de Bloco de Espuma
                                             if (origem_doc <> 2) and (origem_doc <> 15) then
                                                begin
                                                  FatSaida_FesEstCoj(index,id_item,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES,0,1,true);
                                                end;

                                              if AtualizaFesAlm then
                                                 begin
                                                   if AchouRegFesAlm or (int_tipo_item = 9) then
                                                      begin
                                                       if  (int_tipo_item <> 9) then
                                                          begin
                                                            EST_CD_M_FES_ALM.Edit;

                                                            EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                               EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                                            EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                     EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                            EST_CD_M_FES_ALM.Post;
                                                           end;


                                                      {  try
                                                           BUS_CD_C_ITE_COJ.Filtered := true;
                                                           BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+Id_Item;
                                                           BUS_CD_C_ITE_COJ.First;
                                                           while not BUS_CD_C_ITE_COJ.EOF do
                                                             begin
                                                               localizar_FES_ALM(Index, id_empresa,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                           EST_CD_M_FES_ALM);

                                                               if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                                      VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                                  Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                                  BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                                  BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                                  BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                                 begin
                                                                    EST_CD_M_FES_ALM.Edit;

                                                                    EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                      EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                                        BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual;

                                                                    EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                                      EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                          EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                    EST_CD_M_FES_ALM.Post;
                                                                 end
                                                               else
                                                                 begin
                                                                    raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                                    abort;
                                                                 end;

                                                                BUS_CD_C_ITE_COJ.Next;
                                                             end;
                                                         finally
                                                            BUS_CD_C_ITE_COJ.Filtered := false;
                                                         end;    }

                                                         // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                         //  e Ordem de Produção de Bloco de Espuma
                                                         if (origem_doc <> 2) and (origem_doc <> 15) then
                                                            begin
                                                              FatSaida_FesEstCoj(index,id_item,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES_ALM,1,1,true);
                                                            end;
                                                      end;
                                                 end;
                                              if AtualizaLot then
                                                 begin
                                                   if (trim(NumLote) <> '') and
                                                      (trim(NumLote) <> '0') then
                                                       begin
                                                          if AchouRegLot  or (int_tipo_item = 9) then
                                                             begin
                                                               if (int_tipo_item <> 9) then
                                                                  begin
                                                                    EST_CD_M_LOT.Edit;



                                                                    EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                                       EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -  Qtde_Atual;

                                                                    EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                                          EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                                 EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                                    EST_CD_M_LOT.Post;
                                                                  end;
                                                             end;
                                                       end;
                                                 end;
                                          end;

                                     end;
                               end;
                         end
                      else   ///Devido as mudandas feito na condição do if, esse bloco nunca será executado.Resp.: Luan. Data:12-07-2017
                         begin
                           if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                              begin
                                Ite_DataSet.Next;
                              end;
                         end;
                      Ite_DataSet.Next;
                    end;
             end
          else
             begin
                cdsTempIte.First;
                while ((not cdsTempIte.eof) and  (not ((origem_doc=1) and (cdsTempIte.FieldByName('QTDE').AsCurrency=0)))) do
                   begin
                     //Coloquei em comentario para testar itens conjugados
                    { if cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for item do tipo SERVIÇO.
                        begin }
                            // Se não for Ordem de Serviço ou se for uma Ordem de Serviço e a Peça não for cancelada
                            if (origem_doc <> 9) or ( (origem_doc = 9) and (cdsTempIte.FieldByName('cancelada').AsBoolean = false)  ) then
                                begin
                                 if cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9  then
                                   AchouRegFes :=  localizar_FES(Index, id_empresa, cdsTempIte.FieldByName('ID_ITEM').text,
                                                              cdsTempIte.FieldByName('ID_COR').text,
                                                              cdsTempIte.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

                                  // Caso utiliza o almoxarifado
                                  if AtualizaFesAlm then
                                     begin
                                       // Caso a tabela de saldo do produto por almoxarifado já exista
                                       if cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9  then
                                          AchouRegFesAlm := localizar_FES_ALM(Index, id_empresa,
                                                                                 cdsTempIte.FieldByName('ID_ITEM').text,
                                                                                 Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                                 cdsTempIte.FieldByName('ID_COR').text,
                                                                                 cdsTempIte.FieldByName('ID_TAMANHO').text,
                                                                                 EST_CD_M_FES_ALM);
                                     end;


                                  // Caso utiliza lote
                                  if AtualizaLot then
                                     begin
                                      AchouRegLot := false;
                                      if (trim(cdsTempIte.FieldByName('NUM_LOTE').text) <> '') and
                                         (trim(cdsTempIte.FieldByName('NUM_LOTE').text) <> '0') then
                                          begin
                                            if cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9  then
                                               AchouRegLot :=  localizar_LOT(Index, id_empresa,
                                                                          cdsTempIte.FieldByName('ID_ITEM').text,
                                                                          cdsTempIte.FieldByName('NUM_LOTE').text,
                                                                          Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                          cdsTempIte.FieldByName('ID_COR').text,
                                                                          cdsTempIte.FieldByName('ID_TAMANHO').text,
                                                                          BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                                          EST_CD_M_LOT);
                                          end;
                                     end;

                                  if AchouRegFes or (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger = 9)  then
                                     begin
                                       if origem_doc = 15 then
                                          Qtde_Atual := cdsTempIte.FieldByName('qtde_abater_sld').AsCurrency
                                       else
                                          Qtde_Atual := cdsTempIte.FieldByName('QTDE').AsCurrency;

                                       {  *****************************************
                                          Atualizará a tabela de saldo EST_TB_M_FES
                                          ***************************************** }
                                       if (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9) then
                                         begin

                                            EST_CD_M_FES.Edit;

                                            if origem_doc = 7 then // Devolução de Forncedor.
                                               begin
                                                  EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency :=
                                                      FatAtuCustoMedItens(
                                                           EST_CD_M_FES.FieldByName('id_empresa').AsString,
                                                           EST_CD_M_FES.FieldByName('id_item').AsString,
                                                           EST_CD_M_FES.FieldByName('id_cor').AsString,
                                                           EST_CD_M_FES.FieldByName('id_tamanho').AsString,Pai_DataSet.FieldByName('id_fiscal').text);
                                               end;

                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                            EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                            EST_CD_M_FES.post;
                                          end;



                                       { try
                                          BUS_CD_C_ITE_COJ.Filtered := true;
                                          BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+ cdsTempIte.FieldByName('ID_ITEM').text;
                                          BUS_CD_C_ITE_COJ.First;
                                          while not BUS_CD_C_ITE_COJ.EOF do
                                             begin
                                               localizar_FES(Index, Pai_DataSet.FieldByName('ID_EMPRESA').AsString, BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                         BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text, BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);


                                               if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                                      VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                 BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                 BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                 BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                 begin
                                                  EST_CD_M_FES.Edit;
                                                  EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime := Date;

                                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                     (EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -
                                                      BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual);


                                                  EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                                    EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                        EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                                  EST_CD_M_FES.Post;
                                                 end
                                               else
                                                 begin
                                                    raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                    abort;
                                                 end;
                                               BUS_CD_C_ITE_COJ.Next;
                                             end;
                                        finally
                                          BUS_CD_C_ITE_COJ.Filtered := false;
                                        end;    }

                                         // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                         //  e Ordem de Produção de Bloco de Espuma
                                        if (origem_doc <> 2) and (origem_doc <> 15) then
                                            begin
                                              FatSaida_FesEstCoj(index,cdsTempIte.FieldByName('ID_ITEM').text,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES,0,1,true);
                                            end;

                                        if AtualizaFesAlm then
                                           begin
                                             if AchouRegFesAlm or (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger = 9) then
                                                begin
                                                if (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9) then
                                                  begin
                                                    EST_CD_M_FES_ALM.Edit;

                                                    EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                       EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency - Qtde_Atual;

                                                    EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                        EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                             EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                    EST_CD_M_FES_ALM.Post;
                                                  end;

                                                {  try
                                                   BUS_CD_C_ITE_COJ.Filtered := true;
                                                   BUS_CD_C_ITE_COJ.Filter := 'ID_ITEM='+cdsTempIte.FieldByName('ID_ITEM').text;
                                                   BUS_CD_C_ITE_COJ.First;
                                                   while not BUS_CD_C_ITE_COJ.EOF do
                                                     begin
                                                       localizar_FES_ALM(Index, id_empresa,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').text,
                                                                           Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_COR').text,
                                                                           BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').text,
                                                                           EST_CD_M_FES_ALM);

                                                       if EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_COR;ID_TAMANHO',
                                                              VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                                                                          Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString,
                                                                          BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,
                                                                          BUS_CD_C_ITE_COJ.FieldByName('ID_COR').AsString,
                                                                          BUS_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').AsString]),[]) then
                                                         begin
                                                            EST_CD_M_FES_ALM.Edit;

                                                            EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency -
                                                               BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency*Qtde_Atual;


                                                            EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                                              EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                  EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                                            EST_CD_M_FES_ALM.Post;
                                                         end
                                                       else
                                                         begin
                                                            raise Exception.Create('Erro ao tentar atualizar saldo na tabela "est_tb_m_fes_alm" do item conjugado de cód. '+BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString);
                                                            abort;
                                                         end;
                                                        BUS_CD_C_ITE_COJ.Next;
                                                     end;
                                                 finally
                                                    BUS_CD_C_ITE_COJ.Filtered := false;
                                                 end; }

                                                 // Se for diferente Ordem de Faturamento (PCP_TB_M_ORS)
                                                 //  e Ordem de Produção de Bloco de Espuma
                                                 if (origem_doc <> 2) and (origem_doc <> 15) then
                                                    begin
                                                      FatSaida_FesEstCoj(index,cdsTempIte.FieldByName('ID_ITEM').text,
                                                                       Qtde_atual,Pai_DataSet,EST_CD_M_FES_ALM,1,1,true);
                                                    end;
                                                end;
                                           end;
                                        if AtualizaLot then
                                           begin
                                              if AchouRegLot or (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger = 9) then
                                                 begin
                                                  if (cdsTempIte.FieldByName('INT_TIPO_ITEM').AsInteger <> 9) then
                                                     begin
                                                        EST_CD_M_LOT.Edit;

                                                        EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                           EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency -  Qtde_Atual;

                                                        EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                                              EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                                        EST_CD_M_LOT.Post;
                                                     end;
                                                 end;
                                           end;
                                     end;
                                end;
                        //end;
                      cdsTempIte.Next;
                   end;
             end;

          if EST_CD_M_FES <> nil then
             if not EST_CD_M_FES.IsEmpty then
                if not (EST_CD_M_FES.ApplyUpdates(0) = 0) then
                        abort;

          if EST_CD_M_FES_ALM <> nil then
             if not EST_CD_M_FES_ALM.IsEmpty then
                if not (EST_CD_M_FES_ALM.ApplyUpdates(0) = 0) then
                        abort;

          if EST_CD_M_LOT <> nil then
             if not EST_CD_M_LOT.IsEmpty then
                if not (EST_CD_M_LOT.ApplyUpdates(0) = 0) then
                        abort;
       end;


    // Inserido em 12/11/2021 por Maxsuel Victor
    if origem_doc = 15 then // Ordem de Produção de Bloco de Espuma
       begin
         Ite_DataSet.Filtered   := false;
       end;

    EST_CD_M_FES.Free;
    EST_CD_M_FES_ALM.Free;
    EST_CD_M_LOT.Free;
    FAT_CD_M_NFE_ITE.Free;
    EST_CD_M_MAL_ITE.Free;
    FAT_CD_M_PED_ITE.Free;
    BUS_CD_C_ITE_COJ.Free;
    cdsTempIte.Free;
end;


function FatGerNfsPed(origem: integer; DataSet: TCustomClientDataSet;
         CAD_DP_C_PAR,BUS_DP_C_PAR_CTR,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
         FAT_DP_M_NFE,BUS_DP_M_PED,EST_DP_M_FES,EST_DP_M_FEA,EST_DP_M_LOT,
         BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT,BUS_DP_C_CLI, BUS_DP_C_RAM, BUS_DP_C_TRI_REG: TDataSetProvider;
         Conn: TSQLConnection; SmAtual: TSM): Boolean;
var
  CAD_CD_C_PAR,BUS_CD_C_PAR_CTR,CAD_CD_C_TME,CAD_CD_C_FPG: TClientDataSet;
  FAT_CD_M_NFE,FAT_CD_M_NFE_ITE,FAT_CD_M_NFE_TIT,
  FAT_CD_M_PED,FAT_CD_M_PED_ITE,FAT_CD_M_PED_TIT,
  EST_CD_M_FES,EST_CD_M_FEA,EST_CD_M_LOT,
  FAT_CD_M_PED_ITE_INT,FAT_CD_M_PED_TIT_INT,BUS_CD_C_RAM, BUS_CD_C_CLI,CAD_CD_C_CPG: TClientDataSet;
  DataSetIte, DataSetTit: TDataSet;
  Cfop:String;
  VlrMercadoriaNfe,VlrDescontoNfe,VlrIcmDesnNfe,VlrLiquidoNfe:Currency;
  VlrMercadoriaPed,VlrDescontoPed,VlrIcmDesnPed,VlrLiquidoPed:Currency;
  VlrAcumTitNfe,VlrAcumTitPed:Currency;

  CAD_CD_C_ITE: TClientDataSet;
  BUS_CD_C_TRI_REG:TClientDataSet;
  VlrCustoMedio: Currency;
  i: integer;
  RegimeSimples:Boolean;
  qtdeConferida,qtdeVolTotal:Currency;
  VlrDescNfe,vlrIcmDesnNfeIte:Currency;
  ResulConf:Integer;
  ItemSel,CorSel,TamSel,LoteSel,numLote:String;
begin

  try
      SM := SmAtual;
      xConn := Conn;

  VlrMercadoriaNfe :=0;
  VlrDescontoNfe   :=0;
  VlrIcmDesnNfe    :=0;
  VlrLiquidoNfe    :=0;
  VlrMercadoriaPed :=0;
  VlrDescontoPed   :=0;
  VlrIcmDesnPed    :=0;
  VlrLiquidoPed    :=0;


  DataSetIte    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;
  DataSetTit    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT')).NestedDataSet;



  FAT_CD_M_NFE := TClientDataSet.Create(nil);
  FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
  FAT_CD_M_NFE.Close;
  FAT_CD_M_NFE.Data :=
           FAT_CD_M_NFE.DataRequest(VarArrayOf([9,DataSet.FieldByName('ID_EMPRESA').AsString,'S',DataSet.FieldByName('ID_PEDIDO').AsString]));

  FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
  FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));

  FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
  FAT_CD_M_NFE_TIT.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_TIT'));


  FAT_CD_M_PED := TClientDataSet.Create(nil);
  FAT_CD_M_PED.SetProvider(BUS_DP_M_PED);
  FAT_CD_M_PED.Close;
  FAT_CD_M_PED.Data :=
           FAT_CD_M_PED.DataRequest(VarArrayOf([0,'']));

  FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
  FAT_CD_M_PED_ITE.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('BUS_SQ_M_PED_ITE'));

  FAT_CD_M_PED_TIT := TClientDataSet.Create(nil);
  FAT_CD_M_PED_TIT.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('BUS_SQ_M_PED_TIT'));


  EST_CD_M_FEA := TClientDataSet.Create(nil);
  EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
  EST_CD_M_FEA.Close;
  EST_CD_M_FEA.Data :=
           EST_CD_M_FEA.DataRequest(VarArrayOf([1,DataSet.FieldByName('ID_EMPRESA').AsString, DataSet.FieldByName('ID_PEDIDO').AsString,
                                                 DataSet.FieldByName('ID_ALMOXARIFADO').AsString]));






  CAD_CD_C_PAR := TClientDataSet.Create(nil);
  CAD_CD_C_PAR.SetProvider(CAD_DP_C_PAR);
  CAD_CD_C_PAR.Close;
  CAD_CD_C_PAR.Data :=
          CAD_CD_C_PAR.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_EMPRESA').AsString]));

  // Buscar dados do parâmetros de controle
  BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
  BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
  BUS_CD_C_PAR_CTR.Close;
  BUS_CD_C_PAR_CTR.Data :=
      BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('ID_EMPRESA').AsString]));



  RegimeSimples := false;

  BUS_CD_C_RAM := TClientDataSet.Create(nil);
  BUS_CD_C_RAM.SetProvider(BUS_DP_C_RAM);
  BUS_CD_C_RAM.Close;
  BUS_CD_C_RAM.Data :=
          BUS_CD_C_RAM.DataRequest(VarArrayOf([0,CAD_CD_C_PAR.FieldByName('id_ramo').AsString]));
  if not BUS_CD_C_RAM.IsEmpty then
     if BUS_CD_C_RAM.FieldByName('regime_tributario').AsInteger = 0 then
        RegimeSimples := true;



  BUS_CD_C_CLI := TClientDataSet.Create(nil);
  BUS_CD_C_CLI.SetProvider(BUS_DP_C_CLI);
  BUS_CD_C_CLI.Close;
  BUS_CD_C_CLI.Data :=
          BUS_CD_C_CLI.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_cliente').AsString]));


  // Buscar dados do tipo de movimento de estoque
  CAD_CD_C_TME := TClientDataSet.Create(nil);
  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
  CAD_CD_C_TME.Close;
  CAD_CD_C_TME.Data :=
      CAD_CD_C_TME.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_tipo_mov_estoque').AsString]));
  // Buscar o CFOP
  if DataSet.FieldByName('int_pessoacli').AsInteger = 0 then // Física
     begin
        if DataSet.FieldByName('INT_NOMEEST').AsString =
           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
           begin
              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
           end
        else
           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
     end;

  if DataSet.FieldByName('int_pessoacli').AsInteger = 1 then // Jurídica
     begin
        if DataSet.FieldByName('INT_NOMEEST').AsString =
           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
           begin
              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
           end
        else
           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
     end;
  //------------------------------------------------------------------------------------
    qtdeVolTotal := DataSet.FieldByName('qtde_volume').AsCurrency;
    if (DataSet.UpdateStatus in [usUnmodified]) then
      begin
        ResulConf  := DataSet.FieldByName('RESULTADO_CONF').AsInteger;
        qtdeVolTotal := DataSet.FieldByName('qtde_volume').AsCurrency;
        DataSet.Next;
        if DataSet.FieldByName('RESULTADO_CONF').text <> '' then
            ResulConf  := DataSet.FieldByName('RESULTADO_CONF').AsInteger;
        if DataSet.FieldByName('qtde_volume').text <> '' then
            qtdeVolTotal  := DataSet.FieldByName('qtde_volume').AsCurrency;
        DataSet.Prior;
      end;


      if not FAT_CD_M_NFE.IsEmpty then
        begin
          FAT_CD_M_NFE.Delete;
        end;



    FAT_CD_M_NFE.Insert;
    FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
    FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
    FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
    FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := DataSet.FieldByName('ID_PEDIDO').AsInteger;;
    FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
    FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
    FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
    FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
    FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
    FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
    FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
    FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
    FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
    FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
    FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

    FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
    FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
    FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
    FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
    FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
    FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
    FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

    FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;

    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
       begin
         FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
       end;

    FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
    FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'A';
    FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
    FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
    FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
    FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
    FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
    FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
    FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
    FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
    FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
    FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
    FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
    FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

    FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
    FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
    FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

    FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
    FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
    FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;
    if (trim(DataSet.FieldByName('origem').Text) <> '') and
       (trim(DataSet.FieldByName('origem').Text) = '2') then
       begin
         // Para atender a transação do Pedido Cupom (FAT_FM_M_PNF)
         FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := DataSet.FieldByName('id_pedido').AsInteger;
         FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := 'X';
         FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
         FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 1;
         FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;
       end
    else
       FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
    FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
    FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
    FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
    FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := DataSet.FieldByName('id_tipo_mov_estoque').AsInteger;
    FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := DataSet.FieldByName('id_condicao_pag').AsInteger;
    FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
    FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := DataSet.FieldByName('id_vendedor').AsInteger;

    FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_nomeest').AsString;

    FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;


    FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
    FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
    FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;

    FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
    FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
    FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
    FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

    FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
    FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

    FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
    FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

    FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;
    FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

    FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

    FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
    FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
    FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

    FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
    FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
    FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

    FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
    FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
    FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
    FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
    FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency      := 0;

    FAT_CD_M_NFE.FieldByName('qtde_volume').AsCurrency      :=  qtdeVolTotal;


    if not BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
       begin
         FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 3;
       end
    else
       begin
         FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 1;

         DataSetIte.Filtered := true;
         DataSetIte.Filter := ' INT_TIPO_ITEM = ''09'' ';
         try
           if not (DataSetIte.IsEmpty) then
              begin
                FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 2;
              end;
         finally
           DataSetIte.Filtered := False;
         end;
       end;



     if ResulConf=1 then
       begin
         FAT_CD_M_PED.Insert;
         FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger              := sm.enValorChave('FAT_TB_M_PED');
         FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;
         FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger             := DataSet.FieldByName('id_empresa').AsInteger;
         FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime            := Date;
         FAT_CD_M_PED.FieldByName('HOR_PEDIDO').AsDateTime            := Time;
         FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString          := DataSet.FieldByName('TIPO_RESTRICAO').AsString;
         FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime      := DataSet.FieldByName('DTA_PREV_ENTREGA').AsDateTime;
         FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger        := DataSet.FieldByName('ID_CONDICAO_PAG').AsInteger;
         FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger         := DataSet.FieldByName('DIAS_CPG_PRAZO').AsInteger;
         FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger    := DataSet.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;


         FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger :=0;

         FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger :=0;


         FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger :=
                  DataSet.FieldByName('PCP_ID_OPR').AsInteger;


         FAT_CD_M_PED.FieldByName('OBS').AsString :=
                    DataSet.FieldByName('OBS').AsString;

         FAT_CD_M_PED.FieldByName('PCP_OBS').AsString :=
                    DataSet.FieldByName('PCP_OBS').AsString;

         FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger :=
                   DataSet.FieldByName('ID_RESPONSAVEL').AsInteger;

         FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger :=
                   DataSet.FieldByName('ID_ATENDENTE').AsInteger;

         FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger :=
                   DataSet.FieldByName('ID_VENDEDOR').AsInteger;

         FAT_CD_M_PED.FieldByName('OFFLINE').AsBoolean := false;

         FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger := 3;

         FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString :=
                  DataSet.FieldByName('DISPOSITIVO').AsString;

         FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat :=
                  DataSet.FieldByName('GPS_LATITUDE').AsFloat;

         FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat :=
                  DataSet.FieldByName('GPS_LONGITUDE').AsFloat;

         FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean := true;

         FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean := false;

       //  FAT_CD_M_PED.FieldByName('QTDE_VOLUME').AsCurrency := 0;
       end;


     FAT_CD_M_PED_ITE_INT.Free;
     FAT_CD_M_PED_ITE_INT := TClientDataSet.Create(nil);
     FAT_CD_M_PED_ITE_INT.SetProvider(BUS_DP_M_PED_ITE_INT);
     FAT_CD_M_PED_ITE_INT.Close;
     FAT_CD_M_PED_ITE_INT.Data :=
            FAT_CD_M_PED_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));



      ItemSel := '';
      CorSel  := '';
      TamSel := '';
      while not FAT_CD_M_PED_ITE_INT.eof do
        begin
          if ItemSel <> '' then
             begin
               ItemSel :=
               ItemSel + ',' +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_ITEM').AsString+'''';

             end
          else
             begin
               ItemSel :=
               ItemSel +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_ITEM').AsString+'''';
             end;

          if CorSel <> '' then
             begin
               CorSel :=
               CorSel + ',' +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_COR').AsString+'''';
             end
          else
             begin
               CorSel :=
               CorSel +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_COR').AsString+'''';
             end;

          if TamSel <> '' then
             begin
               TamSel :=
               TamSel + ',' +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
             end
          else
             begin
               TamSel :=
               TamSel +''''+FAT_CD_M_PED_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
             end;



          FAT_CD_M_PED_ITE_INT.Next;
        end;


     DataSetIte.First;
     while not DataSetIte.Eof do
       begin
         if (DataSetIte.UpdateStatus in [usUnmodified]) then   // Se for alteração no pedido de venda
             begin
                 DataSetIte.Next;
                 if TRIM(DataSetIte.FieldByName('NUM_LOTE').AsString) <> '' then
                      begin
                        if LoteSel <> '' then
                           begin
                             LoteSel :=
                             LoteSel + ',' +''''+TRIM(DataSetIte.FieldByName('NUM_LOTE').AsString)+'''';
                           end
                        else
                           begin
                             LoteSel :=
                             LoteSel +''''+TRIM(DataSetIte.FieldByName('NUM_LOTE').AsString)+'''';
                           end;
                      end;

             end;
          DataSetIte.Next;
       end;


     EST_CD_M_FES := TClientDataSet.Create(nil);
     EST_CD_M_FES.SetProvider(EST_DP_M_FES);
     EST_CD_M_FES.Close;
     EST_CD_M_FES.Data :=
     EST_CD_M_FES.DataRequest(VarArrayOf([6,DataSet.FieldByName('ID_EMPRESA').AsString,
                                                    ItemSel,CorSel,TamSel]));

     EST_CD_M_LOT := TClientDataSet.Create(nil);
     EST_CD_M_LOT.SetProvider(EST_DP_M_LOT);
     EST_CD_M_LOT.Close;
     EST_CD_M_LOT.Data :=
          EST_CD_M_LOT.DataRequest(VarArrayOf([10,DataSet.FieldByName('ID_EMPRESA').AsString,LoteSel,ItemSel,CorSel,TamSel]));



       DataSetIte.First;
        while not DataSetIte.Eof do
           begin
             VlrDescNfe :=0;
             if (DataSetIte.UpdateStatus in [usUnmodified]) then   // Se for alteração no pedido de venda
                 begin
                  qtdeConferida := DataSetIte.FieldByName('qtde_conferida').AsFloat;
                 // qtdeVolIte := DataSetIte.FieldByName('qtde_volume').AsCurrency;
                  DataSetIte.Next;
                  if DataSetIte.FieldByName('QTDE_CONFERIDA').AsString <> '' then
                      begin
                        qtdeConferida := DataSetIte.FieldByName('qtde_conferida').AsCurrency;
                      end;
                   numLote := '';
                  if TRIM(DataSetIte.FieldByName('NUM_LOTE').AsString) <> '' then
                      begin
                        numLote := TRIM(DataSetIte.FieldByName('NUM_LOTE').AsString);
                      end;
                  DataSetIte.Prior;

                  if qtdeConferida >0 then
                     begin
                       FAT_CD_M_NFE_ITE.Insert;
                       FAT_CD_M_NFE_ITE.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                       FAT_CD_M_NFE_ITE.FieldByName('id_fiscal_dev').AsInteger       := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                       FAT_CD_M_NFE_ITE.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;

                       CAD_CD_C_ITE.free;
                       CAD_CD_C_ITE := TClientDataSet.Create(nil);
                       CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                       CAD_CD_C_ITE.close;
                       CAD_CD_C_ITE.Data :=
                          CAD_CD_C_ITE.DataRequest(VarArrayOf([0, FAT_CD_M_NFE_ITE.FieldByName('id_item').text]));

                       FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                       FAT_CD_M_NFE_ITE.FieldByName('id_tributo').AsString         :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                       FAT_CD_M_NFE_ITE.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                       FAT_CD_M_NFE_ITE.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                       FAT_CD_M_NFE_ITE.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                       FAT_CD_M_NFE_ITE.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                       FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat                :=  qtdeConferida;
                       //FAT_CD_M_NFE_ITE.FieldByName('qtde_volume').AsCurrency      :=  qtdeVolIte;

                       if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                          begin
                            FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                          end;
                       if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                          begin
                            FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                          end;

                       FAT_CD_M_NFE_ITE.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                    CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                       FAT_CD_M_NFE_ITE.FieldByName('dre_perc_ircs').AsFloat  :=
                                    CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;

                       FAT_CD_M_NFE_ITE.FieldByName('qtde_devolvida').AsFloat      :=  0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                       FAT_CD_M_NFE_ITE.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                       FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsInteger         := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString             := ' ';
                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString             := ' ';
                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString             := ' ';
                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString             := ' ';

                       FreeAndNil(BUS_CD_C_TRI_REG);
                       BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                       BUS_CD_C_TRI_REG.data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                        dataset.FieldByName('id_tipo_mov_estoque').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,DataSet.FieldByName('id_empresa').AsString);

                       FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString             :=
                                           FatBuscarCfoIte(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                              RegimeSimples,FAT_CD_M_NFE,FAT_CD_M_NFE_ITE, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                       if ((trim(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString) <> '') and
                           (trim(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString) <> 'ISENTO')) then
                         begin
                           FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency     :=
                                      BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                         end
                       else
                         begin
                            FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency  :=
                                      BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                         end;


                       BUS_CD_C_TRI_REG.close;
                       CAD_CD_C_ITE.close;

                       VlrCustoMedio := 0;
                       FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                DataSetIte.FieldByName('ID_ITEM').AsString,
                                                DataSetIte.FieldByName('ID_COR').AsString,
                                                DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                BUS_CD_C_PAR_CTR,EST_DP_M_FES,
                                                VlrCustoMedio);
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                       FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_isenta').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_seguro').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                       //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_n_base').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_n_valor').AsCurrency         := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_s_base').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_s_valor').AsCurrency         := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('ipi_base').AsCurrency               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('ipi_aliquota').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('ipi_valor').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('iss_base').AsCurrency               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('iss_aliquota').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('iss_valor').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_base').AsCurrency               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_percentual').AsCurrency         := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_valor').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_custo').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('pis_base').AsCurrency               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('pis_aliquota').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('pis_valor').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('pis_valor_st').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('cof_base').AsCurrency               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('cof_aliquota').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('cof_valor').AsCurrency              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('cof_valor_st').AsCurrency           := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('nro_pedido').AsInteger              := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('num_lote').AsString                   := numLote;
                       FAT_CD_M_NFE_ITE.FieldByName('para_analise_raa').AsInteger          := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_s_per_mva').AsFloat               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                       FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;


                       if ResulConf=1 then
                         begin
                           FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency   :=
                                 RoundTo(DataSetIte.FieldByName('vlr_unitario').AsCurrency*
                                            qtdeConferida,-2);

                           FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency     :=
                                 RoundTo(DataSetIte.FieldByName('vlr_desconto').AsCurrency*
                                         (qtdeConferida/
                                            DataSetIte.FieldByName('qtde').AsCurrency) ,-2);

                           FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     :=
                                 RoundTo(DataSetIte.FieldByName('vlr_icm_desn').AsCurrency*
                                         (qtdeConferida/
                                            DataSetIte.FieldByName('qtde').AsCurrency) ,-2);

                           VlrDescNfe := FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency;
                           VlrIcmDesnNfeIte := FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency;

                           FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                    RoundTo((FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                       FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency)*100,-2);




                           FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency      :=
                                           FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency -
                                           FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency;
                          end
                       else
                          begin
                             FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency   :=
                                 DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                             FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency     :=
                                 DataSetIte.FieldByName('vlr_desconto').AsCurrency;

                             FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency     :=
                                    DataSetIte.FieldByName('per_desconto').AsCurrency;

                             FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     :=
                                    DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;

                             FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency      :=
                                           DataSetIte.FieldByName('vlr_liquido').AsCurrency;
                          end;

                       VlrMercadoriaNfe :=VlrMercadoriaNfe+FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency;
                       VlrDescontoNfe   :=VlrDescontoNfe+FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency;
                       VlrIcmDesnNFE    :=VlrIcmDesnNFE+FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency;
                       VlrLiquidoNfe    :=VlrLiquidoNfe+(FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency-
                                                         FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency);

                       FAT_CD_M_NFE_ITE.Post;


                       if EST_CD_M_FEA.Locate('ID_PEDIDO;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([DataSetIte.FieldByName('id_pedido').AsString,
                                                                                       DataSetIte.FieldByName('id_item').AsString,
                                                                                       DataSetIte.FieldByName('id_cor').AsString,
                                                                                       DataSetIte.FieldByName('id_tamanho').AsString]),[]) then
                          begin
                            EST_CD_M_FEA.Edit;
                            EST_CD_M_FEA.FieldbyName('QTDE').AsFloat := FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;
                            EST_CD_M_FEA.FieldbyName('NUM_LOTE').AsString := numLote;
                            EST_CD_M_FEA.Post;
                          end;

                      end;

                  if (ResulConf = 1) and
                     ((DataSetIte.FieldByName('QTDE').AsFloat - qtdeConferida) >0) then
                     begin
                       FAT_CD_M_PED_ITE.Insert;
                       FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger       := sm.enValorChave('FAT_TB_M_NFE_ITE');
                       FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger            :=  DataSetIte.FieldByName('id_item').AsInteger;
                       FAT_CD_M_PED_ITE.FieldByName('id_busca_item').AsString       :=  DataSetIte.FieldByName('id_busca_item').AsString;

                       FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger :=
                               DataSetIte.FieldByName('ID_COR').AsInteger;

                       FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                               DataSetIte.FieldByName('ID_TAMANHO').AsInteger;

                       FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                               DataSetIte.FieldByName('VLR_UNITARIO').AsCurrency;

                       FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                               DataSetIte.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

                       FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=
                               DataSetIte.FieldByName('PER_DESC_MAX').AsCurrency;

                       FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat := 0;

                      // FAT_CD_M_PED_ITE.FieldByName('QTDE_VOLUME').AsCurrency := 0;

                       FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat :=
                              DataSetIte.FieldByName('QTDE').AsFloat - qtdeConferida;

                       FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency*
                                 FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;

                       FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                                 DataSetIte.FieldByName('vlr_desconto').AsCurrency-VlrDescNfe;

                       FAT_CD_M_PED_ITE.FieldByName('VLR_ICM_DESN').AsCurrency :=
                                 DataSetIte.FieldByName('vlr_icm_desn').AsCurrency-VlrIcmDesnNfeIte;

                       FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                RoundTo((FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                   FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

                       FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency-
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;


                       VlrMercadoriaPed :=VlrMercadoriaPed+FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency;
                       VlrDescontoPed   :=VlrDescontoPed+FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;
                       VlrIcmDesnPed    :=VlrIcmDesnPed +FAT_CD_M_PED_ITE.FieldByName('vlr_icm_desn').AsCurrency;
                       VlrLiquidoPed    :=VlrLiquidoPed+(FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency-
                                                         FAT_CD_M_PED_ITE.FieldByName('VLR_ICM_DESN').AsCurrency);

                       FAT_CD_M_PED_ITE.Post;

                       if qtdeConferida = 0 then
                          begin
                             if EST_CD_M_FEA.Locate('ID_PEDIDO;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([DataSetIte.FieldByName('id_pedido').AsString,
                                                                                           DataSetIte.FieldByName('id_item').AsString,
                                                                                           DataSetIte.FieldByName('id_cor').AsString,
                                                                                           DataSetIte.FieldByName('id_tamanho').AsString]),[]) then
                              begin
                                EST_CD_M_FEA.Delete;
                              end;
                          end;

                       EST_CD_M_FEA.Insert;
                       EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');
                       EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                       EST_CD_M_FEA.FieldByName('QTDE').AsFloat          := FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat;
                       EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_COR').text           := FAT_CD_M_PED_ITE.FieldByName('ID_COR').text;
                       EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text;
                       EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').Asfloat;

                       EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                       EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                       EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 6;

                       if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                          begin
                            EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                               FAT_CD_M_PED.FieldByName('id_almoxarifado').AsInteger;
                          end;

                       EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                       EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                       EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                       EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                       EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                       EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                       EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                       EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                       EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                       EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                       EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                       EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                       EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                       EST_CD_M_FEA.Post;

                       if EST_CD_M_FES.locate('id_item;id_cor;id_tamanho',VarArrayOf([FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').text,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_COR').text,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text]),[]) then
                         begin
                           EST_CD_M_FES.Edit;
                           EST_CD_M_FES.FieldByName('DATA_ULT_MOVIMENTO').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                           EST_CD_M_FES.Post;
                         end;



                        if (numLote<>'') and EST_CD_M_LOT.locate('id_item;num_lote;id_cor;id_tamanho',VarArrayOf([FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').text,
                                                                                   numLote,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_COR').text,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text]),[]) then
                         begin
                           EST_CD_M_LOT.Edit;
                           EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency    :=
                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency +
                                      qtdeConferida;
                            EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency    :=
                                     EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                           EST_CD_M_LOT.Post;
                         end;





                     end;



                   if FAT_CD_M_PED_ITE_INT.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                      begin
                        FAT_CD_M_PED_ITE_INT.delete;
                      end;
                   DataSetIte.Next;
                 end;
             DataSetIte.Next;
           end;


       DataSetIte := FAT_CD_M_PED_ITE_INT;

       DataSetIte.First;
       while not DataSetIte.Eof do
           begin
              VlrDescNfe := 0;
              if (DataSetIte.FieldByName('QTDE_CONFERIDA').AsFloat) >0 then
               begin
                   FAT_CD_M_NFE_ITE.Insert;
                   FAT_CD_M_NFE_ITE.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                   FAT_CD_M_NFE_ITE.FieldByName('id_fiscal_dev').AsInteger          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                   FAT_CD_M_NFE_ITE.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;

                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0, FAT_CD_M_NFE_ITE.FieldByName('id_item').text]));

                   FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString    :=  CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                   FAT_CD_M_NFE_ITE.FieldByName('id_tributo').AsString           :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                   FAT_CD_M_NFE_ITE.FieldByName('id_sequencia').AsInteger        :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                   FAT_CD_M_NFE_ITE.FieldByName('id_cor').AsInteger              :=  DataSetIte.FieldByName('id_cor').AsInteger;
                   FAT_CD_M_NFE_ITE.FieldByName('id_tamanho').AsInteger          :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;

                   FAT_CD_M_NFE_ITE.FieldByName('int_tipo_item').AsString        :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                   FAT_CD_M_NFE_ITE.FieldByName('qtde').AsCurrency                  :=  DataSetIte.FieldByName('qtde_conferida').AsCurrency;//Era qtde. Resp:Luan.Data:13/10/2017
                   //FAT_CD_M_NFE_ITE.FieldByName('qtde_volume').AsCurrency        :=  DataSetIte.FieldByName('qtde_volume').AsCurrency;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                      begin
                        FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                 FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                      end;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                      begin
                        FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                 FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                      end;

                   FAT_CD_M_NFE_ITE.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                      CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                   FAT_CD_M_NFE_ITE.FieldByName('dre_perc_ircs').AsFloat  :=
                                      CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;

                   FAT_CD_M_NFE_ITE.FieldByName('qtde_devolvida').AsFloat      :=  0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;

                   FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsInteger         := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString             := ' ';
                   FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString             := ' ';
                   FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString             := ' ';
                   FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString             := ' ';

                   FreeAndNil(BUS_CD_C_TRI_REG);
                   BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                   BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                         dataset.FieldByName('id_tipo_mov_estoque').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,DataSet.FieldByName('id_empresa').AsString);

                   FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                                RegimeSimples,FAT_CD_M_NFE,FAT_CD_M_NFE_ITE, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                   if ((trim(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString) <> '') and
                       (trim(BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString) <> 'ISENTO')) then
                      begin
                        FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency     :=
                                       BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                      end
                   else
                      begin
                        FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency  :=
                                       BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                      end;


                   BUS_CD_C_TRI_REG.close;
                   CAD_CD_C_ITE.close;

                   VlrCustoMedio := 0;
                   FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                            DataSetIte.FieldByName('ID_ITEM').AsString,
                                            DataSetIte.FieldByName('ID_COR').AsString,
                                            DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                            BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                            VlrCustoMedio);
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                   FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_isenta').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_seguro').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                   //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_n_base').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_n_valor').AsCurrency         := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_s_base').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_s_valor').AsCurrency         := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('ipi_base').AsCurrency               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('ipi_aliquota').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('ipi_valor').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('iss_base').AsCurrency               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('iss_aliquota').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('iss_valor').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_base').AsCurrency               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_percentual').AsCurrency         := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_valor').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_custo').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('pis_base').AsCurrency               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('pis_aliquota').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('pis_valor').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('pis_valor_st').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('cof_base').AsCurrency               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('cof_aliquota').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('cof_valor').AsCurrency              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('cof_valor_st').AsCurrency           := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('nro_pedido').AsInteger              := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('num_lote').AsString             :=  DataSetIte.FieldByName('num_lote').AsString;

                   FAT_CD_M_NFE_ITE.FieldByName('para_analise_raa').AsInteger          := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_s_per_mva').AsFloat               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                   FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;


                   if ResulConf=1 then
                     begin
                       FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency   :=
                             RoundTo(DataSetIte.FieldByName('vlr_unitario').AsCurrency*
                                        qtdeConferida,-2);

                       FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency     :=
                             RoundTo(DataSetIte.FieldByName('vlr_desconto').AsCurrency*
                                     (qtdeConferida/
                                        DataSetIte.FieldByName('qtde').AsCurrency) ,-2);

                       FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     :=
                             RoundTo(DataSetIte.FieldByName('vlr_icm_desn').AsCurrency*
                                     (qtdeConferida/
                                        DataSetIte.FieldByName('qtde').AsCurrency) ,-2);

                       VlrDescNfe := FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency;
                       VlrIcmDesnNfeIte := FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency;

                       FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                RoundTo((FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                   FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency)*100,-2);




                       FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency      :=
                                       FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency -
                                       FAT_CD_M_NFE_ITE.FieldByName('vlr_deconto').AsCurrency;
                      end
                   else
                      begin
                         FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency   :=
                             DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency     :=
                             DataSetIte.FieldByName('vlr_desconto').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     :=
                             DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency     :=
                                DataSetIte.FieldByName('per_desconto').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency      :=
                                       DataSetIte.FieldByName('vlr_liquido').AsCurrency;
                      end;

                   VlrMercadoriaNfe :=VlrMercadoriaNfe+FAT_CD_M_NFE_ITE.FieldByName('vlr_mercadoria').AsCurrency;
                   VlrDescontoNfe   :=VlrDescontoNfe+FAT_CD_M_NFE_ITE.FieldByName('vlr_desconto').AsCurrency;
                   VlrIcmDesnNfe    :=VlrIcmDesnNfe+FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency;
                   VlrLiquidoNfe    :=VlrLiquidoNfe+(FAT_CD_M_NFE_ITE.FieldByName('vlr_liquido').AsCurrency-
                                                     FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency);

                   FAT_CD_M_NFE_ITE.Post;

                   if EST_CD_M_FEA.Locate('ID_PEDIDO;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([DataSetIte.FieldByName('id_pedido').AsString,
                                                                                       DataSetIte.FieldByName('id_item').AsString,
                                                                                       DataSetIte.FieldByName('id_cor').AsString,
                                                                                       DataSetIte.FieldByName('id_tamanho').AsString]),[]) then
                      begin
                        EST_CD_M_FEA.Edit;
                        EST_CD_M_FEA.FieldbyName('QTDE').AsFloat := FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;
                        EST_CD_M_FEA.FieldbyName('NUM_LOTE').AsString :=  FAT_CD_M_NFE_ITE.FieldByName('num_lote').AsString;
                        EST_CD_M_FEA.Post;
                      end;

                  if (DataSetIte.FieldByName('NUM_LOTE').text<>'') and EST_CD_M_LOT.locate('id_item;num_lote;id_cor;id_tamanho',VarArrayOf([DataSetIte.FieldByName('ID_ITEM').text,
                                                                                   DataSetIte.FieldByName('NUM_LOTE').text,
                                                                                   DataSetIte.FieldByName('ID_COR').text,
                                                                                   DataSetIte.FieldByName('ID_TAMANHO').text]),[]) then
                         begin
                           EST_CD_M_LOT.Edit;
                           EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency    :=
                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency +
                                      DataSetIte.FieldByName('qtde_conferida').AsCurrency;
                            EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency    :=
                                     EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                     EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                           EST_CD_M_LOT.Post;
                         end;
               end;





             if (ResulConf=1) AND
               ((DataSetIte.FieldByName('QTDE').AsFloat - DataSetIte.FieldByName('QTDE_CONFERIDA').AsFloat) >0) then
               begin
                 FAT_CD_M_PED_ITE.Insert;
                 FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsInteger          :=  FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;
                 FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger       := sm.enValorChave('FAT_TB_M_NFE_ITE');
                 FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger            :=  DataSetIte.FieldByName('id_item').AsInteger;
                 FAT_CD_M_PED_ITE.FieldByName('id_busca_item').AsString       :=  DataSetIte.FieldByName('id_busca_item').AsString;

                 FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger :=
                         DataSetIte.FieldByName('ID_COR').AsInteger;

                 FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                         DataSetIte.FieldByName('ID_TAMANHO').AsInteger;

                 FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                         DataSetIte.FieldByName('VLR_UNITARIO').AsCurrency;

                 FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                         DataSetIte.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

                 FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=
                         DataSetIte.FieldByName('PER_DESC_MAX').AsCurrency;

                 FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsCurrency := 0;

                 FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency :=
                        DataSetIte.FieldByName('QTDE').AsCurrency -
                        DataSetIte.FieldByName('QTDE_CONFERIDA').AsCurrency;

                // FAT_CD_M_PED_ITE.FieldByName('QTDE_VOLUME').AsCurrency := 0;

                 FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                           FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency*
                           FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;

                 FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           DataSetIte.FieldByName('vlr_desconto').AsCurrency-VlrDescNfe;

                 FAT_CD_M_PED_ITE.FieldByName('VLR_ICM_DESN').AsCurrency :=
                           DataSetIte.FieldByName('vlr_icm_desn').AsCurrency-VlrIcmDesnNfeIte;

                 FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                          RoundTo((FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                             FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

                 FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                           FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency-
                           FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;


                 VlrMercadoriaPed :=VlrMercadoriaPed+FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency;
                 VlrDescontoPed   :=VlrDescontoPed+FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;
                 VlrIcmDesnPed    :=VlrIcmDesnPed+FAT_CD_M_PED_ITE.FieldByName('vlr_icm_desn').AsCurrency;
                 VlrLiquidoPed    :=VlrLiquidoPed+(FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency-
                                                   FAT_CD_M_PED_ITE.FieldByName('vlr_icm_desn').AsCurrency);

                 FAT_CD_M_PED_ITE.Post;

                  if DataSetIte.FieldByName('QTDE_CONFERIDA').AsFloat = 0 then
                    begin
                       if EST_CD_M_FEA.Locate('ID_PEDIDO;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([DataSetIte.FieldByName('id_pedido').AsString,
                                                                                     DataSetIte.FieldByName('id_item').AsString,
                                                                                     DataSetIte.FieldByName('id_cor').AsString,
                                                                                     DataSetIte.FieldByName('id_tamanho').AsString]),[]) then
                        begin
                          EST_CD_M_FEA.Delete;
                        end;
                    end;



                 EST_CD_M_FEA.Insert;
                 EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := sm.enValorChave('EST_TB_M_FEA');
                 EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger;
                 EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                 EST_CD_M_FEA.FieldByName('QTDE').AsFloat          := FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat;
                 EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                 EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                 EST_CD_M_FEA.FieldByName('ID_COR').text           := FAT_CD_M_PED_ITE.FieldByName('ID_COR').text;
                 EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text;
                 EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').Asfloat;

                 EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                 EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                 EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 6;

                 if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                    begin
                      EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                         FAT_CD_M_PED.FieldByName('id_almoxarifado').AsInteger;
                    end;

                 EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                 EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                 EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                 EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                 EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                 EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                 EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                 EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger;
                 EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                 EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                 EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                 EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                 EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                 EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                 EST_CD_M_FEA.Post;

                 if EST_CD_M_FES.locate('id_item;id_cor;id_tamanho',VarArrayOf([FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').text,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_COR').text,
                                                                                   FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text]),[]) then
                      begin
                        EST_CD_M_FES.Edit;
                        EST_CD_M_FES.FieldByName('DATA_ULT_MOVIMENTO').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                        EST_CD_M_FES.Post;
                      end;

               end;


             DataSetIte.Next;

           end;


       FAT_CD_M_PED_TIT_INT.Free;
       FAT_CD_M_PED_TIT_INT := TClientDataSet.Create(nil);
       FAT_CD_M_PED_TIT_INT.SetProvider(BUS_DP_M_PED_TIT_INT);
       FAT_CD_M_PED_TIT_INT.Close;
       FAT_CD_M_PED_TIT_INT.Data :=
            FAT_CD_M_PED_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));



       DataSetTit := FAT_CD_M_PED_TIT_INT;
       i :=0;
       VlrAcumTitNfe :=0;
       VlrAcumTitPed :=0;
       DataSetTit.First;
       while not DataSetTit.Eof do
         begin
           CAD_CD_C_FPG.Free;
           CAD_CD_C_FPG := TClientDataSet.Create(nil);
           CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
           CAD_CD_C_FPG.close;
           CAD_CD_C_FPG.Data :=
              CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));


           FAT_CD_M_NFE_TIT.Insert;
           FAT_CD_M_NFE_TIT.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
           FAT_CD_M_NFE_TIT.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

           FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

           if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
              begin
                 if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                    begin
                      if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                         begin
                           FAT_CD_M_NFE_TIT.FieldByName('ID_MAQUINETA').AsInteger :=
                                     BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                         end;
                    end;
              end;

           FAT_CD_M_NFE_TIT.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
           FAT_CD_M_NFE_TIT.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
           CAD_CD_C_FPG.Close;

           FAT_CD_M_NFE_TIT.FieldByName('num_parcela').AsString      := '0';
           FAT_CD_M_NFE_TIT.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
           FAT_CD_M_NFE_TIT.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;


           FAT_CD_M_NFE_TIT.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
           FAT_CD_M_NFE_TIT.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
           FAT_CD_M_NFE_TIT.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
           FAT_CD_M_NFE_TIT.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
           FAT_CD_M_NFE_TIT.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;

           if ResulConf = 1 then
              begin
                 if i < (DataSetTit.RecordCount-1) then
                    begin
                      FAT_CD_M_NFE_TIT.FieldByName('vlr_titulo').AsCurrency     :=
                                RoundTo( (DataSetTit.FieldByName('vlr_titulo').AsCurrency/
                                  DataSet.FieldByName('vlr_liquido').AsCurrency)*VlrLiquidoNfe,-2);
                    end
                 else
                    begin
                      FAT_CD_M_NFE_TIT.FieldByName('vlr_titulo').AsCurrency     :=
                                VlrLiquidoNfe-VlrAcumTitNfe;
                    end;
                 VlrAcumTitNfe :=VlrAcumTitNfe+FAT_CD_M_NFE_TIT.FieldByName('vlr_titulo').AsCurrency;
              end
           else
              begin
                 FAT_CD_M_NFE_TIT.FieldByName('vlr_titulo').AsCurrency  :=
                                DataSetTit.FieldByName('vlr_titulo').AsCurrency;
              end;

           FAT_CD_M_NFE_TIT.Post;



           if ResulConf = 1 then
              begin
                 FAT_CD_M_PED_TIT.Insert;
                 FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsInteger :=  FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;
                 FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger := SM.enValorChave('FAT_TB_M_NFE_TIT');


                 FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger :=
                        DataSetTit.FieldByName('DIAS').AsInteger;

                 FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                        DataSetTit.FieldByName('DTA_VENCIMENTO').AsDateTime;


                 FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').AsString :=
                        DataSetTit.FieldByName('CHE_BANCO').AsString;

                 FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').AsString :=
                        DataSetTit.FieldByName('CHE_AGENCIA').AsString;

                 FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsInteger :=
                        DataSetTit.FieldByName('CHE_CONTA').AsInteger;

                 FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger :=
                        DataSetTit.FieldByName('CHE_NUMERO').AsInteger;

                 FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').AsString :=
                        DataSetTit.FieldByName('CHE_EMITENTE').AsString;

                 FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger :=
                        DataSetTit.FieldByName('ID_FORMA_PAG').AsInteger;

                 FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').AsInteger :=
                        DataSetTit.FieldByName('BOL_NOSSO_NUMERO').AsInteger;

                 FAT_CD_M_PED_TIT.FieldByName('ID_MAQUINETA').AsInteger :=
                        DataSetTit.FieldByName('ID_MAQUINETA').AsInteger;


                 if i < (DataSetTit.RecordCount-1) then
                    begin
                      FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency     :=
                                RoundTo( (DataSetTit.FieldByName('vlr_titulo').AsCurrency/
                                  DataSet.FieldByName('vlr_liquido').AsCurrency)*VlrLiquidoPed,-2);
                    end
                 else
                    begin
                      FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency     :=
                                VlrLiquidoPed-VlrAcumTitPed;
                    end;
                 VlrAcumTitPed :=VlrAcumTitPed+FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency;
                 FAT_CD_M_PED_TIT.Post;
              end;


           inc(i);
           DataSetTit.Next;
         end;

    if ResulConf = 1 then
      begin
        FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency     := VlrMercadoriaNfe;
        FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency       := VlrDescontoNfe;
        FAT_CD_M_NFE.FieldByName('vlr_icm_desc').AsCurrency       := VlrIcmDesnNfe;
        FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency        := VlrLiquidoNfe;
      end
    else
      begin
         FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency     :=  DataSet.FieldByName('vlr_bruto').AsCurrency;
         FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency       :=  DataSet.FieldByName('vlr_desconto').AsCurrency;
         FAT_CD_M_NFE.FieldByName('vlr_icm_desc').AsCurrency       :=  DataSet.FieldByName('vlr_icm_desn').AsCurrency;
         FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency        :=  DataSet.FieldByName('vlr_liquido').AsCurrency;
      end;
    FAT_CD_M_NFE.Post;


    if ResulConf = 1 then
      begin
       FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency     := VlrMercadoriaPed;
       FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency       := VlrDescontoPed;
       FAT_CD_M_PED.FieldByName('vlr_icm_desn').AsCurrency       := VlrIcmDesnPed;
       FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency       :=
                         RoundTo((FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency/
                                       FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);
       FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency        := VlrLiquidoPed;

       FAT_CD_M_PED.Post;


      end;

    if FAT_CD_M_NFE <> nil then
      if FAT_CD_M_NFE.ChangeCount > 0 then
         if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
            raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');

    if ResulConf = 1 then
       begin
          if FAT_CD_M_PED <> nil then
            if FAT_CD_M_PED.ChangeCount > 0 then
               if not (FAT_CD_M_PED.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar gerar o registro na tabela de pedido de venda.');
       end;

    if EST_CD_M_FEA <> nil then
            if EST_CD_M_FEA.ChangeCount > 0 then
               if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar gerar o registro na tabela de ficha de estoque.');

    if EST_CD_M_FES <> nil then
            if EST_CD_M_FES.ChangeCount > 0 then
               if not (EST_CD_M_FES.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar atualizar data de ult. movimentação de estoque.');

     if EST_CD_M_LOT <> nil then
            if EST_CD_M_LOT.ChangeCount > 0 then
               if not (EST_CD_M_LOT.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar atualizar movimentação de estoque por lote.');


    finally
     FreeAndNil(CAD_CD_C_PAR);
     FreeAndNil(BUS_CD_C_PAR_CTR);
     FreeAndNil(BUS_CD_C_RAM);
     FreeAndNil(BUS_CD_C_CLI);
     FreeAndNil(CAD_CD_C_TME);
     FreeAndNil(FAT_CD_M_NFE);
     FreeAndNil(EST_CD_M_FEA);
     FreeAndNil(EST_CD_M_FES);
     FreeAndNil(EST_CD_M_LOT);
     FreeAndNil(FAT_CD_M_NFE_ITE);
     FreeAndNil(FAT_CD_M_NFE_TIT);
     FreeAndNil(FAT_CD_M_PED_ITE_INT);
     FreeAndNil(FAT_CD_M_PED_TIT_INT);
     FreeAndNil(CAD_CD_C_CPG);
  end;

end;


function FatGerNfs(origem: integer; DataSet: TCustomClientDataSet; CAD_DP_C_PAR, BUS_DP_C_PAR_CTR,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
                   FAT_DP_M_NFE,BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_TIT_INT,BUS_DP_M_ORV_ITE_INT,BUS_DP_M_ORV_TIT_INT,
                   BUS_DP_M_ORV_TIT_SER_INT,
                   BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT, BUS_DP_C_CLI, BUS_DP_C_RAM, BUS_DP_C_TRI_REG,DP_BR_CUPOM_MESTRE:TDataSetProvider;
                   Conn: TSQLConnection; SmAtual: TSM): Boolean;

var
  CAD_CD_C_PAR,BUS_CD_C_PAR_CTR,CAD_CD_C_TME: TClientDataSet;
  FAT_CD_M_NFE,FAT_CD_M_NFE_ITE,FAT_CD_M_NFE_TIT,
  FAT_CD_M_NFE_2,FAT_CD_M_NFE_ITE_2,FAT_CD_M_NFE_TIT_2,
  OFI_CD_M_ORV_ITE_INT,OFI_CD_M_ORV_TIT_INT,OFI_CD_M_ORV_TIT_SER_INT,
  FAT_CD_M_PED_ITE_INT,FAT_CD_M_PED_TIT_INT,BUS_CD_C_RAM, BUS_CD_C_CLI,
  CD_BR_CUPOM_MESTRE, CAD_CD_C_CPG,BUS_CD_M_NFE_INT: TClientDataSet;
  Cfop: String;
  StatusOS_Ant, StatusOS_Atual,tipoOS: Integer;
  DataSetIte,  DataSetTit, DataSetTitSer,BUS_CD_C_PAR_MOD,
  CD_BR_CUPOM_DETALHE,CD_BR_CUPOM_PAGAMENTO: TDataSet;
  OrvVlrTotProAnt,  OrvVlrTotServAnt, OrvVlrTotServTercAnt: Currency;
  OrvVlrTotDescProAnt,  OrvVlrTotDescServAnt, OrvVlrTotDescServTercAnt: Currency;
  OrvVlrTotLiqProAnt,  OrvVlrTotLiqServAnt, OrvVlrTotLiqServTercAnt: Currency;

  OrvVlrTotProAtu, OrvVlrTotServAtu, OrvVlrTotServTercAtu,
  OrvVlrTotDescProAtu, OrvVlrTotDescServAtu, OrvVlrTotDescServTercAtu,
  OrvVlrTotLiqProAtu,  OrvVlrTotLiqServAtu, OrvVlrTotLiqServTercAtu,
  OrvVlrTotDespAtu: Currency;
  OrvDtaFechamento: TDate;
  EmpRegimeSimples: Boolean;
  PedAprovado: Boolean;
  PedEnviaCarga:Boolean;
  PedConferido:Boolean;
  CodCliente,NumerosNF: String;
  CondPagamento,CodVendedor,CodClientePed:Integer;

  BUS_CD_M_PED_ORS: TClientDataSet; // Usado pela Origem = 5; (PCP_FM_M_ORS)
  PCP_CD_M_ORS_ITE_INT,PCP_CD_M_ORS_TIT_INT: TClientDataSet;

  IdAbertura,ultSeqFatOrdem,ModFrete :integer;

  VlrMercadoria,VlrDesconto,VlrDescEspecial,VlrLiquido,VlrFrete,VlrIcmDesn: Currency;
  SeparaPecServ, orv_gera_fin_separado,ped_gera_fin_separado: Boolean;
  Placa:String;

  path_arq: string;
begin
  { TODO -oMaxsuel -cCriação :
     Método criado em 21/08/2015;
     Tem a função de gerar a NF de saída do documento origem }

  {
     origem
        1 - Fechamento de O.S
        2 - Pedido de Venda
        3 - Gerar NFs partindo do BR_CUPOM_MESTRE (GerConWin), 15/02/2016, Maxsuel Victor
        4 - Pedido de Venda cupom (FAT_FM_M_PNF)
        5 - Ordem de Faturamento (PCP_FM_M_ORS)
  }

   try
      SM := SmAtual;

      xConn := Conn;

      // Buscar dados da empresa
      CAD_CD_C_PAR := TClientDataSet.Create(nil);
      CAD_CD_C_PAR.SetProvider(CAD_DP_C_PAR);
      CAD_CD_C_PAR.Close;
      CAD_CD_C_PAR.Data :=
          CAD_CD_C_PAR.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_EMPRESA').AsString]));

      // Buscar dados do parâmetros de controle
      BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
      BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
      BUS_CD_C_PAR_CTR.Close;
      BUS_CD_C_PAR_CTR.Data :=
          BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('ID_EMPRESA').AsString]));

      BUS_CD_C_PAR_MOD := TDataSetField(BUS_CD_C_PAR_CTR.FieldByName('BUS_SQ_C_PAR_MOD')).NestedDataSet;


      // Buscar dados do ramo de atividade empresa
      EmpRegimeSimples := false;

      BUS_CD_C_RAM := TClientDataSet.Create(nil);
      BUS_CD_C_RAM.SetProvider(BUS_DP_C_RAM);
      BUS_CD_C_RAM.Close;
      BUS_CD_C_RAM.Data :=
              BUS_CD_C_RAM.DataRequest(VarArrayOf([0,CAD_CD_C_PAR.FieldByName('id_ramo').AsString]));
      if not BUS_CD_C_RAM.IsEmpty then
         if BUS_CD_C_RAM.FieldByName('regime_tributario').AsInteger = 0 then
            EmpRegimeSimples := true;

     if origem <> 3 then // Se for diferente de Geração de Cupon GerConWin -> 15/02/2016, Maxsuel Victor
        begin
          // Busca de dados do cliente
          BUS_CD_C_CLI := TClientDataSet.Create(nil);
          BUS_CD_C_CLI.SetProvider(BUS_DP_C_CLI);
          BUS_CD_C_CLI.Close;

          if origem = 5 then
             begin
               // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
               //SM := TSM.Create(nil);
               BUS_CD_M_PED_ORS := TClientDataSet.Create(nil);
               BUS_CD_M_PED_ORS.SetProvider(sm.FAT_DP_M_PED);
               BUS_CD_M_PED_ORS.Close;
               BUS_CD_M_PED_ORS.Data :=
                     BUS_CD_M_PED_ORS.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_EMPRESA').AsString,DataSet.FieldByName('ID_PEDIDO').AsString]));


               BUS_CD_C_CLI.Data :=
                  BUS_CD_C_CLI.DataRequest(VarArrayOf([0,BUS_CD_M_PED_ORS.FieldByName('id_cliente').AsString]));

               // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
               //FreeAndNil(SM);

               IdAbertura := DataSet.FieldByName('id_abertura').AsInteger;
               if (DataSet.UpdateStatus in [usUnmodified]) then
                   begin
                     DataSet.Next;
                     if (DataSet.UpdateStatus in [usModified]) then
                        if DataSet.FieldByName('id_abertura').text <> '' then
                           IdAbertura := DataSet.FieldByName('id_abertura').AsInteger;
                     DataSet.Prior;
                   end;

             end
          else
             begin
               BUS_CD_C_CLI.Data :=
                  BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dataset.FieldByName('id_cliente').AsString]));
             end;
        end;




      if origem = 1 then // Fechamento de O.S
         begin

            if (DataSet.UpdateStatus in [usUnmodified]) then
                begin
                  StatusOS_Ant   := DataSet.FieldByName('status').AsInteger;
                  StatusOS_Atual := DataSet.FieldByName('status').AsInteger;
                  tipoOS         := DataSet.FieldByName('int_tipo_os').AsInteger;
                  if DataSet.FieldByName('separa_prod_serv').text <> '' then
                     SeparaPecServ := DataSet.FieldByName('separa_prod_serv').AsBoolean;

                  orv_gera_fin_separado := DataSet.FieldByName('orv_gera_fin_separado').AsBoolean;

                  DataSet.Next;
                  if DataSet.FieldByName('status').text <> '' then
                     begin
                       StatusOS_Atual := DataSet.FieldByName('status').AsInteger;
                     end;

                  if DataSet.FieldByName('separa_prod_serv').text <> '' then
                     SeparaPecServ := DataSet.FieldByName('separa_prod_serv').AsBoolean;

                  if DataSet.FieldByName('int_tipo_os').text <> '' then
                     tipoOS := DataSet.FieldByName('int_tipo_os').AsInteger;

                  if DataSet.FieldByName('orv_gera_fin_separado').Text <> '' then
                     orv_gera_fin_separado := DataSet.FieldByName('orv_gera_fin_separado').AsBoolean;

                  DataSet.Prior;
                end;

            if (tipoOS = 0) then
               begin
                FAT_CD_M_NFE := TClientDataSet.Create(nil);
                FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
                FAT_CD_M_NFE.Close;
                FAT_CD_M_NFE.Data :=
                     FAT_CD_M_NFE.DataRequest(VarArrayOf([13,DataSet.FieldByName('ID_ORDEM').AsString]));
               end
            else if (tipoOS = 1) then
               begin
                FAT_CD_M_NFE := TClientDataSet.Create(nil);
                FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
                FAT_CD_M_NFE.Close;
                FAT_CD_M_NFE.Data :=
                     FAT_CD_M_NFE.DataRequest(VarArrayOf([116,'0','0']));

               { SM := TSM.Create(nil);
                BUS_CD_M_NFE_INT := TClientDataSet.Create(nil);
                BUS_CD_M_NFE_INT.SetProvider(sm.BUS_DP_M_NFE_INT);
                BUS_CD_M_NFE_INT.Close;
                BUS_CD_M_NFE_INT.Data :=
                         BUS_CD_M_NFE_INT.DataRequest(VarArrayOf([91,DataSet.FieldByName('ID_ORDEM').AsInteger]));
                ultSeqFatOrdem :=0;
                ultSeqFatOrdem :=  BUS_CD_M_NFE_INT.FieldByName('ID_SEQ_FAT_GAR').AsInteger;
                 FreeAndNil(SM);}
               end;

            if (DataSet.UpdateStatus in [usUnmodified]) and ( StatusOS_Atual = 2)  then   // Se for alteração no ORV e Status = 2 (Fechado)
                begin

                 if (tipoOS = 0) then
                  begin
                    while not (FAT_CD_M_NFE.eof) do
                        begin
                          FAT_CD_M_NFE.delete;
                        end;
                  end;

                  DataSetIte    := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;


                  // Buscar os itens da ORV
                  OFI_CD_M_ORV_ITE_INT := TClientDataSet.Create(nil);
                  OFI_CD_M_ORV_ITE_INT.SetProvider(BUS_DP_M_ORV_ITE_INT);
                  OFI_CD_M_ORV_ITE_INT.Close;
                  OFI_CD_M_ORV_ITE_INT.Data :=
                  OFI_CD_M_ORV_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('id_ordem').AsString]));

                  DataSetIte.First;
                  while not DataSetIte.Eof do
                    begin
                      if DataSetIte.UpdateStatus in [usUnmodified] then
                        begin
                          if OFI_CD_M_ORV_ITE_INT.Locate('ID_SEQUENCIA',DataSetIte.FieldByName('ID_SEQUENCIA').AsString,[]) then
                            begin
                              OFI_CD_M_ORV_ITE_INT.Delete;
                            end;
                          DataSetIte.Next;
                        end;
                        DataSetIte.Next;
                    end;

                  // Buscar dados do tipo de movimento de estoque
                  CAD_CD_C_TME := TClientDataSet.Create(nil);
                  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                  CAD_CD_C_TME.Close;
                  CAD_CD_C_TME.Data :=
                        CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString]));

                  // Buscar o CFOP
                  if DataSet.FieldByName('int_pessoacli').AsInteger = 0 then // Física
                     begin
                       if DataSet.FieldByName('int_ufcli').AsString =
                          CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                          begin
                               Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                          end
                       else
                          Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                      end;
                  if DataSet.FieldByName('int_pessoacli').AsInteger = 1 then // Física
                     begin
                         if DataSet.FieldByName('int_ufcli').AsString =
                            CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                            begin
                               Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                            end
                         else
                            Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
                     end;
                  //------------------------------------------------------------------------------------

                  OrvVlrTotProAtu          := DataSet.FieldByName('vlr_produtos').AsCurrency;
                  OrvVlrTotServAtu         := DataSet.FieldByName('vlr_serv_bruto').AsCurrency;
                  OrvVlrTotServTercAtu     := DataSet.FieldByName('vlr_terceiro').AsCurrency;
                  OrvVlrTotDescProAtu      := DataSet.FieldByName('vlr_desc_produtos').AsCurrency;
                  OrvVlrTotDescServAtu     := DataSet.FieldByName('vlr_desc_servicos').AsCurrency;
                  OrvVlrTotDescServTercAtu := DataSet.FieldByName('vlr_desc_terceiro').AsCurrency;
                  OrvVlrTotLiqProAtu       := DataSet.FieldByName('vlr_prod_liquido').AsCurrency;
                  OrvVlrTotLiqServAtu      := DataSet.FieldByName('vlr_ser_liquido').AsCurrency;
                  OrvVlrTotLiqServTercAtu  := DataSet.FieldByName('vlr_terc_liquido').AsCurrency;
                  OrvVlrTotDespAtu         := DataSet.FieldByName('vlr_despesas').AsCurrency;
                  tipoOS                   := DataSet.FieldByName('int_tipo_os').AsInteger;

                  if DataSet.FieldByName('dta_fechamento').AsString <> '' then
                     OrvDtaFechamento := DataSet.FieldByName('dta_fechamento').AsDateTime;

                  DataSet.Next;


                  if DataSet.FieldByName('dta_fechamento').AsString <> '' then
                     OrvDtaFechamento := DataSet.FieldByName('dta_fechamento').AsDateTime;

                  if DataSet.FieldByName('vlr_produtos').AsString <> '' then
                     OrvVlrTotProAtu := DataSet.FieldByName('vlr_produtos').AsCurrency;

                  if DataSet.FieldByName('vlr_serv_bruto').AsString <> '' then
                     OrvVlrTotServAtu := DataSet.FieldByName('vlr_serv_bruto').AsCurrency;

                  if DataSet.FieldByName('vlr_terceiro').AsString <> '' then
                     OrvVlrTotServTercAtu := DataSet.FieldByName('vlr_terceiro').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_produtos').AsString <> '' then
                     OrvVlrTotDescProAtu     := DataSet.FieldByName('vlr_desc_produtos').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_servicos').AsString <> '' then
                     OrvVlrTotDescServAtu := DataSet.FieldByName('vlr_desc_servicos').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_terceiro').AsString <> '' then
                     OrvVlrTotDescServTercAtu := DataSet.FieldByName('vlr_desc_terceiro').AsCurrency;

                  if DataSet.FieldByName('vlr_prod_liquido').AsString <> '' then
                     OrvVlrTotLiqProAtu := DataSet.FieldByName('vlr_prod_liquido').AsCurrency;

                  if DataSet.FieldByName('vlr_ser_liquido').AsString <> '' then
                     OrvVlrTotLiqServAtu := DataSet.FieldByName('vlr_ser_liquido').AsCurrency;

                  if DataSet.FieldByName('vlr_terc_liquido').AsString <> '' then
                     OrvVlrTotLiqServTercAtu := DataSet.FieldByName('vlr_terc_liquido').AsCurrency;

                  if DataSet.FieldByName('vlr_despesas').AsString <> '' then
                     OrvVlrTotDespAtu         := DataSet.FieldByName('vlr_despesas').AsCurrency;

                  if DataSet.FieldByName('int_tipo_os').text <> '' then
                     tipoOS := DataSet.FieldByName('int_tipo_os').AsInteger;

                  DataSet.Prior;
                  //if not (BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean) then
                  //if OrvVlrTotLiqProAtu > 0 then
                  //   begin
                        // Busca os itens da nota fiscal para deletar todos
                  if (SeparaPecServ = false) or (SeparaPecServ = true and (OrvVlrTotProAtu > 0) ) then
                     begin
                        FAT_CD_M_NFE_ITE.Free;
                        FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                        FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                        FAT_CD_M_NFE_ITE.Close;
                        FAT_CD_M_NFE_ITE.Data :=
                            FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([0,'''0''']));

                        // Busca os títulos da nota fiscal para deletar todos
                        FAT_CD_M_NFE_TIT.Free;
                        FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                        FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                        FAT_CD_M_NFE_TIT.Close;
                        FAT_CD_M_NFE_TIT.Data :=
                              FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([0]));


                        if not FAT_CD_M_NFE.IsEmpty then
                           begin
                             //
                           end
                        else
                           begin
                              FAT_CD_M_NFE.Insert;
                              FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                              FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                              FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                              FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
                              FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
                              FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := DataSet.FieldByName('ID_ORDEM').AsInteger;
                              if tipoOS = 0 then
                                begin
                                  FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger        := 0;
                                end
                              else if tipoOS = 1 then
                                begin
                                    FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger       := DataSet.FieldByName('ID_ORDEM').AsInteger;
                                    FAT_CD_M_NFE.FieldByName('ID_SEQ_FAT_GAR').AsInteger         := 4;
                                end;

                              FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
                              FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
                              FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
                              FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                              FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
                              FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                              FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                              FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
                              FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

                              FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                              FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
                              FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';

                              // Se for oficina de veículo
                              if (DataSet.FieldByName('id_veiculo').AsString <> '') then
                                  if (DataSet.FieldByName('int_placa').AsString <> '') then
                                      FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString               :=
                                              'Placa: ' + DataSet.FieldByName('int_placa').AsString +
                                              ' - KM: ' + DataSet.FieldByName('km_atual').AsString;
                              FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
                              FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
                              FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                              FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

                              FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;

                              if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                                 begin
                                   FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                                 end;

                              FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
                              FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'C';
                              FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                              FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                              FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
                              FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
                              FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
                              FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
                              FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
                              FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
                              FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
                              FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                              FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
                              FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

                              FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime            := OrvDtaFechamento;
                              FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime          := OrvDtaFechamento;
                              FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                              FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
                              FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
                              FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
                              FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
                              FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
                              FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
                              FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;

                              FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsInteger;
                              FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := DataSet.FieldByName('id_condicao_pag').AsInteger;
                              FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
                              //FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := DataSet.FieldByName('ID_RESPONSAVEL').AsInteger;

                              FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_ufcli').AsString;
                              FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                              FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency        := OrvVlrTotDespAtu;
                              FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger                  := 1;

                              // Comentado por Maxsuel , 06/10/2016
                              // if BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                              if SeparaPecServ then
                                 begin
                                   FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency :=
                                           OrvVlrTotProAtu ;

                                   FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency    :=
                                           OrvVlrTotDescProAtu;

                                   FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency     :=
                                           OrvVlrTotLiqProAtu;
                                 end
                              else
                                 begin
                                   FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency :=
                                           OrvVlrTotProAtu + OrvVlrTotServAtu +
                                           OrvVlrTotServTercAtu;
                                   FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency    :=
                                           OrvVlrTotDescProAtu + OrvVlrTotDescServAtu +
                                           OrvVlrTotDescServTercAtu;
                                   FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency     :=
                                           OrvVlrTotLiqProAtu +
                                           OrvVlrTotLiqServAtu +  OrvVlrTotLiqServTercAtu;

                                    FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger           := 3;
                                 end;
                              FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;
                              FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
                              FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
                              FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
                              FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
                              FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
                              FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

                              FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
                              FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

                              FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
                              FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

                              FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;
                              FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

                              FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

                              FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
                              FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
                              FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

                              FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
                              FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
                              FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

                              FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
                              FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
                              FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
                              FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';

                           end;

                        DataSetTit    := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_TIT')).NestedDataSet;

                        //if DataSetTit.IsEmpty then
                        //   begin
                             // Buscar os títulos da ORV
                             OFI_CD_M_ORV_TIT_INT := TClientDataSet.Create(nil);
                             OFI_CD_M_ORV_TIT_INT.SetProvider(BUS_DP_M_ORV_TIT_INT);
                             OFI_CD_M_ORV_TIT_INT.Close;
                             OFI_CD_M_ORV_TIT_INT.Data :=
                                OFI_CD_M_ORV_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('id_ordem').AsString]));

                            // DataSetTit :=  OFI_CD_M_ORV_TIT_INT;
                        //   end;


                        // Comentado por Maxsuel , 06/10/2016
                        //if BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                        if SeparaPecServ then
                           begin
                             // Irá gravar somente os itens nesta nota fiscal.
                             if not DataSetIte.IsEmpty then
                               begin
                                FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, DataSetIte{OFI_CD_M_ORV_ITE_INT},1,
                                          BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                          EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,0);
                               end;
                             if OFI_CD_M_ORV_ITE_INT.RecordCount>0 then
                               begin
                                FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, OFI_CD_M_ORV_ITE_INT,1,
                                          BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                          EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,1);
                               end;
                           end
                        else
                           begin
                             // Irá gravar os itens e serviços em uma única nota fiscal.
                             if not DataSetIte.IsEmpty then
                               begin
                                FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, DataSetIte{OFI_CD_M_ORV_ITE_INT},3,
                                          BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                          EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,0);
                               end;
                              if OFI_CD_M_ORV_ITE_INT.RecordCount>0 then
                               begin
                                 FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE,OFI_CD_M_ORV_ITE_INT,3,
                                          BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                          EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,1);
                               end;

                           end;
                        AtualiarPesoNf(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE);

                        FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT, DataSetTit,OFI_CD_M_ORV_TIT_INT);

                        OFI_CD_M_ORV_TIT_INT.Close;

                        FAT_CD_M_NFE.post;
                     end;

                  // Comentado por Maxsuel , 06/10/2016
                  //if BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                  if SeparaPecServ then
                     begin
                       if (OrvVlrTotServAtu + OrvVlrTotServTercAtu) > 0 then
                          begin
                              FAT_CD_M_NFE_2 := TClientDataSet.Create(nil);
                              FAT_CD_M_NFE_2.SetProvider(FAT_DP_M_NFE);
                              FAT_CD_M_NFE_2.Close;
                              FAT_CD_M_NFE_2.Data :=
                                       FAT_CD_M_NFE_2.DataRequest(VarArrayOf([0,'']));

                               // Buscar dados dos itens da nota fiscal
                              FAT_CD_M_NFE_ITE_2 := TClientDataSet.Create(nil);
                              FAT_CD_M_NFE_ITE_2.SetProvider(BUS_DP_M_NFE_ITE_INT);
                              FAT_CD_M_NFE_ITE_2.Close;
                              FAT_CD_M_NFE_ITE_2.Data :=
                                  FAT_CD_M_NFE_ITE_2.DataRequest(VarArrayOf([0,'''0''']));


                              // Buscar dados dos títulos da nota fiscal
                              FAT_CD_M_NFE_TIT_2 := TClientDataSet.Create(nil);
                              FAT_CD_M_NFE_TIT_2.SetProvider(BUS_DP_M_NFE_TIT_INT);
                              FAT_CD_M_NFE_TIT_2.Close;
                              FAT_CD_M_NFE_TIT_2.Data :=
                                  FAT_CD_M_NFE_TIT_2.DataRequest(VarArrayOf([0]));


                              if not FAT_CD_M_NFE_2.IsEmpty then
                                 begin
                                    //
                                 end
                              else
                                 begin
                                    FAT_CD_M_NFE_2.Insert;
                                    FAT_CD_M_NFE_2.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                                    FAT_CD_M_NFE_2.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                                    FAT_CD_M_NFE_2.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                                    FAT_CD_M_NFE_2.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
                                    FAT_CD_M_NFE_2.FieldByName('id_pedido_compra').AsInteger        := 0;
                                    FAT_CD_M_NFE_2.FieldByName('ID_ORDEM').AsInteger                := DataSet.FieldByName('ID_ORDEM').AsInteger;
                                    FAT_CD_M_NFE_2.FieldByName('ID_IQM').AsInteger                  := 0;
                                    FAT_CD_M_NFE_2.FieldByName('NRO_TERMO').AsInteger               := 0;
                                    FAT_CD_M_NFE_2.FieldByName('id_transportadora').AsInteger       := 0;
                                    FAT_CD_M_NFE_2.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                                    FAT_CD_M_NFE_2.FieldByName('PREVENDA').AsBoolean                := false;
                                    FAT_CD_M_NFE_2.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                                    FAT_CD_M_NFE_2.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                                    FAT_CD_M_NFE_2.FieldByName('CANC_MOTIVO').AsString              := '';
                                    FAT_CD_M_NFE_2.FieldByName('CANC_USUARIO').AsString             := '';

                                    FAT_CD_M_NFE_2.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                                    FAT_CD_M_NFE_2.FieldByName('PESO_BRUTO').AsFloat                := 0;
                                    FAT_CD_M_NFE_2.FieldByName('NFE_OBS').AsString                  := '';

                                    // Se for oficina de veículo
                                    if (DataSet.FieldByName('id_veiculo').AsString <> '') then
                                        if (DataSet.FieldByName('int_placa').AsString <> '') then
                                            FAT_CD_M_NFE_2.FieldByName('NFE_OBS').AsString :=
                                              'Placa: ' + DataSet.FieldByName('int_placa').AsString +
                                              ' - KM: ' + DataSet.FieldByName('km_atual').AsString;

                                    FAT_CD_M_NFE_2.FieldByName('NFE_PROTOCOLO').AsString            := '';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_RECIBO').AsString               := '';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_CANC_STATUS').AsString          := '';

                                    FAT_CD_M_NFE_2.FieldByName('ID_EMITENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;

                                    if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                                       begin
                                         FAT_CD_M_NFE_2.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                                       end;

                                    FAT_CD_M_NFE_2.FieldByName('NFE_COD_SIT').AsString              := '00';
                                    FAT_CD_M_NFE_2.FieldByName('ORIGEM_NF').AsString                := 'C';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_FINALIDADE').AsString           := '1';
                                    FAT_CD_M_NFE_2.FieldByName('IND_OPERACAO').AsInteger            := 1;
                                    FAT_CD_M_NFE_2.FieldByName('IND_EMITENTE').AsInteger            := 0;
                                    FAT_CD_M_NFE_2.FieldByName('IND_FRETE').AsInteger               := 0;
                                    FAT_CD_M_NFE_2.FieldByName('POSVENDA').AsBoolean                := false;
                                    FAT_CD_M_NFE_2.FieldByName('FATURADA').AsBoolean                := false;
                                    FAT_CD_M_NFE_2.FieldByName('STATUS').AsInteger                  := 0;
                                    FAT_CD_M_NFE_2.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                                    FAT_CD_M_NFE_2.FieldByName('TIPO_NF').AsString                  := 'S';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_ECF').AsInteger                 := 0;

                                    FAT_CD_M_NFE_2.FieldByName('DTA_EMISSAO').AsDateTime            := OrvDtaFechamento;
                                    FAT_CD_M_NFE_2.FieldByName('DTA_DOCUMENTO').AsDateTime          := OrvDtaFechamento;
                                    FAT_CD_M_NFE_2.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                                    FAT_CD_M_NFE_2.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
                                    FAT_CD_M_NFE_2.FieldByName('NUMERO').AsInteger                  := 0;
                                    FAT_CD_M_NFE_2.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
                                    FAT_CD_M_NFE_2.FieldByName('SUB_SERIE').AsString                := ' ';
                                    FAT_CD_M_NFE_2.FieldByName('MODELO').AsString                   := ' ';
                                    FAT_CD_M_NFE_2.FieldByName('NFE_CHAVE').AsString                := '';
                                    FAT_CD_M_NFE_2.FieldByName('ID_ABERTURA').AsInteger             := 0;

                                    FAT_CD_M_NFE_2.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsInteger;
                                    FAT_CD_M_NFE_2.FieldByName('ID_CONDICAO_PAG').AsInteger         := DataSet.FieldByName('id_condicao_pag').AsInteger;

                                    if DataSet.FieldByName('int_ufcli').AsString =
                                        CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                                       begin
                                          FAT_CD_M_NFE_2.FieldByName('ID_CFO').AsString  :=
                                              CAD_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString;
                                       end
                                    else
                                       begin
                                          FAT_CD_M_NFE_2.FieldByName('ID_CFO').AsString  :=
                                              CAD_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString;
                                       end;


                                    //FAT_CD_M_NFE_2.FieldByName('ID_VENDEDOR').AsInteger             := DataSet.FieldByName('ID_RESPONSAVEL').AsInteger;

                                    FAT_CD_M_NFE_2.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_ufcli').AsString;

                                    FAT_CD_M_NFE_2.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;

                                    FAT_CD_M_NFE_2.FieldByName('vlr_mercadoria').AsCurrency :=
                                           OrvVlrTotServAtu +
                                           OrvVlrTotServTercAtu;
                                    FAT_CD_M_NFE_2.FieldByName('vlr_desconto').AsCurrency    :=
                                           OrvVlrTotDescServAtu +
                                           OrvVlrTotDescServTercAtu;
                                    FAT_CD_M_NFE_2.FieldByName('vlr_liquido').AsCurrency     :=
                                           OrvVlrTotLiqServAtu +  OrvVlrTotLiqServTercAtu;

                                    FAT_CD_M_NFE_2.FieldByName('vlr_isenta').AsCurrency      := 0;
                                    FAT_CD_M_NFE_2.FieldByName('vlr_outras').AsCurrency      := 0;
                                    FAT_CD_M_NFE_2.FieldByName('vlr_outras_desp').AsCurrency := 0;
                                    FAT_CD_M_NFE_2.FieldByName('vlr_seguro').AsCurrency      := 0;

                                    FAT_CD_M_NFE_2.FieldByName('icm_n_valor').AsCurrency     := 0;
                                    FAT_CD_M_NFE_2.FieldByName('icm_n_base').AsCurrency      := 0;
                                    FAT_CD_M_NFE_2.FieldByName('icm_s_valor').AsCurrency     := 0;
                                    FAT_CD_M_NFE_2.FieldByName('icm_s_base').AsCurrency      := 0;

                                    FAT_CD_M_NFE_2.FieldByName('ipi_base').AsCurrency        := 0;
                                    FAT_CD_M_NFE_2.FieldByName('ipi_valor').AsCurrency       := 0;

                                    FAT_CD_M_NFE_2.FieldByName('iss_base').AsCurrency        := 0;
                                    FAT_CD_M_NFE_2.FieldByName('iss_valor').AsCurrency       := 0;

                                    FAT_CD_M_NFE_2.FieldByName('fre_base').AsCurrency        := 0;
                                    FAT_CD_M_NFE_2.FieldByName('fre_valor').AsCurrency       := 0;

                                    FAT_CD_M_NFE_2.FieldByName('fre_custo').AsCurrency       := 0;

                                    FAT_CD_M_NFE_2.FieldByName('cof_valor').AsCurrency       := 0;
                                    FAT_CD_M_NFE_2.FieldByName('cof_base').AsCurrency        := 0;
                                    FAT_CD_M_NFE_2.FieldByName('cof_valor_st').AsCurrency    := 0;

                                    FAT_CD_M_NFE_2.FieldByName('pis_valor').AsCurrency       := 0;
                                    FAT_CD_M_NFE_2.FieldByName('pis_valor_st').AsCurrency    := 0;
                                    FAT_CD_M_NFE_2.FieldByName('pis_base').AsCurrency        := 0;

                                    FAT_CD_M_NFE_2.FieldByName('ecf_serial_impressora').AsString := '';
                                    FAT_CD_M_NFE_2.FieldByName('ecf_marca_impressora').AsString  := '';
                                    FAT_CD_M_NFE_2.FieldByName('ecf_modelo_impressora').AsString := '';
                                    FAT_CD_M_NFE_2.FieldByName('ecf_caixa').AsString             := '';
                                    FAT_CD_M_NFE_2.FieldByName('ind_nf').AsInteger               := 2;
                                 end;

                           if orv_gera_fin_separado then
                              DataSetTitSer := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_TIT_SER')).NestedDataSet
                           else
                              begin
                                if OrvVlrTotProAtu = 0 then
                                   begin
                                     DataSetTitSer := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_TIT')).NestedDataSet;
                                   end
                                else
                                   DataSetTitSer := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_TIT_SER')).NestedDataSet
                              end;

                              //DataSetIte    := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;
                              //DataSetTitSer := TDataSetField(Dataset.FieldByName('OFI_SQ_M_ORV_TIT_SER')).NestedDataSet;

                             // if DataSetTitSer.IsEmpty then
                             //    begin
                                    // Buscar os títulos de serviço da ORV
                                if orv_gera_fin_separado then
                                   begin
                                     OFI_CD_M_ORV_TIT_SER_INT := TClientDataSet.Create(nil);
                                     OFI_CD_M_ORV_TIT_SER_INT.SetProvider(BUS_DP_M_ORV_TIT_SER_INT);
                                     OFI_CD_M_ORV_TIT_SER_INT.Close;
                                     OFI_CD_M_ORV_TIT_SER_INT.Data :=
                                           OFI_CD_M_ORV_TIT_SER_INT.DataRequest(VarArrayOf([DataSet.FieldByName('id_ordem').AsString]));
                                   end
                                else
                                   begin
                                     if OrvVlrTotProAtu = 0 then
                                        begin
                                         OFI_CD_M_ORV_TIT_SER_INT := TClientDataSet.Create(nil);
                                         OFI_CD_M_ORV_TIT_SER_INT.SetProvider(BUS_DP_M_ORV_TIT_INT);
                                         OFI_CD_M_ORV_TIT_SER_INT.Close;
                                         OFI_CD_M_ORV_TIT_SER_INT.Data :=
                                               OFI_CD_M_ORV_TIT_SER_INT.DataRequest(VarArrayOf([DataSet.FieldByName('id_ordem').AsString]));
                                        end
                                     else
                                        begin
                                          OFI_CD_M_ORV_TIT_SER_INT := TClientDataSet.Create(nil);
                                          OFI_CD_M_ORV_TIT_SER_INT.SetProvider(BUS_DP_M_ORV_TIT_SER_INT);
                                          OFI_CD_M_ORV_TIT_SER_INT.Close;
                                          OFI_CD_M_ORV_TIT_SER_INT.Data :=
                                                 OFI_CD_M_ORV_TIT_SER_INT.DataRequest(VarArrayOf([DataSet.FieldByName('id_ordem').AsString]));
                                        end;
                                   end;

                                    //DataSetTitSer := OFI_CD_M_ORV_TIT_SER_INT;
                              //   end;



                             if not DataSetIte.IsEmpty then
                               begin
                                FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE_2,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE_2, DataSetIte{OFI_CD_M_ORV_ITE_INT},2,
                                           BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                           EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,0);
                               end;

                             if OFI_CD_M_ORV_ITE_INT.RecordCount>0 then
                               begin
                                FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE_2,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE_2, OFI_CD_M_ORV_ITE_INT,2,
                                           BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                           EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI,1);
                                end;

                              AtualiarPesoNf(FAT_CD_M_NFE_2, FAT_CD_M_NFE_ITE_2);

                              FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE_2,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT_2, DataSetTitSer,OFI_CD_M_ORV_TIT_SER_INT);

                              OFI_CD_M_ORV_TIT_SER_INT.Close;
                              FAT_CD_M_NFE_2.Post;
                          end;
                     end;

                 if FAT_CD_M_NFE <> nil then
                    if FAT_CD_M_NFE.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');

                  if FAT_CD_M_NFE_ITE <> nil then
                     if FAT_CD_M_NFE_ITE.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_ITE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de itens da nota fiscal.');

                  if FAT_CD_M_NFE_TIT <> nil then
                     if FAT_CD_M_NFE_TIT.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_TIT.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de títulos da nota fiscal.');

                  if FAT_CD_M_NFE_2 <> nil then
                    if FAT_CD_M_NFE_2.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE_2.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');

                  if FAT_CD_M_NFE_ITE_2 <> nil then
                     if FAT_CD_M_NFE_ITE_2.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_ITE_2.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de itens da nota fiscal.');

                  if FAT_CD_M_NFE_TIT_2 <> nil then
                     if FAT_CD_M_NFE_TIT_2.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_TIT_2.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de títulos da nota fiscal.');

                end
            else
                begin
                  if (DataSet.UpdateStatus in [usDeleted]) or ( (StatusOS_Ant = 2) and (StatusOS_Atual in [1,0]) ) or
                      (StatusOS_Atual = 4)   then   // Se for deleção no ORV ou de Status = 2 (Fechado) passou para Em andamento ou Aberto, ou foi Cancelada
                      begin
                        if (not FAT_CD_M_NFE.IsEmpty) and (FAT_CD_M_NFE.FieldByName('numero').AsInteger = 0) then //Alterado de status para numero
                           begin
                             while not FAT_CD_M_NFE.eof do
                                  begin
                                    FAT_CD_M_NFE.delete;
                                  end;

                              if FAT_CD_M_NFE <> nil then
                                 if FAT_CD_M_NFE.ChangeCount > 0 then
                                   if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao deletar a nota fiscal desta ordem de serviço.');
                           end;
                      end;
                end;
         end;

     if  origem = 2 then // Pedido de Venda
         begin
            PedAprovado     := false;
            PedEnviaCarga   := false;
            PedConferido    := false;
            VlrMercadoria   := DataSet.FieldByName('vlr_bruto').AsCurrency;
            VlrDesconto     := DataSet.FieldByName('vlr_desconto').AsCurrency;

            // Colocado em 14/11/2022, Maxsuel Victor , devido mudança no pedido de venda a pedido de Caio, Colchões Globo
            VlrDescEspecial := 0;
            if DataSet.FieldByName('vlr_desc_especial').AsCurrency > 0 then
               VlrDescEspecial := DataSet.FieldByName('vlr_desc_especial').AsCurrency;

            // ----------------------------------------------------------------------

            VlrFrete        := DataSet.FieldByName('vlr_frete').AsCurrency;
            VlrIcmDesn      := DataSet.FieldByName('vlr_icm_desn').AsCurrency;
            VlrLiquido      := DataSet.FieldByName('vlr_liquido').AsCurrency;
            ModFrete        := DataSet.FieldByName('mod_frete').AsInteger;
            Placa           := DataSet.FieldByName('id_placa').AsString;

            OrvVlrTotProAtu          := DataSet.FieldByName('vlr_produtos').AsCurrency;
            OrvVlrTotServAtu         := DataSet.FieldByName('vlr_serv_bruto').AsCurrency;
            OrvVlrTotServTercAtu     := DataSet.FieldByName('vlr_terceiro').AsCurrency;
            OrvVlrTotDescProAtu      := DataSet.FieldByName('vlr_desc_produtos').AsCurrency;
            OrvVlrTotDescServAtu     := DataSet.FieldByName('vlr_desc_servicos').AsCurrency;
            OrvVlrTotDescServTercAtu := DataSet.FieldByName('vlr_desc_terceiro').AsCurrency;
            OrvVlrTotLiqProAtu       := DataSet.FieldByName('vlr_prod_liquido').AsCurrency;
            OrvVlrTotLiqServAtu      := DataSet.FieldByName('vlr_ser_liquido').AsCurrency;
            OrvVlrTotLiqServTercAtu  := DataSet.FieldByName('vlr_terc_liquido').AsCurrency;


            ped_gera_fin_separado    := DataSet.FieldByName('ped_gera_fin_separado').AsBoolean;

            SeparaPecServ := false;
            if DataSet.FieldByName('separa_prod_serv').text <> '' then
               SeparaPecServ := DataSet.FieldByName('separa_prod_serv').AsBoolean;

            CondPagamento :=  DataSet.FieldByName('id_condicao_pag').AsInteger;
            CodVendedor :=  DataSet.FieldByName('id_vendedor').AsInteger;
            CodClientePed  := DataSet.FieldByName('ID_CLIENTE').AsInteger;

            if (DataSet.UpdateStatus in [usInserted]) then
                begin
                 if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                    PedAprovado := true;

                   PedEnviaCarga := DataSet.FieldByName('ENVIA_CARGA').AsBoolean;
                   PedConferido := DataSet.FieldByName('CONFERIDO').AsBoolean;
                end;

            if (DataSet.UpdateStatus in [usUnmodified]) then
                begin
                  if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                     PedAprovado := true;
                  DataSet.Next;
                  if DataSet.FieldByName('SITUACAO_APROVACAO').AsString <> '' then
                      begin
                        if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 0 then
                           begin
                             PedAprovado := false;
                           end;
                        if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                           begin
                             PedAprovado := true;
                           end;
                      end;

                  if DataSet.FieldByName('ID_CLIENTE').text <> '' then
                      CodClientePed  := DataSet.FieldByName('ID_CLIENTE').AsInteger;

                  if DataSet.FieldByName('ID_CONDICAO_PAG').text <> '' then
                      CondPagamento  := DataSet.FieldByName('ID_CONDICAO_PAG').AsInteger;

                  if DataSet.FieldByName('ID_VENDEDOR').text <> '' then
                      CodVendedor  := DataSet.FieldByName('ID_VENDEDOR').AsInteger;

                  if DataSet.FieldByName('ENVIA_CARGA').text <> '' then
                      PedEnviaCarga  := DataSet.FieldByName('ENVIA_CARGA').AsBoolean;

                  if DataSet.FieldByName('CONFERIDO').text <> '' then
                      PedConferido   := DataSet.FieldByName('CONFERIDO').AsBoolean;


                  if DataSet.FieldByName('vlr_bruto').text <> '' then
                      VlrMercadoria  := DataSet.FieldByName('vlr_bruto').AsCurrency;

                  if DataSet.FieldByName('vlr_desconto').text <> '' then
                      VlrDesconto    := DataSet.FieldByName('vlr_desconto').AsCurrency;

                  if DataSet.FieldByName('vlr_frete').text <> '' then
                      VlrFrete    := DataSet.FieldByName('vlr_frete').AsCurrency;

                  if DataSet.FieldByName('vlr_icm_desn').text <> '' then
                      VlrIcmDesn    :=  DataSet.FieldByName('vlr_icm_desn').AsCurrency;

                  if DataSet.FieldByName('vlr_liquido').text <> '' then
                      VlrLiquido     := DataSet.FieldByName('vlr_liquido').AsCurrency;

                  if DataSet.FieldByName('mod_frete').text <> '' then
                      ModFrete := DataSet.FieldByName('mod_frete').AsInteger;

                  if DataSet.FieldByName('id_placa').text <> '' then
                      Placa    := DataSet.FieldByName('id_placa').AsString;


                  if DataSet.FieldByName('vlr_produtos').AsString <> '' then
                     OrvVlrTotProAtu := DataSet.FieldByName('vlr_produtos').AsCurrency;

                  if DataSet.FieldByName('vlr_serv_bruto').AsString <> '' then
                     OrvVlrTotServAtu := DataSet.FieldByName('vlr_serv_bruto').AsCurrency;

                  if DataSet.FieldByName('vlr_terceiro').AsString <> '' then
                     OrvVlrTotServTercAtu := DataSet.FieldByName('vlr_terceiro').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_produtos').AsString <> '' then
                     OrvVlrTotDescProAtu     := DataSet.FieldByName('vlr_desc_produtos').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_servicos').AsString <> '' then
                     OrvVlrTotDescServAtu := DataSet.FieldByName('vlr_desc_servicos').AsCurrency;

                  if DataSet.FieldByName('vlr_desc_terceiro').AsString <> '' then
                     OrvVlrTotDescServTercAtu := DataSet.FieldByName('vlr_desc_terceiro').AsCurrency;

                  if DataSet.FieldByName('vlr_prod_liquido').AsString <> '' then
                     OrvVlrTotLiqProAtu := DataSet.FieldByName('vlr_prod_liquido').AsCurrency;

                  if DataSet.FieldByName('vlr_ser_liquido').AsString <> '' then
                     OrvVlrTotLiqServAtu := DataSet.FieldByName('vlr_ser_liquido').AsCurrency;

                  if DataSet.FieldByName('vlr_terc_liquido').AsString <> '' then
                     OrvVlrTotLiqServTercAtu := DataSet.FieldByName('vlr_terc_liquido').AsCurrency;

                  if DataSet.FieldByName('separa_prod_serv').text <> '' then
                     SeparaPecServ := DataSet.FieldByName('separa_prod_serv').AsBoolean;

                  if DataSet.FieldByName('ped_gera_fin_separado').AsString <> '' then
                     ped_gera_fin_separado    := DataSet.FieldByName('ped_gera_fin_separado').AsBoolean;
                  DataSet.Prior;
                end;


            FAT_CD_M_NFE := TClientDataSet.Create(nil);
            FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
            FAT_CD_M_NFE.Close;
            FAT_CD_M_NFE.Data :=
                     FAT_CD_M_NFE.DataRequest(VarArrayOf([9,DataSet.FieldByName('ID_EMPRESA').AsString,'S',DataSet.FieldByName('ID_PEDIDO').AsString]));

            FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
            FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));

            FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
            FAT_CD_M_NFE_TIT.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_TIT'));


            if (DataSet.UpdateStatus in [usInserted,usUnmodified]) and PedAprovado and
                 ((PedEnviaCarga=false) or ((PedEnviaCarga=true) and (PedConferido=true))) then   // Se for inserção ou alteração no pedido de venda
                begin
                 { Código antigo
                   // Busca os itens da nota fiscal
                  FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                  FAT_CD_M_NFE_ITE.Close;
                  FAT_CD_M_NFE_ITE.Data :=
                      FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([0,'''0''']));

                  // Busca os títulos da nota fiscal
                  FAT_CD_M_NFE_TIT.Free;
                  FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                  FAT_CD_M_NFE_TIT.Close;
                  FAT_CD_M_NFE_TIT.Data :=
                          FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([0]));
                  -- fim Código antigo
                  }

                  // Buscar dados do tipo de movimento de estoque
                  CAD_CD_C_TME := TClientDataSet.Create(nil);
                  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                  CAD_CD_C_TME.Close;
                  CAD_CD_C_TME.Data :=
                      CAD_CD_C_TME.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_tipo_mov_estoque').AsString]));
                  // Buscar o CFOP
                  if DataSet.FieldByName('int_pessoacli').AsInteger = 0 then // Física
                     begin
                        if DataSet.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                     end;

                  if DataSet.FieldByName('int_pessoacli').AsInteger = 1 then // Jurídica
                     begin
                        if DataSet.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
                     end;
                  //------------------------------------------------------------------------------------



                  while not FAT_CD_M_NFE.IsEmpty do
                    begin
                      FAT_CD_M_NFE.Delete;
                    end;

                  if  ((SeparaPecServ=true) and (OrvVlrTotLiqProAtu >0)) or (not (SeparaPecServ=true)) then
                    begin

                      FAT_CD_M_NFE.Insert;
                      FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                      FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                      FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                      FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := DataSet.FieldByName('ID_PEDIDO').AsInteger;;
                      FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
                      FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
                      FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
                      FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
                      FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
                      FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                      FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
                      FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                      FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                      FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
                      FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

                      FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                      FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
                      FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
                      FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
                      FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
                      FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                      FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

                      FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := CodClientePed;

                      if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                         begin
                           FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                         end;

                      FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
                      FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'A';
                      FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                      FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                      FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
                      FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
                      FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;



                      if ModFrete in [1,2] then
                        begin
                         FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger            := 9;
                         if ((ModFrete = 2) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                           FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger          := 1;
                        end
                      else
                        begin
                         FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger            := 0;
                        end;


                      FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
                      FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
                      FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
                      FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                      FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
                      FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

                      FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                      FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                      FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                      FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
                      FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
                      FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;
                      if (trim(DataSet.FieldByName('origem').Text) <> '') and
                         (trim(DataSet.FieldByName('origem').Text) = '2') then
                         begin
                           // Para atender a transação do Pedido Cupom (FAT_FM_M_PNF)
                           FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := DataSet.FieldByName('id_pedido').AsInteger;
                           FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := 'X';
                           FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
                           FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 1;
                           FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;
                         end
                      else
                         FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
                      FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
                      FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
                      FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
                      FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := DataSet.FieldByName('id_tipo_mov_estoque').AsInteger;
                      FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := CondPagamento;
                      FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
                      FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := CodVendedor;

                      FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_nomeest').AsString;

                      FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                      FAT_CD_M_NFE.FieldByName('ped_vlr_frete').AsCurrency          := VlrFrete;


                      if (SeparaPecServ=true) then
                        begin
                         FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency         := OrvVlrTotProAtu;
                         FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency           := OrvVlrTotDescProAtu;
                         FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency            := OrvVlrTotLiqProAtu;
                        end
                      else
                        begin
                          FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency         := VlrMercadoria;

                          // 14/11/2022 Maxsuel Victor - colocado devido mudança no pedido de venda , a pedido de Caio da Colchões Globo
                          FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency           := VlrDesconto + VlrDescEspecial;

                          FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency            := VlrLiquido;
                        end;

                      FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
                      FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
                      FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;

                      FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
                      FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
                      FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
                      FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

                      FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
                      FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
                      FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;

                      if ((ModFrete = 2) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                          FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := VlrFrete
                      else
                          FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

                      FAT_CD_M_NFE.FieldByName('vlr_icm_desc').AsCurrency    := VlrIcmDesn;
                      FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
                      FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
                      FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

                      FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
                      FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
                      FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

                      FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
                      FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
                      FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
                      FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
                      FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency      := 0;

                      FAT_CD_M_NFE.FieldByName('ped_mod_frete').AsInteger         := ModFrete;

                      FAT_CD_M_NFE.FieldByName('tra_placa').AsString   := Placa;



                     DataSetIte    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;


                     DataSetTit    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT')).NestedDataSet;




                     if not BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                        begin
                           FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 3;
                        end
                     else
                        begin
                           FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 1;
                        end;

                      FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, DataSetIte,FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger,
                                   BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                   EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI);

                      AtualiarPesoNf(FAT_CD_M_NFE, FAT_CD_M_NFE_ITE);

                      FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT, DataSetTit,FAT_CD_M_PED_TIT_INT);

                      FAT_CD_M_NFE.Post;
                    end;



                 if ((SeparaPecServ=true) and ((OrvVlrTotLiqServAtu+OrvVlrTotLiqServTercAtu) >0)) then
                   begin
                       FAT_CD_M_NFE_2 := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_2.SetProvider(FAT_DP_M_NFE);
                       FAT_CD_M_NFE_2.Close;
                       FAT_CD_M_NFE_2.Data :=
                                       FAT_CD_M_NFE_2.DataRequest(VarArrayOf([0,'']));

                       FAT_CD_M_NFE_ITE_2 := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_ITE_2.DataSetField := TDataSetField(FAT_CD_M_NFE_2.FieldByName('FAT_SQ_M_NFE_ITE'));

                       FAT_CD_M_NFE_TIT_2 := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_TIT_2.DataSetField := TDataSetField(FAT_CD_M_NFE_2.FieldByName('FAT_SQ_M_NFE_TIT'));




                       FAT_CD_M_NFE_2.Insert;
                       FAT_CD_M_NFE_2.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                       FAT_CD_M_NFE_2.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                       FAT_CD_M_NFE_2.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                       FAT_CD_M_NFE_2.FieldByName('ID_PEDIDO_VENDA').AsInteger         := DataSet.FieldByName('ID_PEDIDO').AsInteger;;
                       FAT_CD_M_NFE_2.FieldByName('id_pedido_compra').AsInteger        := 0;
                       FAT_CD_M_NFE_2.FieldByName('ID_ORDEM').AsInteger                := 0;
                       FAT_CD_M_NFE_2.FieldByName('ID_IQM').AsInteger                  := 0;
                       FAT_CD_M_NFE_2.FieldByName('NRO_TERMO').AsInteger               := 0;
                       FAT_CD_M_NFE_2.FieldByName('id_transportadora').AsInteger       := 0;
                       FAT_CD_M_NFE_2.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                       FAT_CD_M_NFE_2.FieldByName('PREVENDA').AsBoolean                := false;
                       FAT_CD_M_NFE_2.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                       FAT_CD_M_NFE_2.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                       FAT_CD_M_NFE_2.FieldByName('CANC_MOTIVO').AsString              := '';
                       FAT_CD_M_NFE_2.FieldByName('CANC_USUARIO').AsString             := '';

                       FAT_CD_M_NFE_2.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                       FAT_CD_M_NFE_2.FieldByName('PESO_BRUTO').AsFloat                := 0;
                       FAT_CD_M_NFE_2.FieldByName('NFE_OBS').AsString                  := '';
                       FAT_CD_M_NFE_2.FieldByName('NFE_PROTOCOLO').AsString            := '';
                       FAT_CD_M_NFE_2.FieldByName('NFE_RECIBO').AsString               := '';
                       FAT_CD_M_NFE_2.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                       FAT_CD_M_NFE_2.FieldByName('NFE_CANC_STATUS').AsString          := '';

                       FAT_CD_M_NFE_2.FieldByName('ID_EMITENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;

                      if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                         begin
                           FAT_CD_M_NFE_2.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                         end;

                       FAT_CD_M_NFE_2.FieldByName('NFE_COD_SIT').AsString              := '00';
                       FAT_CD_M_NFE_2.FieldByName('ORIGEM_NF').AsString                := 'A';
                       FAT_CD_M_NFE_2.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                       FAT_CD_M_NFE_2.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                       FAT_CD_M_NFE_2.FieldByName('NFE_FINALIDADE').AsString           := '1';
                       FAT_CD_M_NFE_2.FieldByName('IND_OPERACAO').AsInteger            := 1;
                       FAT_CD_M_NFE_2.FieldByName('IND_EMITENTE').AsInteger            := 0;



                      if ModFrete in [1,2] then
                        begin
                         FAT_CD_M_NFE_2.FieldByName('IND_FRETE').AsInteger            := 9;
                         if ((ModFrete = 2) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                           FAT_CD_M_NFE_2.FieldByName('IND_FRETE').AsInteger          := 1;
                        end
                      else
                        begin
                         FAT_CD_M_NFE_2.FieldByName('IND_FRETE').AsInteger            := 0;
                        end;


                      FAT_CD_M_NFE_2.FieldByName('POSVENDA').AsBoolean                := false;
                      FAT_CD_M_NFE_2.FieldByName('FATURADA').AsBoolean                := false;
                      FAT_CD_M_NFE_2.FieldByName('STATUS').AsInteger                  := 0;
                      FAT_CD_M_NFE_2.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                      FAT_CD_M_NFE_2.FieldByName('TIPO_NF').AsString                  := 'S';
                      FAT_CD_M_NFE_2.FieldByName('NFE_ECF').AsInteger                 := 3;

                      FAT_CD_M_NFE_2.FieldByName('DTA_EMISSAO').AsString              := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                      FAT_CD_M_NFE_2.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                      FAT_CD_M_NFE_2.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                      FAT_CD_M_NFE_2.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
                      FAT_CD_M_NFE_2.FieldByName('NUMERO').AsInteger                  := 0;
                      FAT_CD_M_NFE_2.FieldByName('ID_ABERTURA').AsInteger             := 0;
                      if (trim(DataSet.FieldByName('origem').Text) <> '') and
                         (trim(DataSet.FieldByName('origem').Text) = '2') then
                         begin
                           // Para atender a transação do Pedido Cupom (FAT_FM_M_PNF)
                           FAT_CD_M_NFE_2.FieldByName('NUMERO').AsInteger                  := DataSet.FieldByName('id_pedido').AsInteger;
                           FAT_CD_M_NFE_2.FieldByName('SERIE').AsString                    := 'X';
                           FAT_CD_M_NFE_2.FieldByName('FATURADA').AsBoolean                := true;
                           FAT_CD_M_NFE_2.FieldByName('STATUS').AsInteger                  := 1;
                           FAT_CD_M_NFE_2.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;
                         end
                      else
                         FAT_CD_M_NFE_2.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
                      FAT_CD_M_NFE_2.FieldByName('SUB_SERIE').AsString                := ' ';
                      FAT_CD_M_NFE_2.FieldByName('MODELO').AsString                   := ' ';
                      FAT_CD_M_NFE_2.FieldByName('NFE_CHAVE').AsString                := '';
                      FAT_CD_M_NFE_2.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := DataSet.FieldByName('id_tipo_mov_estoque').AsInteger;
                      FAT_CD_M_NFE_2.FieldByName('ID_CONDICAO_PAG').AsInteger         := CondPagamento;



                      if DataSet.FieldByName('INT_NOMEEST').AsString =
                          CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                         begin
                            FAT_CD_M_NFE_2.FieldByName('ID_CFO').AsString  :=
                                CAD_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString;
                         end
                      else
                         begin
                            FAT_CD_M_NFE_2.FieldByName('ID_CFO').AsString  :=
                                CAD_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString;
                         end;



                      FAT_CD_M_NFE_2.FieldByName('ID_VENDEDOR').AsInteger             := CodVendedor;

                      FAT_CD_M_NFE_2.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_nomeest').AsString;

                      FAT_CD_M_NFE_2.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                      FAT_CD_M_NFE_2.FieldByName('ped_vlr_frete').AsCurrency          := VlrFrete;



                      FAT_CD_M_NFE_2.FieldByName('vlr_mercadoria').AsCurrency         := OrvVlrTotServAtu+OrvVlrTotServTercAtu;
                      FAT_CD_M_NFE_2.FieldByName('vlr_desconto').AsCurrency           := OrvVlrTotDescServAtu+OrvVlrTotDescServTercAtu;
                      FAT_CD_M_NFE_2.FieldByName('vlr_liquido').AsCurrency            := OrvVlrTotLiqServAtu+OrvVlrTotLiqServTercAtu;


                      FAT_CD_M_NFE_2.FieldByName('vlr_isenta').AsCurrency      := 0;
                      FAT_CD_M_NFE_2.FieldByName('vlr_outras').AsCurrency      := 0;
                      FAT_CD_M_NFE_2.FieldByName('vlr_seguro').AsCurrency      := 0;

                      FAT_CD_M_NFE_2.FieldByName('icm_n_valor').AsCurrency     := 0;
                      FAT_CD_M_NFE_2.FieldByName('icm_n_base').AsCurrency      := 0;
                      FAT_CD_M_NFE_2.FieldByName('icm_s_valor').AsCurrency     := 0;
                      FAT_CD_M_NFE_2.FieldByName('icm_s_base').AsCurrency      := 0;

                      FAT_CD_M_NFE_2.FieldByName('ipi_base').AsCurrency        := 0;
                      FAT_CD_M_NFE_2.FieldByName('ipi_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE_2.FieldByName('iss_base').AsCurrency        := 0;
                      FAT_CD_M_NFE_2.FieldByName('iss_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE_2.FieldByName('fre_base').AsCurrency        := 0;

                      if ((ModFrete = 2) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                          FAT_CD_M_NFE_2.FieldByName('fre_valor').AsCurrency       := VlrFrete
                      else
                          FAT_CD_M_NFE_2.FieldByName('fre_valor').AsCurrency       := 0;

                      FAT_CD_M_NFE_2.FieldByName('fre_custo').AsCurrency       := 0;

                      FAT_CD_M_NFE_2.FieldByName('vlr_icm_desc').AsCurrency    := VlrIcmDesn;
                      FAT_CD_M_NFE_2.FieldByName('cof_valor').AsCurrency       := 0;
                      FAT_CD_M_NFE_2.FieldByName('cof_base').AsCurrency        := 0;
                      FAT_CD_M_NFE_2.FieldByName('cof_valor_st').AsCurrency    := 0;

                      FAT_CD_M_NFE_2.FieldByName('pis_valor').AsCurrency       := 0;
                      FAT_CD_M_NFE_2.FieldByName('pis_valor_st').AsCurrency    := 0;
                      FAT_CD_M_NFE_2.FieldByName('pis_base').AsCurrency        := 0;

                      FAT_CD_M_NFE_2.FieldByName('ecf_serial_impressora').AsString  := '';
                      FAT_CD_M_NFE_2.FieldByName('ecf_marca_impressora').AsString   := '';
                      FAT_CD_M_NFE_2.FieldByName('ecf_modelo_impressora').AsString  := '';
                      FAT_CD_M_NFE_2.FieldByName('ecf_caixa').AsString              := '';
                      FAT_CD_M_NFE_2.FieldByName('vlr_outras_desp').AsCurrency      := 0;

                      FAT_CD_M_NFE_2.FieldByName('ped_mod_frete').AsInteger         := ModFrete;

                      FAT_CD_M_NFE_2.FieldByName('tra_placa').AsString   := Placa;



                     DataSetIte    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;






                     if ped_gera_fin_separado then
                        DataSetTitSer := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT_SER')).NestedDataSet
                     else
                        begin
                          if OrvVlrTotProAtu = 0 then
                             begin
                               DataSetTitSer := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT')).NestedDataSet;
                             end
                          else
                             DataSetTitSer := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT_SER')).NestedDataSet
                        end;



                     FAT_CD_M_NFE_2.FieldByName('ind_nf').AsInteger      := 2;


                      FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE_2,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE_2, DataSetIte,FAT_CD_M_NFE_2.FieldByName('ind_nf').AsInteger,
                                   BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                   EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI);

                      AtualiarPesoNf(FAT_CD_M_NFE_2, FAT_CD_M_NFE_ITE_2);

                      FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE_2,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT_2, DataSetTitSer,FAT_CD_M_PED_TIT_INT,1);

                      FAT_CD_M_NFE_2.Post;


                   end;





                  if FAT_CD_M_NFE <> nil then
                    if FAT_CD_M_NFE.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');



                  if FAT_CD_M_NFE_2 <> nil then
                    if FAT_CD_M_NFE_2.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE_2.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal de serviço.');


                end
            else
                begin
                  if ((DataSet.UpdateStatus in [usDeleted])) or  ((DataSet.UpdateStatus in [usUnmodified]) and (PedAprovado = false)) then
                      begin
                        while not FAT_CD_M_NFE.IsEmpty do
                           begin
                              FAT_CD_M_NFE.delete;
                           end;

                        if FAT_CD_M_NFE <> nil then
                           if FAT_CD_M_NFE.ChangeCount > 0 then
                             if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                                 raise Exception.Create('Erro ao deletar a nota fiscal desta ordem de serviço.');

                      end;
                end;
        end;

     if origem = 3 then // Gerar NFs partindo do BR_CUPOM_MESTRE (GerConWin), 15/02/2016, Maxsuel Victor
        begin
          try
              // Buscar dados do tipo de movimento de estoque
              CAD_CD_C_TME := TClientDataSet.Create(nil);
              CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
              CAD_CD_C_TME.Close;
              CAD_CD_C_TME.Data :=
                    CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('ecf_id_tipo_mov_estoque').AsString]));


              // Buscar dados do cupom fiscal
              CD_BR_CUPOM_MESTRE := TClientDataSet.Create(nil);
              CD_BR_CUPOM_MESTRE.SetProvider(DP_BR_CUPOM_MESTRE);
              CD_BR_CUPOM_MESTRE.Close;
              CD_BR_CUPOM_MESTRE.Data :=
                  CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([5,DataSet.FieldByName('DTA_ABERTURA').AsString,
                                                             DataSet.FieldByName('ecf_serial_impressora').AsString]));

              CD_BR_CUPOM_DETALHE   := TDataSetField(CD_BR_CUPOM_MESTRE.FieldByName('SQ_BR_CUPOM_DETALHE')).NestedDataSet;
              CD_BR_CUPOM_PAGAMENTO := TDataSetField(CD_BR_CUPOM_MESTRE.FieldByName('SQ_BR_CUPOM_PAGAMENTO')).NestedDataSet;

              NumerosNF := '''-1''';

              CD_BR_CUPOM_MESTRE.First;
              while not CD_BR_CUPOM_MESTRE.Eof do
                  begin
                     NumerosNF :=
                        NumerosNF + ',' +''''+ CD_BR_CUPOM_MESTRE.FieldByName('ccf').AsString+'''';
                     CD_BR_CUPOM_MESTRE.Next;
                  end;
              CD_BR_CUPOM_MESTRE.First;


              FAT_CD_M_NFE := TClientDataSet.Create(nil);
              FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
              FAT_CD_M_NFE.Close;
              FAT_CD_M_NFE.Data :=
                       //FAT_CD_M_NFE.DataRequest(VarArrayOf([14,DataSet.FieldByName('id_empresa').AsString,NumerosNF]));
                       FAT_CD_M_NFE.DataRequest(VarArrayOf([14,DataSet.FieldByName('id_empresa').AsString,DataSet.FieldByName('ecf_serial_impressora').AsString,NumerosNF]));

              FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
              FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));

              FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
              FAT_CD_M_NFE_TIT.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_TIT'));

              {// Preparar cds de itens da nota fiscal
              FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
              FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
              FAT_CD_M_NFE_ITE.Close;
              FAT_CD_M_NFE_ITE.Data :=
                  FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([0,'''0''']));

              // Preparar cds dos títulos da nota fiscal
              FAT_CD_M_NFE_TIT.Free;
              FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
              FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
              FAT_CD_M_NFE_TIT.Close;
              FAT_CD_M_NFE_TIT.Data :=
                      FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([0]));   }


              while not CD_BR_CUPOM_MESTRE.Eof do
                 begin
                   // Busca de dados do cliente
                    CodCliente := BUS_CD_C_PAR_CTR.FieldByName('ped_cliente').AsString;
                    if trim(CD_BR_CUPOM_MESTRE.FieldByName('cpf_cnpj').AsString) <> '' then
                       begin
                          BUS_CD_C_CLI.Free;
                          BUS_CD_C_CLI := TClientDataSet.Create(nil);
                          BUS_CD_C_CLI.SetProvider(BUS_DP_C_CLI);
                          BUS_CD_C_CLI.Close;
                          BUS_CD_C_CLI.Data :=
                                  BUS_CD_C_CLI.DataRequest(VarArrayOf([2,CD_BR_CUPOM_MESTRE.FieldByName('cpf_cnpj').AsString]));

                          CodCliente := BUS_CD_C_CLI.FieldByName('id_cliente').AsString;
                       end
                    else
                       begin
                         BUS_CD_C_CLI.Free;
                         BUS_CD_C_CLI := TClientDataSet.Create(nil);
                         BUS_CD_C_CLI.SetProvider(BUS_DP_C_CLI);
                         BUS_CD_C_CLI.Close;
                         BUS_CD_C_CLI.Data :=
                                  BUS_CD_C_CLI.DataRequest(VarArrayOf([0,CodCliente]));

                       end;

                      // Buscar o CFOP
                      if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 0 then // Física
                         begin
                           if BUS_CD_C_CLI.FieldByName('int_uf').AsString =
                              CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                              begin
                                   Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                              end
                           else
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                          end;
                      if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 1 then // Jurídica
                         begin
                             if BUS_CD_C_CLI.FieldByName('int_uf').AsString =
                                CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                                begin
                                   Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                                end
                             else
                                Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
                         end;
                      //------------------------------------------------------------------------------------




                   if not FAT_CD_M_NFE.Locate('numero',CD_BR_CUPOM_MESTRE.FieldByName('ccf').AsString,[]) then
                      begin
                        //Não está sendo utilizado devido cliente Mercadinho ter interrompido o contrato com E-North
                        //Data:20/06/2016.Responsavel:Luan
                        {FAT_CD_M_NFE.Insert;
                        FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                        FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_funcionario').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
                        FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
                        FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
                        FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                        FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                        FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
                        FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

                        FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                        FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
                        FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
                        FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
                        FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

                        FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString              := CodCliente;

                        // No momento para esta operação não está não está utilizando ID_ALMOXARIFADO
                        // 15/02/2015, Maxsuel Victor

                        //if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                        //   begin
                        //     FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                        //   end;

                        FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';

                        if CD_BR_CUPOM_MESTRE.FieldByName('CANCELADO').AsString   = 'S' then
                           begin
                             FAT_CD_M_NFE.FieldByName('nfe_cod_sit').AsString := '02'; // Cancelado
                           end;

                        FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'D';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                        FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
                        FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
                        FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
                        FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 1; // Encerrado
                        FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
                        FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 1; //ECF

                        FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(CD_BR_CUPOM_MESTRE.FieldByName('data_movimento').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(CD_BR_CUPOM_MESTRE.FieldByName('data_movimento').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                        FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;
                        FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := CD_BR_CUPOM_MESTRE.FieldByName('ccf').AsInteger;
                        FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := '1';
                        FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
                        FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := '2D';
                        FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
                        FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;

                        FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := BUS_CD_C_PAR_CTR.FieldByName('ecf_id_tipo_mov_estoque').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := BUS_CD_C_PAR_CTR.FieldByName('ecf_id_condicao_pag').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
                        FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := DataSet.FieldByName('id_funcionario').AsInteger;

                        FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

                        FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency         := CD_BR_CUPOM_MESTRE.FieldByName('total_bruto').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency           := CD_BR_CUPOM_MESTRE.FieldByName('descontos').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency            := CD_BR_CUPOM_MESTRE.FieldByName('total_liquido').AsCurrency;

                        FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

                        FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
                        FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

                        FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := CD_BR_CUPOM_MESTRE.FieldByName('serial_impressora').AsString;
                        FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := dataset.FieldByName('int_marcaecf').AsString;
                        FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := dataset.FieldByName('int_modeloecf').AsString;
                        FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := dataset.FieldByName('int_caixaecf').AsString;
                        FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency      := 0;


                        FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, CD_BR_CUPOM_DETALHE,1,
                                     BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                                     EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI);

                        FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT, CD_BR_CUPOM_PAGAMENTO,CD_BR_CUPOM_PAGAMENTO);

                        FAT_CD_M_NFE.Post;}
                      end
                   else
                      begin
                        if CD_BR_CUPOM_MESTRE.FieldByName('CANCELADO').AsString   = 'S' then
                           begin
                             if FAT_CD_M_NFE.FieldByName('nfe_cod_sit').AsString <> '02' then
                               begin
                                 FAT_CD_M_NFE.Edit;
                                 FAT_CD_M_NFE.FieldByName('nfe_cod_sit').AsString := '02'; // Cancelado
                                 FAT_CD_M_NFE.Post;
                               end;
                           end;
                      end;

                   CD_BR_CUPOM_MESTRE.Next;
                 end;
              if FAT_CD_M_NFE <> nil then
                if FAT_CD_M_NFE.ChangeCount > 0 then
                   if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                      raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');

              {if FAT_CD_M_NFE_ITE <> nil then
                 if FAT_CD_M_NFE_ITE.ChangeCount > 0 then
                    if not (FAT_CD_M_NFE_ITE.ApplyUpdates(0) = 0) then
                      raise Exception.Create('Erro ao tentar gerar o registro na tabela de títulos da nota fiscal.');

              if FAT_CD_M_NFE_TIT <> nil then
                 if FAT_CD_M_NFE_TIT.ChangeCount > 0 then
                    if not (FAT_CD_M_NFE_TIT.ApplyUpdates(0) = 0) then
                      raise Exception.Create('Erro ao tentar gerar o registro na tabela de itens da nota fiscal.');    }

              {FreeAndNil(FAT_CD_M_NFE);
              FAT_CD_M_NFE := TClientDataSet.Create(nil);
              FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
              FAT_CD_M_NFE.Close;
              FAT_CD_M_NFE.Data :=
                       FAT_CD_M_NFE.DataRequest(VarArrayOf([14,DataSet.FieldByName('id_empresa').AsString,NumerosNF]));


              FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
              FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));
              while not FAT_CD_M_NFE.Eof do
                 begin
                   FAT_CD_M_NFE.Edit;
                   FAT_CD_M_NFE.FieldByName('STATUS').AsInteger := 1; // Encerrado;
                   FAT_CD_M_NFE.Post;

                   FAT_CD_M_NFE_ITE.First;
                   while not FAT_CD_M_NFE_ITE.eof do
                      begin
                         FAT_CD_M_NFE_ITE.Edit;
                         FAT_CD_M_NFE_ITE.FieldByName('num_lote').AsString := '';
                         FAT_CD_M_NFE_ITE.Next;
                      end;
                   FAT_CD_M_NFE.Next;
                 end;
              if FAT_CD_M_NFE <> nil then
                if FAT_CD_M_NFE.ChangeCount > 0 then
                   if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                      raise Exception.Create('Erro ao tentar encerrar o cupom fiscal.');  }

          finally
            FreeAndNil(CD_BR_CUPOM_MESTRE);
          end;
        end;

     if  origem = 4 then // Pedido de Venda cupom (FAT_FM_M_PNF)
         begin
            PedAprovado := false;
            if (DataSet.UpdateStatus in [usInserted]) then
                begin
                 if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                    PedAprovado := true;
                end;

            if (DataSet.UpdateStatus in [usUnmodified]) then
                begin
                  if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                     PedAprovado := true;
                  DataSet.Next;
                  if DataSet.FieldByName('SITUACAO_APROVACAO').AsString <> '' then
                      begin
                        if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 0 then
                           begin
                             PedAprovado := false;
                           end;
                        if DataSet.FieldByName('SITUACAO_APROVACAO').AsInteger = 1 then
                           begin
                             PedAprovado := true;
                           end;
                      end;
                  DataSet.Prior;
                end;


            FAT_CD_M_NFE := TClientDataSet.Create(nil);
            FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
            FAT_CD_M_NFE.Close;
            FAT_CD_M_NFE.Data :=
                     FAT_CD_M_NFE.DataRequest(VarArrayOf([9,DataSet.FieldByName('ID_EMPRESA').AsString,'S',DataSet.FieldByName('ID_PEDIDO').AsString]));

            if (DataSet.UpdateStatus in [usInserted,usUnmodified]) and PedAprovado then   // Se for inserção ou alteração no pedido de venda
                begin
                  // Busca os itens da nota fiscal
                  FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                  FAT_CD_M_NFE_ITE.Close;
                  FAT_CD_M_NFE_ITE.Data :=
                      FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([0,'''0''']));


                  // Busca os títulos da nota fiscal
                  {FAT_CD_M_NFE_TIT.Free;
                  FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                  FAT_CD_M_NFE_TIT.Close;
                  FAT_CD_M_NFE_TIT.Data :=
                          FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([0]));}

                  FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_TIT.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_TIT'));


                  // Buscar dados do tipo de movimento de estoque
                  CAD_CD_C_TME := TClientDataSet.Create(nil);
                  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                  CAD_CD_C_TME.Close;
                  CAD_CD_C_TME.Data :=
                      CAD_CD_C_TME.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_tipo_mov_estoque').AsString]));
                  // Buscar o CFOP
                  if DataSet.FieldByName('int_pessoacli').AsInteger = 0 then // Física
                     begin
                        if DataSet.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                     end;

                  if DataSet.FieldByName('int_pessoacli').AsInteger = 1 then // Jurídica
                     begin
                        if DataSet.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
                     end;
                  //------------------------------------------------------------------------------------

                  if not FAT_CD_M_NFE.IsEmpty then
                     begin
                       // Busca os itens da nota fiscal para deletar todos
                       FAT_CD_M_NFE_ITE.Free;
                       FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                       FAT_CD_M_NFE_ITE.Close;
                       FAT_CD_M_NFE_ITE.Data :=
                            FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

                       // Busca os títulos da nota fiscal para deletar todos
                       FAT_CD_M_NFE_TIT.Free;
                       FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                       FAT_CD_M_NFE_TIT.Close;
                       FAT_CD_M_NFE_TIT.Data :=
                              FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

                       FAT_CD_M_NFE.edit;

                       DataSet.Next;

                       if DataSet.FieldByName('vlr_bruto').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency  := DataSet.FieldByName('vlr_bruto').AsCurrency;

                       if DataSet.FieldByName('vlr_desconto').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency    := DataSet.FieldByName('vlr_desconto').AsCurrency;

                       if DataSet.FieldByName('vlr_liquido').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency     := DataSet.FieldByName('vlr_liquido').AsCurrency;

                       DataSet.Prior;
                     end
                  else
                     begin
                        FAT_CD_M_NFE.Insert;
                        FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                        FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := DataSet.FieldByName('ID_PEDIDO').AsInteger;;
                        FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
                        FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
                        FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                        FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                        FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
                        FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

                        FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                        FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
                        FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
                        FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
                        FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

                        FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := DataSet.FieldByName('id_cliente').AsInteger;

                        if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                           begin
                             FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                           end;

                        FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
                        FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'A';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                        FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
                        FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
                        FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
                        FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

                        FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(DataSet.FieldByName('dta_pedido').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                        FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
                        FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;
                        if (trim(DataSet.FieldByName('origem').Text) <> '') and
                           (trim(DataSet.FieldByName('origem').Text) = '2') then
                           begin
                             // Para atender a transação do Pedido Cupom (FAT_FM_M_PNF)
                             {FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := DataSet.FieldByName('id_pedido').AsInteger;
                             FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := 'X';
                             FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
                             FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 1;
                             FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;
                             }
                             FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
                             FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := '1';
                             FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
                             FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
                             //FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := DataSet.FieldByName('id_abertura').AsInteger;
                           end
                        else
                           FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
                        FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
                        FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
                        FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
                        FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := DataSet.FieldByName('id_tipo_mov_estoque').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := DataSet.FieldByName('id_condicao_pag').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
                        FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := DataSet.FieldByName('id_vendedor').AsInteger;

                        FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := DataSet.FieldByName('int_nomeest').AsString;

                        FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency         := DataSet.FieldByName('vlr_bruto').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency           := DataSet.FieldByName('vlr_desconto').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency            := DataSet.FieldByName('vlr_liquido').AsCurrency;

                        FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

                        FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
                        FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

                        FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
                        FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
                        FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
                        FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
                        FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency      := 0;

                        if not BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                            begin
                               FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 3;
                            end
                         else
                            begin
                               FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 1;
                            end;
                     end;

                  DataSetIte    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;
                  if DataSetIte.IsEmpty then
                     begin
                       // Busca os itens do pedido de venda
                       FAT_CD_M_PED_ITE_INT.Free;
                       FAT_CD_M_PED_ITE_INT := TClientDataSet.Create(nil);
                       FAT_CD_M_PED_ITE_INT.SetProvider(BUS_DP_M_PED_ITE_INT);
                       FAT_CD_M_PED_ITE_INT.Close;
                       FAT_CD_M_PED_ITE_INT.Data :=
                            FAT_CD_M_PED_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));

                       DataSetIte := FAT_CD_M_PED_ITE_INT;
                     end;

                  DataSetTit    := TDataSetField(Dataset.FieldByName('FAT_SQ_M_PED_TIT')).NestedDataSet;
                  //if DataSetTit.IsEmpty then
                  //   begin
                       // Busca os itens do pedido de venda
                       FAT_CD_M_PED_TIT_INT.Free;
                       FAT_CD_M_PED_TIT_INT := TClientDataSet.Create(nil);
                       FAT_CD_M_PED_TIT_INT.SetProvider(BUS_DP_M_PED_TIT_INT);
                       FAT_CD_M_PED_TIT_INT.Close;
                       FAT_CD_M_PED_TIT_INT.Data :=
                            FAT_CD_M_PED_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));

                   //    DataSetTit := FAT_CD_M_PED_TIT_INT;
                  //   end;


                  if not BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean then
                     begin
                       FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 3;
                     end
                  else
                     begin
                       FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 1;

                       DataSetIte.Filtered := true;
                       DataSetIte.Filter := ' INT_TIPO_ITEM = ''09'' ';
                       try
                         if not (DataSetIte.IsEmpty) then
                            begin
                              FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 2;
                            end;
                       finally
                         DataSetIte.Filtered := False;
                       end;
                     end;

                  FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, DataSetIte,FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger,
                               BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                               EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI);

                  AtualiarPesoNf(FAT_CD_M_NFE, FAT_CD_M_NFE_ITE);

                  FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT, DataSetTit,FAT_CD_M_PED_TIT_INT);

                  FAT_CD_M_PED_TIT_INT.Close;

                  FAT_CD_M_NFE.Post;

                  if FAT_CD_M_NFE <> nil then
                    if FAT_CD_M_NFE.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');

                  if FAT_CD_M_NFE_ITE <> nil then
                     if FAT_CD_M_NFE_ITE.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_ITE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de títulos da nota fiscal.');

                  {if FAT_CD_M_NFE_TIT <> nil then
                     if FAT_CD_M_NFE_TIT.ChangeCount > 0 then
                        if not (FAT_CD_M_NFE_TIT.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de itens da nota fiscal.'); }
                end
            else
                begin
                  if ((DataSet.UpdateStatus in [usDeleted])) or  ((DataSet.UpdateStatus in [usUnmodified]) and (PedAprovado = false)) then
                      begin
                        if not FAT_CD_M_NFE.IsEmpty then
                           begin
                              FAT_CD_M_NFE.delete;

                              if FAT_CD_M_NFE <> nil then
                                 if FAT_CD_M_NFE.ChangeCount > 0 then
                                   if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao deletar a nota fiscal desta ordem de serviço.');
                           end;
                      end;
                end;
        end;

  path_arq :=  ExtractFilePath(Application.ExeName)+'logs\processo_pcp_ors_ger_nfs.txt';
  if FileExists(pchar(path_arq)) then
     begin
       DeleteFile(pchar(path_arq));
     end;

    if  origem = 5 then  // Ordem de Faturamento (PCP_FM_M_ORS)
         begin
            GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 1 - O.F: ' + DataSet.FieldByName('ID_ORS').AsString);
            FAT_CD_M_NFE := TClientDataSet.Create(nil);
            FAT_CD_M_NFE.SetProvider(FAT_DP_M_NFE);
            FAT_CD_M_NFE.Close;
            FAT_CD_M_NFE.Data :=
                     FAT_CD_M_NFE.DataRequest(VarArrayOf([16,DataSet.FieldByName('ID_ORS').AsString]));

            FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
            FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));

            FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
            FAT_CD_M_NFE_TIT.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_TIT'));

            GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 2');
            if (DataSet.UpdateStatus in [usInserted])  then
                begin
                  // Busca os itens da nota fiscal
                 { FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                  FAT_CD_M_NFE_ITE.Close;
                  FAT_CD_M_NFE_ITE.Data :=
                      FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([0,'''0''']));

                  // Busca os títulos da nota fiscal
                  FAT_CD_M_NFE_TIT.Free;
                  FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                  FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                  FAT_CD_M_NFE_TIT.Close;
                  FAT_CD_M_NFE_TIT.Data :=
                          FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([0]));  }

                  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 3');
                  // Buscar dados do tipo de movimento de estoque
                  CAD_CD_C_TME := TClientDataSet.Create(nil);
                  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
                  CAD_CD_C_TME.Close;
                  CAD_CD_C_TME.Data :=
                      CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_M_PED_ORS.FieldByName('id_tipo_mov_estoque').AsString]));
                  // Buscar o CFOP
                  if BUS_CD_M_PED_ORS.FieldByName('int_pessoacli').AsInteger = 0 then // Física
                     begin
                        if BUS_CD_M_PED_ORS.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                     end;

                  if BUS_CD_M_PED_ORS.FieldByName('int_pessoacli').AsInteger = 1 then // Jurídica
                     begin
                        if BUS_CD_M_PED_ORS.FieldByName('INT_NOMEEST').AsString =
                           CAD_CD_C_PAR.FieldByName('int_uf').AsString then
                           begin
                              Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                           end
                        else
                           Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
                     end;
                  //------------------------------------------------------------------------------------

                  {if not FAT_CD_M_NFE.IsEmpty then
                     begin

                       // Busca os itens da nota fiscal para deletar todos
                      { FAT_CD_M_NFE_ITE.Free;
                       FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_ITE.SetProvider(BUS_DP_M_NFE_ITE_INT);
                       FAT_CD_M_NFE_ITE.Close;
                       FAT_CD_M_NFE_ITE.Data :=
                            FAT_CD_M_NFE_ITE.DataRequest(VarArrayOf([FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

                       // Busca os títulos da nota fiscal para deletar todos
                       FAT_CD_M_NFE_TIT.Free;
                       FAT_CD_M_NFE_TIT := TClientDataSet.Create(nil);
                       FAT_CD_M_NFE_TIT.SetProvider(BUS_DP_M_NFE_TIT_INT);
                       FAT_CD_M_NFE_TIT.Close;
                       FAT_CD_M_NFE_TIT.Data :=
                              FAT_CD_M_NFE_TIT.DataRequest(VarArrayOf([FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString]));

                       FAT_CD_M_NFE.edit;

                       DataSet.Next;

                       if DataSet.FieldByName('vlr_bruto').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency  := DataSet.FieldByName('vlr_bruto').AsCurrency;

                       if DataSet.FieldByName('vlr_desconto').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency    := DataSet.FieldByName('vlr_desconto').AsCurrency;

                       if DataSet.FieldByName('vlr_liquido').text <> '' then
                          FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency     := DataSet.FieldByName('vlr_liquido').AsCurrency;

                       DataSet.Prior;  }
                     {end
                  else
                     begin }
                        FAT_CD_M_NFE.Insert;
                        FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := DataSet.FieldByName('id_empresa').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger               := sm.enValorChave('FAT_TB_M_NFE');
                        FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := DataSet.FieldByName('id_responsavel').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_ORS').AsInteger                  := DataSet.FieldByName('id_ors').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
                        FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
                        FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
                        FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := CAD_CD_C_PAR.FieldByName('int_uf').AsString;
                        FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
                        FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
                        FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

                        FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
                        FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
                        FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
                        FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
                        FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
                        FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';

                        FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := BUS_CD_M_PED_ORS.FieldByName('id_cliente').AsInteger;

                        if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
                           begin
                             FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := DataSet.FieldByName('id_almoxarifado').AsInteger;
                           end;

                        FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
                        FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'A';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
                        FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
                        FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
                        FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
                        FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
                        FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
                        FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
                        FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
                        FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
                        FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
                        FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

                        FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(DataSet.FieldByName('dta_emissao').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(DataSet.FieldByName('dta_emissao').AsDateTime);
                        FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := Date;

                        FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := BUS_CD_M_PED_ORS.FieldByName('int_cpfcnpj').AsString;

                             // Para ter a mesma função do Pedido com F11
                             FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := DataSet.FieldByName('id_ors').AsInteger;
                             FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := 'X';
                             FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := true;
                             FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 1;
                             FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := IdAbertura;

                        FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
                        FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
                        FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
                        FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := DataSet.FieldByName('id_tipo_mov_estoque').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := BUS_CD_M_PED_ORS.FieldByName('id_condicao_pag').AsInteger;
                        FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := Cfop;
                        FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := BUS_CD_M_PED_ORS.FieldByName('id_vendedor').AsInteger;

                        FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := BUS_CD_M_PED_ORS.FieldByName('int_nomeest').AsString;

                        FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency         := DataSet.FieldByName('vlr_bruto').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency           := DataSet.FieldByName('vlr_desconto').AsCurrency;
                        FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency            := DataSet.FieldByName('vlr_liquido').AsCurrency;

                        FAT_CD_M_NFE.FieldByName('vlr_isenta').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('vlr_seguro').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency      := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency     := 0;
                        FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency      := 0;

                        FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('fre_valor').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('fre_custo').AsCurrency       := 0;

                        FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency        := 0;
                        FAT_CD_M_NFE.FieldByName('cof_valor_st').AsCurrency    := 0;

                        FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency       := 0;
                        FAT_CD_M_NFE.FieldByName('pis_valor_st').AsCurrency    := 0;
                        FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency        := 0;

                        FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
                        FAT_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
                        FAT_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
                        FAT_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
                        FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency      := 0;
                     //end;
                    GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 4');
                    DataSetIte    := TDataSetField(Dataset.FieldByName('PCP_SQ_M_ORS_ITE')).NestedDataSet;
                    DataSetTit    := TDataSetField(Dataset.FieldByName('PCP_SQ_M_ORS_TIT')).NestedDataSet;
                  try
                   // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
                   // SM := TSM.Create(nil);

                 { if DataSetIte.IsEmpty then
                     begin}

                         // Busca os itens do pedido de venda
                         {PCP_CD_M_ORS_ITE_INT.Free;
                         PCP_CD_M_ORS_ITE_INT := TClientDataSet.Create(nil);
                         PCP_CD_M_ORS_ITE_INT.SetProvider(SM.BUS_DP_M_ORS_ITE_INT);
                         PCP_CD_M_ORS_ITE_INT.Close;
                         PCP_CD_M_ORS_ITE_INT.Data :=
                              PCP_CD_M_ORS_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_ORS').AsString]));

                         DataSetIte := PCP_CD_M_ORS_ITE_INT;}
                     //end; }

                  //DataSetTit    := TDataSetField(Dataset.FieldByName('PCP_SQ_M_ORS_TIT')).NestedDataSet;

                  {PCP_CD_M_ORS_TIT_INT.Free;
                  PCP_CD_M_ORS_TIT_INT := TClientDataSet.Create(nil);
                  PCP_CD_M_ORS_TIT_INT.SetProvider(SM.BUS_DP_M_ORS_TIT_INT);
                  PCP_CD_M_ORS_TIT_INT.Close;
                  PCP_CD_M_ORS_TIT_INT.Data :=
                      PCP_CD_M_ORS_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_ORS').AsString]));
                  DataSetTit    := PCP_CD_M_ORS_TIT_INT; }

                  finally
                    // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
                    //FreeAndNil(SM);
                  end;
                  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 5');
                  FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger      := 1;

                  FatGerNfsIte(Origem,DataSet,FAT_CD_M_NFE,BUS_CD_C_PAR_CTR,CAD_DP_C_ITE, FAT_CD_M_NFE_ITE, DataSetIte,0,
                               BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString,BUS_CD_C_CLI.FieldByName('INT_UF').AsString,
                               EmpRegimeSimples,BUS_DP_C_TRI_REG,BUS_CD_C_CLI);

                  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 6');
                  AtualiarPesoNf(FAT_CD_M_NFE, FAT_CD_M_NFE_ITE);

                  FatGerNfsTit(Origem,DataSet,FAT_CD_M_NFE,CAD_DP_C_FPG, FAT_CD_M_NFE_TIT, DataSetTit,PCP_CD_M_ORS_TIT_INT);

                  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 7');
                  FAT_CD_M_NFE.Post;

                  if FAT_CD_M_NFE <> nil then
                    if FAT_CD_M_NFE.ChangeCount > 0 then
                       if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                          raise Exception.Create('Erro ao tentar gerar o registro na tabela de nota fiscal.');
                  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 8');
                end
            else
                begin
                  if (DataSet.UpdateStatus in [usDeleted]) {or  ((DataSet.UpdateStatus in [usUnmodified]) and (PedAprovado = false))} then
                      begin
                        if not FAT_CD_M_NFE.IsEmpty then
                           begin
                              FAT_CD_M_NFE.delete;

                              if FAT_CD_M_NFE <> nil then
                                 if FAT_CD_M_NFE.ChangeCount > 0 then
                                   if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao deletar a nota fiscal desta ordem de serviço.');
                           end;
                      end;
                end;
        end;
  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase 9');
  finally
     FreeAndNil(CAD_CD_C_PAR);
     FreeAndNil(BUS_CD_C_PAR_CTR);
     FreeAndNil(BUS_CD_C_RAM);
     FreeAndNil(BUS_CD_C_CLI);
     FreeAndNil(CAD_CD_C_TME);

     FreeAndNil(FAT_CD_M_NFE);
     FreeAndNil(FAT_CD_M_NFE_ITE);
     FreeAndNil(FAT_CD_M_NFE_TIT);

     FreeAndNil(FAT_CD_M_NFE_2);

     FreeAndNil(FAT_CD_M_NFE_ITE_2);
     FreeAndNil(FAT_CD_M_NFE_TIT_2);

     FreeAndNil(OFI_CD_M_ORV_ITE_INT);
     FreeAndNil(OFI_CD_M_ORV_TIT_INT);
     FreeAndNil(OFI_CD_M_ORV_TIT_SER_INT);

     FreeAndNil(FAT_CD_M_PED_ITE_INT);
     FreeAndNil(FAT_CD_M_PED_TIT_INT);

     FreeAndNil(CAD_CD_C_CPG);
     FreeAndNil(BUS_CD_M_NFE_INT);
  end;

  GerarTxt(path_arq,'PCP_DP_M_ORS: Geração NF: Fase encerrada');
end;









function FatGerNfsIte(origem: integer;DataSet: TCustomClientDataSet; FAT_CD_M_NFE,BUS_CD_C_PAR_CTR:TClientDataSet;
         CAD_DP_C_ITE:TDataSetProvider; cdsNfeIte,DataSetIte:TDataSet;TipoItem: Integer;
         DocIE,UFEmitente: String; RegimeSimples: Boolean; BUS_DP_C_TRI_REG: TDataSetProvider;
         BUS_CD_C_CLI:TClientDataSet;tipoDataSetIte:Integer=0): Boolean;
var
  CAD_CD_C_ITE,CAD_CD_C_CPG,FAT_CD_M_PED_ITE_INT: TClientDataSet;
  BUS_CD_C_TRI_REG,BUS_CD_C_FUN:TClientDataSet;
  VlrCustoMedio: Currency;
  VlrDesconto,VlrLiquido,VlrPerDesc:Currency;
  i: integer;
  Vnd_ext_int:String;

  vlr_liquido_com_especial: Currency;

begin
  { TODO -oMaxsuel -cCriação : Método criado em 22/08/2015; }

  { origem
        1 - Fechamento de O.S
        2 - Pedido de Venda  }

  { TipoItem - Usado somente pela ORV
        1 - Somente Item;
        2 - Somente Serviço;
        3 - Todos

  }

  try
  // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
  //SM := TSM.Create(nil);

  Vnd_ext_int :='';

  if FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsString <> '' then
    begin
     BUS_CD_C_FUN := TClientDataSet.Create(nil);
     BUS_CD_C_FUN.SetProvider(sm.CAD_DP_C_FUN);
     BUS_CD_C_FUN.close;
     BUS_CD_C_FUN.Data :=
                BUS_CD_C_FUN.DataRequest(VarArrayOf([0,FAT_CD_M_NFE.FieldByName('id_vendedor').text]));

     if not BUS_CD_C_FUN.IsEmpty then
       begin
         Vnd_ext_int := BUS_CD_C_FUN.FieldByname('vnd_interno_externo').AsString;
       end;
     BUS_CD_C_FUN.close;
    end;




  if Origem = 1  then
     begin
        DataSetIte.First;
        while not DataSetIte.Eof do
           begin
             CAD_CD_C_ITE.free;
             CAD_CD_C_ITE := TClientDataSet.Create(nil);
             CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
             CAD_CD_C_ITE.close;
             CAD_CD_C_ITE.Data :=
                CAD_CD_C_ITE.DataRequest(VarArrayOf([0, DataSetIte.FieldByName('id_item').text]));


             VlrDesconto := DataSetIte.FieldByName('vlr_desconto').AsCurrency;
             VlrLiquido  := DataSetIte.FieldByName('vlr_liquido').AsCurrency;
             VlrPerDesc  := DataSetIte.FieldByName('per_desconto').AsCurrency;
             if tipoDataSetIte=0 then
               begin
                 DataSetIte.Next;
                 if DataSetIte.FieldByName('vlr_desconto').AsString <> '' then
                   begin
                    VlrDesconto := DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                   end;
                 if DataSetIte.FieldByName('vlr_liquido').AsString <> '' then
                   begin
                    VlrLiquido  := DataSetIte.FieldByName('vlr_liquido').AsCurrency;
                   end;
                 if DataSetIte.FieldByName('per_desconto').AsString <> '' then
                   begin
                    VlrPerDesc  := DataSetIte.FieldByName('per_desconto').AsCurrency;
                   end;
                 DataSetIte.Prior;
               end;

             if ((tipoitem = 1) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09'))  or
                ((tipoitem = 2) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString =  '09'))  or
                (tipoitem = 3)  then
                 begin
                   //if (DataSetIte.UpdateStatus in [usInserted]) then   // Se for inserção na orv
                   //    begin             
                   if not (DataSetIte.FieldByName('cancelada').AsBoolean) then
                      begin
                         cdsNfeIte.Insert;
                         cdsNfeIte.FieldByName('id_fiscal').AsInteger            :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger        := 0;
                         cdsNfeIte.FieldByName('id_item').AsInteger              := DataSetIte.FieldByName('id_item').AsInteger;
                         cdsNfeIte.FieldByName('id_tributo').AsString            := CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                         cdsNfeIte.FieldByName('id_busca_item').AsString         := DataSetIte.FieldByName('id_busca_item').AsString;

                         cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                         cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                         cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;

                         if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                             begin
                               cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                    CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                        cdsNfeIte.FieldByName('QTDE').AsFloat;
                             end;

                          if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                             begin
                               cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                    CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                        cdsNfeIte.FieldByName('QTDE').AsFloat;
                             end;

                         cdsNfeIte.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                         cdsNfeIte.FieldByName('dre_perc_ircs').AsFloat  :=
                                CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;


                         cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  VlrPerDesc;
                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  VlrDesconto;
                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  VlrLiquido;

                         cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                         cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';


                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);
                         BUS_CD_C_TRI_REG.data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                          FAT_CD_M_NFE.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                         cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);


                         if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                           begin
                              cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                             BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                           end
                         else
                           begin
                              CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                             BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                           end;

                         cdsNfeIte.FieldByName('per_cmv').AsString := '';
                         if Vnd_ext_int <>'' then
                           begin
                             if Vnd_ext_int = '0' then
                                cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                             if Vnd_ext_int = '1' then
                                cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
                           end;

                         //cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                         //cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;

                         BUS_CD_C_TRI_REG.close;
                         CAD_CD_C_ITE.close;


                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  DataSetIte.FieldByName('ID_ITEM').AsString,
                                                  DataSetIte.FieldByName('ID_COR').AsString,
                                                  DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;

                         cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                         //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                         cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                         cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                         cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                         cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
                         cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                         cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                         cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                         cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                         cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                         cdsNfeIte.Post;
                      end;
                 end;
             if tipoDataSetIte=0 then
               begin
                 DataSetIte.Next;
               end;
             DataSetIte.Next;
           end;
     end;

  if (Origem = 2) or (Origem = 4)  then // Pedido de Venda ou Pedido Venda Cupom (FAT_FM_M_PNF)
     begin
       CAD_CD_C_CPG.free;
       CAD_CD_C_CPG := TClientDataSet.Create(nil);
       CAD_CD_C_CPG.SetProvider(sm.CAD_DP_C_CPG);
       CAD_CD_C_CPG.close;
       CAD_CD_C_CPG.Data :=
          CAD_CD_C_CPG.DataRequest(VarArrayOf([0, DataSet.FieldByName('id_condicao_pag').text]));

       FAT_CD_M_PED_ITE_INT.Free;
       FAT_CD_M_PED_ITE_INT := TClientDataSet.Create(nil);
       FAT_CD_M_PED_ITE_INT.SetProvider(sm.BUS_DP_M_PED_ITE_INT);
       FAT_CD_M_PED_ITE_INT.Close;
       FAT_CD_M_PED_ITE_INT.Data :=
            FAT_CD_M_PED_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));

        DataSetIte.First;
        while not DataSetIte.Eof do
           begin

             if (DataSetIte.UpdateStatus in [usInserted]) then   // Se for inserção no pedido de venda
                 begin
                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                            CAD_CD_C_ITE.DataRequest(VarArrayOf([0, DataSetIte.FieldByName('id_item').text]));

                   if ((tipoitem = 1) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09'))  or
                      ((tipoitem = 2) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString =  '09'))  or
                      (tipoitem = 3)  then
                     begin

                       cdsNfeIte.Insert;
                       cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                       cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger          := 0;
                       cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                       cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;
                       cdsNfeIte.FieldByName('pcp_obs_item').AsString         :=  DataSetIte.FieldByName('pcp_obs_item').AsString;

                       cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                       cdsNfeIte.FieldByName('id_tributo').AsString         :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                       cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                       cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                       cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                       cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                       cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                       if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                          begin
                            cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                     cdsNfeIte.FieldByName('QTDE').AsFloat;
                          end;
                       if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                          begin
                            cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                     cdsNfeIte.FieldByName('QTDE').AsFloat;
                          end;


                       cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                       cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                       cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                       cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                       cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                       cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                       cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                       cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                       cdsNfeIte.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                    CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                       cdsNfeIte.FieldByName('dre_perc_ircs').AsFloat  :=
                                    CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;

                       FreeAndNil(BUS_CD_C_TRI_REG);
                       BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                       BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                             dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                       cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                                 FatBuscarCfoIte(DocIE,UFEmitente,
                                                    RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                       if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                          begin
                            cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                           BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                          end
                       else
                          begin
                            CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                           BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                          end;

                       cdsNfeIte.FieldByName('per_cmv').AsString := '';
                       if Vnd_ext_int <>'' then
                         begin
                           if Vnd_ext_int = '0' then
                              cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                           if Vnd_ext_int = '1' then
                              cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
                         end;

                       //cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                       //cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;


                       BUS_CD_C_TRI_REG.close;
                       CAD_CD_C_ITE.close;

                       VlrCustoMedio := 0;
                       FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                DataSetIte.FieldByName('ID_ITEM').AsString,
                                                DataSetIte.FieldByName('ID_COR').AsString,
                                                DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                VlrCustoMedio);
                       cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;




                       cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                       //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                       cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                       cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                       cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                       cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                       cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                       cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
                       cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;

                       if ((FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger = 1) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency            := DataSetIte.FieldByName('vlr_frete').AsCurrency
                       else
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency            := 0;

                       cdsNfeIte.FieldByName('vlr_icm_desc').AsCurrency           := DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;
                       cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                       cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                       cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                       cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                       cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                       cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                       cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                       cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                       cdsNfeIte.Post;
                     end;
                 end;

             if (DataSetIte.UpdateStatus in [usUnmodified]) then   // Se for alteração no pedido de venda
                 begin
                  if FAT_CD_M_PED_ITE_INT.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                      begin
                        FAT_CD_M_PED_ITE_INT.delete;
                      end;

                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0,DataSetIte.FieldByName('id_item').text]));

                   if ((tipoitem = 1) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09'))  or
                      ((tipoitem = 2) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString =  '09'))  or
                      (tipoitem = 3)  then
                     begin

                         cdsNfeIte.Insert;
                         cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       := 0;
                         cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                         cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;
                         cdsNfeIte.FieldByName('pcp_obs_item').AsString         :=  DataSetIte.FieldByName('pcp_obs_item').AsString;


                         cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                         cdsNfeIte.FieldByName('id_tributo').AsString         :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                         cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                         cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;

                         cdsNfeIte.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                      CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                         cdsNfeIte.FieldByName('dre_perc_ircs').AsFloat  :=
                                      CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;

                         cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                         cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                         cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                         BUS_CD_C_TRI_REG.data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                          dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                         cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                         if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                           begin
                             cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                        BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                           end
                         else
                           begin
                              CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                        BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                           end;


                         cdsNfeIte.FieldByName('per_cmv').AsString := '';
                         if Vnd_ext_int <>'' then
                           begin
                             if Vnd_ext_int = '0' then
                                cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                             if Vnd_ext_int = '1' then
                                cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
                           end;

                         //cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                         //cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;


                         BUS_CD_C_TRI_REG.close;
                         //CAD_CD_C_ITE.close; Comentei essa linha pois gerava erro quando se altera pedido de venda. Resp:Luan. Data:22/03/2017


                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  DataSetIte.FieldByName('ID_ITEM').AsString,
                                                  DataSetIte.FieldByName('ID_COR').AsString,
                                                  DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                         cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                         //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                         cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                         cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                         cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                         cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
                         cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;


                         if ((FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger = 1) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                           cdsNfeIte.FieldByName('fre_valor').AsCurrency            := DataSetIte.FieldByName('vlr_frete').AsCurrency
                         else
                           cdsNfeIte.FieldByName('fre_valor').AsCurrency            := 0;

                         cdsNfeIte.FieldByName('vlr_icm_desc').AsCurrency           := DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;
                         cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                         cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                         cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                         cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                         cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                         //CAD_CD_C_ITE.close; Comentei essa linha pois gerava erro quando se altera pedido de venda. Resp:Luan. Data:22/03/2017

                         //if ComUpdateStatusIte then
                           // begin
                               DataSetIte.Next;
                               if (DataSetIte.UpdateStatus in [usModified]) then   // Se for alteração no pedido de venda
                                    begin
                                      if DataSetIte.FieldByName('id_item').AsString <> '' then
                                         begin
                                           cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                                           cdsNfeIte.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;

                                           CAD_CD_C_ITE.free;
                                           CAD_CD_C_ITE := TClientDataSet.Create(nil);
                                           CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                                           CAD_CD_C_ITE.close;
                                           CAD_CD_C_ITE.Data :=
                                              CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));
                                           cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                                           cdsNfeIte.FieldByName('id_tributo').AsString           := CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                                           cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                                           cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;

                                         end;

                                      if DataSetIte.FieldByName('pcp_obs_item').AsString <> '' then
                                         cdsNfeIte.FieldByName('pcp_obs_item').AsString :=  DataSetIte.FieldByName('pcp_obs_item').AsString;

                                      if DataSetIte.FieldByName('id_cor').AsString <> '' then
                                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;

                                      if DataSetIte.FieldByName('id_tamanho').AsString <> '' then
                                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;

                                      if DataSetIte.FieldByName('int_tipo_item').AsString <> '' then
                                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;

                                      if DataSetIte.FieldByName('qtde').AsString <> '' then
                                         begin
                                           cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;

                                           if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                                              begin
                                                cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                                     CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                                         cdsNfeIte.FieldByName('QTDE').AsFloat;
                                              end;
                                           if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                                              begin
                                                cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                                     CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                                         cdsNfeIte.FieldByName('QTDE').AsFloat;
                                              end;
                                         end;

                                      VlrCustoMedio := 0;
                                      FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                                cdsNfeIte.FieldByName('ID_ITEM').AsString,
                                                                cdsNfeIte.FieldByName('ID_COR').AsString,
                                                                cdsNfeIte.FieldByName('ID_TAMANHO').AsString,
                                                                BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                                VlrCustoMedio);
                                      cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                                      if DataSetIte.FieldByName('vlr_unitario').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_bruto').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                                      if DataSetIte.FieldByName('per_desconto').AsString <> '' then
                                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;

                                      if DataSetIte.FieldByName('vlr_desconto').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_liquido').AsString <> ''  then
                                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_frete').AsString <> ''  then
                                         cdsNfeIte.FieldByName('vlr_frete').AsCurrency      :=  DataSetIte.FieldByName('vlr_frete').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_icm_desn').AsString <> ''  then
                                         cdsNfeIte.FieldByName('vlr_icm_desc').AsCurrency      :=  DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;


                                    end;
                            //end;
                         CAD_CD_C_ITE.close;

                         cdsNfeIte.Post;
                     end;
                 end;

             if (DataSetIte.UpdateStatus in [usDeleted]) then  // Se for excluído do pedido de venda
                 begin
                   if FAT_CD_M_PED_ITE_INT.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                      begin
                        FAT_CD_M_PED_ITE_INT.delete;
                      end;
                 end;
             DataSetIte.Next;
           end;

       DataSetIte := FAT_CD_M_PED_ITE_INT;

       DataSetIte.First;
       while not DataSetIte.Eof do
           begin
             CAD_CD_C_ITE.free;
             CAD_CD_C_ITE := TClientDataSet.Create(nil);
             CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
             CAD_CD_C_ITE.close;
             CAD_CD_C_ITE.Data :=
                CAD_CD_C_ITE.DataRequest(VarArrayOf([0, DataSetIte.FieldByName('id_item').text]));


             if ((tipoitem = 1) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09'))  or
                ((tipoitem = 2) and (CAD_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString =  '09'))  or
                (tipoitem = 3)  then
                   begin

                       cdsNfeIte.Insert;
                       cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                       cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       :=  0;
                       cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                       cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;
                       cdsNfeIte.FieldByName('pcp_obs_item').AsString         :=  DataSetIte.FieldByName('pcp_obs_item').AsString;


                       cdsNfeIte.FieldByName('origem_mercadoria').AsString    :=  CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                       cdsNfeIte.FieldByName('id_tributo').AsString           :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                       cdsNfeIte.FieldByName('id_sequencia').AsInteger        :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                       cdsNfeIte.FieldByName('id_cor').AsInteger              :=  DataSetIte.FieldByName('id_cor').AsInteger;
                       cdsNfeIte.FieldByName('id_tamanho').AsInteger          :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                       cdsNfeIte.FieldByName('int_tipo_item').AsString        :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                       cdsNfeIte.FieldByName('qtde').AsFloat                  :=  DataSetIte.FieldByName('qtde').AsFloat;
                       if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                          begin
                            cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                     cdsNfeIte.FieldByName('QTDE').AsFloat;
                          end;
                       if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                          begin
                            cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                 CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                     cdsNfeIte.FieldByName('QTDE').AsFloat;
                          end;

                       cdsNfeIte.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                          CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                       cdsNfeIte.FieldByName('dre_perc_ircs').AsFloat  :=
                                          CAD_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;

                       cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                       cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                       cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                       cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                       cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                       cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                       // Este IF foi adicionado em 11/11/2022 , para atender o pedido de Caio das Colchões Globo
                         // referente a mudança do pedido de venda.
                       if DataSetIte.FieldByName('vlr_desc_especial').AsCurrency > 0 then
                          begin
                            cdsNfeIte.FieldByName('vlr_desconto').AsCurrency    :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency -
                                                                                                 ( DataSetIte.FieldByName('vlr_liquido').AsCurrency -
                                                                                                   roundTo(DataSetIte.FieldByName('vlr_desc_especial').AsCurrency,-2)) ;

                            vlr_liquido_com_especial := DataSetIte.FieldByName('vlr_liquido').AsCurrency -
                                                      roundTo(DataSetIte.FieldByName('vlr_desc_especial').AsCurrency,-2);

                            cdsNfeIte.FieldByName('per_desconto').AsCurrency    := 100 -
                                                                                                ( roundTo( (vlr_liquido_com_especial / cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency) * 100, -4) );

                            cdsNfeIte.FieldByName('vlr_liquido').AsCurrency     :=
                                   (cdsNfeIte.FieldByName('qtde').AsCurrency *
                                    cdsNfeIte.FieldByName('vlr_unitario').AsCurrency) - cdsNfeIte.FieldByName('vlr_desconto').AsCurrency;
                          end;


                       cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                       cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                       cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                       FreeAndNil(BUS_CD_C_TRI_REG);
                       BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                       BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                             dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                       cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                                 FatBuscarCfoIte(DocIE,UFEmitente,
                                                    RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                       if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                          begin
                            cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                           BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                          end
                       else
                          begin
                            CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                           BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                          end;


                       cdsNfeIte.FieldByName('per_cmv').AsString := '';
                       if Vnd_ext_int <>'' then
                         begin
                           if Vnd_ext_int = '0' then
                              cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                           if Vnd_ext_int = '1' then
                              cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
                         end;

                      // cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                      // cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;


                       BUS_CD_C_TRI_REG.close;
                       CAD_CD_C_ITE.close;

                       VlrCustoMedio := 0;
                       FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                DataSetIte.FieldByName('ID_ITEM').AsString,
                                                DataSetIte.FieldByName('ID_COR').AsString,
                                                DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                VlrCustoMedio);
                       cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                       cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                       //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                       cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                       cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                       cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                       cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                       cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                       cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
                       cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;


                       if ((FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger = 1) and (BUS_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean=true)) then
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency            := DataSetIte.FieldByName('vlr_frete').AsCurrency
                       else
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency            := 0;

                       cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('vlr_icm_desc').AsCurrency           := DataSetIte.FieldByName('vlr_icm_desn').AsCurrency;

                       cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                       cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                       cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                       cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                       cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                       cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                       cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                       cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                       cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                       cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                       cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                       cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                       cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                       cdsNfeIte.Post;


                   end;
                   DataSetIte.Next;
           end;

       {
       if CAD_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 1 then // A prazo
          begin
              //DataSetIte.First;
              while not DataSetIte.Eof do
                 begin
                   cdsNfeIte.Insert;
                   cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                   cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger          := 0;
                   cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                   cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;

                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                   cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                   cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                   cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                   cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                   cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                   cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;


                   cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                   cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                   cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                   cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                   cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                   cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                   FreeAndNil(BUS_CD_C_TRI_REG);
                   BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                   BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                         dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                   cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                   if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                      begin
                        cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                       BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                      end
                   else
                      begin
                        CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                       BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                      end;


                   BUS_CD_C_TRI_REG.close;
                   CAD_CD_C_ITE.close;

                   VlrCustoMedio := 0;
                   FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                            DataSetIte.FieldByName('ID_ITEM').AsString,
                                            DataSetIte.FieldByName('ID_COR').AsString,
                                            DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                            BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                            VlrCustoMedio);
                   cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                   cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                   //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                   cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                   cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                   cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                   cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                   cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                   cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                   cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                   cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                   cdsNfeIte.Post;

                   DataSetIte.Next;
                 end;
           end
       else
           begin
              // DataSetIte.First;
              while not DataSetIte.Eof do
                 begin
                   if (DataSetIte.UpdateStatus in [usInserted]) then   // Se for inserção no pedido de venda
                       begin
                         cdsNfeIte.Insert;
                         cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger          := 0;
                         cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                         cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;

                         CAD_CD_C_ITE.free;
                         CAD_CD_C_ITE := TClientDataSet.Create(nil);
                         CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                         CAD_CD_C_ITE.close;
                         CAD_CD_C_ITE.Data :=
                            CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                         cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                         cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                         cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;


                         cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                         cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                         cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                         BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                               dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                         cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                                   FatBuscarCfoIte(DocIE,UFEmitente,
                                                      RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                         if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                            begin
                              cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                             BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                            end
                         else
                            begin
                              CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                             BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                            end;


                         BUS_CD_C_TRI_REG.close;
                         CAD_CD_C_ITE.close;

                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  DataSetIte.FieldByName('ID_ITEM').AsString,
                                                  DataSetIte.FieldByName('ID_COR').AsString,
                                                  DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                         cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                         //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                         cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                         cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                         cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                         cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                         cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                         cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                         cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                         cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                         cdsNfeIte.Post;
                       end;

                   if (DataSetIte.UpdateStatus in [usUnmodified]) then   // Se for alteração no pedido de venda
                       begin
                         cdsNfeIte.Insert;
                         cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       := 0;
                         cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                         cdsNfeIte.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;

                         CAD_CD_C_ITE.free;
                         CAD_CD_C_ITE := TClientDataSet.Create(nil);
                         CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                         CAD_CD_C_ITE.close;
                         CAD_CD_C_ITE.Data :=
                            CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                         cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                         cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                         cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;

                         cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                         cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                         cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                         BUS_CD_C_TRI_REG.data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                          dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                         cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                         if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                           begin
                             cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                        BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                           end
                         else
                           begin
                              CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                        BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                           end;


                         BUS_CD_C_TRI_REG.close;
                         CAD_CD_C_ITE.close;

                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  DataSetIte.FieldByName('ID_ITEM').AsString,
                                                  DataSetIte.FieldByName('ID_COR').AsString,
                                                  DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                         cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                         //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                         cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                         cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                         cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                         cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                         cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                         cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                         cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                         cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                         CAD_CD_C_ITE.Close;

                         if ComUpdateStatusIte then
                            begin
                               DataSetIte.Next;
                               if (DataSetIte.UpdateStatus in [usModified]) then   // Se for alteração no pedido de venda
                                    begin
                                      if DataSetIte.FieldByName('id_item').AsString <> '' then
                                         begin
                                           cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                                           cdsNfeIte.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;

                                           CAD_CD_C_ITE.free;
                                           CAD_CD_C_ITE := TClientDataSet.Create(nil);
                                           CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                                           CAD_CD_C_ITE.close;
                                           CAD_CD_C_ITE.Data :=
                                              CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));
                                           cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                                         end;

                                      if DataSetIte.FieldByName('id_cor').AsString <> '' then
                                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;

                                      if DataSetIte.FieldByName('id_tamanho').AsString <> '' then
                                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;

                                      if DataSetIte.FieldByName('int_tipo_item').AsString <> '' then
                                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;

                                      if DataSetIte.FieldByName('qtde').AsString <> '' then
                                         begin
                                           cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;

                                           if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                                              begin
                                                cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                                     CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                                         cdsNfeIte.FieldByName('QTDE').AsFloat;
                                              end;
                                           if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                                              begin
                                                cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                                     CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                                         cdsNfeIte.FieldByName('QTDE').AsFloat;
                                              end;
                                         end;

                                      VlrCustoMedio := 0;
                                      FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                                cdsNfeIte.FieldByName('ID_ITEM').AsString,
                                                                cdsNfeIte.FieldByName('ID_COR').AsString,
                                                                cdsNfeIte.FieldByName('ID_TAMANHO').AsString,
                                                                BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                                VlrCustoMedio);
                                      cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                                      if DataSetIte.FieldByName('vlr_unitario').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_bruto').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                                      if DataSetIte.FieldByName('per_desconto').AsString <> '' then
                                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;

                                      if DataSetIte.FieldByName('vlr_desconto').AsString <> '' then
                                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;

                                      if DataSetIte.FieldByName('vlr_liquido').AsString <> ''  then
                                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;
                                    end;
                            end;
                        CAD_CD_C_ITE.close;

                        cdsNfeIte.Post;
                       end;

                   {if (DataSetIte.UpdateStatus in [usDeleted]) then  // Se for excluído do pedido de venda
                       begin
                         if cdsNfeIte.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                            begin
                              cdsNfeIte.delete;
                            end;
                       end;   }
           {        DataSetIte.Next;
                 end;
           end;
         }
        // Por Maxsuel Victor em 22/06/2016
        { Código antigo e o ORIGEM = 4 deixa de ser utilizado, pois o cliente desistiu
        DataSetIte.First;
        while not DataSetIte.Eof do
           begin
             if (DataSetIte.UpdateStatus in [usInserted]) then   // Se for inserção no pedido de venda
                 begin
                   cdsNfeIte.Insert;
                   cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                   cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger          := 0;
                   cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                   cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_busca_item').AsString;

                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                   cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                   cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                   cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                   cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                   cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                   cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;


                   cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                   cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                   cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                   cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                   cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                   cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                   FreeAndNil(BUS_CD_C_TRI_REG);
                   BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                   BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                         dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                   cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                   if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                      begin
                        cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                       BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                      end
                   else
                      begin
                        CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                       BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                      end;


                   BUS_CD_C_TRI_REG.close;
                   CAD_CD_C_ITE.close;

                   VlrCustoMedio := 0;
                   FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                            DataSetIte.FieldByName('ID_ITEM').AsString,
                                            DataSetIte.FieldByName('ID_COR').AsString,
                                            DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                            BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                            VlrCustoMedio);
                   cdsNfeIte.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                   cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                   //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                   cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                   cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                   cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                   cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                   cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                   cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                   cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                   cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                   cdsNfeIte.Post;
                 end;

             if (DataSetIte.UpdateStatus in [usUnmodified]) then   // Se for alteração no pedido de venda
                 begin
                   if cdsNfeIte.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                      begin
                         CAD_CD_C_ITE.free;
                         CAD_CD_C_ITE := TClientDataSet.Create(nil);
                         CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                         CAD_CD_C_ITE.close;
                         CAD_CD_C_ITE.Data :=
                            CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                        cdsNfeIte.edit;

                        DataSetIte.Next;
                        if (DataSetIte.UpdateStatus in [usModified]) then   // Se for alteração no pedido de venda
                            begin
                              if DataSetIte.FieldByName('id_item').AsString <> '' then
                                 begin
                                   cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                                   cdsNfeIte.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;
                                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                                   CAD_CD_C_ITE.close;
                                   CAD_CD_C_ITE.Data :=
                                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));
                                   cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                                 end;

                              if DataSetIte.FieldByName('id_cor').AsString <> '' then
                                 cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;

                              if DataSetIte.FieldByName('id_tamanho').AsString <> '' then
                                 cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;

                              if DataSetIte.FieldByName('int_tipo_item').AsString <> '' then
                                 cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;

                              if DataSetIte.FieldByName('qtde').AsString <> '' then
                                 begin
                                   cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;

                                   if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                                      begin
                                        cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                             CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                                      end;
                                   if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                                      begin
                                        cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                             CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                                      end;
                                 end;

                              VlrCustoMedio := 0;
                              FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                        cdsNfeIte.FieldByName('ID_ITEM').AsString,
                                                        cdsNfeIte.FieldByName('ID_COR').AsString,
                                                        cdsNfeIte.FieldByName('ID_TAMANHO').AsString,
                                                        BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                        VlrCustoMedio);
                              cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                              if DataSetIte.FieldByName('vlr_unitario').AsString <> '' then
                                 cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;

                              if DataSetIte.FieldByName('vlr_bruto').AsString <> '' then
                                 cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;

                              if DataSetIte.FieldByName('per_desconto').AsString <> '' then
                                 cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;

                              if DataSetIte.FieldByName('vlr_desconto').AsString <> '' then
                                 cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;

                              if DataSetIte.FieldByName('vlr_liquido').AsString <> ''  then
                                 cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;
                            end;
                        CAD_CD_C_ITE.close;
                        cdsNfeIte.Post;
                      end
                   else
                      begin
                         cdsNfeIte.Insert;
                         cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       := 0;
                         cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                         cdsNfeIte.FieldByName('id_busca_item').AsString         :=  DataSetIte.FieldByName('id_busca_item').AsString;

                         CAD_CD_C_ITE.free;
                         CAD_CD_C_ITE := TClientDataSet.Create(nil);
                         CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                         CAD_CD_C_ITE.close;
                         CAD_CD_C_ITE.Data :=
                            CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                         cdsNfeIte.FieldByName('origem_mercadoria').AsString    := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

                         cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                         cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                         cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                         cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                         cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;
                         if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                            begin
                              cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                                   CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                       cdsNfeIte.FieldByName('QTDE').AsFloat;
                            end;

                         cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                         cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                         cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsFloat;
                         cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                         cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;

                         cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := 0;
                         cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                         cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                         BUS_CD_C_TRI_REG.data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                          dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                         cdsNfeIte.FieldByName('id_cfo').AsString             :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                         if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                           begin
                             cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                        BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                           end
                         else
                           begin
                              CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                        BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                           end;


                         BUS_CD_C_TRI_REG.close;
                         CAD_CD_C_ITE.close;

                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  DataSetIte.FieldByName('ID_ITEM').AsString,
                                                  DataSetIte.FieldByName('ID_COR').AsString,
                                                  DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                         cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                         //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                         cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                         cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                         cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                         cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                         cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                         cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                         cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                         cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                         cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                         cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                         cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                         cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                         cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                         cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                         cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                         cdsNfeIte.Post;
                      end;
                 end;

             if (DataSetIte.UpdateStatus in [usDeleted]) then  // Se for excluído do pedido de venda
                 begin
                   if cdsNfeIte.locate('id_sequencia',DataSetIte.FieldByName('id_sequencia').AsString,[]) then
                      begin
                        cdsNfeIte.delete;
                      end;
                 end;
             DataSetIte.Next;
           end;
          -- Fim código antigo
        }
     end;


  if Origem = 3  then // Gerar NFs partindo do BR_CUPOM_MESTRE (GerConWin), 15/02/2016, Maxsuel Victor
     begin
       // i:= 0;
        i :=  AtuSeqItens('FAT_TB_M_NFE_ITE',DataSetIte.RecordCount);
        DataSetIte.First;
        while not DataSetIte.Eof do
           begin
             cdsNfeIte.Insert;
             cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
             cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       := 0;
             cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('cod_produto').AsInteger;
             cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('cod_produto').AsString;

             CAD_CD_C_ITE.free;
             CAD_CD_C_ITE := TClientDataSet.Create(nil);
             CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
             CAD_CD_C_ITE.close;
             CAD_CD_C_ITE.Data :=
                CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

             cdsNfeIte.FieldByName('origem_mercadoria').AsString  := CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
             cdsNfeIte.FieldByName('id_tributo').AsString         := CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
             cdsNfeIte.FieldByName('id_sequencia').AsInteger      := i ;
             inc(i);
             //cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  sm.enValorChave('FAT_TB_M_NFE_ITE');;
             cdsNfeIte.FieldByName('id_cor').AsInteger            :=  0;
             cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  0;
             cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  CAD_CD_C_ITE.FieldByName('int_tipo_item').AsString;
             cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
             if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                begin
                  cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                       CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                           cdsNfeIte.FieldByName('QTDE').AsFloat;
                end;
             if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                begin
                  cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                       CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                           cdsNfeIte.FieldByName('QTDE').AsFloat;
                end;


             cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
             cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('valor_unitario').AsCurrency;
             cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('valor_total').AsCurrency + DataSetIte.FieldByName('desconto').AsCurrency;
             cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  roundTo(((DataSetIte.FieldByName('desconto').AsCurrency * 100) / DataSetIte.FieldByName('valor_total').AsCurrency),-2);
             cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('desconto').AsCurrency;
             cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('valor_total').AsCurrency;

             cdsNfeIte.FieldByName('id_inf_fisco').AsInteger      := 0;
             cdsNfeIte.FieldByName('ID_ST_PIS').AsString          := ' ';
             cdsNfeIte.FieldByName('ID_ST_COF').AsString          := ' ';
             cdsNfeIte.FieldByName('ID_ST_IPI').AsString          := ' ';

             cdsNfeIte.FieldByName('id_cfo').AsString             := DataSetIte.FieldByName('cfop').AsString;
             FreeAndNil(BUS_CD_C_TRI_REG);
             BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

             BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                    FAT_CD_M_NFE.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

             cdsNfeIte.FieldByName('ID_ST_ICM').AsString            := BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').AsString;
             cdsNfeIte.FieldByName('icm_n_aliquota').AsCurrency     := 0;
             cdsNfeIte.FieldByName('icm_n_base').AsCurrency         := 0;
             cdsNfeIte.FieldByName('icm_n_valor').AsCurrency        := 0;

             if (trim(DataSetIte.FieldByName('aliquota').AsString) <> 'II') and
                (trim(DataSetIte.FieldByName('aliquota').AsString) <> 'FF') and
                (trim(DataSetIte.FieldByName('aliquota').AsString) <> 'NN') then
                begin
                  cdsNfeIte.FieldByName('icm_n_aliquota').AsString  :=
                           DataSetIte.FieldByName('aliquota').AsString;
                  cdsNfeIte.FieldByName('icm_n_base').AsCurrency      :=
                           DataSetIte.FieldByName('valor_total').AsCurrency +
                           DataSetIte.FieldByName('desconto').AsCurrency;
                  cdsNfeIte.FieldByName('icm_n_valor').AsCurrency     :=
                           (cdsNfeIte.FieldByName('icm_n_base').AsCurrency *
                            cdsNfeIte.FieldByName('icm_n_aliquota').AsCurrency)/100;
                end;

             if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                 begin
                   cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                              BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                 end
               else
                 begin
                    CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                              BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                 end;
             //cdsNfeIte.FieldByName('id_cfo').AsString             :=
             //                          FatBuscarCfoIte(DocIE,UFEmitente,
             //                             RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);



             cdsNfeIte.FieldByName('per_cmv').AsString := '';
             if Vnd_ext_int <>'' then
               begin
                 if Vnd_ext_int = '0' then
                    cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                 if Vnd_ext_int = '1' then
                    cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
               end;

             //cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
             //cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;

             BUS_CD_C_TRI_REG.close;
             CAD_CD_C_ITE.close;

             VlrCustoMedio := 0;
             FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                      cdsNfeIte.FieldByName('ID_ITEM').AsString,
                                      cdsNfeIte.FieldByName('ID_COR').AsString,
                                      cdsNfeIte.FieldByName('ID_TAMANHO').AsString,
                                      BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                      VlrCustoMedio);
             cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

             cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
             cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
             cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
             //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
             cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
             cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
             cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
             cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
             cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
             cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
             cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
             cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
             cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
             cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
             cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
             cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
             cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
             cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
             cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
             cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
             cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
             cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
             cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
             cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
             cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
             cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
             cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
             cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
             cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
             cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
             cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
             cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
             cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
             cdsNfeIte.FieldByName('num_lote').AsString                   := '0';
             cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
             cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
             cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
             cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
             cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
             cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
             cdsNfeIte.Post;

             DataSetIte.Next;
           end;
     end;


  if (Origem = 5) then // Por Ordem de Faturamento (PCP_FM_M_ORS)
     begin
        DataSetIte.First;
        while not DataSetIte.Eof do
           begin
             //if (DataSetIte.UpdateStatus in [usInserted]) then   // Se for inserção no pedido de venda
             //    begin
                   cdsNfeIte.Insert;
                   cdsNfeIte.FieldByName('id_fiscal').AsInteger           :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                   cdsNfeIte.FieldByName('id_fiscal_dev').AsInteger       := 0;
                   cdsNfeIte.FieldByName('id_item').AsInteger             :=  DataSetIte.FieldByName('id_item').AsInteger;
                   cdsNfeIte.FieldByName('id_busca_item').AsString        :=  DataSetIte.FieldByName('id_item').AsString;

                   CAD_CD_C_ITE.free;
                   CAD_CD_C_ITE := TClientDataSet.Create(nil);
                   CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                   CAD_CD_C_ITE.close;
                   CAD_CD_C_ITE.Data :=
                      CAD_CD_C_ITE.DataRequest(VarArrayOf([0, cdsNfeIte.FieldByName('id_item').text]));

                   cdsNfeIte.FieldByName('origem_mercadoria').AsString  :=  CAD_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                   cdsNfeIte.FieldByName('id_tributo').AsString         :=  CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString;
                   cdsNfeIte.FieldByName('id_sequencia').AsInteger      :=  DataSetIte.FieldByName('id_sequencia').AsInteger;
                   cdsNfeIte.FieldByName('id_cor').AsInteger            :=  DataSetIte.FieldByName('id_cor').AsInteger;
                   cdsNfeIte.FieldByName('id_tamanho').AsInteger        :=  DataSetIte.FieldByName('id_tamanho').AsInteger;;
                   cdsNfeIte.FieldByName('int_tipo_item').AsString      :=  DataSetIte.FieldByName('int_tipo_item').AsString;
                   cdsNfeIte.FieldByName('qtde').AsFloat                :=  DataSetIte.FieldByName('qtde').AsFloat;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_LIQUIDO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;
                   if trim(CAD_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                      begin
                        cdsNfeIte.FieldByName('PESO_BRUTO').AsFloat :=
                             CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                 cdsNfeIte.FieldByName('QTDE').AsFloat;
                      end;


                   cdsNfeIte.FieldByName('qtde_devolvida').AsFloat      :=  0;
                   cdsNfeIte.FieldByName('vlr_unitario').AsCurrency     :=  DataSetIte.FieldByName('vlr_unitario').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_mercadoria').AsCurrency   :=  DataSetIte.FieldByName('vlr_bruto').AsCurrency;
                   cdsNfeIte.FieldByName('per_desconto').AsCurrency     :=  DataSetIte.FieldByName('per_desconto').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_desconto').AsCurrency     :=  DataSetIte.FieldByName('vlr_desconto').AsCurrency;
                   cdsNfeIte.FieldByName('vlr_liquido').AsCurrency      :=  DataSetIte.FieldByName('vlr_liquido').AsCurrency;


                   cdsNfeIte.FieldByName('ID_ST_PIS').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_COF').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_IPI').AsString             := ' ';
                   cdsNfeIte.FieldByName('ID_ST_ICM').AsString             := ' ';

                   FreeAndNil(BUS_CD_C_TRI_REG);
                   BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);

                   BUS_CD_C_TRI_REG.Data := FatBusTriReg(BUS_DP_C_TRI_REG, CAD_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                         dataset.FieldByName('id_tipo_mov_estoque').AsString, UFEmitente,DataSet.FieldByName('id_empresa').AsString);

                   cdsNfeIte.FieldByName('id_cfo').AsString                :=
                                             FatBuscarCfoIte(DocIE,UFEmitente,
                                                RegimeSimples,FAT_CD_M_NFE,cdsNfeIte, BUS_CD_C_TRI_REG,BUS_CD_C_CLI);

                   cdsNfeIte.FieldByName('id_inf_fisco').AsInteger         := BUS_CD_C_TRI_REG.FieldByName('id_inf').AsInteger;

                   if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
                     begin
                       cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     :=
                                  BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                     end
                   else
                     begin
                        CdsNfeIte.FieldByName('icm_per_reducao').AsCurrency  :=
                                  BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                     end;

                   cdsNfeIte.FieldByName('per_cmv').AsString := '';
                   if Vnd_ext_int <>'' then
                     begin
                       if Vnd_ext_int = '0' then
                          cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                       if Vnd_ext_int = '1' then
                          cdsNfeIte.FieldByName('per_cmv').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
                     end;


                  // cdsNfeIte.FieldByName('per_cmv_interno').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
                   //cdsNfeIte.FieldByName('per_cmv_externo').AsCurrency  := CAD_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;


                   BUS_CD_C_TRI_REG.close;
                   CAD_CD_C_ITE.close;

                   VlrCustoMedio := 0;
                   FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                            DataSetIte.FieldByName('ID_ITEM').AsString,
                                            DataSetIte.FieldByName('ID_COR').AsString,
                                            DataSetIte.FieldByName('ID_TAMANHO').AsString,
                                            BUS_CD_C_PAR_CTR,sm.EST_DP_M_FES,
                                            VlrCustoMedio);
                   cdsNfeIte.FieldByName('vlr_custo').AsCurrency      := VlrCustoMedio;

                   cdsNfeIte.FieldByName('vlr_outras').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_isenta').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('vlr_seguro').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := 0;
                   //cdsNfeIte.FieldByName('icm_per_reducao').AsCurrency     := 0;
                   cdsNfeIte.FieldByName('icm_n_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_n_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_s_base').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('icm_s_valor').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('icm_n_dif_aliq').AsCurrency      := 0;
                   cdsNfeIte.FieldByName('icm_n_vlr_dif_aliq').AsFloat        := 0;
                   cdsNfeIte.FieldByName('vlr_icm_ser_nao_incide').AsCurrency := 0;
                   cdsNfeIte.FieldByName('ipi_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('ipi_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('ipi_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('iss_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('iss_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('iss_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('iss_valor_retido').AsCurrency       := 0;
                   cdsNfeIte.FieldByName('fre_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('fre_percentual').AsCurrency         := 0;
                   cdsNfeIte.FieldByName('fre_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_custo').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('fre_dif_aliq_icm').AsFloat          := 0;
                   cdsNfeIte.FieldByName('fre_vlr_dif_icm').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('pis_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('pis_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('pis_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('pis_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_base').AsCurrency               := 0;
                   cdsNfeIte.FieldByName('cof_aliquota').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('cof_valor').AsCurrency              := 0;
                   cdsNfeIte.FieldByName('cof_valor_st').AsCurrency           := 0;
                   cdsNfeIte.FieldByName('nro_pedido').AsInteger              := 0;
                   cdsNfeIte.FieldByName('vlr_outras_desp').AsCurrency        := 0;
                   cdsNfeIte.FieldByName('vlr_acrescimo').AsCurrency          := 0;
                   cdsNfeIte.FieldByName('num_lote').AsString                   := '';
                   cdsNfeIte.FieldByName('para_analise_raa').AsInteger          := 0;
                   cdsNfeIte.FieldByName('icm_s_per_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('icm_s_vlr_mva').AsFloat               := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_cmp_ped').AsInteger  := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_iqm').AsInteger      := 0;
                   cdsNfeIte.FieldByName('id_sequencia_ite_xml').AsInteger      := 0;
                   cdsNfeIte.Post;
                 //end;


             DataSetIte.Next;
           end;
     end;

  finally
    FreeAndNil(BUS_CD_C_TRI_REG);
    FreeAndNil(CAD_CD_C_CPG);
    FreeAndNil(FAT_CD_M_PED_ITE_INT);
    FreeAndNil(BUS_CD_C_FUN);

  end;
end;

function FatGerNfsTit(Origem: integer;DataSet: TCustomClientDataSet; FAT_CD_M_NFE:TClientDataSet;
       CAD_DP_C_FPG:TDataSetProvider; cdsNfeTit:TClientDataSet; DataSetTit, DataSetTitINT: TDataSet;tipoTitulo:Integer=0): Boolean;
var
  CAD_CD_C_FPG,CAD_CD_C_CPG,FAT_CD_M_PED_TIT_INT,BUS_CD_C_PAR_CTR: TClientDataSet;
  BUS_CD_C_ECF_FPG: TSqlQuery;

  IdFormaPagAtual,diasAtual,cheContaAtual,cheNumeroAtual: Integer;
  NumParcelaAtual, dtaVencimentoAtual,cheBancoAtual,cheAgenciaAtual,cheEmitenteAtual: String;
  vlrTituloAtual: Currency;
  i: integer;
  QtdeReg: String;
begin
  { TODO -oMaxsuel -cCriação : Método criado em 22/08/2015; }


  { origem
        1 - Fechamento de O.S
        2 - Pedido de Venda
        3   Gerar NFs partindo do BR_CUPOM_MESTRE (GerConWin), 15/02/2016, Maxsuel Victor}


  try
   // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
   //SM := TSM.Create(nil);

   BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   BUS_CD_C_PAR_CTR.SetProvider(sm.BUS_DP_C_PAR_CTR);
   BUS_CD_C_PAR_CTR.Close;
   BUS_CD_C_PAR_CTR.Data :=
       BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('ID_EMPRESA').AsString]));


  if origem = 1 then // Por fechamento de O.S
     begin
        if not DataSetTit.IsEmpty  then
           begin
              DataSetTit.First;
              while not DataSetTit.Eof do
                 begin
                   CAD_CD_C_FPG.Free;
                   CAD_CD_C_FPG := TClientDataSet.Create(nil);
                   CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                   CAD_CD_C_FPG.close;
                   CAD_CD_C_FPG.Data :=
                      CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                   if (DataSetTit.UpdateStatus in [usInserted]) or (DataSetTit.UpdateStatus in [usUnmodified]) then   // Se for inserção / alteração na tabela de títulos
                       begin
                         cdsNfeTit.Insert;
                         cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                         cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                         cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                         cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;



                         if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
                            begin
                               if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                                  begin
                                    if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                                       begin
                                         cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                                   BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                                       end;
                                  end;
                            end;
                         CAD_CD_C_FPG.Close;


                         cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                         cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                         cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                         cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                         cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                         cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                         cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                         cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                         cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                         cdsNfeTit.Post;
                         if (DataSetTit.UpdateStatus in [usUnmodified]) then   // Se for inserção na tabela de títulos
                             begin
                               IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;
                               diasAtual           := DataSetTit.FieldByName('dias').AsInteger;
                               cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;
                               cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                               NumParcelaAtual     := '0';
                               dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;
                               cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;
                               cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;
                               cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;
                               vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                               DataSetTit.Next;

                               if (DataSetTit.UpdateStatus in [usModified]) then   // Se for inserção na tabela de títulos
                                   begin
                                     cdsNfeTit.edit;
                                     if DataSetTit.FieldByName('id_forma_pag').AsString <> '' then
                                        IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                                     if DataSetTit.FieldByName('dias').AsString <> '' then
                                        diasAtual           := DataSetTit.FieldByName('dias').AsInteger;

                                     if DataSetTit.FieldByName('che_conta').AsString <> '' then
                                        cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;

                                     if DataSetTit.FieldByName('che_numero').AsString <> '' then
                                        cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                     if DataSetTit.FieldByName('dta_vencimento').AsString <> '' then
                                        dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;

                                     if DataSetTit.FieldByName('che_banco').AsString <> '' then
                                        cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;

                                     if DataSetTit.FieldByName('che_agencia').AsString <> '' then
                                        cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;

                                     if DataSetTit.FieldByName('che_emitente').AsString <> '' then
                                        cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;

                                     if DataSetTit.FieldByName('vlr_titulo').AsString <> '' then
                                        vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                     cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := IdFormaPagAtual;

                                     CAD_CD_C_FPG.Free;
                                     CAD_CD_C_FPG := TClientDataSet.Create(nil);
                                     CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                                       CAD_CD_C_FPG.close;
                                          CAD_CD_C_FPG.Data :=
                                              CAD_CD_C_FPG.DataRequest(VarArrayOf([0, cdsNfeTit.FieldByName('id_forma_pag').AsInteger]));

                                     cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                                     cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                                     CAD_CD_C_FPG.Close;

                                     cdsNfeTit.FieldByName('num_parcela').AsString      := NumParcelaAtual;
                                     cdsNfeTit.FieldByName('dias').AsInteger            := diasAtual;
                                     cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := StrToDate(dtaVencimentoAtual);
                                     cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := vlrTituloAtual;

                                     cdsNfeTit.FieldByName('che_banco').AsString        := cheBancoAtual;
                                     cdsNfeTit.FieldByName('che_agencia').AsString      := cheAgenciaAtual;
                                     cdsNfeTit.FieldByName('che_conta').AsInteger       := cheContaAtual;
                                     cdsNfeTit.FieldByName('che_numero').AsInteger      := cheNumeroAtual;
                                     cdsNfeTit.FieldByName('che_emitente').AsString     := cheEmitenteAtual;
                                     cdsNfeTit.Post;
                                   end;
                             end;
                       end;



                    if (DataSetTit.UpdateStatus in [usDeleted]) then   // Se for deleção do título
                       begin
                         if cdsNfeTit.Locate('id_nfe_tit',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                            begin
                              cdsNfeTit.Delete;
                            end;
                         if not DataSetTitINT.IsEmpty then
                            begin
                              if DataSetTitINT.Locate('id_titulo',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                                  begin
                                    DataSetTitINT.Delete;
                                  end;
                            end;
                       end;
                   DataSetTit.Next;
                 end;
           end;

        if not DataSetTitINT.IsEmpty then
           begin
              DataSetTitINT.First;
              while not DataSetTitINT.Eof do
                 begin

                   if not cdsNfeTit.Locate('id_nfe_tit',DataSetTitINT.FieldByName('id_titulo').AsInteger,[]) then
                      begin
                         CAD_CD_C_FPG.Free;
                         CAD_CD_C_FPG := TClientDataSet.Create(nil);
                         CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                         CAD_CD_C_FPG.close;
                         CAD_CD_C_FPG.Data :=
                            CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTitINT.FieldByName('id_forma_pag').text]));


                         cdsNfeTit.Insert;
                         cdsNfeTit.FieldByName('id_fiscal').AsInteger       :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeTit.FieldByName('id_nfe_tit').AsInteger      := DataSetTitINT.FieldByName('id_titulo').AsInteger;

                         cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := DataSetTitINT.FieldByName('id_forma_pag').AsInteger;

                         cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                         cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                         CAD_CD_C_FPG.Close;

                         cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                         cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTitINT.FieldByName('dias').AsInteger;
                         cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTitINT.FieldByName('dta_vencimento').AsDateTime;
                         cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTitINT.FieldByName('vlr_titulo').AsCurrency;

                         cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTitINT.FieldByName('che_banco').AsString;
                         cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTitINT.FieldByName('che_agencia').AsString;
                         cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTitINT.FieldByName('che_conta').AsString;
                         cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTitINT.FieldByName('che_numero').AsString;
                         cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTitINT.FieldByName('che_emitente').AsString;
                         cdsNfeTit.Post;
                      end;
                   DataSetTitINT.Next;
                 end;
           end;
     end;


 if  origem = 2 then  // Por pedido de venda
     begin
       //SM := TSM.Create(nil);

       CAD_CD_C_CPG.free;
       CAD_CD_C_CPG := TClientDataSet.Create(nil);
       CAD_CD_C_CPG.SetProvider(sm.CAD_DP_C_CPG);
       CAD_CD_C_CPG.close;
       CAD_CD_C_CPG.Data :=
          CAD_CD_C_CPG.DataRequest(VarArrayOf([0, DataSet.FieldByName('id_condicao_pag').text]));

       if tipoTitulo=0 then
         begin
           FAT_CD_M_PED_TIT_INT.Free;
           FAT_CD_M_PED_TIT_INT := TClientDataSet.Create(nil);
           FAT_CD_M_PED_TIT_INT.SetProvider(sm.BUS_DP_M_PED_TIT_INT);
           FAT_CD_M_PED_TIT_INT.Close;
           FAT_CD_M_PED_TIT_INT.Data :=
                FAT_CD_M_PED_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));
         end
       else
         begin
           FAT_CD_M_PED_TIT_INT.Free;
           FAT_CD_M_PED_TIT_INT := TClientDataSet.Create(nil);
           FAT_CD_M_PED_TIT_INT.SetProvider(sm.BUS_DP_M_PED_TIT_SER_INT);
           FAT_CD_M_PED_TIT_INT.Close;
           FAT_CD_M_PED_TIT_INT.Data :=
                FAT_CD_M_PED_TIT_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_PEDIDO').AsString]));
         end;

       if not DataSetTit.IsEmpty  then
          begin
            DataSetTit.First;
            while not DataSetTit.Eof do
               begin
                 CAD_CD_C_FPG.Free;
                 CAD_CD_C_FPG := TClientDataSet.Create(nil);
                 CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                 CAD_CD_C_FPG.close;
                 CAD_CD_C_FPG.Data :=
                    CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                 if (DataSetTit.UpdateStatus in [usInserted]) then   // Se for inserção
                     begin
                       cdsNfeTit.Insert;
                       cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                       cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                       cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                       cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                       cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;


                       if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
                          begin
                             if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                                begin
                                  if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                                     begin
                                       cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                                 BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                                     end;
                                end;
                          end;
                       CAD_CD_C_FPG.Close;

                       cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                       cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                       cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                       cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                       cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                       cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                       cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                       cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                       cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                       cdsNfeTit.Post;
                     end;

                   if (DataSetTit.UpdateStatus in [usUnmodified]) then   // Se for alteração na tabela de títulos
                       begin
                         if FAT_CD_M_PED_TIT_INT.Locate('id_titulo',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                            begin
                              FAT_CD_M_PED_TIT_INT.Delete;
                            end;

                         cdsNfeTit.Insert;
                         cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                         cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                         cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                         cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                         CAD_CD_C_FPG.Close;

                         cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                         cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                         cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                         cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                         cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                         cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                         cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                         cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                         cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                        // cdsNfeTit.Post;  //Retirei post pois gerava 2 vezes o titulo

                        //if ComUpdateStatusTit then
                        //    begin
                               IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;
                               diasAtual           := DataSetTit.FieldByName('dias').AsInteger;
                               cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;
                               cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                               NumParcelaAtual     := '0';
                               dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;
                               cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;
                               cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;
                               cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;
                               vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                               //cdsNfeTit.Insert;
                               //cdsNfeTit.FieldByName('id_fiscal').AsInteger   := FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                               //cdsNfeTit.FieldByName('id_nfe_tit').AsInteger  := DataSetTit.FieldByName('id_titulo').AsInteger;


                               DataSetTit.Next;

                               if (DataSetTit.UpdateStatus in [usModified]) then   // Se for alteração na tabela de títulos
                                   begin

                                     if DataSetTit.FieldByName('id_forma_pag').AsString <> '' then
                                        IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                                     if DataSetTit.FieldByName('dias').AsString <> '' then
                                        diasAtual           := DataSetTit.FieldByName('dias').AsInteger;

                                     if DataSetTit.FieldByName('che_conta').AsString <> '' then
                                        cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;

                                     if DataSetTit.FieldByName('che_numero').AsString <> '' then
                                        cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                     if DataSetTit.FieldByName('dta_vencimento').AsString <> '' then
                                        dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;

                                     if DataSetTit.FieldByName('che_banco').AsString <> '' then
                                        cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;

                                     if DataSetTit.FieldByName('che_agencia').AsString <> '' then
                                        cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;

                                     if DataSetTit.FieldByName('che_emitente').AsString <> '' then
                                        cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;

                                     if DataSetTit.FieldByName('vlr_titulo').AsString <> '' then
                                        vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                     cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := IdFormaPagAtual;

                                     CAD_CD_C_FPG.Free;
                                     CAD_CD_C_FPG := TClientDataSet.Create(nil);
                                     CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                                       CAD_CD_C_FPG.close;
                                          CAD_CD_C_FPG.Data :=
                                              CAD_CD_C_FPG.DataRequest(VarArrayOf([0, cdsNfeTit.FieldByName('id_forma_pag').AsInteger]));


                                     cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                                     cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;




                                     if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
                                        begin
                                           if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                                              begin
                                                if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                                                   begin
                                                     cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                                               BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                                                   end;
                                              end;
                                        end;
                                     CAD_CD_C_FPG.Close;

                                     cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                                     cdsNfeTit.FieldByName('dias').AsInteger            := diasAtual;
                                     cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := StrToDate(dtaVencimentoAtual);
                                     cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := vlrTituloAtual;

                                     cdsNfeTit.FieldByName('che_banco').AsString        := cheBancoAtual;
                                     cdsNfeTit.FieldByName('che_agencia').AsString      := cheAgenciaAtual;
                                     cdsNfeTit.FieldByName('che_conta').AsInteger       := cheContaAtual;
                                     cdsNfeTit.FieldByName('che_numero').AsInteger      := cheNumeroAtual;
                                     cdsNfeTit.FieldByName('che_emitente').AsString     := cheEmitenteAtual;
                                     cdsNfeTit.Post;
                                   end;
                            //end;
                       end;
                   if (DataSetTit.UpdateStatus in [usDeleted]) then   // Se for deleção do título
                       begin
                         if FAT_CD_M_PED_TIT_INT.Locate('id_titulo',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                            begin
                              FAT_CD_M_PED_TIT_INT.Delete;
                            end;
                       end;
                 DataSetTit.Next;
               end;
          end;




       DataSetTit := FAT_CD_M_PED_TIT_INT;

       DataSetTit.First;
       while not DataSetTit.Eof do
         begin
           CAD_CD_C_FPG.Free;
           CAD_CD_C_FPG := TClientDataSet.Create(nil);
           CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
           CAD_CD_C_FPG.close;
           CAD_CD_C_FPG.Data :=
              CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

           cdsNfeTit.Insert;
           cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
           cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

           cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

           if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
              begin
                 if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                    begin
                      if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                         begin
                           cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                     BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                         end;
                    end;
              end;

           cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
           cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
           CAD_CD_C_FPG.Close;

           cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
           cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
           cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
           cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

           cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
           cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
           cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
           cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
           cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
           cdsNfeTit.Post;

           DataSetTit.Next;
         end;

       {if CAD_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 1 then // A prazo
          begin
            DataSetTit.First;
            while not DataSetTit.Eof do
               begin
                 CAD_CD_C_FPG.Free;
                 CAD_CD_C_FPG := TClientDataSet.Create(nil);
                 CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                 CAD_CD_C_FPG.close;
                 CAD_CD_C_FPG.Data :=
                    CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                 cdsNfeTit.Insert;
                 cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                 cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                 cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                 cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                 cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                 CAD_CD_C_FPG.Close;

                 cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                 cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                 cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                 cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                 cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                 cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                 cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                 cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                 cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                 cdsNfeTit.Post;

                 DataSetTit.Next;
               end;
          end
       else
          begin
            if not DataSetTit.IsEmpty  then
               begin
                  DataSetTit.First;
                  while not DataSetTit.Eof do
                     begin
                       CAD_CD_C_FPG.Free;
                       CAD_CD_C_FPG := TClientDataSet.Create(nil);
                       CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                       CAD_CD_C_FPG.close;
                       CAD_CD_C_FPG.Data :=
                          CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                       if (DataSetTit.UpdateStatus in [usInserted]) then   // Se for inserção
                           begin
                             cdsNfeTit.Insert;
                             cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                             cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                             cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                             cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                             cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                             CAD_CD_C_FPG.Close;

                             cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                             cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                             cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                             cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                             cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                             cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                             cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                             cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                             cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                             cdsNfeTit.Post;
                           end;

                         if (DataSetTit.UpdateStatus in [usUnmodified]) then   // Se for alteração na tabela de títulos
                             begin
                               cdsNfeTit.Insert;
                               cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                               cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                               cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                               cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                               cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                               CAD_CD_C_FPG.Close;

                               cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                               cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                               cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                               cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                               cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                               cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                               cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                               cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                               cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                               cdsNfeTit.Post;

                              if ComUpdateStatusTit then
                                  begin
                                     IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;
                                     diasAtual           := DataSetTit.FieldByName('dias').AsInteger;
                                     cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;
                                     cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                     NumParcelaAtual     := '0';
                                     dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;
                                     cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;
                                     cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;
                                     cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;
                                     vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                     cdsNfeTit.Insert;
                                     cdsNfeTit.FieldByName('id_fiscal').AsInteger   := FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                                     cdsNfeTit.FieldByName('id_nfe_tit').AsInteger  := DataSetTit.FieldByName('id_titulo').AsInteger;


                                     DataSetTit.Next;

                                     if (DataSetTit.UpdateStatus in [usModified]) then   // Se for alteração na tabela de títulos
                                         begin

                                           if DataSetTit.FieldByName('id_forma_pag').AsString <> '' then
                                              IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                                           if DataSetTit.FieldByName('dias').AsString <> '' then
                                              diasAtual           := DataSetTit.FieldByName('dias').AsInteger;

                                           if DataSetTit.FieldByName('che_conta').AsString <> '' then
                                              cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;

                                           if DataSetTit.FieldByName('che_numero').AsString <> '' then
                                              cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                           if DataSetTit.FieldByName('dta_vencimento').AsString <> '' then
                                              dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;

                                           if DataSetTit.FieldByName('che_banco').AsString <> '' then
                                              cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;

                                           if DataSetTit.FieldByName('che_agencia').AsString <> '' then
                                              cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;

                                           if DataSetTit.FieldByName('che_emitente').AsString <> '' then
                                              cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;

                                           if DataSetTit.FieldByName('vlr_titulo').AsString <> '' then
                                              vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                           cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := IdFormaPagAtual;

                                           CAD_CD_C_FPG.Free;
                                           CAD_CD_C_FPG := TClientDataSet.Create(nil);
                                           CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                                             CAD_CD_C_FPG.close;
                                                CAD_CD_C_FPG.Data :=
                                                    CAD_CD_C_FPG.DataRequest(VarArrayOf([0, cdsNfeTit.FieldByName('id_forma_pag').AsInteger]));


                                           cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                                           cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                                           CAD_CD_C_FPG.Close;

                                           cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                                           cdsNfeTit.FieldByName('dias').AsInteger            := diasAtual;
                                           cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := StrToDate(dtaVencimentoAtual);
                                           cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := vlrTituloAtual;

                                           cdsNfeTit.FieldByName('che_banco').AsString        := cheBancoAtual;
                                           cdsNfeTit.FieldByName('che_agencia').AsString      := cheAgenciaAtual;
                                           cdsNfeTit.FieldByName('che_conta').AsInteger       := cheContaAtual;
                                           cdsNfeTit.FieldByName('che_numero').AsInteger      := cheNumeroAtual;
                                           cdsNfeTit.FieldByName('che_emitente').AsString     := cheEmitenteAtual;
                                           cdsNfeTit.Post;
                                         end;
                                  end;
                             end;
                       DataSetTit.Next;
                     end;
               end;
          end;  }
        cdsNfeTit.First;

        // Comentado por Maxsuel Victor em 22/08/17 devido a mudança geral, pra deixar os processos mais rápido.
        //FreeAndNil(sm);


        // Por Maxsuel Victor, em 22/06/2016, toda vez quando fizer uma nova liberação, o
        // sistema irá criar sempre uma nota fiscal nova.
        { -- Código antigo
        if not DataSetTit.IsEmpty  then
           begin
              DataSetTit.First;
              while not DataSetTit.Eof do
                 begin
                   CAD_CD_C_FPG.Free;
                   CAD_CD_C_FPG := TClientDataSet.Create(nil);
                   CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                   CAD_CD_C_FPG.close;
                   CAD_CD_C_FPG.Data :=
                      CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                   if (DataSetTit.UpdateStatus in [usInserted]) then   // Se for inserção
                       begin
                         cdsNfeTit.Insert;
                         cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

                         cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                         cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                         cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                         CAD_CD_C_FPG.Close;

                         cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                         cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                         cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                         cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                         cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                         cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                         cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                         cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                         cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                         cdsNfeTit.Post;
                       end;
                     if (DataSetTit.UpdateStatus in [usUnmodified]) then   // Se for alteração na tabela de títulos
                         begin
                           if cdsNfeTit.Locate('id_nfe_tit',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                              begin
                                 IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;
                                 diasAtual           := DataSetTit.FieldByName('dias').AsInteger;
                                 cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;
                                 cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                 NumParcelaAtual     := '0';
                                 dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;
                                 cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;
                                 cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;
                                 cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;
                                 vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                 DataSetTit.Next;

                                 if (DataSetTit.UpdateStatus in [usModified]) then   // Se for alteração na tabela de títulos
                                     begin
                                       cdsNfeTit.edit;
                                       if DataSetTit.FieldByName('id_forma_pag').AsString <> '' then
                                          IdFormaPagAtual     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                                       if DataSetTit.FieldByName('dias').AsString <> '' then
                                          diasAtual           := DataSetTit.FieldByName('dias').AsInteger;

                                       if DataSetTit.FieldByName('che_conta').AsString <> '' then
                                          cheContaAtual       := DataSetTit.FieldByName('che_conta').AsInteger;

                                       if DataSetTit.FieldByName('che_numero').AsString <> '' then
                                          cheNumeroAtual      := DataSetTit.FieldByName('che_numero').AsInteger;

                                       if DataSetTit.FieldByName('dta_vencimento').AsString <> '' then
                                          dtaVencimentoAtual  := DataSetTit.FieldByName('dta_vencimento').AsString;

                                       if DataSetTit.FieldByName('che_banco').AsString <> '' then
                                          cheBancoAtual       := DataSetTit.FieldByName('che_banco').AsString;

                                       if DataSetTit.FieldByName('che_agencia').AsString <> '' then
                                          cheAgenciaAtual     := DataSetTit.FieldByName('che_agencia').AsString;

                                       if DataSetTit.FieldByName('che_emitente').AsString <> '' then
                                          cheEmitenteAtual    := DataSetTit.FieldByName('che_emitente').AsString;

                                       if DataSetTit.FieldByName('vlr_titulo').AsString <> '' then
                                          vlrTituloAtual      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                                       cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := IdFormaPagAtual;

                                       CAD_CD_C_FPG.Free;
                                       CAD_CD_C_FPG := TClientDataSet.Create(nil);
                                       CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                                         CAD_CD_C_FPG.close;
                                            CAD_CD_C_FPG.Data :=
                                                CAD_CD_C_FPG.DataRequest(VarArrayOf([0, cdsNfeTit.FieldByName('id_forma_pag').AsInteger]));

                                       cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                                       cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                                       CAD_CD_C_FPG.Close;

                                       cdsNfeTit.FieldByName('num_parcela').AsString      := NumParcelaAtual;
                                       cdsNfeTit.FieldByName('dias').AsInteger            := diasAtual;
                                       cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := StrToDate(dtaVencimentoAtual);
                                       cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := vlrTituloAtual;

                                       cdsNfeTit.FieldByName('che_banco').AsString        := cheBancoAtual;
                                       cdsNfeTit.FieldByName('che_agencia').AsString      := cheAgenciaAtual;
                                       cdsNfeTit.FieldByName('che_conta').AsInteger       := cheContaAtual;
                                       cdsNfeTit.FieldByName('che_numero').AsInteger      := cheNumeroAtual;
                                       cdsNfeTit.FieldByName('che_emitente').AsString     := cheEmitenteAtual;
                                       cdsNfeTit.Post;
                                     end;
                              end;
                         end;


                    if (DataSetTit.UpdateStatus in [usDeleted]) then   // Se for deleção do título
                       begin
                         if cdsNfeTit.Locate('id_nfe_tit',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                            begin
                              cdsNfeTit.Delete;
                            end;
                         if not DataSetTitINT.IsEmpty then
                            begin
                              if DataSetTitINT.Locate('id_titulo',DataSetTit.FieldByName('id_titulo').AsInteger,[]) then
                                  begin
                                    DataSetTitINT.Delete;
                                  end;
                            end;
                       end;
                   DataSetTit.Next;
                 end;
           end
        else
            if not DataSetTitINT.IsEmpty then
               begin
                 while not cdsNfeTit.Eof do
                       begin
                         cdsNfeTit.Delete;
                       end;

                  DataSetTitINT.First;
                  while not DataSetTitINT.Eof do
                     begin
                       //if not cdsNfeTit.Locate('id_nfe_tit',DataSetTitINT.FieldByName('id_titulo').AsInteger,[]) then
                       //   begin
                             CAD_CD_C_FPG.Free;
                             CAD_CD_C_FPG := TClientDataSet.Create(nil);
                             CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                             CAD_CD_C_FPG.close;
                             CAD_CD_C_FPG.Data :=
                                CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTitINT.FieldByName('id_forma_pag').text]));


                             cdsNfeTit.Insert;
                             cdsNfeTit.FieldByName('id_fiscal').AsInteger       :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                             cdsNfeTit.FieldByName('id_nfe_tit').AsInteger      := DataSetTitINT.FieldByName('id_titulo').AsInteger;

                             cdsNfeTit.FieldByName('id_forma_pag').AsInteger    := DataSetTitINT.FieldByName('id_forma_pag').AsInteger;

                             cdsNfeTit.FieldByName('id_ccusto').AsInteger       := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                             cdsNfeTit.FieldByName('id_plano').AsString         := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                             CAD_CD_C_FPG.Close;

                             cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                             cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTitINT.FieldByName('dias').AsInteger;
                             cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTitINT.FieldByName('dta_vencimento').AsDateTime;
                             cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTitINT.FieldByName('vlr_titulo').AsCurrency;

                             cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTitINT.FieldByName('che_banco').AsString;
                             cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTitINT.FieldByName('che_agencia').AsString;
                             cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTitINT.FieldByName('che_conta').AsString;
                             cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTitINT.FieldByName('che_numero').AsString;
                             cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTitINT.FieldByName('che_emitente').AsString;
                             cdsNfeTit.Post;
                       {   end
                       else
                          begin
                            cdsNfeTit.delete;
                          end; }
         {              DataSetTitINT.Next;
                     end;
               end;
         // Pedido Cupom (FAT_FM_M_PNF)
         if (trim(DataSet.FieldByName('origem').Text) <> '') and
            (trim(DataSet.FieldByName('origem').Text) = '2') then
            begin
              if not cdsNfeTit.IsEmpty then
                 begin
                    i:= 0;
                    cdsNfeTit.IndexFieldNames := 'DTA_VENCIMENTO';
                    cdsNfeTit.First;

                    QtdeReg := IntToStr(cdsNfeTit.RecordCount);
                    while not cdsNfeTit.eof do
                       begin
                         inc(i);
                         cdsNfeTit.edit;
                         cdsNfeTit.FieldByName('NUM_PARCELA').AsString :=
                                 FAT_CD_M_NFE.FieldByName('NUMERO').AsString + '-' +
                                 inttostr(i) + '/' + QtdeReg;
                         cdsNfeTit.Post;
                         cdsNfeTit.Next;
                       end;
                    cdsNfeTit.First;
                 end;
            end;
         -- Fim Código Antigo
         }
     end;

   if Origem = 3  then // Gerar NFs partindo do BR_CUPOM_MESTRE (GerConWin), 15/02/2016, Maxsuel Victor
     begin
        BUS_CD_C_ECF_FPG := TSqlQuery.Create(nil);
        BUS_CD_C_ECF_FPG.SQLConnection := xConn;

        BUS_CD_C_ECF_FPG.Close;
        BUS_CD_C_ECF_FPG.SQL.Clear;
        BUS_CD_C_ECF_FPG.SQL.Add(' SELECT ECP.*, FPG.DOC_IMPRESSO FROM CAD_TB_C_ECF_FPG ECP ' +
                                 '   LEFT OUTER JOIN CAD_TB_C_FPG FPG on FPG.ID_FORMA_PAG = ECP.ID_FORMA_PAG ' +
                                 ' WHERE ECP.ECF_SERIAL_IMPRESSORA = '''+VarToStr(FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString)+''' ');
        BUS_CD_C_ECF_FPG.Open;

        //BUS_CD_C_ECF_FPG := sm.enBusFpgEcf(FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString);




        while not DataSetTit.Eof do
           begin

             cdsNfeTit.Insert;
             cdsNfeTit.FieldByName('id_fiscal').AsInteger        := FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
             cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := sm.enValorChave('FAT_TB_M_NFE_TIT');

             BUS_CD_C_ECF_FPG.Locate('ID_FORMA_PAG_ECF',DataSetTit.FieldByName('cod_forma_pag').AsInteger,[]);

             cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := BUS_CD_C_ECF_FPG.FieldByName('id_forma_pag').AsInteger;

             CAD_CD_C_FPG.Free;
             CAD_CD_C_FPG := TClientDataSet.Create(nil);
             CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
             CAD_CD_C_FPG.close;
             CAD_CD_C_FPG.Data :=
                CAD_CD_C_FPG.DataRequest(VarArrayOf([0, cdsNfeTit.FieldByName('id_forma_pag').text]));


             if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
                begin
                   if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                      begin
                        if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                           begin
                             cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                       BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                           end;
                      end;
                end;


             cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
             cdsNfeTit.FieldByName('id_plano').AsString          := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
             CAD_CD_C_FPG.Close;

             cdsNfeTit.FieldByName('num_parcela').AsString      := '0';

             cdsNfeTit.FieldByName('dias').AsVariant            := FAT_CD_M_NFE.FieldByName('dta_emissao').AsDateTime -
                                                                   DataSetTit.FieldByName('vencimento').AsDateTime;

             cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('vencimento').AsDateTime;

             cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('valor').AsCurrency;

             cdsNfeTit.FieldByName('che_banco').AsString        := '';
             cdsNfeTit.FieldByName('che_agencia').AsString      := '';
             cdsNfeTit.FieldByName('che_conta').AsString        := '';
             cdsNfeTit.FieldByName('che_numero').AsString       := '0';
             cdsNfeTit.FieldByName('che_emitente').AsString     := '';
             cdsNfeTit.Post;

             DataSetTit.Next;
           end;

         cdsNfeTit.IndexFieldNames := 'DTA_VENCIMENTO';
         cdsNfeTit.First;
         i:= 0;
         QtdeReg := IntToStr(cdsNfeTit.RecordCount);
         while not cdsNfeTit.eof do
           begin
             inc(i);
             cdsNfeTit.edit;
             cdsNfeTit.FieldByName('NUM_PARCELA').AsString :=
                     FAT_CD_M_NFE.FieldByName('NUMERO').AsString + '-' +
                     inttostr(i) + '/' + QtdeReg;
             cdsNfeTit.Post;
             cdsNfeTit.Next;
           end;

        BUS_CD_C_ECF_FPG.close;
        BUS_CD_C_ECF_FPG.free;
     end;


   if Origem = 4  then // Pedido de Venda - FAT_FM_M_PNF
     begin
       { BUS_CD_C_ECF_FPG := TSqlQuery.Create(nil);
        BUS_CD_C_ECF_FPG.SQLConnection := xConn;

        BUS_CD_C_ECF_FPG.Close;
        BUS_CD_C_ECF_FPG.SQL.Clear;
        BUS_CD_C_ECF_FPG.SQL.Add(' SELECT ECP.*, FPG.DOC_IMPRESSO FROM CAD_TB_C_ECF_FPG ECP ' +
                                 '   LEFT OUTER JOIN CAD_TB_C_FPG FPG on FPG.ID_FORMA_PAG = ECP.ID_FORMA_PAG ' +
                                 ' WHERE ECP.ECF_SERIAL_IMPRESSORA = '''+VarToStr(FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString)+''' ');
        BUS_CD_C_ECF_FPG.Open;}

        //BUS_CD_C_ECF_FPG := sm.enBusFpgEcf(FAT_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString);




        while not DataSetTit.Eof do
           begin
               CAD_CD_C_FPG.Free;
               CAD_CD_C_FPG := TClientDataSet.Create(nil);
               CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
               CAD_CD_C_FPG.close;
               CAD_CD_C_FPG.Data :=
                  CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

               cdsNfeTit.Insert;
               cdsNfeTit.FieldByName('id_fiscal').AsInteger        := FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
               cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_titulo').AsInteger;

               cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

               cdsNfeTit.FieldByName('id_maquineta').text          := DataSetTit.FieldByName('id_maquineta').text;

               cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
               cdsNfeTit.FieldByName('id_plano').AsString          := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
               CAD_CD_C_FPG.Close;

               cdsNfeTit.FieldByName('num_parcela').AsString       := '0';
               cdsNfeTit.FieldByName('dias').AsInteger             := DataSetTit.FieldByName('dias').AsInteger;
               cdsNfeTit.FieldByName('dta_vencimento').AsDateTime  := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
               cdsNfeTit.FieldByName('vlr_titulo').AsCurrency      := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

               cdsNfeTit.FieldByName('che_banco').AsString         := DataSetTit.FieldByName('che_banco').AsString;
               cdsNfeTit.FieldByName('che_agencia').AsString       := DataSetTit.FieldByName('che_agencia').AsString;
               cdsNfeTit.FieldByName('che_conta').AsString         := DataSetTit.FieldByName('che_conta').AsString;
               cdsNfeTit.FieldByName('che_numero').AsString        := DataSetTit.FieldByName('che_numero').AsString;
               cdsNfeTit.FieldByName('che_emitente').AsString      := DataSetTit.FieldByName('che_emitente').AsString;
               cdsNfeTit.Post;
               DataSetTit.Next;
           end;

         cdsNfeTit.IndexFieldNames := 'DTA_VENCIMENTO';
         cdsNfeTit.First;
         i:= 0;
         QtdeReg := IntToStr(cdsNfeTit.RecordCount);
         while not cdsNfeTit.eof do
           begin
             inc(i);
             cdsNfeTit.edit;
             cdsNfeTit.FieldByName('NUM_PARCELA').AsString :=
                     FAT_CD_M_NFE.FieldByName('NUMERO').AsString + '-' +
                     inttostr(i) + '/' + QtdeReg;
             cdsNfeTit.Post;
             cdsNfeTit.Next;
           end;
     end;


  if  origem = 5 then  // Por Ordem de Faturamento (PCP_FM_M_ORS)
     begin
       // if not DataSetTit.IsEmpty  then
           //begin
              DataSetTit.First;
              while not DataSetTit.Eof do
                 begin
                   CAD_CD_C_FPG.Free;
                   CAD_CD_C_FPG := TClientDataSet.Create(nil);
                   CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                   CAD_CD_C_FPG.close;
                   CAD_CD_C_FPG.Data :=
                      CAD_CD_C_FPG.DataRequest(VarArrayOf([0, DataSetTit.FieldByName('id_forma_pag').text]));

                      
                   if (DataSetTit.UpdateStatus in [usInserted]) then   // Se for inserção
                       begin
                         cdsNfeTit.Insert;
                         cdsNfeTit.FieldByName('id_fiscal').AsInteger        :=  FAT_CD_M_NFE.FieldByName('id_fiscal').AsInteger;
                         cdsNfeTit.FieldByName('id_nfe_tit').AsInteger       := DataSetTit.FieldByName('id_ors_tit').AsInteger;

                         cdsNfeTit.FieldByName('id_forma_pag').AsInteger     := DataSetTit.FieldByName('id_forma_pag').AsInteger;

                         if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Cartão
                            begin
                               if not BUS_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                                  begin
                                    if trim(BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) <> '' then
                                       begin
                                         cdsNfeTit.FieldByName('ID_MAQUINETA').AsInteger :=
                                                   BUS_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                                       end;
                                  end;
                            end;

                         cdsNfeTit.FieldByName('id_ccusto').AsInteger        := CAD_CD_C_FPG.FieldByName('id_ccusto').AsInteger;
                         cdsNfeTit.FieldByName('id_plano').AsString          := CAD_CD_C_FPG.FieldByName('ven_id_plano').Text;
                         CAD_CD_C_FPG.Close;

                         cdsNfeTit.FieldByName('num_parcela').AsString      := '0';
                         cdsNfeTit.FieldByName('dias').AsInteger            := DataSetTit.FieldByName('dias').AsInteger;
                         cdsNfeTit.FieldByName('dta_vencimento').AsDateTime := DataSetTit.FieldByName('dta_vencimento').AsDateTime;
                         cdsNfeTit.FieldByName('vlr_titulo').AsCurrency     := DataSetTit.FieldByName('vlr_titulo').AsCurrency;

                         cdsNfeTit.FieldByName('che_banco').AsString        := DataSetTit.FieldByName('che_banco').AsString;
                         cdsNfeTit.FieldByName('che_agencia').AsString      := DataSetTit.FieldByName('che_agencia').AsString;
                         cdsNfeTit.FieldByName('che_conta').AsString        := DataSetTit.FieldByName('che_conta').AsString;
                         cdsNfeTit.FieldByName('che_numero').AsString       := DataSetTit.FieldByName('che_numero').AsString;
                         cdsNfeTit.FieldByName('che_emitente').AsString     := DataSetTit.FieldByName('che_emitente').AsString;
                         cdsNfeTit.Post;
                       end;
                   DataSetTit.Next;
                 end;

           if not cdsNfeTit.IsEmpty then
              begin
                i:= 0;
                cdsNfeTit.IndexFieldNames := 'DTA_VENCIMENTO';
                cdsNfeTit.First;

                QtdeReg := IntToStr(cdsNfeTit.RecordCount);
                while not cdsNfeTit.eof do
                   begin
                     inc(i);
                     cdsNfeTit.edit;
                     cdsNfeTit.FieldByName('NUM_PARCELA').AsString :=
                             FAT_CD_M_NFE.FieldByName('NUMERO').AsString + '-' +
                             inttostr(i) + '/' + QtdeReg;
                     cdsNfeTit.Post;
                     cdsNfeTit.Next;
                   end;
                cdsNfeTit.First;
              end;
           //end;
     end;

  finally
     FreeAndNil(CAD_CD_C_FPG);
     FreeAndNil(CAD_CD_C_CPG);
     FreeAndNil(FAT_CD_M_PED_TIT_INT);
  end;

end;

procedure FatImortarCmpPedEst(DataSet: TCustomClientDataSet; CMP_DP_M_PED,BUS_DP_M_NFE_ITE_INT:TDataSetProvider);
var
  FAT_CD_M_NFE_ITE, CMP_CD_M_PED_ITE, CMP_CD_M_PED_NFE, CMP_CD_M_PED_NFE_ITE: TDataSet;
  CMP_CD_M_PED, FAT_CD_M_NFE_ITE_INT: TClientdataset;
  Arquivo: TextFile;
  lTexto:String;
  oldQtde, oldQtdeIteIqm: Extended;
  lGravaPed: Boolean;
  lCodSeq: Integer;
begin

  { TODO -oMaxsuel -cCriação : Método criado em 30/04/2015; }
  CMP_CD_M_PED := TClientDataSet.Create(nil);
  CMP_CD_M_PED.SetProvider(CMP_DP_M_PED);

  lGravaPed := false;




  FAT_CD_M_NFE_ITE     := TDataSetField(Dataset.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;



     // Se a nota fiscal não estiver em modo de Exclusão
     if not (dataset.UpdateStatus in [usDeleted]) then
        begin

          if dataset.FieldByName('id_pedido_compra').AsInteger > 0 then
             begin
               CMP_CD_M_PED.Close;
               CMP_CD_M_PED.Data :=
                   CMP_CD_M_PED.DataRequest(
                        VarArrayOf([0,dataset.FieldByName('id_pedido_compra').AsInteger]));

               CMP_CD_M_PED_ITE      := TDataSetField(CMP_CD_M_PED.FieldByName('CMP_SQ_M_PED_ITE')).NestedDataSet;
               CMP_CD_M_PED_NFE      := TDataSetField(CMP_CD_M_PED.FieldByName('CMP_SQ_M_PED_NFE')).NestedDataSet;
               CMP_CD_M_PED_NFE_ITE  := TDataSetField(CMP_CD_M_PED_NFE.FieldByName('CMP_SQ_M_PED_NFE_ITE')).NestedDataSet;

               CMP_CD_M_PED.Edit;

               // Se a NFE estiver em modo de Inserção
               if (dataset.UpdateStatus in [usInserted]) then
                   begin

                     CMP_CD_M_PED_NFE.Insert;
                     CMP_CD_M_PED_NFE.FieldByName('ID_FISCAL').AsInteger    :=
                             dataset.FieldByName('id_fiscal').AsInteger;
                     CMP_CD_M_PED_NFE.FieldByName('ID_PEDIDO').AsInteger :=
                             dataset.FieldByName('id_pedido_compra').AsInteger;

                     FAT_CD_M_NFE_ITE.First;
                     while not FAT_CD_M_NFE_ITE.Eof do
                        begin

                          // Cria um registro novo na tabela itens da nfe do pedido de compra
                          CMP_CD_M_PED_NFE_ITE.Insert;
                          CMP_CD_M_PED_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger   := FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsInteger;
                          CMP_CD_M_PED_NFE_ITE.FieldByName('id_item').AsInteger        := FAT_CD_M_NFE_ITE.FieldByName('id_item').AsInteger;
                          CMP_CD_M_PED_NFE_ITE.FieldByName('id_cor').text              := FAT_CD_M_NFE_ITE.FieldByName('id_cor').text;
                          CMP_CD_M_PED_NFE_ITE.FieldByName('id_tamanho').text          := FAT_CD_M_NFE_ITE.FieldByName('id_tamanho').text;


                          if CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsString,[]) then
                             begin
                                // Atualizando a tabela CMP_CD_M_PED_ITE
                                CMP_CD_M_PED_ITE.edit;

                                if (FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat >
                                     CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat) or

                                   (FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat >
                                        (CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat -
                                         CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat))  then
                                   begin
                                     CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat :=
                                         CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat;

                                     // Preenche o campo qtde do registro da tabela de itens da nfe do pedido de compra
                                     CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat :=
                                         CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat;
                                   end
                                else
                                   begin
                                     CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat :=
                                            CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat +
                                            FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;

                                     CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat :=
                                            FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;
                                   end;
                                CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').AsFloat := 0;

                                CMP_CD_M_PED_NFE_ITE.Post;

                                CMP_CD_M_PED_ITE.Post;
                             end;
                          FAT_CD_M_NFE_ITE.Next;
                          lGravaPed := true;
                        end;
                   end
               else
                  begin
                     CMP_CD_M_PED_NFE.Filtered := false;
                     CMP_CD_M_PED_NFE.Filtered := true;
                     CMP_CD_M_PED_NFE.Filter   := ' ID_FISCAL = ' + dataset.FieldByName('id_fiscal').Text;

                     CMP_CD_M_PED_ITE.First;
                     CMP_CD_M_PED_NFE_ITE.First;

                     FAT_CD_M_NFE_ITE.First;
                     while not FAT_CD_M_NFE_ITE.eof do
                           begin
                              lCodSeq := 0;
                              oldQtdeIteIqm := 0;
                              oldQtde := FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;

                              // Caso o registro do FAT_CD_M_NFE_ITE tenha sofrido alteração o sistema trará
                              // dois registros: o original e o modificado(traz os valoes apenas das colunas que
                              // foram alteradas
                              // Esse if pega o registro original
                              if FAT_CD_M_NFE_ITE.UpdateStatus in [usUnmodified] then
                                 begin
                                   oldQtde := FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;
                                   lCodSeq := FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_CMP_PED').AsInteger;
                                   FAT_CD_M_NFE_ITE.Next;
                                 end;
                              // caso o campo qtde tenha sido alterado
                              if oldQtde <> FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat then
                                 begin
                                   if lCodSeq > 0 then
                                      begin
                                        if CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',lCodSeq,[]) then
                                           begin
                                              CMP_CD_M_PED_NFE_ITE.Locate('ID_SEQUENCIA',lCodSeq,[]);

                                              // Atualizando a tabela CMP_CD_M_PED_ITE
                                              CMP_CD_M_PED_ITE.edit;
                                              CMP_CD_M_PED_NFE_ITE.edit;

                                              if (FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat >
                                                  CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat) or

                                                 (FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat >
                                                      (CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat -
                                                       CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat))
                                                   then
                                                 begin
                                                   oldQtdeIteIqm := CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat;

                                                   // Atualiza o campo qtde do registro da
                                                   //     tabela de itens da nfe do pedido de compra
                                                   CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat :=
                                                       CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat -
                                                       (CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat -
                                                        oldQtdeIteIqm);

                                                   CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat :=
                                                      CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat;
                                                 end
                                              else
                                                 begin

                                                   // Atualiza o campo qtde do registro da
                                                   // tabela de itens do iqm do pedido de compra
                                                   CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat :=
                                                       FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;

                                                   CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat :=
                                                      (CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat -
                                                         oldQtde) + FAT_CD_M_NFE_ITE.FieldByName('qtde').AsFloat;

                                                 end;
                                              lGravaPed := true;
                                              CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').AsFloat := 0;


                                              CMP_CD_M_PED_ITE.Post;
                                              CMP_CD_M_PED_NFE_ITE.Post;
                                           end;
                                      end;
                                 end;
                              FAT_CD_M_NFE_ITE.Next;
                              // fim CMP_CD_M_PED_ITE
                           end;
                  end;
               FAT_CD_M_NFE_ITE.First;

               // Atualizando o Pedido de Compra
               CMP_CD_M_PED_ITE.Filtered := true;
                   CMP_CD_M_PED_ITE.Filter   := ' QTDE <> QTDE_BAIXADA ';

               //  STATUS
               //  0 - pendente
               //  1 - entregue parcial
               //  2 - entregue total
               //  3 - finalizado

               if not CMP_CD_M_PED_ITE.IsEmpty then
                      CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 1
               else
                      CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 2;

               CMP_CD_M_PED_ITE.Filtered := false;
               CMP_CD_M_PED_NFE.Filtered := false;
               CMP_CD_M_PED.Post;
             end;
        end
    else
        begin
          // Esse else significa que o FAT_TB_M_NFE será deletado com isso caso
          // ele tenha pedido de compra o mesmo deverá ser atualizado.

          if dataset.FieldByName('id_pedido_compra').AsInteger > 0 then
             begin
               FAT_CD_M_NFE_ITE_INT := TClientDataSet.Create(nil);
               FAT_CD_M_NFE_ITE_INT.SetProvider(BUS_DP_M_NFE_ITE_INT);

               FAT_CD_M_NFE_ITE_INT.Close;
               FAT_CD_M_NFE_ITE_INT.Data :=
                          FAT_CD_M_NFE_ITE_INT.DataRequest(VarArrayOf([Dataset.FieldByName('ID_FISCAL').text]));

               CMP_CD_M_PED.Close;
               CMP_CD_M_PED.Data :=
                   CMP_CD_M_PED.DataRequest(
                      VarArrayOf([0,dataset.FieldByName('id_pedido_compra').AsInteger]));


               CMP_CD_M_PED_ITE     := TDataSetField(CMP_CD_M_PED.FieldByName('CMP_SQ_M_PED_ITE')).NestedDataSet;
               CMP_CD_M_PED_NFE     := TDataSetField(CMP_CD_M_PED.FieldByName('CMP_SQ_M_PED_NFE')).NestedDataSet;
               CMP_CD_M_PED_NFE_ITE := TDataSetField(CMP_CD_M_PED_NFE.FieldByName('CMP_SQ_M_PED_NFE_ITE')).NestedDataSet;

               if not CMP_CD_M_PED.IsEmpty then
                   begin
                     CMP_CD_M_PED_NFE.Filtered := false;
                     CMP_CD_M_PED_NFE.Filtered := true;
                     CMP_CD_M_PED_NFE.Filter   := ' ID_FISCAL = ' + dataset.FieldByName('id_fiscal').Text;


                     FAT_CD_M_NFE_ITE_INT.First;
                     while not FAT_CD_M_NFE_ITE_INT.Eof do
                        begin
                          if CMP_CD_M_PED_ITE.Locate('ID_SEQUENCIA',
                                                     FAT_CD_M_NFE_ITE_INT.FieldByName('id_sequencia_ite_cmp_ped').AsInteger,[]) then
                             begin
                               CMP_CD_M_PED_NFE_ITE.Locate('ID_SEQUENCIA',FAT_CD_M_NFE_ITE_INT.FieldByName('id_sequencia_ite_cmp_ped').AsInteger,[]);

                               CMP_CD_M_PED_ITE.edit;
                               CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat := CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat -
                                                                                       CMP_CD_M_PED_NFE_ITE.FieldByName('qtde').AsFloat;
                               CMP_CD_M_PED_ITE.Post;
                               CMP_CD_M_PED_NFE_ITE.Delete;
                               lGravaPed := true;
                             end;
                          FAT_CD_M_NFE_ITE_INT.Next;
                        end;
                     CMP_CD_M_PED_NFE.delete;

                     // Atualizando o Pedido de Compra
                     CMP_CD_M_PED_ITE.Filtered := true;
                     CMP_CD_M_PED_ITE.Filter   := ' QTDE_BAIXADA > 0';

                       //  STATUS
                       //  0 - pendente
                       //  1 - entregue parcial
                       //  2 - entregue total
                       //  3 - finalizado


                     CMP_CD_M_PED.Edit;
                     if not CMP_CD_M_PED_ITE.IsEmpty then
                            CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 1
                     else
                        CMP_CD_M_PED.FieldByName('STATUS').AsInteger := 0;

                     CMP_CD_M_PED_ITE.Filtered := false;
                     CMP_CD_M_PED.Post;
                   end;
                end;
        end;

  //Grava no banco
  if lGravaPed then
      begin
        if dataset.FieldByName('id_pedido_compra').AsInteger > 0 then
           begin
             if not (CMP_CD_M_PED.ApplyUpdates(0) = 0) then
                begin
                  abort;
                end;
           end;
     end;
end;


procedure FatAtuQtdDevIte(Pai_DataSet: TCustomClientDataSet; BUS_DP_M_NFE_ITE_INT,BUS_DP_M_NFE_DEV_INT,
                          BUS_DP_M_NFE_DEV_ITE_INT: TDataSetProvider; NFCancelada: Boolean);
var
  FAT_CD_M_NFE_ITE_INT, FAT_CD_M_NFE_DEV_INT, FAT_CD_M_NFE_DEV_ITE_INT: TClientDataSet;
  NfeDev_DataSet, NfeDevIte_DataSet : TDataSet;
  NfeDev_DataSet2: TDataSet;
  NfeDev_Sel:String;
  QtdeAtual, QtdeAnt: Extended;
begin
  {  TODO -oMaxsuel -cCriação :
     Método criado em 14/05/2015
     Este método tem a função de atualizar o campo QTDE_DEVOLVIDA do item
     na tabela FAT_TB_M_NFE_ITE.
     Servirá tanto para NF de Dev. de Cliente como Dev. de Fornecedor.   }

   NfeDev_DataSet    := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_DEV')).NestedDataSet;
   NfeDevIte_DataSet := TDataSetField(NfeDev_DataSet.FieldByName('FAT_SQ_M_NFE_DEV_ITE')).NestedDataSet;

   NfeDev_Sel := '';

   try

   if (not (Pai_DataSet.UpdateStatus in [usDeleted])) and (NFCancelada = false) then
      begin
        while not NfeDev_DataSet.Eof do
             begin
                if NfeDev_DataSet.FieldByName('id_fiscal_dev').AsInteger > 0 then
                   begin
                      if NfeDev_Sel <> '' then
                         begin
                          NfeDev_Sel :=
                          NfeDev_Sel + ',' +''''+ NfeDev_DataSet.FieldByName('id_fiscal_dev').AsString+'''';
                         end;
                      if NfeDev_Sel = '' then
                         begin
                           NfeDev_Sel :=
                           NfeDev_Sel +'''' + NfeDev_DataSet.FieldByName('id_fiscal_dev').AsString+'''';
                         end;
                   end;
                NfeDev_DataSet.Next;
             end;

        if NfeDev_Sel <> '' then
           begin
            FAT_CD_M_NFE_ITE_INT := TClientDataSet.Create(nil);
            FAT_CD_M_NFE_ITE_INT.SetProvider(BUS_DP_M_NFE_ITE_INT);
            FAT_CD_M_NFE_ITE_INT.Close;
            FAT_CD_M_NFE_ITE_INT.Data :=
            FAT_CD_M_NFE_ITE_INT.DataRequest(VarArrayOf([0,NfeDev_Sel]));
           end;

        NfeDev_DataSet    := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_DEV')).NestedDataSet;
        NfeDev_DataSet.First;
        NfeDevIte_DataSet := TDataSetField(NfeDev_DataSet.FieldByName('FAT_SQ_M_NFE_DEV_ITE')).NestedDataSet;
        while not NfeDev_DataSet.Eof  do
            begin
              if not (NfeDev_DataSet.UpdateStatus in [usDeleted]) then
                 begin
                    if not NfeDevIte_DataSet.IsEmpty then
                       begin
                         while not NfeDevIte_DataSet.Eof  do
                            begin
                               QtdeAtual  := NfeDevIte_DataSet.FieldByName('QTDE').AsFloat;

                               if FAT_CD_M_NFE_ITE_INT.Locate('ID_FISCAL;ID_SEQUENCIA',VarArrayOf([NfeDevIte_DataSet.FieldByName('ID_FISCAL_DEV').AsInteger,
                                                                                                   NfeDevIte_DataSet.FieldByName('ID_SEQUENCIA').AsInteger]),[]) then
                                  begin

                                     FAT_CD_M_NFE_ITE_INT.Edit;

                                     { ******************
                                       QUANDO HÁ INSERÇÃO
                                       ****************** }
                                     if NfeDevIte_DataSet.UpdateStatus in [usInserted] then
                                        begin
                                           FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat := FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat +
                                                                                                         QtdeAtual;
                                        end;

                                     { ******************
                                       QUANDO HÁ ALTERAÇÃO
                                       ****************** }

                                     if NfeDevIte_DataSet.UpdateStatus in [usUnmodified] then    // Se o registro teve modificações
                                        begin
                                          QtdeAnt   := NfeDevIte_DataSet.FieldByName('QTDE').AsFloat;

                                          NfeDevIte_DataSet.Next;

                                          QtdeAtual    := 0;
                                          if NfeDevIte_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                             QtdeAtual := NfeDevIte_DataSet.FieldByName('QTDE').AsFloat;

                                          if NfeDevIte_DataSet.UpdateStatus in [usmodified] then // Contem os valores registro modificado do usUnModified
                                             begin
                                               if QtdeAtual > 0 then
                                                  begin
                                                    FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat :=
                                                          (FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat - QtdeAnt) + QtdeAtual;
                                                  end;
                                             end;
                                        end;

                                     { ******************
                                       QUANDO HÁ DELEÇÃO
                                       ****************** }

                                     if NfeDevIte_DataSet.UpdateStatus in [usDeleted] then       // Se o registro foi deletado.
                                        begin
                                          FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat :=
                                                FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat - QtdeAtual;
                                        end;

                                     FAT_CD_M_NFE_ITE_INT.Post;
                                  end;

                               NfeDevIte_DataSet.Next;
                            end;
                       end;
                 end
              else
                 begin
                    FAT_CD_M_NFE_DEV_ITE_INT := TClientDataSet.Create(nil);
                    FAT_CD_M_NFE_DEV_ITE_INT.SetProvider(BUS_DP_M_NFE_DEV_ITE_INT);
                    FAT_CD_M_NFE_DEV_ITE_INT.Close;
                    FAT_CD_M_NFE_DEV_ITE_INT.Data :=
                        FAT_CD_M_NFE_DEV_ITE_INT.DataRequest(VarArrayOf([1,NfeDev_DataSet.FieldByName('ID_FISCAL').AsInteger,
                                                                           NfeDev_DataSet.FieldByName('ID_FISCAL_DEV').AsInteger]));

                    if not FAT_CD_M_NFE_DEV_ITE_INT.IsEmpty then
                       begin
                          while not FAT_CD_M_NFE_DEV_ITE_INT.eof do
                             begin
                               if FAT_CD_M_NFE_ITE_INT.Locate('ID_FISCAL;ID_SEQUENCIA',VarArrayOf([FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('ID_FISCAL_DEV').AsInteger,
                                                                                                   FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('ID_SEQUENCIA').AsInteger]),[]) then
                                  begin
                                    FAT_CD_M_NFE_ITE_INT.Edit;
                                    FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat :=
                                          FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat -
                                          FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('QTDE').AsFloat;
                                    FAT_CD_M_NFE_ITE_INT.Post;
                                  end;
                               FAT_CD_M_NFE_DEV_ITE_INT.Next;
                             end;
                       end;
                 end;
              NfeDev_DataSet.Next;
            end;
      end
   else
      begin

        FAT_CD_M_NFE_DEV_INT := TClientDataSet.Create(nil);
        FAT_CD_M_NFE_DEV_INT.SetProvider(BUS_DP_M_NFE_DEV_INT);
        FAT_CD_M_NFE_DEV_INT.Close;
        FAT_CD_M_NFE_DEV_INT.Data :=
            FAT_CD_M_NFE_DEV_INT.DataRequest(VarArrayOf([0,Pai_DataSet.FieldByName('ID_FISCAL').AsInteger]));


         while not FAT_CD_M_NFE_DEV_INT.Eof do
             begin
                if FAT_CD_M_NFE_DEV_INT.FieldByName('id_fiscal_dev').AsInteger > 0 then
                   begin
                      if NfeDev_Sel <> '' then
                         begin
                          NfeDev_Sel :=
                          NfeDev_Sel + ',' +''''+ FAT_CD_M_NFE_DEV_INT.FieldByName('id_fiscal_dev').AsString+'''';
                         end;
                      if NfeDev_Sel = '' then
                         begin
                           NfeDev_Sel :=
                           NfeDev_Sel +'''' + FAT_CD_M_NFE_DEV_INT.FieldByName('id_fiscal_dev').AsString+'''';
                         end;
                   end;
                FAT_CD_M_NFE_DEV_INT.Next;
             end;

        FAT_CD_M_NFE_ITE_INT := TClientDataSet.Create(nil);
        FAT_CD_M_NFE_ITE_INT.SetProvider(BUS_DP_M_NFE_ITE_INT);
        FAT_CD_M_NFE_ITE_INT.Close;
        FAT_CD_M_NFE_ITE_INT.Data :=
            FAT_CD_M_NFE_ITE_INT.DataRequest(VarArrayOf([0,NfeDev_Sel]));


        FAT_CD_M_NFE_DEV_ITE_INT := TClientDataSet.Create(nil);
        FAT_CD_M_NFE_DEV_ITE_INT.SetProvider(BUS_DP_M_NFE_DEV_ITE_INT);
        FAT_CD_M_NFE_DEV_ITE_INT.Close;
        FAT_CD_M_NFE_DEV_ITE_INT.Data :=
            FAT_CD_M_NFE_DEV_ITE_INT.DataRequest(VarArrayOf([0,Pai_DataSet.FieldByName('ID_FISCAL').AsInteger]));

        if not FAT_CD_M_NFE_DEV_ITE_INT.IsEmpty then
           begin
              while not FAT_CD_M_NFE_DEV_ITE_INT.eof do
                 begin
                   if FAT_CD_M_NFE_ITE_INT.Locate('ID_FISCAL;ID_SEQUENCIA',VarArrayOf([FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('ID_FISCAL_DEV').AsInteger,
                                                                                       FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('ID_SEQUENCIA').AsInteger]),[]) then
                      begin
                        FAT_CD_M_NFE_ITE_INT.Edit;
                        FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat :=
                              FAT_CD_M_NFE_ITE_INT.FieldByName('QTDE_DEVOLVIDA').AsFloat -
                              FAT_CD_M_NFE_DEV_ITE_INT.FieldByName('QTDE').AsFloat;
                        FAT_CD_M_NFE_ITE_INT.Post;
                      end;
                   FAT_CD_M_NFE_DEV_ITE_INT.Next;
                 end;
           end;
      end;

   finally

      if FAT_CD_M_NFE_ITE_INT <> nil then
         if FAT_CD_M_NFE_ITE_INT.ChangeCount > 0 then
            FAT_CD_M_NFE_ITE_INT.ApplyUpdates(0);


      FAT_CD_M_NFE_ITE_INT.Free;
      FAT_CD_M_NFE_DEV_INT.Free;
      FAT_CD_M_NFE_DEV_ITE_INT.Free;
   end;
end;

function  FatAtuCustoMedItens(const IdEmpresa,IdItem,IdCor,IdTamanho, IdFiscal: String): Currency;
var
  qry: TSQLQuery;
  sql: String;
  PrimeiraVez: Boolean;
  EstoqueAnt,CustoMedAnt, CustoMedNovo: Currency;

  itens_sel,Cores_Sel,Tam_Sel: String;

begin
  { TODO -oMaxsuel -cCriação :
    Método criado em 18/04/2016
    Tem a função de ver reconstruir e atualizar o custo médio no EST_TB_M_FES; }

 { cdsItens.First;
  while not cdsItens.eof do
     begin
        if itens_sel <> '' then
           begin
            itens_sel :=
            itens_sel + ',' +''''+ cdsItens.FieldByName('ID_ITEM').AsString+'''';
           end;
        if itens_sel = '' then
           begin
             itens_sel :=
             itens_sel +'''' + cdsItens.FieldByName('ID_ITEM').AsString+'''';
           end;


        if not pos(cdsItens.FieldByName('ID_COR').text,Cores_Sel) <> 0 then
           begin
             if Cores_Sel <> '' then
                begin
                  Cores_Sel :=
                  Cores_Sel + ',' +''''+cdsItens.FieldByName('ID_COR').AsString+'''';
                end;
             if Cores_Sel = '' then
                begin
                  Cores_Sel :=
                  Cores_Sel +''''+ cdsItens.FieldByName('ID_COR').AsString+'''';
                end;
           end;


        if not pos(cdsItens.FieldByName('ID_TAMANHO').text,Tam_Sel) <> 0 then
           begin
              if Tam_Sel <> '' then
                 begin
                   Tam_Sel :=
                   Tam_Sel + ',' +''''+cdsItens.FieldByName('ID_TAMANHO').AsString+'''';
                 end;
              if Tam_Sel = '' then
                 begin
                   Tam_Sel :=
                   Tam_Sel +''''+ cdsItens.FieldByName('ID_TAMANHO').AsString+'''';
                 end;
           end;

        cdsItens.Next;
     end;

  cdsItens.First;

  EST_CD_M_FES.SetProvider(BUS_DP_M_FES_INT);
  EST_CD_M_FES.Close;
  EST_CD_M_FES.Data :=
      EST_CD_M_FES.DataRequest(VarArrayOf([6, IdEmpresa,itens_sel, Cores_Sel,Tam_Sel]));
 }
  try
   // SM := TSM.Create(nil);


    qry := TSqlQuery.Create(nil);
    qry.SQLConnection := sm.Conexao;

//    while not EST_CD_M_FES.Eof do
//       begin
         Result       := 0;

         CustoMedAnt  := 0;
         CustoMedNovo := 0;
         EstoqueAnt   := 0;

         PrimeiraVez := true;

          qry.Close;
          qry.SQL.Clear;


          sql :=
                ' select sss.id_empresa, sss.id_fiscal, sss.id_controle, sss.id_item, sss.id_seq_item,' + #13#10 +
                '       sss.tipo_movimento, case sss.tipo_movimento' + #13#10 +
                '          when 0 then ''Entrada''' + #13#10 +
                '          when 1 then ''Saída''' + #13#10 +
                '       end as tipo_mov,' + #13#10 +
                '       sss.origem, sss.acao_tomar, sss.vlr_custo,(sss.sld_estoque - sss.qtde)as sld_anterior, qtde, sss.sld_estoque' + #13#10 +
                ' from' + #13#10 +
                '    ( select f.id_empresa,' + #13#10 +
                '             f."data",f.id_fea, f.origem,f.int_descorigem, f.documento,  f.id_item, f.id_seq_item,f.id_almoxarifado, f.id_cor, f.id_tamanho,' + #13#10 +
                '             f.tipo_movimento, f.int_nometme, f.id_fiscal, f.id_controle,f.acao_tomar, f.qtde, f.vlr_custo_nfi,f.vlr_custo_cit,' + #13#10 +
                '             case' + #13#10 +
                '                when f.acao_tomar <> ''Nenhuma'' then' + #13#10 +
                '                     case' + #13#10 +
                '                        when (f.id_fiscal > 0)  then f.vlr_custo_nfi' + #13#10 +
                '                        when (id_controle > 0) then	f.vlr_custo_cit' + #13#10 +
                '                     end' + #13#10 +
                '             end as vlr_custo,' + #13#10 +
                '             sum(f.qtde) over (partition by f.id_item,f.id_almoxarifado, f.id_cor, f.id_tamanho order by f."data",f.id_fea) as sld_estoque' + #13#10 +
                '      from  (select' + #13#10 +
                '                 fea.id_empresa, fea."data", fea.id_fea, fea.origem, fea.documento, fea.id_item, fea.id_seq_item,' + #13#10 +
                '                 fea.id_almoxarifado, fea.id_cor, fea.id_tamanho,' + #13#10 +
                '                 tme.tipo_movimento,tme.descricao as int_nometme, fea.id_fiscal, fea.id_controle,' + #13#10 +
                '                 nfi.vlr_custo as vlr_custo_nfi, cit.vlr_custo as vlr_custo_cit,' + #13#10 +
                '                 case' + #13#10 +
                '                     when cfo.id_classe in (''EA10'',''EA50'',''EA99'',''EA60'') then  ''soma''' + #13#10 +
                '                     when cfo.id_classe in (''SP20'') then  ''subtrai''' + #13#10 +
                '                   else' + #13#10 +
                '                      case' + #13#10 +
                '                          when (fea.origem = 4) and (tme.tipo_movimento = 0) then  ''soma''' + #13#10 +
                '                          when (fea.origem = 4) and (tme.tipo_movimento = 1) then  ''subtrai''' + #13#10 +
                '                      else ''Nenhuma''' + #13#10 +
                '                      end' + #13#10 +
                '                 end as acao_tomar,' + #13#10 +
                '                 cast (case fea.origem' + #13#10 +
                '                        when  0 then ''Por Nota fiscal de entrada''' + #13#10 +
                '                        when  1 then ''Por Nota fiscal de saída''' + #13#10 +
                '                        when  2 then ''Por Ordem de saída''' + #13#10 +
                '                        when  3 then ''Por almoxarifado - Saída''' + #13#10 +
                '                        when  4 then ''Por inventário''' + #13#10 +
                '                        when  5 then ''Por almoxarifado - Devolucao''' + #13#10 +
                '                        when  6 then ''Por Pedido de Venda''' + #13#10 +
                '                        when  7 then ''Por Dev. de NF de Fornecedor''' + #13#10 +
                '                        when  8 then ''Por Dev. de NF de Cliente''' + #13#10 +
                '                 end as varchar(30)) as int_descorigem,' + #13#10 +
                '                 case tme.tipo_movimento' + #13#10 +
                '                    when 0 then fea.qtde' + #13#10 +
                '                    when 1 then fea.qtde * -1' + #13#10 +
                '                 end as qtde' + #13#10 +
                '              from est_tb_m_fea fea' + #13#10 +
                '                   left outer join cad_tb_c_tme tme on tme.id_tipo_mov_estoque = fea.id_tipo_mov_estoque' + #13#10 +
                '                   left outer join fat_tb_m_nfe nff on (nff.id_fiscal = fea.id_fiscal) ' + #13#10 +
                '                   left outer join cad_tb_c_cfo cfo on (cfo.id_cfo = nff.id_cfo and' + #13#10 +
                '                                                        cfo.id_classe in (''EA10'',''EA50'',''EA99'',''EA60'',''SP20''))' + #13#10 +
                '                   left outer join fat_tb_m_nfe_ite nfi on (nfi.id_fiscal = fea.id_fiscal AND' + #13#10 +
                '                                                            nfi.id_sequencia = fea.id_seq_item)' + #13#10 +
                '                   left outer join est_tb_m_cte_ite cit on (cit.id_controle  = fea.id_controle AND' + #13#10 +
                '                                                            cit.id_seq_item = fea.id_seq_item)' + #13#10;
          sql := sql +
                ' where fea.id_empresa = ' + IdEmpresa  + #13#10 +
                '   and fea.id_item    = '  + IdItem    + #13#10 +
                '   and fea.id_cor     = '  + IdCor     + #13#10 +
                '   and fea.id_tamanho = '  + IdTamanho + #13#10;

          if IdFiscal <> '0' then
             begin
               sql := sql + ' and fea.id_fiscal <> ' + IdFiscal + #13#10;
             end;

          sql := sql +
                ' order by fea."data",fea.id_fea, fea.id_item,fea.id_almoxarifado, fea.id_cor, fea.id_tamanho ) f '  + #13#10 +
                ' ) sss ';
          qry.SQL.Add(sql);
          qry.Open;

          if not qry.IsEmpty then
             begin
               while not qry.eof do
                  begin
                    if qry.FieldByName('acao_tomar').AsString <> 'Nenhuma' then
                       begin
                          if PrimeiraVez then
                             begin
                               if qry.FieldByName('acao_tomar').AsString = 'soma' then
                                  begin
                                    CustoMedAnt  := qry.FieldByName('vlr_custo').AsCurrency;
                                    CustoMedNovo := qry.FieldByName('vlr_custo').AsCurrency;
                                    PrimeiraVez := false;
                                  end;
                             end
                          else
                             begin
                               if qry.FieldByName('sld_anterior').AsCurrency > 0 then
                                  begin
                                     if qry.FieldByName('acao_tomar').AsString = 'subtrai' then
                                        begin
                                          if ( qry.FieldByName('sld_estoque').AsCurrency < 0 ) or
                                             ( qry.FieldByName('sld_estoque').AsCurrency = 0 ) then
                                              begin
                                                CustoMedAnt  := 0;
                                                CustoMedNovo := 0;
                                              end
                                          else
                                              begin
                                                if (qry.FieldByName('origem').AsInteger   = 4) and  // Inventário
                                                   (qry.FieldByName('tipo_movimento').AsInteger = 1) then // Saída
                                                   begin
                                                     CustoMedNovo := qry.FieldByName('vlr_custo').AsCurrency;
                                                     CustoMedAnt  := CustoMedNovo;
                                                   end
                                                else
                                                   begin
                                                     CustoMedNovo := ( (CustoMedAnt * qry.FieldByName('sld_anterior').AsCurrency) +
                                                                       (qry.FieldByName('vlr_custo').AsCurrency * qry.FieldByName('qtde').AsCurrency))
                                                                      / (qry.FieldByName('sld_anterior').AsCurrency + qry.FieldByName('qtde').AsCurrency);
                                                     CustoMedAnt  := CustoMedNovo;
                                                   end;
                                              end;
                                        end
                                     else
                                        begin
                                          if qry.FieldByName('acao_tomar').AsString = 'soma' then
                                             begin
                                               if (qry.FieldByName('origem').AsInteger   = 4) and  // Inventário
                                                  (qry.FieldByName('tipo_movimento').AsInteger = 0) then // Entrada
                                                   begin
                                                     CustoMedNovo := qry.FieldByName('vlr_custo').AsCurrency;
                                                     CustoMedAnt  := CustoMedNovo;
                                                   end
                                               else
                                                  begin
                                                     CustoMedNovo := ( (CustoMedAnt * qry.FieldByName('sld_anterior').AsCurrency) +
                                                                       (qry.FieldByName('vlr_custo').AsCurrency * qry.FieldByName('qtde').AsCurrency))
                                                                      / (qry.FieldByName('sld_anterior').AsCurrency + qry.FieldByName('qtde').AsCurrency);
                                                     CustoMedAnt  := CustoMedNovo;
                                                  end;
                                            end
                                        end;
                                  end
                               else
                                  begin
                                    if qry.FieldByName('acao_tomar').AsString = 'soma' then
                                       begin
                                         CustoMedAnt  := qry.FieldByName('vlr_custo').AsCurrency;
                                         CustoMedNovo := qry.FieldByName('vlr_custo').AsCurrency;
                                       end
                                    else
                                       begin
                                         CustoMedAnt  := 0;
                                         CustoMedNovo := 0;
                                       end;
                                  end;
                             end;
                       end;
                    qry.Next;
                  end;
             end;
          result := CustoMedNovo;

         { EST_CD_M_FES.Edit;
          EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency := CustoMedNovo;
          EST_CD_M_FES.Post;

          EST_CD_M_FES.Next;}
       //end;

    //EST_CD_M_FES.First;
  finally
    FreeAndNil(qry);
   // FreeAndNil(SM);
  end;
end;

procedure SelecionarItens(var origem_doc,index: integer;Ite_DataSet: TDataSet; BUS_CD_C_PAR_CTR: TClientDataSet;
                          var itens_sel, cores_sel, tam_sel, lotes_sel: String);
begin
   if Ite_DataSet <> nil then
      begin
         Ite_DataSet.First;
         while not Ite_DataSet.eof do
            begin
              //if not (Ite_DataSet.UpdateStatus in [usmodified]) then  // Estava dando erro na entrada.
                 //begin
                    if Ite_DataSet.FieldByName('ID_ITEM').AsInteger > 0 then
                       begin
                          if itens_sel <> '' then
                             begin
                              itens_sel :=
                              itens_sel + ',' +''''+ Ite_DataSet.FieldByName('ID_ITEM').AsString+'''';
                             end;
                          if itens_sel = '' then
                             begin
                               itens_sel :=
                               itens_sel +'''' + Ite_DataSet.FieldByName('ID_ITEM').AsString+'''';
                             end;
                       end;

                    // busca as cores dos itens

                    if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = true then
                       begin
                          Index := 4;

                          if Ite_DataSet.FieldByName('ID_COR').text <> '' then
                             begin
                               if not pos(Ite_DataSet.FieldByName('ID_COR').text,Cores_Sel) <> 0 then
                                  begin
                                    if Cores_Sel <> '' then
                                       begin
                                         Cores_Sel :=
                                         Cores_Sel + ',' +''''+Ite_DataSet.FieldByName('ID_COR').AsString+'''';
                                       end;
                                    if Cores_Sel = '' then
                                       begin
                                         Cores_Sel :=
                                         Cores_Sel +''''+ Ite_DataSet.FieldByName('ID_COR').AsString+'''';
                                       end;
                                  end;
                             end;
                       end;

                      // busca os tamanhos dos itens
                      if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true then
                         begin
                            Index := 5;

                            if Ite_DataSet.FieldByName('ID_TAMANHO').text <> '' then
                               begin
                                 if not pos(Ite_DataSet.FieldByName('ID_TAMANHO').text,Tam_Sel) <> 0 then
                                    begin
                                      if Tam_Sel <> '' then
                                         begin
                                           Tam_Sel :=
                                           Tam_Sel + ',' +''''+Ite_DataSet.FieldByName('ID_TAMANHO').AsString+'''';
                                         end;
                                      if Tam_Sel = '' then
                                         begin
                                           Tam_Sel :=
                                           Tam_Sel +''''+ Ite_DataSet.FieldByName('ID_TAMANHO').AsString+'''';
                                         end;
                                    end;
                               end;
                         end;

                      if BUS_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true then
                         begin
                            if not (origem_doc in [1,2,10,11,14]) then // Só entra se for diferente de ordem de saída , nota de saída e entrada por O.P
                               begin
                                  if Ite_DataSet.FieldByName('NUM_LOTE').text <> '' then
                                     begin
                                       if not pos(Ite_DataSet.FieldByName('NUM_LOTE').text,Lotes_Sel) <> 0 then
                                          begin
                                            if Lotes_Sel <> '' then
                                               begin
                                                 Lotes_Sel :=
                                                 Lotes_Sel + ',' +''''+Ite_DataSet.FieldByName('NUM_LOTE').AsString+'''';
                                               end;
                                            if Lotes_Sel = '' then
                                               begin
                                                 Lotes_Sel :=
                                                 Lotes_Sel +''''+ Ite_DataSet.FieldByName('NUM_LOTE').AsString+'''';
                                               end;
                                          end;
                                     end;
                               end;
                         end;
                 //end;
              Ite_DataSet.Next;
            end;
         if (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = true) and (BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true) then
             begin
               index := 6;
             end;
      end;

end;

function  FatBusSaldoIte(empresa, id_item, id_cor, id_tamanho,
                         id_almoxarifado: String; EST_DP_M_FES, EST_DP_M_FES_ALM: TDataSetProvider; BUS_CD_C_PAR_CTR: TClientDataSet; var saldo_fisico: Extended): Boolean;
var
  index: integer;
  filtro: string;

  EST_CD_M_FES, EST_CD_M_FES_ALM: TClientDataSet;
begin

   { TODO -oMaxsuel -cCriação :
     Método criado em 15-05-2015;
     Este método tem a função de buscar o saldo do item. }


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

    { Filtros do EST_CD_M_FES_ALM:
      Index 0 - Empresa, Item, almoxarifado
      Index 1 - Empresa, Item, Cor, almoxarifado
      Index 2 - Empresa, Item, Tamanho, almoxarifado
      Index 3 - Empresa, Item, Cor,Tamanho, almoxarifado
      Index 4 - empresa, in(item),  in(cores), almoxarifado
      Index 5 - empresa, in(item),  in(tamanho), almoxarifado
      Index 6 - empresa, int(item), in(cor) in(tamanho), almoxarifado
      Index 7 - empresa, in(item), almoxarifado
      }
     try
     
     result := true;

     saldo_fisico := 0;

     index  := 0;
     filtro := empresa + ',' + id_item;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = false) and (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
        begin
          index := 1;
          filtro := filtro + ',' + id_cor;
        end;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = false) and (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true) then
        begin
          index := 2;
          filtro := filtro + ',' + id_tamanho;
        end;

     if (BUS_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) and (BUS_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true) then
        begin
          index := 3;
          filtro := filtro + ',' + id_cor + ',' + id_tamanho;
        end;


     if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean = true then
        begin
          EST_CD_M_FES_ALM := TClientDataSet.Create(nil);
          EST_CD_M_FES_ALM.SetProvider(EST_DP_M_FES_ALM);
          EST_CD_M_FES_ALM.Close;

          if index = 0 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_almoxarifado]));

          if index = 1 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_almoxarifado]));
          if index = 2 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_tamanho, id_almoxarifado]));

          if index = 3 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_tamanho, id_almoxarifado]));

          if not EST_CD_M_FES_ALM.IsEmpty then
             begin
               saldo_fisico := EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsFloat;
             end
          else
             begin
               result := false;
             end;
        end
     else
        begin
           EST_CD_M_FES := TClientDataSet.Create(nil);
           EST_CD_M_FES.SetProvider(EST_DP_M_FES);
           EST_CD_M_FES.Close;

           if index = 0 then
               EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item]));

           if index = 1 then
               EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor]));
           if index = 2 then
               EST_CD_M_FES.Data :=
                    EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_tamanho]));

           if index = 3 then
               EST_CD_M_FES.Data :=
                    EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_tamanho]));

           if not EST_CD_M_FES.IsEmpty then
              begin
                saldo_fisico := EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;
              end
          else
             begin
               result := false;
             end;
        end;

     finally

        if EST_CD_M_FES <> nil then 
           begin
             EST_CD_M_FES.close;
             EST_CD_M_FES.Free;
           end;

        if EST_CD_M_FES_ALM <> nil then
           begin
             EST_CD_M_FES_ALM.close;
             EST_CD_M_FES_ALM.Free;
           end;
     end;
end;


function  FatVerifSldIte(origem_doc: integer; Pai_DataSet: TCustomClientDataSet; BUS_CD_C_PAR_CTR: TClientDataSet;
                         EST_DP_M_FES, EST_DP_M_FES_ALM,BUS_DP_M_PED_ITE_INT: TDataSetProvider): string;
var
   Ite_DataSet, ParMod_DataSet: TDataSet;
   QtdeAnt,QtdeAtual,saldo_fisico: Extended;
   IdItem,Idcor,IntNomeCor,IdTamanho,IntNomeTam,IdAlmoxarifado: String;
   mens: string;
   BUS_CD_M_PED_ITE_INT: TClientDataSet;
   cdsTempIte: TClientDataSet;
begin



   { TODO -oMaxsuel -cCriação :
     Método criado em 15-05-2015;
     Este método tem a função de testar se existe saldo de estoque
     para o produto. }

   { origem_doc:
        1 - Por Nota fiscal de saída
        2 - Por Ordem de saída
        3 - Por almoxarifado - Saída
        6 - Por Pedido de Venda
        7 - Por Dev. de NF de Fornecedor
   }

   {****** ATENCÃO ******
   Este método foi descontinuao para dar vez ao método:  FatVerfifSaldoIte
   31/08/2015
   *********************}


   {
   result := '';
   mens:= '';

   if not (Pai_DataSet.UpdateStatus in [usDeleted]) then
      begin

        if origem_doc in [1,7] then
           Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_NFE_ITE')).NestedDataSet;

        if origem_doc = 6 then
           begin
             Ite_DataSet    := TDataSetField(Pai_DataSet.FieldByName('FAT_SQ_M_PED_ITE')).NestedDataSet;
             ParMod_DataSet := TDataSetField(BUS_CD_C_PAR_CTR.FieldByName('BUS_SQ_C_PAR_MOD')).NestedDataSet;
             if ParMod_DataSet.FieldByName('SGQ').AsBoolean then
                exit;
           end;

        if origem_doc = 3 then
           Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('EST_SQ_M_MAL_ITE')).NestedDataSet;

        if origem_doc = 9 then
           Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;

        try

        cdsTempIte := TClientDataSet.Create(nil);
        cdsTempIte.FieldDefs.Add('id_item', ftInteger);
        cdsTempIte.FieldDefs.Add('id_almoxarifado', ftInteger);
        cdsTempIte.FieldDefs.Add('id_cor', ftInteger);
        cdsTempIte.FieldDefs.Add('IntNomeCor', ftString);
        cdsTempIte.FieldDefs.Add('id_tamanho', ftInteger);
        cdsTempIte.FieldDefs.Add('IntNomeTam', ftString);
        cdsTempIte.FieldDefs.Add('qtde_anter', ftFloat);
        cdsTempIte.FieldDefs.Add('qtde_atual', ftFloat);
        cdsTempIte.CreateDataSet;


        while not Ite_DataSet.eof do
            begin
               if not (Ite_DataSet.UpdateStatus in [usDeleted]) then
                  begin
                    if Ite_DataSet.FieldByName('int_tipo_item').AsInteger <> 9 then // Se não for serviço
                       begin
                          IdItem         := Ite_DataSet.FieldByName('ID_ITEM').Text;
                          IdCor          := Ite_DataSet.FieldByName('ID_COR').Text;
                          IntNomeCor     := Ite_DataSet.FieldByName('INT_NOMECOR').Text;
                          IdTamanho      := Ite_DataSet.FieldByName('ID_TAMANHO').Text;
                          IntNomeTam     := Ite_DataSet.FieldByName('INT_NOMETAM').Text;
                          IdAlmoxarifado := Pai_DataSet.FieldByName('ID_ALMOXARIFADO').Text;
                          QtdeAnt        := Ite_DataSet.FieldByName('QTDE').AsFloat;
                          QtdeAtual      := Ite_DataSet.FieldByName('QTDE').AsFloat;

                          // INSERÇÃO DO ITEM
                          if Ite_DataSet.UpdateStatus in [usInserted] then
                             begin
                               if not cdsTempIte.Locate('ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',
                                          varArrayOf([IdItem,
                                                      IdCor,
                                                      IdTamanho,
                                                      IdAlmoxarifado]),[]) then
                                  begin
                                     cdsTempIte.Insert;
                                     cdsTempIte.FieldByName('id_item').AsInteger    :=  Ite_DataSet.FieldByName('ID_ITEM').AsInteger;
                                     cdsTempIte.FieldByName('id_almoxarifado').text :=  Pai_DataSet.FieldByName('ID_ALMOXARIFADO').Text;
                                     cdsTempIte.FieldByName('id_cor').AsInteger     :=  Ite_DataSet.FieldByName('ID_COR').AsInteger;
                                     cdsTempIte.FieldByName('IntNomeCor').AsString  :=  Ite_DataSet.FieldByName('INT_NOMECOR').Text;
                                     cdsTempIte.FieldByName('id_tamanho').AsInteger :=  Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger;
                                     cdsTempIte.FieldByName('IntNomeTam').AsString  :=  Ite_DataSet.FieldByName('INT_NOMETAM').Text;
                                     cdsTempIte.FieldByName('qtde_anter').AsFloat   :=  0;
                                     cdsTempIte.FieldByName('qtde_atual').AsFloat   :=  Ite_DataSet.FieldByName('QTDE').AsFloat;
                                     cdsTempIte.Post;
                                  end
                               else
                                  begin
                                    cdsTempIte.edit;
                                    cdsTempIte.FieldByName('qtde').AsFloat          :=
                                        cdsTempIte.FieldByName('qtde').AsFloat + Ite_DataSet.FieldByName('QTDE').AsFloat;
                                    cdsTempIte.Post;
                                  end;
                             end;

                          // ALTERAÇÃO DO ITEM
                          if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                             begin
                                if not cdsTempIte.Locate('ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',
                                                varArrayOf([IdItem,
                                                            IdCor,
                                                            IdTamanho,
                                                            IdAlmoxarifado]),[]) then
                                  begin
                                     cdsTempIte.Insert;
                                     cdsTempIte.FieldByName('id_item').AsInteger    :=  Ite_DataSet.FieldByName('ID_ITEM').AsInteger;
                                     cdsTempIte.FieldByName('id_almoxarifado').text :=  Pai_DataSet.FieldByName('ID_ALMOXARIFADO').Text;
                                     cdsTempIte.FieldByName('id_cor').AsInteger     :=  Ite_DataSet.FieldByName('ID_COR').AsInteger;
                                     cdsTempIte.FieldByName('IntNomeCor').AsString  :=  Ite_DataSet.FieldByName('INT_NOMECOR').Text;
                                     cdsTempIte.FieldByName('id_tamanho').AsInteger :=  Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger;
                                     cdsTempIte.FieldByName('IntNomeTam').AsString  :=  Ite_DataSet.FieldByName('INT_NOMETAM').Text;
                                     cdsTempIte.FieldByName('qtde_anter').AsFloat   :=  Ite_DataSet.FieldByName('QTDE').AsFloat;
                                     cdsTempIte.FieldByName('qtde_atual').AsFloat   :=  0;
                                     cdsTempIte.Post;
                                  end
                               else
                                  begin
                                    cdsTempIte.edit;
                                    cdsTempIte.FieldByName('qtde_anter').AsFloat          :=
                                        cdsTempIte.FieldByName('qtde_anter').AsFloat + Ite_DataSet.FieldByName('QTDE').AsFloat;
                                    cdsTempIte.Post;
                                  end;

                               Ite_DataSet.Next;

                               if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                                  begin
                                    cdsTempIte.edit;

                                    if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                       begin
                                         cdsTempIte.FieldByName('qtde_atual').AsFloat  :=
                                              cdsTempIte.FieldByName('qtde_atual').AsFloat + Ite_DataSet.FieldByName('QTDE').AsFloat;

                                         if Ite_DataSet.FieldByName('ID_COR').AsInteger > 0 then
                                            begin
                                              IdCor       := Ite_DataSet.FieldByName('ID_COR').Text;
                                              IntNomeCor  := Ite_DataSet.FieldByName('INT_NOMECOR').Text;
                                              QtdeAnt := 0;
                                              cdsTempIte.FieldByName('qtde_anter').AsFloat   :=  Ite_DataSet.FieldByName('QTDE').AsFloat;
                                              cdsTempIte.FieldByName('qtde_atual').AsFloat   :=  0;
                                            end;

                                         if Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0 then
                                            begin
                                              IdTamanho      := Ite_DataSet.FieldByName('ID_TAMANHO').Text;
                                              IntNomeTam     := Ite_DataSet.FieldByName('INT_NOMETAM').Text;
                                              QtdeAnt := 0;
                                              cdsTempIte.FieldByName('qtde_anter').AsFloat   :=  Ite_DataSet.FieldByName('QTDE').AsFloat;
                                              cdsTempIte.FieldByName('qtde_atual').AsFloat   :=  0;
                                            end;

                                         if not cdsTempIte.Locate('ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',
                                                varArrayOf([IdItem,
                                                            IdCor,
                                                            IdTamanho,
                                                            IdAlmoxarifado]),[]) then
                                            begin
                                               cdsTempIte.Insert;
                                               cdsTempIte.FieldByName('id_item').AsString     :=  IdItem;
                                               cdsTempIte.FieldByName('id_almoxarifado').text :=  Pai_DataSet.FieldByName('ID_ALMOXARIFADO').Text;
                                               cdsTempIte.FieldByName('id_cor').AsString      :=  IdCor;
                                               cdsTempIte.FieldByName('IntNomeCor').AsString  :=  IntNomeCor;
                                               cdsTempIte.FieldByName('id_tamanho').AsString  :=  IdTamanho;
                                               cdsTempIte.FieldByName('IntNomeTam').AsString  :=  IntNomeTam;
                                               cdsTempIte.FieldByName('qtde_anter').AsFloat   :=  0;
                                               cdsTempIte.FieldByName('qtde_atual').AsFloat   :=  Ite_DataSet.FieldByName('QTDE').AsFloat;
                                               cdsTempIte.Post;
                                            end;
                                       end
                                    else
                                       begin
                                         cdsTempIte.FieldByName('qtde_atual').AsFloat  :=
                                              cdsTempIte.FieldByName('qtde_atual').AsFloat + cdsTempIte.FieldByName('qtde_anter').AsFloat;
                                       end;
                                  end;
                             end;
                       end;
                  end;
               Ite_DataSet.Next;
            end;
        Ite_DataSet.First;

        while not cdsTempIte.eof do
            begin

              FatBusSaldoIte(Pai_DataSet.FieldByName('ID_EMPRESA').Text,
                             cdsTempIte.FieldByName('id_item').AsString,
                             cdsTempIte.FieldByName('id_cor').AsString,
                             cdsTempIte.FieldByName('id_tamanho').AsString,
                             cdsTempIte.FieldByName('id_almoxarifado').text,
                             EST_DP_M_FES, EST_DP_M_FES_ALM,
                             BUS_CD_C_PAR_CTR,
                             saldo_fisico);

               if cdsTempIte.FieldByName('qtde_atual').AsFloat > (saldo_fisico + cdsTempIte.FieldByName('qtde_anter').AsFloat) then
                  begin
                    if not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                       begin
                         mens := 'Item: ' + cdsTempIte.FieldByName('id_item').AsString + ', sem saldo';

                         if (StrToInt(IdCor) > 0) and (StrToInt(IdTamanho) > 0) then
                            begin
                               mens := 'Item: ' + IdItem + ' - Cor: ' +
                                         cdsTempIte.FieldByName('IntNomeCor').AsString + ' - Tamanho: ' + cdsTempIte.FieldByName('IntNomeTam').AsString + ', sem saldo';
                            end
                         else
                            begin
                              if (StrToInt(IdCor) > 0)  then
                                  begin
                                     mens := 'Item: ' + cdsTempIte.FieldByName('id_item').AsString + ' - Cor: ' +
                                               cdsTempIte.FieldByName('IntNomeCor').AsString + ', sem saldo';
                                  end;

                              if (StrToInt(IdTamanho) > 0) then
                                  begin
                                     mens := 'Item: ' + cdsTempIte.FieldByName('id_item').AsString + ' - Tamanho: ' + cdsTempIte.FieldByName('IntNomeTam').AsString + ', sem saldo';
                                  end;
                            end;

                         if result = '' then
                            result :=  #13 + mens
                         else
                            result :=  result + #13 + mens;
                       end;
                  end;
               cdsTempIte.Next;
            end;

      if not cdsTempIte.IsEmpty then
         begin
           cdsTempIte.EmptyDataSet;
         end;

      finally
        cdsTempIte.Free;
      end;        }
      //                                                             ^
      // Este código comentado foi substituído pelo código logo acima |
      {  while not Ite_DataSet.eof do
            begin
               if not (Ite_DataSet.UpdateStatus in [usDeleted]) then
                  begin            
                    IdItem         := Ite_DataSet.FieldByName('ID_ITEM').Text;
                    IdCor          := Ite_DataSet.FieldByName('ID_COR').Text;
                    IntNomeCor     := Ite_DataSet.FieldByName('INT_NOMECOR').Text;
                    IdTamanho      := Ite_DataSet.FieldByName('ID_TAMANHO').Text;
                    IntNomeTam     := Ite_DataSet.FieldByName('INT_NOMETAM').Text;  
                    IdAlmoxarifado := Pai_DataSet.FieldByName('ID_ALMOXARIFADO').Text;
                    QtdeAnt        := Ite_DataSet.FieldByName('QTDE').AsFloat;
                    QtdeAtual      := Ite_DataSet.FieldByName('QTDE').AsFloat;

                    // INSERÇÃO DO ITEM
                    if Ite_DataSet.UpdateStatus in [usInserted] then
                       begin
                         if Ite_DataSet.FieldByName('int_tipo_item').AsInteger <> 9 then // Se não for serviço
                            begin                 
                              FatBusSaldoIte(Pai_DataSet.FieldByName('ID_EMPRESA').Text,
                                             IdItem,IdCor,IdTamanho,
                                             IdAlmoxarifado,
                                             EST_DP_M_FES, EST_DP_M_FES_ALM,
                                             BUS_CD_C_PAR_CTR,
                                             saldo_fisico);


                              if Ite_DataSet.FieldByName('QTDE').AsFloat > saldo_fisico then
                                 begin
                                   if not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                                      begin
                                        mens :=  'Item: ' + IdItem + ', sem saldo';

                                        if (StrToInt(IdCor) > 0) and (StrToInt(IdTamanho) > 0) then
                                            begin
                                               mens := 'Item: ' + IdItem + ' - Cor: ' +
                                                         IntNomeCor + ' - Tamanho: ' + IntNomeTam + ', sem saldo';
                                            end
                                        else
                                            begin
                                              if (StrToInt(IdCor) > 0)  then
                                                  begin
                                                     mens := 'Item: ' + IdItem + ' - Cor: ' +
                                                               IntNomeCor + ', sem saldo';
                                                  end;

                                              if (StrToInt(IdTamanho) > 0) then
                                                  begin
                                                     mens := 'Item: ' + IdItem + ' - Tamanho: ' + IntNomeTam + ', sem saldo';
                                                  end;                                                  
                                            end;
                                        if result = '' then
                                           result :=  #13 + mens
                                        else
                                           result :=  result + #13 + mens;
                                      end;
                                 end;
                             end;
                       end;

                    // ALTERAÇÃO DO ITEM
                    if Ite_DataSet.UpdateStatus in [usUnmodified] then // Se o registro teve modificações
                       begin
                         Ite_DataSet.Next;

                         if Ite_DataSet.UpdateStatus in [usmodified] then // Se é o registro modificado do usUnModified
                            begin                                              

                              if Ite_DataSet.FieldByName('QTDE').AsFloat > 0 then
                                 begin

                                   QtdeAtual := Ite_DataSet.FieldByName('QTDE').AsFloat;

                                   if Ite_DataSet.FieldByName('ID_COR').AsInteger > 0 then
                                      begin
                                        IdCor       := Ite_DataSet.FieldByName('ID_COR').Text;
                                        IntNomeCor  := Ite_DataSet.FieldByName('INT_NOMECOR').Text;                                         
                                        QtdeAnt := 0;
                                      end;

                                   if Ite_DataSet.FieldByName('ID_TAMANHO').AsInteger > 0 then
                                      begin                                  
                                        IdTamanho      := Ite_DataSet.FieldByName('ID_TAMANHO').Text;
                                        IntNomeTam     := Ite_DataSet.FieldByName('INT_NOMETAM').Text;  
                                        QtdeAnt := 0;
                                      end;
                  
                                   FatBusSaldoIte(Pai_DataSet.FieldByName('ID_EMPRESA').Text,IdItem,IdCor,
                                                  IdTamanho,IdAlmoxarifado,
                                                  EST_DP_M_FES, EST_DP_M_FES_ALM,
                                                  BUS_CD_C_PAR_CTR,
                                                  saldo_fisico);   
                                                                                            
                                   if QtdeAnt > 0 then
                                      begin
                                        saldo_fisico := saldo_fisico + QtdeAnt;
                                      end;


                                   if QtdeAtual > saldo_fisico then
                                      begin
                                        if not BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                                           begin
                                             mens := 'Item: ' + IdItem + ', sem saldo';

                                             if (StrToInt(IdCor) > 0) and (StrToInt(IdTamanho) > 0) then
                                                begin
                                                   mens := 'Item: ' + IdItem + ' - Cor: ' +
                                                             IntNomeCor + ' - Tamanho: ' + IntNomeTam + ', sem saldo';
                                                end
                                             else
                                                begin
                                                  if (StrToInt(IdCor) > 0)  then
                                                      begin
                                                         mens := 'Item: ' + IdItem + ' - Cor: ' +
                                                                   IntNomeCor + ', sem saldo';
                                                      end;

                                                  if (StrToInt(IdTamanho) > 0) then
                                                      begin
                                                         mens := 'Item: ' + IdItem + ' - Tamanho: ' + IntNomeTam + ', sem saldo';
                                                      end;
                                                end;

                                             if result = '' then
                                                result :=  #13 + mens
                                             else
                                                result :=  result + #13 + mens;
                                           end;
                                      end;
                                 end;
                            end;
                       end;
                  end;
               Ite_DataSet.Next;
            end;}
   {   end;

   if result = '' then
      begin
        result := 'OK';
      end;  }
end;

function  FatVerfifSaldoIte(tipo: integer; EST_CD_M_FES,EST_CD_M_FES_ALM,EST_CD_M_LOT: TClientDataSet): boolean;
var
  mens: string;
  cor,tamanho, almoxarifado, numLote: string;
begin

   { TODO -oMaxsuel -cCriação : Método criado em 31/08/2015; }

  {tipo:
     1 - Testar o FES;
     2 - Testar o FES_ALM;
     3 - Testar o Lote;
     }

       case tipo of
         1:
           begin
              if EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency < 0 then
                 begin
                   if EST_CD_M_FES.FieldByName('int_nomecor').AsString <> '' then
                      begin
                        cor := ' - Cor: ' + EST_CD_M_FES.FieldByName('int_nomecor').AsString;
                      end;
                   if EST_CD_M_FES.FieldByName('int_nometam').AsString <> '' then
                      begin
                        tamanho := ' - Tamanho: ' + EST_CD_M_FES.FieldByName('int_nometam').AsString;
                      end;
                   mens := 'Item: ' + EST_CD_M_FES.FieldByName('ID_ITEM').AsString + cor + tamanho + ' , sem saldo ';

                   EST_CD_M_FES.Cancel;
                 end;
           end;
          2:
           begin
              if EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency < 0 then
                 begin
                   if EST_CD_M_FES_ALM.FieldByName('int_nomealm').AsString <> '' then
                      begin
                        almoxarifado := ' - Almoxarifado: ' + EST_CD_M_FES_ALM.FieldByName('int_nomealm').AsString;
                      end;

                   if EST_CD_M_FES_ALM.FieldByName('int_nomecor').AsString <> '' then
                      begin
                        cor := ' - Cor: ' + EST_CD_M_FES_ALM.FieldByName('int_nomecor').AsString;
                      end;
                   if EST_CD_M_FES_ALM.FieldByName('int_nometam').AsString <> '' then
                      begin
                        tamanho := ' - Tamanho: ' + EST_CD_M_FES_ALM.FieldByName('int_nometam').AsString;
                      end;
                   mens := 'Item: ' + EST_CD_M_FES_ALM.FieldByName('ID_ITEM').AsString + almoxarifado + cor + tamanho + ' , sem saldo ';

                   EST_CD_M_FES_ALM.Cancel;
                   EST_CD_M_FES.Cancel;
                 end;
           end;
           3:
           begin
              if EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency < 0 then
                 begin

                   numLote := ' - Nro lote: ' + EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;


                   if EST_CD_M_LOT.FieldByName('int_nomealm').AsString <> '' then
                      begin
                        almoxarifado := ' - Almoxarifado: ' + EST_CD_M_LOT.FieldByName('int_nomealm').AsString;
                      end;

                   if EST_CD_M_LOT.FieldByName('int_nomecor').AsString <> '' then
                      begin
                        cor := ' - Cor: ' + EST_CD_M_LOT.FieldByName('int_nomecor').AsString;
                      end;
                   if EST_CD_M_LOT.FieldByName('int_nometam').AsString <> '' then
                      begin
                        tamanho := ' - Tamanho: ' + EST_CD_M_LOT.FieldByName('int_nometam').AsString;
                      end;
                   mens := 'Item: ' + EST_CD_M_LOT.FieldByName('ID_ITEM').AsString + almoxarifado + cor + tamanho + ' , sem saldo ';

                   EST_CD_M_LOT.Cancel;
                   if EST_CD_M_FES_ALM <> nil then
                      EST_CD_M_FES_ALM.Cancel;
                   EST_CD_M_FES.Cancel;
                 end;
           end;
       end;

      if trim(mens) <> '' then
         begin
           raise Exception.Create(mens);
         end;
end;

function  FatBusTriReg(BUS_DP_C_TRI_REG: TDataSetProvider; id_tributo, id_tipo_mov_estoque, uf,id_empresa: String): OleVariant;
var
  BUS_CD_C_TRI_REG: TClientDataSet;
begin

  try
    BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);
    BUS_CD_C_TRI_REG.SetProvider(BUS_DP_C_TRI_REG);
    BUS_CD_C_TRI_REG.Close;
    BUS_CD_C_TRI_REG.Data :=
               BUS_CD_C_TRI_REG.DataRequest(VarArrayOf([id_tributo,id_tipo_mov_estoque,uf,id_empresa]));
    // Novo código inserido dia 11/08/2014 por Maxsuel Victor devido mudanças feita por Mariel.
    if BUS_CD_C_TRI_REG.IsEmpty then
       begin
         BUS_CD_C_TRI_REG.Close;
         freeAndNil(BUS_CD_C_TRI_REG);
         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);
         BUS_CD_C_TRI_REG.SetProvider(BUS_DP_C_TRI_REG);
         BUS_CD_C_TRI_REG.Data :=
             BUS_CD_C_TRI_REG.DataRequest(VarArrayOf([id_tributo,id_tipo_mov_estoque,'XX',id_empresa]));
       end;

    result := BUS_CD_C_TRI_REG.Data;

  finally
    FreeAndNil(BUS_CD_C_TRI_REG);
  end;
end;

function FatBuscarCfoIte(DocIE,UFEmitente: String; RegimeSimples: Boolean; CdsPai,CdsItens: TDataSet; BUS_CD_C_TRI_REG,BUS_CD_C_CLI:TClientDataSet): String;
var
   qry:TSQLQuery;
   uf_empresa, uf_cliente, cst_icms: String;
   pessoa: integer;
begin

  try

  qry:=TSqlQuery.Create(nil);
  qry.SQLConnection:=xConn;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('Select * from CAD_TB_C_TME where id_tipo_mov_estoque='''+CdsPai.FieldByName('id_tipo_mov_estoque').AsString+''' ');
  qry.Open;


  if ((trim(DocIE) <> '') and (trim(DocIE) <> 'ISENTO')) then
       begin
         if RegimeSimples then
            CdsItens.FieldByName('ID_ST_ICM').AsString  :=
                      trim(BUS_CD_C_TRI_REG.FieldByName('cnt_csosn').Text)
         else
            CdsItens.FieldByName('ID_ST_ICM').AsString  :=
                      trim(BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').Text);
      end
  else
      begin
         if RegimeSimples then
            CdsItens.FieldByName('ID_ST_ICM').AsString :=
                      trim(BUS_CD_C_TRI_REG.FieldByName('nct_csosn').Text)
         else
            CdsItens.FieldByName('ID_ST_ICM').AsString :=
                      trim(BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').Text);
      end;

  cst_icms   := CdsItens.FieldByName('ID_ST_ICM').AsString;
  uf_empresa := cdsPai.FieldByName('uf_empresa').AsString;
  uf_cliente := cdsPai.FieldByName('uf_emitente').AsString;
  pessoa     := BUS_CD_C_CLI.FieldByName('pessoa').AsInteger;


  if ((qry.FieldByName('TIPO_MOVIMENTO').AsInteger = 1) and
      (qry.FieldByName('INDICADOR').AsInteger      in [0,2])) or
      ((qry.FieldByName('TIPO_MOVIMENTO').AsInteger = 0) and
      (qry.FieldByName('INDICADOR').AsInteger      = 1)) then
     begin


         if (CdsItens.FieldByName('int_tipo_item').AsString = '09') then
           begin
              if uf_empresa = uf_cliente then
                begin
                  result := qry.FieldByName('cfo_servico_dentro').Text;
                end;

              if uf_empresa <> uf_cliente then
                begin
                  result := qry.FieldByName('cfo_servico_fora').Text;
                end;
           end;

         if (CdsItens.FieldByName('int_tipo_item').AsString <> '09') then
           begin
            if (pos(cst_icms,'10-30-60-70') <> 0) then
              begin
                if uf_empresa = uf_cliente then
                    begin
                     if pessoa = 0 then
                       begin
                        result := qry.FieldByName('cfo_interno_icm_s_pf').Text;
                       end
                     else
                       begin
                        if pessoa = 1 then
                          begin
                            result := qry.FieldByName('cfo_interno_icm_s_pj').Text;
                          end
                       end;
                end;

              if uf_empresa <> uf_cliente then
                begin
                 if pessoa = 0 then
                   begin
                    result := qry.FieldByName('cfo_externo_icm_s_pf').Text;
                   end
                 else
                   begin
                     if pessoa = 1 then
                      begin
                        result := qry.FieldByName('cfo_externo_icm_s_pj').Text;
                     end
                   end;
                end;

              end
            else
              begin
                if uf_empresa = uf_cliente then
                begin
                 if pessoa = 0 then
                   begin
                    result := qry.FieldByName('cfo_interno_pf').Text;
                   end
                 else
                   begin
                    if pessoa = 1 then
                      begin
                        result := qry.FieldByName('cfo_interno_pj').Text;
                      end
                   end;
                end;

              if uf_empresa <> uf_cliente then
                begin
                 if pessoa = 0 then
                   begin
                    result := qry.FieldByName('cfo_externo_pf').Text;
                   end
                 else
                   begin
                     if pessoa = 1 then
                      begin
                        result := qry.FieldByName('cfo_externo_pj').Text;
                     end
                   end;
                end;

              end;
           end;
     end;

  finally
    FreeAndNil(qry);
  end;

end;

function  AtuSeqItens(NomeSeq: String;QtdeItens: integer): Integer;
var
  qry:TSqlQuery;
  qryNova:TSqlQuery;
  xSeq:Integer;
begin
  { TODO -oMaxsuel -cCriação :
    Criado em 17/02/2016
     Método tem a função de atualizar a sequência de itens já especificando um intervalo maior. }
  qry:=TSqlQuery.Create(nil);
  qry.SQLConnection:=xConn;

  //qry.SQLConnection := BuscarConnBanco;

  qryNova:=TSqlQuery.Create(nil);
  qryNova.SQLConnection:=xConn;

  xSeq:=0;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('Select SEQUENCIA from CAD_TB_C_SEQ where ID_TABELA='''+NomeSeq+''' ');
  qry.Open;

  if not qry.IsEmpty then
     begin
       xSeq:=qry.FieldByName('Sequencia').AsInteger;
       result :=xSeq+1;
       xSeq   := xSeq + QtdeItens;
       qry.Close;
       qry.SQL.Clear;
       qry.SQL.Add('update CAD_TB_C_SEQ set SEQUENCIA='''+inttostr(xSeq)+''' ');
       qry.SQL.Add('where ID_TABELA='''+NomeSeq+''' ');
       qry.ExecSQL;
     end
   else
     begin
       qryNova.Close;
       qryNova.SQL.Clear;
       qryNova.SQL.Add('INSERT INTO CAD_TB_C_SEQ (ID_TABELA, SEQUENCIA) VALUES ('''+NomeSeq+''', '''+inttostr(QtdeItens)+''' ) ');
       qryNova.ExecSQL;
       result := 1;
     end;
  qry.Destroy();
  qryNova.Destroy();
end;

end.


