unit FIN_RN_M_COB;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaCob(DataSet:TDataSet);
procedure FinValidaCobTit;
procedure FinMascaraCob(DataSet:TDataSet);
procedure FinMascaraCobTit(DataSet:TDataSet);

procedure FinMascaraBusCob;
procedure FinMascaraBusCobTit;
procedure FinMascaraBusCobTitFat;

procedure FinNovoCob(DataSet: TDataSet);
procedure FinNovoCobTit(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure FinValidaCobTit;
begin
end;

procedure FinNovoCobTit(DataSet:TDataSet);
begin
   dmGeral.FIN_CD_M_COB_TIT.FieldByName('SELECAO').AsBoolean := False;
end;

procedure FinValidaCob(DataSet:TDataSet);
var
  xMensErro:string;
 begin
  xMensErro:='';
  if dmGeral.FIN_CD_M_COB.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.FIN_CD_M_COB.FieldByName('id_cliente').AsString='') then
           begin
             xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
           end;

        if (dmGeral.FIN_CD_M_COB.FieldByName('tipo_contato').AsString='') then
           begin
             xMensErro:= xMensErro + '.Tipo de contato deve ser informado.'+ #13;
           end;

        if (dmGeral.FIN_CD_M_COB.FieldByName('acordo').AsBoolean=True) then
          begin
           if dmGeral.FIN_CD_M_COB.FieldByName('DTA_ACORDO').Text = ''  then
            begin
              xMensErro:= xMensErro + '.Data do acordo deve ser informado.'+ #13;
            end;

           if dmGeral.FIN_CD_M_COB.FieldByName('vlr_negociado').Text = '' then
            begin
              xMensErro:= xMensErro + '.Valor do acordo deve ser informado.'+ #13;
            end;
          end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;

procedure FinMascaraCobTit(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_COB_TITint_vlr_parcela.DisplayFormat := CMascaraValor;
  dmGeral.FIN_CD_M_COB_TITint_vlr_saldo.DisplayFormat   := CMascaraValor;
end;

procedure FinMascaraBusCob;
begin
  dmGeral.BUS_CD_M_COBvlr_negociado.DisplayFormat := CMascaraValor;
end;

procedure FinMascaraBusCobTit;
begin
  dmGeral.BUS_CD_M_COB_TITint_vlr_parcela.DisplayFormat := CMascaraValor;
  dmGeral.BUS_CD_M_COB_TITint_vlr_saldo.DisplayFormat   := CMascaraValor;
end;

procedure FinMascaraBusCobTitFat;
begin
  dmGeral.BUS_CD_M_COB_TIT_FATvlr_unitario.DisplayFormat := CMascaraValor;
  dmGeral.BUS_CD_M_COB_TIT_FATvlr_desconto.DisplayFormat := CMascaraValor;
  dmGeral.BUS_CD_M_COB_TIT_FATvlr_liquido.DisplayFormat  := CMascaraValor;
end;

procedure FinMascaraCob(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_COBvlr_negociado.DisplayFormat := CMascaraValor;
end;

procedure FinNovoCob(DataSet: TDataSet);
var
   SMPrincipal : TSMClient;
begin

   //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_COB.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_COB');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FIN_CD_M_COB.FieldByName('ID_EMPRESA').Text := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text;
  dmGeral.FIN_CD_M_COB.FieldByName('DTA_COBRANCA').AsDateTime  := xDataSis;
  dmGeral.FIN_CD_M_COB.FieldByName('OBSERVACAO').Text := '';
  dmGeral.FIN_CD_M_COB.FieldByName('PER_JUROS_NEGOCIADO').Text := '0';
  dmGeral.FIN_CD_M_COB.FieldByName('TIPO_CONTATO').Text := '0';
  dmGeral.FIN_CD_M_COB.FieldByName('CONTATO').AsBoolean := False;
  dmGeral.FIN_CD_M_COB.FieldByName('ACORDO').AsBoolean := False;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));


  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
   begin
    dmGeral.FIN_CD_M_COB.FieldByName('ID_FUNCIONARIO').Text := dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').Text;
    dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMEFUN').Text := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').Text;
    dmGeral.BUS_CD_C_FUN.Close;
   end;

  dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMECLI').Text := '';
  dmGeral.FIN_CD_M_COB.FieldByName('INT_TELFIX').Text := '';
  dmGeral.FIN_CD_M_COB.FieldByName('INT_TELMOV').Text := '';
  dmGeral.FIN_CD_M_COB.FieldByName('INT_EMAIL').Text := '';
  dmGeral.FIN_CD_M_COB.FieldByName('STATUS').Text := '0';
  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_COB',xCodLme,xRevLme,dmGeral.FIN_CD_M_COB);
end;


end.
