unit FIN_RN_M_CTA_CON;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaCon(DataSet:TDataSet);
procedure FinMascaraCon(DataSet:TDataSet);
procedure FinNovoCon(DataSet: TDataSet);
procedure finVerifDetCon;


procedure FinNovoConGer(DataSet: TDataSet);
procedure FinValidaConGer(DataSet: TDataSet);
procedure FinMascaraConGer(DataSet: TDataSet);

procedure FinNovoConCta(DataSet: TDataSet);
procedure FinValidaConCta(DataSet: TDataSet);
procedure FinMascaraConCta(DataSet:TDataSet);
procedure FinSomarTotSelConCta;

procedure FinNovoConCxb;
procedure FinMascaraConCxb;
procedure FinAtualStatusCxb;
procedure FinDesfMovimDet;
procedure FinBuscRegRelMovCtaConCxb;



function  FinExibirTotDifCxbDet(Var VlrCxbDetSel, VlrDiferenca: Currency): String;
procedure FinMascaraConCxbDet;

procedure FinMascaraConCxbAux;
procedure FinLimparConCxbAux;


procedure FIN_CD_M_CON_GERidTipoFinanceiroChange;

implementation
Uses uDmGeral,enConstantes,uProxy ;

procedure FinNovoCon(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CON.FieldByName('ID_CONCILIACAO').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_CON');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_CON.FieldByName('ID_EMPRESA').AsInteger         := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_CON.FieldByName('DTA_CONCILIACAO').AsDateTime   := xDataSis;
  dmGeral.FIN_CD_M_CON.FieldByName('ID_RESPONSAVEL').AsInteger     := xFuncionario;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_CON',xCodLme,xRevLme,dmGeral.FIN_CD_M_CON);
end;

procedure finVerifDetCon;
var
  xMensErro:string;
  TotalDet: Currency;
begin

  xMensErro := '';


  if (dmGeral.FIN_CD_M_CON_CXB.IsEmpty) or (trim(dmGeral.FIN_CD_M_CON_CXB.FieldByName('dta_movimento').AsString) = '') then
     begin
        xMensErro:= xMensErro + '.Extrato do banco não foi inserido na conciliação'+ #13;
     end;

  if xMensErro = '' then
     begin

       try

           dmGeral.FIN_CD_M_CON_CXB.Filtered := true;
           dmGeral.FIN_CD_M_CON_CXB.Filter   := ' status = ''A'' ';
           dmGeral.FIN_CD_M_CON_CXB.First;


           while not dmGeral.FIN_CD_M_CON_CXB.eof do
               begin
                 TotalDet := 0;

                 dmGeral.FIN_CD_M_CON_CXB_DET.First;
                 while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
                    begin
                      TotalDet := TotalDet + dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency;
                      dmGeral.FIN_CD_M_CON_CXB_DET.Next;
                    end;

                 if TotalDet > 0 then
                    begin
                       if dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsCurrency <> (TotalDet) then
                          begin
                            xMensErro:= xMensErro + ' Doc: ' + dmGeral.FIN_CD_M_CON_CXB.FieldByName('documento').AsString +',' +
                                                    ' R$ ' + FormatCurr('###,###,##0.00',dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsCurrency) +
                                                    ' X Movimento(s): ' + FormatFloat('###,###,###,##0.00', TotalDet) + #13;
                          end;
                    end;
                 dmGeral.FIN_CD_M_CON_CXB.Next;
               end;
             dmGeral.FIN_CD_M_CON_CXB.First;

             if xMensErro <> '' then
                xMensErro:= '.Existe relacinamento com diferença:' + #13 + xMensErro;
       finally
          dmGeral.FIN_CD_M_CON_CXB.Filtered := false;
          dmGeral.FIN_CD_M_CON_CXB.First;
       end;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure FinMascaraCon(DataSet:TDataSet);
begin

end;

procedure FinValidaCon(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

   if (dmGeral.FIN_CD_M_CON.FieldByName('ID_CONCILIACAO').AsString='') then
     begin
       xMensErro:= xMensErro + '.Controle deve ser informado'+ #13;
       dmGeral.FIN_CD_M_CON.FieldByName('ID_CONCILIACAO').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON.FieldByName('DTA_CONCILIACAO').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de conciliação deve ser informada'+ #13;
       dmGeral.FIN_CD_M_CON.FieldByName('DTA_CONCILIACAO').FocusControl;
     end;

    if (dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsString='') then
     begin
       xMensErro:= xMensErro + '.Conta corrente deve ser informada'+ #13;
       dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').FocusControl;
     end;

    if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure FinNovoConCta(DataSet: TDataSet);
begin
  // Corrigir
  // dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_VLRLAN').AsString := '0';
end;

procedure FinMascaraConCta(DataSet: TDataSet);
begin
   // Corrigir
   //dmGeral.FIN_CD_M_CON_CTAint_vlrlan.DisplayFormat:=CMascaraValor;
end;

procedure FinSomarTotSelConCta;
var
  total: Currency;
  lPonteiroItens : TBookmark;
begin

  total := 0;

  // Corrigir
  {
  try

   lPonteiroItens := dmGeral.FIN_CD_M_CON_CTA.GetBookmark;

   dmGeral.FIN_CD_M_CON_CTA.Filtered := true;
   dmGeral.FIN_CD_M_CON_CTA.Filter   := ' int_selecao = true ';
   if not dmGeral.FIN_CD_M_CON_CTA.IsEmpty then
      begin
        dmGeral.FIN_CD_M_CON_CTA.First;
        while not dmGeral.FIN_CD_M_CON_CTA.eof do
            begin
              total := total + dmGeral.FIN_CD_M_CON_CTA.FieldByName('vlr_lancamento').AsCurrency;
              dmGeral.FIN_CD_M_CON_CTA.Next;
            end;

      end;
  finally
    dmGeral.FIN_CD_M_CON_CTA.Filtered := false;
    dmGeral.FIN_CD_M_CON_CTA.GotoBookmark(lPonteiroItens);
  end; }
end;

procedure FinValidaConCta(DataSet: TDataSet);
var
  xMensErro:string;
begin

  { xMensErro:='';

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('ID_CONTROLE').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Controle deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('ID_CONTROLE').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_ORIGEM').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Origem deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_ORIGEM').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_DTALAN').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de Lançamento deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_DTALAN').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_DEBCRE').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Debito/Credito deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_DEBCRE').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_NUMDOC').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº doc deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_NUMDOC').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_VLRLAN').AsString='') then
     begin
       xMensErro:= xMensErro + '.Vlr Lançamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_CON_CTA.FieldByName('INT_VLRLAN').FocusControl;
     end;

     if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro); }
