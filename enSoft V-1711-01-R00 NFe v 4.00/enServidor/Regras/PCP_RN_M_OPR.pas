unit PCP_RN_M_OPR;

interface

uses Classes,
     DBXCommon, SysUtils, Dialogs, enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,
     Data.SqlExpr;

procedure PCP_DP_M_OPR_REQUpdateData(Pai_DataSet: TCustomClientDataSet;
                                     CMP_DP_M_SOL,PCP_DP_M_OPR,
                                     EST_DP_M_FES_ALM: TDataSetProvider);

implementation

procedure PCP_DP_M_OPR_REQUpdateData(Pai_DataSet: TCustomClientDataSet;
                                     CMP_DP_M_SOL,PCP_DP_M_OPR,
                                     EST_DP_M_FES_ALM: TDataSetProvider);
var
  CMP_CD_M_SOL,PCP_CD_M_OPR: TClientDataSet;
  cds_OprReqIte: TDataSet;
begin

  { TODO -oMaxsuel  -cCriação : Criado em 05/08/2016, tem a função de criar a Solicitação de Compras. }

    // Descontinuado: Maxsuel conversou com Allison , resolveu ficar só na parte do Alerta de Estoque Mínimo

{   PCP_CD_M_OPR := TClientDataSet.Create(nil);
   PCP_CD_M_OPR.SetProvider(PCP_DP_M_OPR);
   PCP_CD_M_OPR.Close;
   PCP_CD_M_OPR.Data :=
       PCP_CD_M_OPR.DataRequest(VarArrayOf([6,Pai_DataSet.FieldByName('id_opr').AsString]));


   CMP_CD_M_SOL := TClientDataSet.Create(nil);
   CMP_CD_M_SOL.SetProvider(CMP_DP_M_SOL);

   if Pai_DataSet.UpdateStatus in [usUnmodified] then
      begin
        cds_OprReqIte := TDataSetField(Pai_DataSet.FieldByName('PCP_SQ_M_OPR_SEQ_ITE')).NestedDataSet;

        CMP_CD_M_SOL.Close;
        CMP_CD_M_SOL.Data :=
             CMP_CD_M_SOL.DataRequest(VarArrayOf([93,Pai_DataSet.FieldByName('id_opr').AsString,
                                                     Pai_DataSet.FieldByName('id_opr_req').AsString]));
        if Pai_DataSet.UpdateStatus in [usInserted] then
           begin
             CMP_CD_M_SOL.Insert;

             CMP_CD_M_SOL.FieldByName('id_solicitacao').AsInteger    := sm.enValorChave('CMP_TB_M_SOL');
             CMP_CD_M_SOL.FieldByName('id_empresa').AsInteger       := PCP_CD_M_OPR.FieldByName('id_empresa').AsInteger;
             CMP_CD_M_SOL.FieldByName('id_funcionario').AsInteger   := Pai_DataSet.FieldByName('id_responsavel').AsInteger;
             CMP_CD_M_SOL.FieldByName('id_setor').AsInteger         := PCP_CD_M_OPR.FieldByName('id_setor').AsInteger;
             CMP_CD_M_SOL.FieldByName('dta_solicitacao').AsDateTime := date;
             CMP_CD_M_SOL.FieldByName('status').AsInteger           := 0;
             CMP_CD_M_SOL.FieldByName('obs').AsString               := 'Solicitado pela ordem de produção: ' +
                                                                       PCP_CD_M_OPR.FieldByName('id_opr').AsString;


             CMP_CD_M_SOL.FieldByName('id_cotacao_imp').AsInteger   := 0;
             CMP_CD_M_SOL.FieldByName('id_pedido_imp').AsInteger    := 0;

             CMP_CD_M_SOL.FieldByName('id_op').AsInteger            := Pai_DataSet.FieldByName('id_opr').AsInteger;
             CMP_CD_M_SOL.FieldByName('id_opr_req').AsInteger       := Pai_DataSet.FieldByName('id_opr_req').AsInteger;


             while not cds_OprReqIte.Eof do
                begin
                   CMP_SQ_M_SOL_ITE.FieldByName('id_solicitacao').AsInteger      :=
                   CMP_SQ_M_SOL_ITE.FieldByName('id_item').AsInteger             :=
                   CMP_SQ_M_SOL_ITE.FieldByName('qtde').AsCurrency               :=
                   CMP_SQ_M_SOL_ITE.FieldByName('obs: TWideStringField;
                   CMP_SQ_M_SOL_ITE.FieldByName('id_cor').AsInteger              :=
                   CMP_SQ_M_SOL_ITE.FieldByName('id_tamanho').AsInteger          :=
                   CMP_SQ_M_SOL_ITE.FieldByName('id_busca_item: TWideStringField;
                end;

             CMP_CD_M_SOL.FieldByName('motivo').AsString            := ' ';


           end;
      end;}
end;

end.
