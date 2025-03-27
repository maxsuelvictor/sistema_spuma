unit FIN_RN_M_MCH;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

  function fin_dr_m_mch(Sender: TObject; Input: OleVariant;
                      FIN_SQ_M_MCH:Tsqldataset;
                      FIN_DP_M_MCH:TDataSetProvider): OleVariant;

  procedure FIN_DP_M_MCHUpdateData(DataSet: TCustomClientDataSet; CAD_DP_C_FPG, CAD_DP_C_TIF,CAD_DP_C_CTC,
            BUS_DP_M_MCH_CHE_INT, BUS_DP_M_REC_HCH_INT, FIN_DP_M_REC, FIN_DP_M_REC_PAG,
             FIN_DP_M_CTA, BUS_DP_C_PAR_CTR,BUS_DP_M_REC_INT: TDataSetProvider; SM:TSM);


implementation

uses enConstantes, FIN_RN_M_CTA_CTA, enSC;


function fin_dr_m_mch(Sender: TObject; Input: OleVariant;
                      FIN_SQ_M_MCH:Tsqldataset;
                      FIN_DP_M_MCH:TDataSetProvider): OleVariant;
function enSqlMch: String;
   begin
   { TODO -oMariel -cRotina :Regra de Banco 02/11/2014 : 08:11 }
    Result :=
       ' select mch.*,                          ' +
       '  cast(  case operacao                  ' +
       '     when 1  then ''Depositar''         ' +
       '     when 2 then ''Devolver''           ' +
       '     when 3 then ''Pagar parcial''      ' +
       '     when 4 then ''Resgatar''           ' +
       '  end as varchar(20) ) as int_operacao, ' +
       ' cli.nome as int_nomecli, ' +
       ' ctc.descricao as int_conta_descricao,  '+
       ' ctc.banco as int_conta_banco,          '+
       ' ctc.agencia as int_conta_agencia,      '+
       ' ctc.conta_corrente as int_contacorrente,  '+
       ' fci.nome as int_nomeresp ' +
       ' from fin_tb_m_mch mch    ' +
       '      left outer join cad_tb_c_fun fci on  ' +
       '           (mch.id_responsavel = fci.id_funcionario) ' +
       '      left outer join cad_tb_c_cli cli on  '  +
       '           (cli.id_cliente = mch.id_cliente) '+
       '      left outer join cad_tb_c_ctc ctc on ctc.id_conta=mch.id_conta ' ;
   end;