end;



procedure FinNovoConCxbDet(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  {SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger :=
       SMPrincipal.enValorChave('FIN_TB_M_CTA');
  finally
    FreeAndNil(SMPrincipal);
  end;}
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CXB').AsInteger := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsString := '0';
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString := '';
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString := '';
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('mov_gerado').AsBoolean := false;
end;


procedure FinMascaraConGer(DataSet: TDataSet);
begin
  // Corrigir
  //  dmGeral.FIN_CD_M_CON_GERvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

procedure FinValidaConGer(DataSet: TDataSet);
var
  xMensErro:string;
begin

   xMensErro:='';
   {
   if (dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_CONTROLE').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Controle deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_CONTROLE').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_PLANO').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Plano deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_PLANO').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_TIPO_FINANCEIRO').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Tipo Financeiro deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_TIPO_FINANCEIRO').FocusControl;
     end;

   if not(dmGeral.FIN_CD_M_CON_GER.FieldByName('VLR_LANCAMENTO').AsCurrency > 0) then
     begin
       xMensErro:= xMensErro + '.Vlr Lançamento deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('VLR_LANCAMENTO').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_GER.FieldByName('NUM_DOC').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº doc deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('NUM_DOC').FocusControl;
     end;

   if (dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').AsString='') then
     begin
       xMensErro:= xMensErro + '.Natureza deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').FocusControl;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
      }
end;

procedure FIN_CD_M_CON_GERidTipoFinanceiroChange;
begin

  // Corrigir
  {dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_TIPO_FINANCEIRO').Text);

  if dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').Text :='';
     end
  else
    begin
      dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').Text :=
         dmGeral.BUS_CD_C_TIF.FieldByName('INT_NATUREZA').AsVariant;
    end;}
end;

procedure FinNovoConCxb;
//var
//  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CON_CXB.FieldByName('ID_CXB').AsInteger := dmGeral.FIN_CD_M_CON_CXB.RecordCount + 1;
    dmGeral.FIN_CD_M_CON_CXB.FieldByName('STATUS').AsString := 'A';
    dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString := '';
     //       SMPrincipal.enValorChave('FIN_TB_M_CON_CXB');
  finally
   // FreeAndNil(SMPrincipal);
  end;

end;

procedure FinMascaraConCxb;
begin
  dmGeral.FIN_CD_M_CON_CXBvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

procedure FinNovoConGer(DataSet: TDataSet);
begin
  //
end;

procedure FinAtualStatusCxb;
var
  VlrTotDet: Currency;
begin

  VlrTotDet := 0;

  dmGeral.FIN_CD_M_CON_CXB_DET.First;
  while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
     begin
       if dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger = 0 then
          begin
             VlrTotDet := VlrTotDet +
                dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency;
          end;
       dmGeral.FIN_CD_M_CON_CXB_DET.Next;
     end;

  dmGeral.FIN_CD_M_CON_CXB.Edit;
  dmGeral.FIN_CD_M_CON_CXB.FieldByName('STATUS').AsString := 'A';
  dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString := '';

  if dmGeral.FIN_CD_M_CON_CXBvlr_lancamento.AsCurrency = VlrTotDet then
     begin
       if dmGeral.FIN_CD_M_CON_CXBvlr_lancamento.AsCurrency > 0 then
          begin
            dmGeral.FIN_CD_M_CON_CXB.FieldByName('STATUS').AsString := 'F';
            dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString := '0'; // Imagem de index 0
          end;
     end;
  dmGeral.FIN_CD_M_CON_CXB.Post;
