unit FIN_RN_M_CHE_MOV;

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,Vcl.Controls,System.Math,Datasnap.DBClient,SQLTimSt;

procedure FinNovoCheMov(DataSet:TDataSet);
procedure FinNovoMchChe(DataSet:TDataSet);
procedure FinNovoMchTit(DataSet:TDataSet);

procedure FinMascaraMch;
procedure FinMascaraMchChe;
procedure FinMascaraMchTit;

procedure FinValidaCheMov(DataSet:TDataSet);
procedure FinOutrasValidacoesCheMov;
procedure FinOutrasValidaCheMov_Exc;
procedure FinValidaMchChe(DataSet:TDataSet);
procedure FinValidaMchTit(DataSet:TDataSet);
procedure FIN_CD_M_MCH_TIT_AtuSequencias;


procedure FIN_CD_M_MCHid_contaChange;

procedure FinCalculaValoresTotaisMchChe;
procedure FinCalculaValoresTotaisMchTit;
procedure FinCalculaVlrTotalMchTit;

procedure BusCxaBco(id_funcionario: integer);

procedure FinVerificarMovChequesPosteriorMch;

function FinVerificarVlrPagoVlrTitulo:Boolean;

function FinVerificarVlrTotaisTit:Boolean;

function FatGravarNumParcMch(cdsNfe,cdsNfeTit: TClientDataSet): Boolean;


implementation
Uses uDmGeral,enConstantes, uProxy;
VAR
xMensErro:String;

procedure FinMascaraMch;
begin
   dmGeral.FIN_CD_M_MCHvlr_movimento.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCHvlr_tot_juros.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCHvlr_tot_juros_che.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCHvlr_tot_movimento.DisplayFormat := CMascaraValor;
end;

procedure FinMascaraMchChe;
begin
   dmGeral.FIN_CD_M_MCH_CHEvlr_pago.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCH_CHEint_vlr_cheque.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCH_CHEint_vlr_saldo.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCH_CHEvlr_juros.DisplayFormat := CMascaraValor;
end;

procedure FinMascaraMchTit;
begin
   dmGeral.FIN_CD_M_MCH_TITvlr_total.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCH_TITvlr_titulo.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_MCH_TITvlr_juros.DisplayFormat := CMascaraValor;
end;

procedure FinVerificarMovChequesPosteriorMch;
var
  xTitulos:string;
begin
   xTitulos := '';
   while not (dmGeral.FIN_CD_M_MCH_CHE.Eof)  do
     begin
       if xTitulos <> '' then
         begin
           xTitulos :=
           xTitulos + ',' +''''+ dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString+'''';
         end;
       if xTitulos = '' then
         begin
          xTitulos :=
          xTitulos +''''+ dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString+'''';
         end;
       dmGeral.FIN_CD_M_MCH_CHE.Next;
     end;

   dmGeral.BUS_CD_M_MCH_CHE_INT.Close;
   dmGeral.BUS_CD_M_MCH_CHE_INT.Data :=
          dmGeral.BUS_CD_M_MCH_CHE_INT.DataRequest(
                              VarArrayOf([1,xTitulos,dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString]));

   if (not dmGeral.BUS_CD_M_MCH_CHE_INT.IsEmpty) then
      begin
        raise Exception.Create('Operação de exclusão não permitida.');
        abort;
      end;
end;

function FinVerificarVlrPagoVlrTitulo:Boolean;
var
  valor_total:currency;
begin
   Result := false;
   if dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4] then
     begin
      dmGeral.FIN_CD_M_MCH_TIT.Cancel;
      if (not dmGeral.FIN_CD_M_MCH_TIT.IsEmpty) then
        begin
          valor_total :=0;
          dmGeral.FIN_CD_M_MCH_TIT.First;
          while (not dmGeral.FIN_CD_M_MCH_TIT.Eof) do
            begin
              valor_total := valor_total + dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TITULO').AsCurrency;
              dmGeral.FIN_CD_M_MCH_TIT.Next;
            end;
          if (valor_total = dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency) then
            begin
              Result :=true;
            end;
        end;
     end;
   if dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,2] then
     begin
       Result := true;
     end;

end;

procedure FIN_CD_M_MCHid_contaChange;
begin
  if (dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTA').AsString <>'') then
    begin
   dmGeral.BUS_CD_C_CTC.Close;
   dmGeral.BUS_CD_C_CTC.Data :=
   dmGeral.BUS_CD_C_CTC.DataRequest(
           VarArrayOf([0, dmGeral.FIN_CD_M_MCH.FieldByName('id_conta').AsString]));
   dmGeral.FIN_CD_M_MCH.FieldByName('id_abertura').asInteger:=0;
   if dmGeral.BUS_CD_C_CTC.FieldByName('tipo').asInteger=0 then
      begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([93,IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                             dmGeral.FIN_CD_M_MCH.FieldByName('id_conta').AsString ]));
        dmGeral.FIN_CD_M_MCH.FieldByName('id_abertura').asInteger:=
          dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').asInteger;
      end;
    end;
