unit FIN_RN_M_PAG;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

  procedure FIN_BUR_M_PAG(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
                                  UpdateKind: TUpdateKind; var Applied: Boolean; SM: TSM);
  function  FIN_DR_M_PAG(Sender: TObject; Input: OleVariant;
                                  FIN_SQ_M_PAG:Tsqldataset;
                                  FIN_DP_M_PAG:TDataSetProvider): OleVariant;

{ TODO -oMariel -cRotina :Regra de Banco 02/11/2014 : 08:11 }


implementation

uses enConstantes;


procedure FIN_BUR_M_PAG(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean; SM: TSM);
begin
  if UpdateKind = ukInsert then
     begin
       if DeltaDs.fieldByName('num_parcela').newValue='' then
          begin
            DeltaDs.fieldByName('num_parcela').newValue:=
              sm.enValorChave('FIN_TB_M_PAG_NUM').ToString;
          end;
     {  if DeltaDs.fieldByName('id_titulo').IsNull then
          DeltaDs.fieldByName('id_titulo').newValue :=
                 sm.enValorChave('FAT_TB_M_NFE_TIT');
                 // sm.enValorChave('FIN_TB_M_PAG');}
     end;
end;


function FIN_DR_M_PAG(Sender: TObject; Input: OleVariant;
                                     FIN_SQ_M_PAG:Tsqldataset;
                                     FIN_DP_M_PAG:TDataSetProvider): OleVariant;
  function enSqlPag: String;
  begin
    Result :=
        'SELECT  false as int_selecao,pag.*, '+
        '  FON.DESCRICAO AS INT_NOMEFOR, FPG.DESCRICAO AS INT_NOMEFPG, LTO.DESCRICAO AS INT_NOMELTO, '+
        '  PCT.DESCRICAO AS INT_NOMEPCT, '+
        '  OBR.DESCRICAO AS INT_NOMEOBR, '+
        ' FPG.DOC_IMPRESSO AS INT_DOCIMPRESSO, '+
        ' FPG.TIPO_PAGAMENTO AS INT_TIPOPAG  '+
        'FROM FIN_TB_M_PAG PAG '+
        'LEFT OUTER JOIN CAD_TB_C_FOR FON ON FON.ID_FORNECEDOR = PAG.ID_FORNECEDOR '+
        'LEFT OUTER JOIN CAD_TB_C_FPG FPG ON FPG.ID_FORMA_PAG = PAG.ID_FORMA_PAG '+
        'LEFT OUTER JOIN CAD_TB_C_LTO LTO ON LTO.ID_LOCAL_TITULO = PAG.ID_LOCAL_TITULO '+
        'LEFT OUTER JOIN CAD_TB_C_PCT PCT ON PCT.ID_PLANO = PAG.ID_PLANO '+
        'LEFT OUTER JOIN CTC_TB_C_OBR OBR ON OBR.ID_OBRA = PAG.ID_OBRA ';
  end;
begin
   FIN_SQ_M_PAG.Close;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           FIN_SQ_M_PAG.CommandText := enSqlPag + ' WHERE 1=2 '
        else
           FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.num_parcela = ''' + VarToStr(Input[1]) +''' ' +
             '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 1 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
          Format('WHERE upper(FON.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]) +
          '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 2 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.DTA_EMISSAO = ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])) ) +''' ' +
             '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 3 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.DTA_ORIGINAL = ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])) ) +''' ' +
             '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 4 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.DTA_VENCIMENTO = ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])) ) +''' ' +
             '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 5 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.ID_PLANO = ''' + VarToStr(Input[1]) +''' ' +
             '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 6 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
          Format('WHERE upper(FPG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]) +
          '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 7 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
          Format('WHERE upper(LTO.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]) +
                 '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 8 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
          Format('WHERE upper(PAG.HISTORICO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]) +
          '   AND PAG.ID_EMPRESA = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 9 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.num_parcela   = ''' + VarToStr(Input[1]) +''' and ' +
             '       PAG.id_fornecedor = ''' + VarToStr(Input[2]) +''' and ' +
             '       PAG.ID_EMPRESA = ''' + VarToStr(Input[3]) +''' ';;
      end
   else if Input[0] = 10 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.id_titulo   = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 11 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.id_titulo   = ''' + VarToStr(Input[1]) +''' ' +
             '   AND PAG.id_abertura = ''' + VarToStr(Input[2]) +''' ';
      end
   else if Input[0] = 90 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE PAG.ID_FISCAL = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 91 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.VLR_ORIGINAL<>PAG.VLR_SALDO AND  PAG.ID_FISCAL = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 92 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.ID_BAIXA = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 93 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.ID_TITULO IN  (' + VarToStr(Input[1]) +') ';
      end
   else if Input[0] = 94 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.ID_CTA = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 95 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.ID_LMF = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 96 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
             ' WHERE  PAG.ID_PRC = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 97 then
      begin
        FIN_SQ_M_PAG.CommandText := enSqlPag +
            ' WHERE FPG.DOC_IMPRESSO IN (3,4,6) '+
            '   AND PAG.ID_EMPRESA IN (' + VarToStr(Input[1]) +') ' +
            '   and PAG.VLR_SALDO = pag.VLR_PARCELA   '+
            '   AND PAG.DTA_VENCIMENTO >= ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])) ) +''' ' +
            '   AND PAG.DTA_VENCIMENTO <= ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[3])) ) +''' '+

            '   and not EXISTS (select brt.id_titulo from fin_tb_m_brd_tit brt '+
            '    left outer join fin_tb_m_brd brd on brd.id_brd=brt.id_brd     '+
            '    where brd.cancelado=false and  brt.id_titulo=PAG.ID_TITULO )  ';
      end;


   Result := FIN_DP_M_PAG.Data;
end;


end.