end;

procedure FinDesfMovimDet;
begin

  while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
     begin
       dmGeral.FIN_CD_M_CON_CXB_DET.delete;
     end;

  dmGeral.FIN_CD_M_CON_CXB.Edit;
  dmGeral.FIN_CD_M_CON_CXB.FieldByName('STATUS').AsString  := 'A';
  dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString := '';

  dmGeral.FIN_CD_M_CON_CXB.Post;

end;

procedure FinBuscRegRelMovCtaConCxb;
var
  Valor: String;
begin

  Valor := '0';

  dmGeral.FIN_CD_M_CON_CXB.cancel;
  if (not dmGeral.FIN_CD_M_CON_CXB.IsEmpty) and (dmGeral.FIN_CD_M_CON_CXB.FieldByName('dta_movimento').AsString <> '') then
     begin
       dmGeral.FIN_CD_M_CON_CXB.First;
       while not dmGeral.FIN_CD_M_CON_CXB.eof do
           begin
             valor := dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsString;
                      StringReplace(valor,'.','',[rfReplaceAll]);
             valor := StringReplace(valor,',','.',[rfReplaceAll]);


             dmGeral.BUS_CD_M_CTA.Close;
             dmGeral.BUS_CD_M_CTA.Data :=
                 dmGeral.BUS_CD_M_CTA.DataRequest(
                    VarArrayOf([6, dmGeral.FIN_CD_M_CON.FieldByName('ID_EMPRESA').AsString,
                                   dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsString,
                                   valor]));

             if not dmGeral.BUS_CD_M_CTA.IsEmpty then
                begin
                  dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CONCILIACAO').AsInteger  :=
                          dmGeral.FIN_CD_M_CON.FieldByName('ID_CONCILIACAO').AsInteger;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CXB').AsInteger :=
                          dmGeral.FIN_CD_M_CON_CXB.FieldByName('ID_CXB').AsInteger;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CONTROLE').AsInteger :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('ID_CONTROLE').AsInteger;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_PLANO').AsString :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('ID_PLANO').AsString;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('VLR_LANCAMENTO').AsCurrency :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('VLR_LANCAMENTO').AsCurrency;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('HISTORICO').AsString :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('HISTORICO').AsString;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('NUM_DOC').AsString   :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('NUM_DOC').AsString;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('DTA_MOVIMENTO').AsDateTime :=
                          dmGeral.BUS_CD_M_CTA.FieldByName('DTA_MOVIMENTO').AsDateTime;

                  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('TIPO').AsInteger := 0; // Sugestão

                  dmGeral.FIN_CD_M_CON_CXB_AUX.Post;
                end;
             dmGeral.FIN_CD_M_CON_CXB.Next;
           end;
       dmGeral.FIN_CD_M_CON_CXB_AUX.First;
       dmGeral.FIN_CD_M_CON_CXB.First;
     end;
end;


function  FinExibirTotDifCxbDet(Var VlrCxbDetSel, VlrDiferenca: Currency): String;
var
  TotCxb: Currency;
begin
  TotCxb := dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsCurrency;

  VlrCxbDetSel := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.First;
  while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
     begin
       if dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('tipo_reg').AsInteger = 0 then
          VlrCxbDetSel := VlrCxbDetSel + dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency;
       dmGeral.FIN_CD_M_CON_CXB_DET.Next;
     end;
  dmGeral.FIN_CD_M_CON_CXB_DET.First;


  VlrDiferenca := TotCxb - VlrCxbDetSel;
end;

procedure FinMascaraConCxbDet;
begin
  dmGeral.FIN_CD_M_CON_CXB_DETvlr_lancamento.DisplayFormat:=CMascaraValor;
  dmGeral.FIN_CD_M_CON_CXB_DETvlr_titulo.DisplayFormat:=CMascaraValor;
  dmGeral.FIN_CD_M_CON_CXB_DETvlr_juros.DisplayFormat:=CMascaraValor;
  dmGeral.FIN_CD_M_CON_CXB_DETvlr_desconto_ope.DisplayFormat:=CMascaraValor;
  dmGeral.FIN_CD_M_CON_CXB_DETvlr_desconto.DisplayFormat := CMascaraValor;
end;

procedure FinMascaraConCxbAux;
begin
  dmGeral.FIN_CD_M_CON_CXB_AUXvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

procedure FinLimparConCxbAux;
begin
  dmGeral.FIN_CD_M_CON_CXB.First;
  while not dmGeral.FIN_CD_M_CON_CXB.eof do
     begin
       while not dmGeral.FIN_CD_M_CON_CXB_AUX.eof do
          begin
            dmGeral.FIN_CD_M_CON_CXB_AUX.Delete;
          end;
       dmGeral.FIN_CD_M_CON_CXB.Next;
     end;
  dmGeral.FIN_CD_M_CON_CXB.First;
end;

end.