end;

procedure FinCalculaValoresTotaisMchChe;
begin
   dmGeral.FIN_CD_M_MCH_CHE.First;
   dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency := 0;
   dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS_CHE').AsCurrency := 0;
   while (not dmGeral.FIN_CD_M_MCH_CHE.EOF) do
     begin
       dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency :=
               dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency +
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency;
       if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 4) then
           dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS_CHE').AsCurrency :=
               dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS_CHE').AsCurrency +
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_JUROS').AsCurrency;

       dmGeral.FIN_CD_M_MCH_CHE.Next;
     end;

   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,2]) then
     begin
        dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS').AsCurrency := 0;
        dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency :=
               dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency;
     end;
end;

procedure FinCalculaValoresTotaisMchTit;
begin
   if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
     begin
        dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS').AsCurrency := 0;
        dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency := 0;
        if (dmGeral.FIN_CD_M_MCH_TIT.RecordCount > 0) then
           begin
             dmGeral.FIN_CD_M_MCH_TIT.First;
             while (not dmGeral.FIN_CD_M_MCH_TIT.EOF) do
               begin
                 dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS').AsCurrency :=
                         dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS').AsCurrency +
                         dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_JUROS').AsCurrency;

                 dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency :=
                         dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency +
                         dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TOTAL').AsCurrency;
                 dmGeral.FIN_CD_M_MCH_TIT.Next;
               end;
           end;
     end;

    dmGeral.FIN_CD_M_MCH_TIT.AfterPost := nil;

    FatGravarNumParcMch(dmGeral.FIN_CD_M_MCH,dmGeral.FIN_CD_M_MCH_TIT);
    dmGeral.FIN_CD_M_MCH_TIT.AfterPost := dmGeral.FIN_CD_M_MCH_TITAfterPost;
end;

function FinVerificarVlrTotaisTit:Boolean;
var
  valor_total:currency;
begin
   Result := false;
   if dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4] then
     begin
      dmGeral.FIN_CD_M_MCH_TIT.Cancel;
      if (not dmGeral.FIN_CD_M_MCH_TIT.IsEmpty) then
        begin
          valor_total :=0;
          dmGeral.FIN_CD_M_MCH_TIT.First;
          while (not dmGeral.FIN_CD_M_MCH_TIT.Eof) do
            begin
              valor_total := valor_total + dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TOTAL').AsCurrency;
              dmGeral.FIN_CD_M_MCH_TIT.Next;
            end;
          if (valor_total = dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency) then
            begin
              Result :=true;
            end;
        end;
     end;
   if dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,2] then
     begin
       Result := true;
     end;
end;

procedure FinCalculaVlrTotalMchTit;
begin
   dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TOTAL').AsCurrency:=
    dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TITULO').AsCurrency +
    dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_JUROS').AsCurrency;
end;