begin

   { TODO -oMariel -cCriação : Criado por Mariel em 20-12-2014 }
   FIN_SQ_M_MCH.Close;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           FIN_SQ_M_MCH.CommandText := enSqlMch + ' WHERE 1=2 '
        else
           FIN_SQ_M_MCH.CommandText := enSqlmch +
             ' WHERE mch.id_controle = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 1 then
      begin
        FIN_SQ_M_MCH.CommandText := enSqlMch +
             ' WHERE mch.dta_movimento = ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])) ) +''' ';
      end
   else if Input[0] = 2 then
      begin
        FIN_SQ_M_MCH.CommandText := enSqlMch +
          Format('WHERE upper(mch.observacoes) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]);
      end
   else if Input[0] = 3 then
      begin
        FIN_SQ_M_MCH.CommandText := enSqlMch +
             ' WHERE mch.id_conta = ''' + VarToStr(Input[1]) +''' ';
      end;
   Result := FIN_DP_M_MCH.Data;
end;

procedure FIN_DP_M_MCHUpdateData(DataSet: TCustomClientDataSet; CAD_DP_C_FPG, CAD_DP_C_TIF,CAD_DP_C_CTC,
                                 BUS_DP_M_MCH_CHE_INT, BUS_DP_M_REC_HCH_INT, FIN_DP_M_REC,
                                  FIN_DP_M_REC_PAG, FIN_DP_M_CTA, BUS_DP_C_PAR_CTR,BUS_DP_M_REC_INT: TDataSetProvider;SM:TSM);
var
   CAD_CD_C_FPG, CAD_CD_C_CTC, CAD_CD_C_TIF: TClientDataSet;
   BUS_CD_M_MCH_CHE_INT,BUS_CD_M_REC_HCH_INT,BUS_CD_M_REC_INT: TClientDataSet;
   FIN_CD_M_REC,FIN_CD_M_REC_PAG, FIN_CD_M_CTA,  BUS_CD_C_PAR_CTR: TClientDataSet;
   mch_che_DataSet,mch_tit_DataSet: TDataSet;
   FormaPagMch,TipoFin,DebCre, SituacaoChq,SituacaoChqAnt: integer;
   Plano,Historico,xTitulos,obs: String;
   NewIdRecibo:string;
begin

   { TODO -oMaxsuel -cCriação : Método criado em 20/07/2015 }

   //Se ocorrer alteração do registro que seja somente id_recibo, esse if
   //evita que seja executado todo o codigo desse metodo.Responsavel:Luan.Data:19/03/2016
   if dataset.UpdateStatus in [usUnmodified] then
      begin
         NewIdRecibo := '';
         dataset.next;
         if (trim(dataset.FieldByName('ID_RECIBO').AsString) <> '') then
           begin
            NewIdRecibo := dataset.FieldByName('ID_RECIBO').AsString;
           end;
         dataset.Prior;
         if (NewIdRecibo <> '') then
           begin
             exit;
           end;
      end;


   // Buscar dados do parâmetros de controle
   BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
   BUS_CD_C_PAR_CTR.Close;
   BUS_CD_C_PAR_CTR.Data :=
       BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('ID_EMPRESA').AsString]));

   try

   CAD_CD_C_CTC := TClientDataSet.Create(nil);
   CAD_CD_C_TIF := TClientDataSet.Create(nil);
   CAD_CD_C_FPG := TClientDataSet.Create(nil);
   FIN_CD_M_REC := TClientDataSet.Create(nil);
   FIN_CD_M_REC_PAG := TClientDataSet.Create(nil);
   BUS_CD_M_MCH_CHE_INT := TClientDataSet.Create(nil);
   BUS_CD_M_REC_HCH_INT := TClientDataSet.Create(nil);
   BUS_CD_M_REC_INT := TClientDataSet.Create(nil);

   if (DataSet.UpdateStatus in [usInserted]) then
       begin
         mch_tit_DataSet := TDataSetField(DataSet.FieldByName('FIN_SQ_M_MCH_TIT')).NestedDataSet;


         //Historico de pagamentos oriundo da movimentação de cheque
         FIN_CD_M_REC_PAG.SetProvider(FIN_DP_M_REC_PAG);
         FIN_CD_M_REC_PAG.Close;
         FIN_CD_M_REC_PAG.Data :=
         FIN_CD_M_REC_PAG.DataRequest(
              VarArrayOf([4,dataset.FieldByName('id_controle').AsInteger]));

         FIN_CD_M_CTA := TClientDataSet.Create(nil);
         FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
         FIN_CD_M_CTA.Close;
         FIN_CD_M_CTA.Data :=
              FIN_CD_M_CTA.DataRequest(VarArrayOf([0,'']));

         CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);
         CAD_CD_C_CTC.Close;
         CAD_CD_C_CTC.Data :=
            CAD_CD_C_CTC.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_CONTA').AsString]));


         Historico   := 'Ref. a mov. de cheque: ' + dataset.FieldByName('id_controle').AsString;

         FormaPagMch := BUS_CD_C_PAR_CTR.FieldByName('mch_id_forma_pag').AsInteger;
         if DataSet.FieldByName('operacao').AsInteger = 1 then  // Depositar
            begin

              CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
              CAD_CD_C_TIF.Close;
              CAD_CD_C_TIF.Data :=
                  CAD_CD_C_TIF.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_dep').AsInteger]));

              TipoFin   := BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_dep').AsInteger;
              DebCre    := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
              Plano     := BUS_CD_C_PAR_CTR.FieldByName('mch_id_plano_dep').AsString;
            end;

         if DataSet.FieldByName('operacao').AsInteger = 2 then  // Devolver
            begin

              CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
              CAD_CD_C_TIF.Close;
              CAD_CD_C_TIF.Data :=
                  CAD_CD_C_TIF.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_dev').AsInteger]));

              TipoFin   := BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_dev').AsInteger;
              DebCre    := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
              Plano     := BUS_CD_C_PAR_CTR.FieldByName('mch_id_plano_dev').AsString;
            end;

         if DataSet.FieldByName('operacao').AsInteger in [3,4] then  // Pagar parcial ou Resgatar
            begin
              CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
              CAD_CD_C_TIF.Close;
              CAD_CD_C_TIF.Data :=
                  CAD_CD_C_TIF.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_ppr').AsInteger]));

              TipoFin   := BUS_CD_C_PAR_CTR.FieldByName('mch_id_tif_ppr').AsInteger;
              DebCre    := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
              Plano     := BUS_CD_C_PAR_CTR.FieldByName('mch_id_plano_ppr').AsString;

              FormaPagMch := mch_tit_DataSet.FieldByName('id_forma_pag').AsInteger;
            end;
         xTitulos := '';

         mch_che_DataSet := TDataSetField(DataSet.FieldByName('FIN_SQ_M_MCH_CHE')).NestedDataSet;
         while not (mch_che_DataSet.Eof)  do
            begin
               if xTitulos <> '' then
                  begin
                    xTitulos :=
                    xTitulos + ',' +''''+ mch_che_DataSet.FieldByName('ID_TITULO').AsString+'''';
                  end;
               if xTitulos = '' then
                  begin
                    xTitulos :=
                    xTitulos +''''+ mch_che_DataSet.FieldByName('ID_TITULO').AsString+'''';
                  end;
               mch_che_DataSet.Next;
            end;
         // Busca os cheques
         FIN_CD_M_REC.SetProvider(FIN_DP_M_REC);
         FIN_CD_M_REC.Close;
         FIN_CD_M_REC.Data :=
             FIN_CD_M_REC.DataRequest(VarArrayOf([91, xTitulos]));

         // Rastro do cheque
         BUS_CD_M_REC_HCH_INT.SetProvider(BUS_DP_M_REC_HCH_INT);
         BUS_CD_M_REC_HCH_INT.Close;
         BUS_CD_M_REC_HCH_INT.Data :=
             BUS_CD_M_REC_HCH_INT.DataRequest(VarArrayOf([0,xTitulos]));

         mch_che_DataSet.First;
         while not mch_che_DataSet.eof do
             begin
               if DataSet.FieldByName('operacao').AsInteger in [1,2] then  // Depositar ou Devolver o cheque
                  begin
                    FIN_CD_M_CTA.Insert;
                    FIN_CD_M_CTA.FieldByName('id_controle').AsInteger        := sm.enValorChave('FIN_TB_M_CTA');
                    FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger        := 0;
                    FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('id_empresa').AsInteger;
                    FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger    := CAD_CD_C_CTC.FieldByName('tipo').AsInteger;   //0-caixa 1-banco
                    FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime    := dataset.FieldByName('dta_movimento').AsDateTime;
                    FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime     := dataset.FieldByName('dta_movimento').AsDateTime;//antes era horario do sistema
                    FIN_CD_M_CTA.FieldByName('num_doc').AsInteger            := dataset.FieldByName('id_controle').AsInteger;
                    if FIN_CD_M_REC.Locate('ID_TITULO',mch_che_DataSet.FieldByName('ID_TITULO').AsInteger,[]) then
                      begin
                          Historico   := 'Ref. Mov Cheque de Cód. ' + dataset.FieldByName('id_controle').AsString+
                                             ' - Cheque de Nº '+ trim(FIN_CD_M_REC.FieldByName('che_cheque').AsString);
                      end;
                    FIN_CD_M_CTA.FieldByName('historico').AsString           := historico;
                    FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency    := mch_che_DataSet.FieldByName('vlr_pago').AsCurrency+
                                                                                mch_che_DataSet.FieldByName('vlr_juros').AsCurrency;

                    FIN_CD_M_CTA.FieldByName('origem').AsInteger             := 9; // Movimentação de cheque
                    FIN_CD_M_CTA.FieldByName('id_conta').AsInteger           := dataset.FieldByName('id_conta').AsInteger;
                    FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger := TipoFin;
                    FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger            := DebCre;
                    FIN_CD_M_CTA.FieldByName('id_plano').AsString            := Plano;
                    FIN_CD_M_CTA.FieldByName('conciliado').Asboolean         := false;
                    FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger          := 0;
                    FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger      := 0;
                    FIN_CD_M_CTA.FieldByName('id_credito').AsInteger         := 0;
                    FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
                    FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
                    FIN_CD_M_CTA.FieldByName('id_mch').AsInteger             := dataset.FieldByName('id_controle').AsInteger;
                    FIN_CD_M_CTA.Post;
                  end;
               // Irá atualizar o saldo do título independente da OPERAÇÃO da movimentação.
               if FIN_CD_M_REC.Locate('ID_TITULO',mch_che_DataSet.FieldByName('ID_TITULO').AsInteger,[]) then
                  begin
                      {1 - Em aberto
                       2 - Depositado
                       3 - Devolvido
                       4 - Parcial
                       5 - Resgatado
                       6 - Compensado}

                    SituacaoChq := DataSet.FieldByName('operacao').AsInteger + 1;

                    FIN_CD_M_REC.Edit;
                    if DataSet.FieldByName('operacao').AsInteger in [1,3,4] then  // Depositar, Resgate ou Pagto parcial
                       begin
                         FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                              FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency -
                              mch_che_DataSet.FieldByName('VLR_PAGO').AsCurrency;
                       end;
                    if DataSet.FieldByName('operacao').AsInteger in [2] then  // Devolver o cheque
                       begin
                         FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                              FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency   +
                              mch_che_DataSet.FieldByName('VLR_PAGO').AsCurrency;
                       end;
                    SituacaoChqAnt := FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger;
                    FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger := SituacaoChq;

                    FIN_CD_M_REC.Post;

                    // Irá registrar o pagamento deste título para as OPERAÇÕES ABAIXO e em cima
                    // dos registros do MCH_CHE
                    if DataSet.FieldByName('operacao').AsInteger in [1,3,4] then  // Depósito, Pagar parcial ou Resgate
                       begin
                          FIN_CD_M_REC_PAG.Append;
                          FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsInteger           :=
                                    mch_che_DataSet.FieldByName('ID_TITULO').AsInteger;
                          FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger            :=
                                    sm.enValorChave('FIN_TB_M_RBX');

                          FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger         := DataSet.FieldByName('id_abertura').AsInteger;

                          FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime      :=
                                    DataSet.FieldByName('dta_movimento').AsDateTime;
                          FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency      :=
                                    mch_che_DataSet.FieldByName('VLR_PAGO').asCurrency+mch_che_DataSet.FieldByName('vlr_juros').AsCurrency;
                          FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat             := 0;
                          FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency          := mch_che_DataSet.FieldByName('vlr_juros').AsCurrency;
                          FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency       := 0;
                          FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;
                          FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString            := Historico;
                          FIN_CD_M_REC_PAG.FieldByName('ID_RESPONSAVEL').AsInteger      :=
                                    Dataset.FieldByName('id_responsavel').AsInteger;
                          FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger        := FormaPagMch;
                          FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString             := Plano;
                          FIN_CD_M_REC_PAG.FieldByName('ORIGEM').AsInteger              := 2; // Movimento de cheque
                          FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean    := false;

                          if DataSet.FieldByName('operacao').AsInteger in [3,4] then    // Pagar parcial ou Resgate
                             begin
                               CAD_CD_C_FPG := TClientDataSet.Create(nil);
                               CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                               CAD_CD_C_FPG.Close;
                               CAD_CD_C_FPG.Data :=
                                   CAD_CD_C_FPG.DataRequest(VarArrayOf([0,mch_tit_DataSet.FieldByName('id_forma_pag').AsInteger]));

                               if CAD_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then
                                  begin
                                    FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean := true;
                                  end;
                               CAD_CD_C_FPG.Close;
                               FreeAndNil(CAD_CD_C_FPG);
                             end;

                          FIN_CD_M_REC_PAG.FieldByName('id_mch').AsInteger              := dataset.FieldByName('id_controle').AsInteger;
                          FIN_CD_M_REC_PAG.Post;
                       end;

                     BUS_CD_M_REC_HCH_INT.Insert;
                     BUS_CD_M_REC_HCH_INT.FieldByName('ID_TITULO').AsInteger        := mch_che_DataSet.FieldByName('id_titulo').AsInteger;
                     BUS_CD_M_REC_HCH_INT.FieldByName('ID_MCH').AsInteger           := DataSet.FieldByName('id_controle').AsInteger;
                     BUS_CD_M_REC_HCH_INT.FieldByName('dta_movimento').AsDateTime   := dataset.FieldByName('dta_movimento').AsDateTime;
                     BUS_CD_M_REC_HCH_INT.FieldByName('hor_movimento').AsDateTime   := dataset.FieldByName('hor_movimento').AsDateTime;
                     BUS_CD_M_REC_HCH_INT.FieldByName('situacao_chq_ant').AsInteger := SituacaoChqAnt;
                     BUS_CD_M_REC_HCH_INT.FieldByName('situacao_chq').AsInteger     := SituacaoChq;
                     BUS_CD_M_REC_HCH_INT.FieldByName('operacao').AsInteger         := DataSet.FieldByName('OPERACAO').AsInteger;
                     BUS_CD_M_REC_HCH_INT.FieldByName('id_responsavel').AsInteger   := DataSet.FieldByName('ID_RESPONSAVEL').AsInteger;
                     BUS_CD_M_REC_HCH_INT.Post;
                  end;
               mch_che_DataSet.Next;
             end;

         if DataSet.FieldByName('operacao').AsInteger in [3,4] then  // Pagar parcial ou Resgate
            begin
              // Comentado por Maxsuel, esta linha está mais acima.
              //mch_tit_DataSet := TDataSetField(DataSet.FieldByName('FIN_SQ_M_MCH_TIT')).NestedDataSet;

              mch_tit_DataSet.First;

              while not mch_tit_DataSet.eof do
                  begin
                    CAD_CD_C_FPG := TClientDataSet.Create(nil);
                    CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
                    CAD_CD_C_FPG.Close;
                    CAD_CD_C_FPG.Data :=
                        CAD_CD_C_FPG.DataRequest(VarArrayOf([0,mch_tit_DataSet.FieldByName('id_forma_pag').AsInteger]));


                    if CAD_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4,6] then
                       // Duplicata, Promissoria, Boleto , Cheque
                       begin
                          // Gerarando o título
                          FIN_CD_M_REC.Insert;
                          FIN_CD_M_REC.FieldByName('id_empresa').AsInteger      := dataset.FieldByName('ID_EMPRESA').AsInteger;
                          FIN_CD_M_REC.FieldByName('ID_TITULO').AsInteger       := mch_tit_DataSet.FieldByName('id_titulo').AsInteger;
                          FIN_CD_M_REC.FieldByName('id_mch').AsInteger          := DataSet.FieldByName('ID_CONTROLE').AsInteger;
                          FIN_CD_M_REC.FieldByName('id_baixa').AsInteger        := 0;
                          FIN_CD_M_REC.FieldByName('id_fiscal').AsInteger       := 0;
                          FIN_CD_M_REC.FieldByName('id_plano').AsString         := Plano;
                          FIN_CD_M_REC.FieldByName('id_cliente').AsInteger      := dataset.FieldByName('ID_CLIENTE').AsInteger;
                          FIN_CD_M_REC.FieldByName('num_parcela').AsString      := mch_tit_DataSet.FieldByName('num_parcela').AsString;
                          FIN_CD_M_REC.FieldByName('dta_emissao').AsDateTime    := DataSet.FieldByName('dta_movimento').AsDateTime;
                          FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime := mch_tit_DataSet.FieldByName('dta_vencimento').AsDateTime;
                          FIN_CD_M_REC.FieldByName('dta_original').AsDateTime   := mch_tit_DataSet.FieldByName('dta_vencimento').AsDateTime;
                          FIN_CD_M_REC.FieldByName('vlr_original').AsCurrency   := mch_tit_DataSet.FieldByName('vlr_total').AsCurrency;
                          FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency    := mch_tit_DataSet.FieldByName('vlr_total').AsCurrency;
                          if CAD_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 5 then // Dinheiro
                             FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency   := 0
                          else
                          FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency      := mch_tit_DataSet.FieldByName('vlr_total').AsCurrency;

                          FIN_CD_M_REC.FieldByName('historico').AsString        :=  Historico;
                          // Origem
                             // 0 - Manual
                             // 1 - Baixa do contas a receber
                             // 2 - Nota Fiscal de Saída
                             // 3 - Movimento de cheque
                          FIN_CD_M_REC.FieldByName('origem').AsInteger          := 3;
                          FIN_CD_M_REC.FieldByName('id_forma_pag').AsInteger    := mch_tit_DataSet.FieldByName('id_forma_pag').AsInteger;
                          FIN_CD_M_REC.FieldByName('id_local_titulo').AsString  := CAD_CD_C_FPG.FieldByName('id_local_titulo').AsString;
                          // Tipo lançamento
                             // 0 - Manual
                             // 1 - Automática
                          FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger := 1;
                          FIN_CD_M_REC.FieldByName('che_banco').AsString        := mch_tit_DataSet.FieldByName('che_banco').AsString;
                          FIN_CD_M_REC.FieldByName('che_agencia').AsString      := mch_tit_DataSet.FieldByName('che_agencia').AsString;
                          FIN_CD_M_REC.FieldByName('che_conta').AsString        := mch_tit_DataSet.FieldByName('che_conta').AsString;
                          FIN_CD_M_REC.FieldByName('che_cheque').AsInteger      := mch_tit_DataSet.FieldByName('che_numero').AsInteger;
                          FIN_CD_M_REC.FieldByName('che_emitente').AsString     := mch_tit_DataSet.FieldByName('che_emitente').AsString;

                          if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                            FIN_CD_M_REC.FieldByName('situacao_chq').AsInteger :=   1;

                          FIN_CD_M_REC.Post;
                       end;


                    if CAD_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 5 then // Dinheiro
                       begin
                        {FIN_CD_M_REC_PAG.Append;
                        FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsInteger           :=
                                  FIN_CD_M_REC.FieldByName('ID_TITULO').AsInteger;
                        FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger            :=
                                  sm.enValorChave('FIN_TB_M_RBX');
                        FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger         :=
                                  DataSet.FieldByName('ID_ABERTURA').AsInteger;
                        FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime      :=
                                  DataSet.FieldByName('dta_movimento').AsDateTime;
                        FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency      :=
                                  mch_tit_DataSet.FieldByName('VLR_TOTAL').asCurrency;
                        FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat             := 0;
                        FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency          :=
                                  mch_tit_DataSet.FieldByName('VLR_JUROS').AsCurrency;
                        FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency       := 0;
                        FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;

                        FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString        := Historico;
                        FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                                  mch_tit_DataSet.FieldByName('id_forma_pag').AsInteger;
                        FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString         := Plano;
                        if mch_tit_DataSet.FieldByName('VLR_JUROS').AsCurrency>0 then
                           FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                                  CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;
                        FIN_CD_M_REC_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                                  Dataset.FieldByName('id_responsavel').AsInteger;
                        //FIN_CD_M_REC_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                        //   lCentroCustoRBX;
                        FIN_CD_M_REC_PAG.FieldByName('ORIGEM').AsInteger  := 2; // Movimento de cheque
                        FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean := false;
                        FIN_CD_M_REC_PAG.FieldByName('id_mch').AsInteger           := dataset.FieldByName('id_controle').AsInteger;
                        FIN_CD_M_REC_PAG.Post;}

                        if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean then
                           begin
                              FIN_CD_M_CTA.Insert;
                              FIN_CD_M_CTA.FieldByName('id_controle').AsInteger        := sm.enValorChave('FIN_TB_M_CTA');
                              FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger        := DataSet.FieldByName('id_abertura').AsInteger;
                              FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('id_empresa').AsInteger;
                              FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger    := CAD_CD_C_CTC.FieldByName('tipo').AsInteger;   //0-caixa 1-banco
                              FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime    := dataset.FieldByName('dta_movimento').AsDateTime;
                              FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime     := dataset.FieldByName('dta_movimento').AsDateTime;
                              FIN_CD_M_CTA.FieldByName('num_doc').AsInteger            := dataset.FieldByName('id_controle').AsInteger;
                              FIN_CD_M_CTA.FieldByName('historico').AsString           := historico;
                              FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency    := mch_tit_DataSet.FieldByName('vlr_total').AsCurrency;
                              FIN_CD_M_CTA.FieldByName('origem').AsInteger             := 9; // Movimentação de cheque
                              FIN_CD_M_CTA.FieldByName('id_conta').AsInteger           := DataSet.FieldByName('id_conta').AsInteger;
                              FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger := TipoFin;
                              FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger            := DebCre;
                              FIN_CD_M_CTA.FieldByName('id_plano').AsString            := Plano;
                              FIN_CD_M_CTA.FieldByName('conciliado').Asboolean         := false;
                              FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger          := 0;
                              FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger      := 0;
                              FIN_CD_M_CTA.FieldByName('id_credito').AsInteger         := 0;
                              FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
                              FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
                              FIN_CD_M_CTA.FieldByName('id_mch').AsInteger             := dataset.FieldByName('id_controle').AsInteger;
                              FIN_CD_M_CTA.Post;
                           end;
                       end;
                    mch_tit_DataSet.Next;
                  end;
            end;
       end
   else
       begin
         if (DataSet.UpdateStatus in [usDeleted]) then
            begin
              FIN_CD_M_CTA := TClientDataSet.Create(nil);
              FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_CTA.Close;
              FIN_CD_M_CTA.Data :=
                  FIN_CD_M_CTA.DataRequest(VarArrayOf([97,dataset.FieldByName('id_controle').AsInteger]));
              if not FIN_CD_M_CTA.IsEmpty then
                 begin
                   while not FIN_CD_M_CTA.Eof  do
                       begin
                         FIN_CD_M_CTA.delete;
                       end;
                 end;

              {FIN_CD_M_REC.SetProvider(FIN_DP_M_REC);
              FIN_CD_M_REC.Close;
              FIN_CD_M_REC.Data :=
                  FIN_CD_M_REC.DataRequest(VarArrayOf([96, dataset.FieldByName('id_controle').AsInteger])); }

               BUS_CD_M_REC_INT.SetProvider(BUS_DP_M_REC_INT);
               BUS_CD_M_REC_INT.Close;
               BUS_CD_M_REC_INT.Data :=
                      BUS_CD_M_REC_INT.DataRequest(VarArrayOf([0, dataset.FieldByName('id_controle').AsInteger]));

              if not BUS_CD_M_REC_INT.IsEmpty then
                 begin
                   while not BUS_CD_M_REC_INT.Eof  do
                       begin
                         BUS_CD_M_REC_INT.delete;
                       end;
                 end;

              //Historico de pagamentos oriundo da movimentação de cheque
              FIN_CD_M_REC_PAG.SetProvider(FIN_DP_M_REC_PAG);
              FIN_CD_M_REC_PAG.Close;
              FIN_CD_M_REC_PAG.Data :=
              FIN_CD_M_REC_PAG.DataRequest(
                  VarArrayOf([4,dataset.FieldByName('id_controle').AsInteger]));
              if not FIN_CD_M_REC_PAG.IsEmpty then
                 begin
                   while not FIN_CD_M_REC_PAG.Eof  do
                       begin
                         FIN_CD_M_REC_PAG.delete;
                       end;
                 end;

              BUS_CD_M_MCH_CHE_INT.SetProvider(BUS_DP_M_MCH_CHE_INT);
              BUS_CD_M_MCH_CHE_INT.Close;
              BUS_CD_M_MCH_CHE_INT.Data :=
                  BUS_CD_M_MCH_CHE_INT.DataRequest(
                      VarArrayOf([0,dataset.FieldByName('id_controle').AsInteger]));
              xTitulos :='';
              while not (BUS_CD_M_MCH_CHE_INT.Eof)  do
                begin
                   if xTitulos <> '' then
                      begin
                        xTitulos :=
                        xTitulos + ',' +''''+ BUS_CD_M_MCH_CHE_INT.FieldByName('ID_TITULO').AsString+'''';
                      end;
                   if xTitulos = '' then
                      begin
                        xTitulos :=
                        xTitulos +''''+ BUS_CD_M_MCH_CHE_INT.FieldByName('ID_TITULO').AsString+'''';
                      end;
                   BUS_CD_M_MCH_CHE_INT.Next;
                end;

              if xTitulos<>'' then
                begin
                  FIN_CD_M_REC.SetProvider(FIN_DP_M_REC);
                  FIN_CD_M_REC.Close;
                  FIN_CD_M_REC.Data :=
                      FIN_CD_M_REC.DataRequest(VarArrayOf([91,xTitulos]));
                  BUS_CD_M_MCH_CHE_INT.First;
                  while not BUS_CD_M_MCH_CHE_INT.eof do
                     begin
                       if FIN_CD_M_REC.Locate('ID_TITULO',BUS_CD_M_MCH_CHE_INT.FieldByName('id_titulo').AsInteger,[]) then
                          begin
                            FIN_CD_M_REC.Edit;

                            if DataSet.FieldByName('operacao').AsInteger in [1,3,4] then
                              begin
                               FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                                FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency +
                                    BUS_CD_M_MCH_CHE_INT.FieldByName('VLR_PAGO').AsCurrency;
                              end;

                            if DataSet.FieldByName('operacao').AsInteger in [2] then
                              begin
                               FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                                FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency -
                                    BUS_CD_M_MCH_CHE_INT.FieldByName('VLR_PAGO').AsCurrency;
                              end;


                            FIN_CD_M_REC.FieldByName('situacao_chq').AsInteger :=
                                    BUS_CD_M_MCH_CHE_INT.FieldByName('int_sitchqant').AsInteger;
                            FIN_CD_M_REC.Post;
                          end;
                       BUS_CD_M_MCH_CHE_INT.Next;
                     end;
                end;
              // Rastro do cheque
              BUS_CD_M_REC_HCH_INT.SetProvider(BUS_DP_M_REC_HCH_INT);
              BUS_CD_M_REC_HCH_INT.Close;
              BUS_CD_M_REC_HCH_INT.Data :=
                   BUS_CD_M_REC_HCH_INT.DataRequest(VarArrayOf([1,dataset.FieldByName('id_controle').AsInteger]));
              if not BUS_CD_M_REC_HCH_INT.IsEmpty then
                 begin
                   while not BUS_CD_M_REC_HCH_INT.Eof  do
                       begin
                         BUS_CD_M_REC_HCH_INT.delete;
                       end;
                 end;
            end;
       end;

   if FIN_CD_M_REC <> nil then
      if FIN_CD_M_REC.ChangeCount > 0  then
         if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
             raise Exception.Create('Erro ao tentar atualizar a tabela de títulos.');

   if FIN_CD_M_REC_PAG <> nil then
      if FIN_CD_M_REC_PAG.ChangeCount > 0  then
         if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar a tabela de recebimentos.');

   if FIN_CD_M_CTA <> nil then
      if FIN_CD_M_CTA.ChangeCount > 0 then
         if not (FIN_CD_M_CTA.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar a tabela de movimentação de conta.');

   if BUS_CD_M_MCH_CHE_INT <> nil then
      if BUS_CD_M_MCH_CHE_INT.ChangeCount > 0  then
         if not (BUS_CD_M_MCH_CHE_INT.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar a tabela de cheques da movimentação.');

   if BUS_CD_M_REC_HCH_INT <> nil then
      if BUS_CD_M_REC_HCH_INT.ChangeCount > 0  then
         if not (BUS_CD_M_REC_HCH_INT.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar a tabela de rastro de cheques.');

    if BUS_CD_M_REC_INT <> nil then
      if BUS_CD_M_REC_INT.ChangeCount > 0  then
         if not (BUS_CD_M_REC_INT.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar a tabela de titulos.');

   finally
      CAD_CD_C_CTC.Free;
      CAD_CD_C_TIF.Free;
      CAD_CD_C_FPG.Free;
      FIN_CD_M_REC.Free;
      FIN_CD_M_REC_PAG.Free;
      BUS_CD_M_MCH_CHE_INT.Free;
      BUS_CD_M_REC_HCH_INT.Free;
   end;
end;

end.