procedure FinNovoCheMov(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_MCH');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_MCH.FieldByName('ID_EMPRESA').AsInteger :=
       dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_MCH.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FIN_CD_M_MCH.FieldByName('DTA_MOVIMENTO').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString := '';
  dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').AsString := '';
  dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_MOVIMENTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH.FieldByName('VLR_TOT_JUROS_CHE').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH.FieldByName('INFORMATIVO').AsString := '';
  dmGeral.FIN_CD_M_MCH.FieldByName('OBSERVACOES').AsString := '';
  dmGeral.FIN_CD_M_MCH.FieldByName('ID_ABERTURA').AsInteger       := 0;

  dmGeral.BusFuncionario(0,dmGeral.FIN_CD_M_MCH.FieldByName('ID_RESPONSAVEL').AsString);
  if (not dmGeral.BUS_CD_C_FUN.IsEmpty) then
    begin
      dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMERESP').AsString :=
             dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
    end;
end;

procedure FinValidaCheMov(DataSet:TDataSet);
begin
  xMensErro:='';
     if (dmGeral.FIN_CD_M_MCHid_controle.Text=null) or
        (dmGeral.FIN_CD_M_MCHid_controle.Text='') then
     begin
       xMensErro:= xMensErro + '.Codigo deve ser informado.'+ #13;
     end;

     if (dmGeral.FIN_CD_M_MCHid_empresa.Text=null) or
         (dmGeral.FIN_CD_M_MCHid_empresa.Text='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informada.'+ #13;
     end;

     if (dmGeral.FIN_CD_M_MCHid_responsavel.Text=null) or
         (dmGeral.FIN_CD_M_MCHid_responsavel.AsInteger=0) then
     begin
       xMensErro:= xMensErro + '.Responsável deve ser informada.'+ #13;
     end;

     if (dmGeral.FIN_CD_M_MCHdta_movimento.Text=null) or
         (dmGeral.FIN_CD_M_MCHdta_movimento.Text='') then
     begin
       xMensErro:= xMensErro + '.Data do movimento deve ser informada.'+ #13;
     end;

     if (dmGeral.FIN_CD_M_MCHid_conta.Text=null) or
        (dmGeral.FIN_CD_M_MCHid_conta.AsInteger=0) then
         begin
           xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
         end;

     if ((not dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').IsNull) or
             (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString <> '')) then
        begin
         if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
          begin
           if (dmGeral.FIN_CD_M_MCHid_condicao_pag.IsNull) or
              (dmGeral.FIN_CD_M_MCHid_condicao_pag.AsInteger=0) then
              begin
               xMensErro:= xMensErro + '.Condição de Pagamento deve ser informada.'+ #13;
              end;
           if (dmGeral.FIN_CD_M_MCHid_cliente.IsNull) or
              (dmGeral.FIN_CD_M_MCHid_cliente.AsInteger=0) then
              begin
               xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
              end;
          end;
       end;

    if ((dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').IsNull) or
        (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString = '')) then
       begin
         xMensErro:= xMensErro + '.Operação deve ser informado.'+ #13;
       end;

     if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FinOutrasValidacoesCheMov;
begin

  xMensErro:='';

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [2]) then // Devolver
      begin
        dmGeral.FIN_CD_M_MCH_CHE.First;
        while not dmGeral.FIN_CD_M_MCH_CHE.eof do
           begin
             if trim(dmGeral.FIN_CD_M_MCH_CHE.FieldByName('id_alinea').Text) = '' then
                begin
                  xMensErro:= xMensErro + '.Existe cheque sem o código de alínea'+ #13;
                  dmGeral.FIN_CD_M_MCH_CHE.Last;
                end;
             dmGeral.FIN_CD_M_MCH_CHE.Next;
           end;
        dmGeral.FIN_CD_M_MCH_CHE.First;
      end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure FinOutrasValidaCheMov_Exc;
var
  xTitulos: String;
begin
  xMensErro:='';

  xTitulos :='';
  while not (dmGeral.FIN_CD_M_MCH_TIT.Eof)  do
    begin
       if xTitulos <> '' then
          begin
            xTitulos :=
            xTitulos + ',' +''''+ dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsString+'''';
          end;
       if xTitulos = '' then
          begin
            xTitulos :=
            xTitulos +''''+ dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsString+'''';
          end;
       dmGeral.FIN_CD_M_MCH_TIT.Next;
    end;
  if xTitulos <> '' then
    begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([107, xTitulos]));
      if not dmGeral.BUS_CD_M_REC.IsEmpty then
         begin
           dmGeral.BUS_CD_M_REC.First;
           while not dmGeral.BUS_CD_M_REC.eof do
              begin
                if dmGeral.BUS_CD_M_REC.FieldByName('vlr_parcela').AsCurrency <>
                   dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency then
                   begin
                     xMensErro:= xMensErro + '.Existe título gerado por essa movimentação de cheque que já foi movimentado.'+ #13;
                     dmGeral.BUS_CD_M_REC.Last;
                   end;
                dmGeral.BUS_CD_M_REC.Next;
              end;
           dmGeral.BUS_CD_M_REC.First;
           dmGeral.BUS_CD_M_REC.Close;
         end;
    end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure BusCxaBco(id_funcionario: integer);
begin

   dmGeral.BUS_CD_C_CXA_BCO.Close;
   dmGeral.BUS_CD_C_CXA_BCO.Data :=
   dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([1, 1]));


  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
    begin
       dmGeral.BUS_CD_M_CXA.Close;
       dmGeral.BUS_CD_M_CXA.Data :=
       dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(id_funcionario),dmGeral.FIN_CD_M_MCH.FieldByName('id_empresa').AsInteger]));  // Busca o caixa aberto para o funcionário especificado.

       if not dmGeral.BUS_CD_M_CXA.IsEmpty then
          begin
            dmGeral.BUS_CD_C_CXA_BCO.Close;
            dmGeral.BUS_CD_C_CXA_BCO.Data :=
            dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_CXAid_conta.AsString]));
          end;
    end;

end;


procedure FinNovoMchChe(DataSet:TDataSet);
begin
   dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency := 0;
   dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_JUROS').AsCurrency := 0;
   dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_ALINEA').AsString := '';
end;

procedure FinNovoMchTit(DataSet:TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_MCH_TITID_TITULO.AsInteger := (dmGeral.FIN_CD_M_MCH_TIT.RecordCount + 1) * -1;
    //dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  {dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_BANCO').text            := '';
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_AGENCIA').text          := '';
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_CONTA').AsString        := '';
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_NUMERO').AsString      := '';
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_EMITENTE').text         := '';
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('NUM_PARCELA').text         := ''; }

  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsInteger  := 0;
//  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger := 0;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').AsInteger := 0;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TOTAL').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TITULO').AsCurrency := 0;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_JUROS').AsCurrency := 0;
end;

procedure FinValidaMchChe(DataSet:TDataSet);
begin
    xMensErro := '';
    if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsString = '2')  then
      begin
       if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_ALINEA').IsNull or
           (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_ALINEA').AsString = '')) then
         begin
          xMensErro := xMensErro + '.Alínea' + #13;
         end;
      end;

     if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,4]) then
      begin
          if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').IsNull or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString = '') or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency = 0) or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency >
             dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsCurrency)) then
            begin
              xMensErro := xMensErro + '.Valor Pago' + #13;
            end;
      end;

     if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [2]) then
      begin
          if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').IsNull) or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString = '') or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency = 0) then
            begin
              xMensErro := xMensErro + '.Valor Pago' + #13;
            end;
      end;

    if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 3) then
      begin
          if (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').IsNull or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsString = '') or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency = 0) or
            (dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency >=
             dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsCurrency)) then
            begin
              xMensErro := xMensErro + '.Valor Pago' + #13;
            end;
      end;


    if xMensErro<>'' then
    begin
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     abort;
    end
end;

procedure FinValidaMchTit(DataSet:TDataSet);
begin
    if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Forma de Pagamento deve ser informada.'+ #13;
     end;

    if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DTA_VENCIMENTO').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Vencimento deve ser informada.'+ #13;
     end;

    if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString <>'') then
       begin
        dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString);
        if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=6 then
          begin
           if dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = True then
             begin
              if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_conta').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_numero').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_banco').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_emitente').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_agencia').AsString='') then
                    xMensErro:= xMensErro + '.Os dados do cheque devem ser informados.'+ #13;
             end
           else
             begin
              if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_numero').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_banco').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_emitente').AsString='') or
                 (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('che_agencia').AsString='') then
                    xMensErro:= xMensErro + '.Os dados do cheque devem ser informados.'+ #13;
             end;
          end;
       end;
end;


procedure FIN_CD_M_MCH_TIT_AtuSequencias;
var
  i: integer;
  SMPrincipal : TSMClient;
begin

  { TODO -oMaxsuel -cCriação :
   Criado em 26/10/2016
   Função de refazer as sequencias dos títulos que estão com id_titulo negativo. }


  try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);


    dmgeral.FIN_CD_M_MCH_TIT.AfterPost  := nil;
    dmgeral.FIN_CD_M_MCH_TIT.BeforePost := nil;

    dmGeral.FIN_CD_M_MCH_TIT.Filtered := true;
    dmGeral.FIN_CD_M_MCH_TIT.Filter   := 'ID_TITULO < 0 ';

    if not dmGeral.FIN_CD_M_MCH_TIT.IsEmpty then
       begin
         i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_TIT',dmGeral.FIN_CD_M_MCH_TIT.RecordCount);
         dmGeral.FIN_CD_M_MCH_TIT.First;
         while not dmGeral.FIN_CD_M_MCH_TIT.eof do
             begin
               dmGeral.FIN_CD_M_MCH_TIT.edit;
               dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger := i;
               inc(i);
               dmGeral.FIN_CD_M_MCH_TIT.Post;
             end;
       end;


  finally

    dmGeral.FIN_CD_M_MCH_TIT.Filtered := false;
    dmGeral.FIN_CD_M_MCH_TIT.First;

    dmgeral.FIN_CD_M_MCH_TIT.AfterPost  := dmgeral.FIN_CD_M_MCH_TITAfterPost;
    dmgeral.FIN_CD_M_MCH_TIT.BeforePost := dmgeral.FIN_CD_M_MCH_TITBeforePost;

    FreeAndNil(SMPrincipal);
  end;

end;


function FatGravarNumParcMch(cdsNfe,cdsNfeTit: TClientDataSet): Boolean;
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
                    cdsNfe.FieldByName('ID_CONTROLE').AsString + '-' +
                    inttostr(i) + '/' + lQtdeReg;
            cdsNfeTit.Post;
            cdsNfeTit.Next;
          end;
     end;
  cdsNfeTit.GotoBookmark(lPonteiroItens);
end;


end.
