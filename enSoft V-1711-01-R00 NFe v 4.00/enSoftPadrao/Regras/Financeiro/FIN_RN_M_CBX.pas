unit FIN_RN_M_CBX;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;

procedure FinNovoCbx(DataSet: TDataSet);
procedure FinNovoCbxTit(DataSet: TDataSet);

procedure FinMascaraCbx(DataSet: TDataSet);
procedure FinMascaraCbxTit(DataSet: TDataSet);

procedure FinValidaCbx;
procedure FinValidaCbxTit;
procedure FinCalcTotaisCbxTit(Var TotGerBruto,TotGerLiq, TotGerBrutoSel,TotGerLiqSel, TotTxaOpeSel,TotTxaAntecSel: Currency);

function FIN_CD_M_CBX_TITvlr_desconto_opeChange:Boolean;
function FIN_CD_M_CBX_TITvlr_desconto_antecChange:Boolean;

procedure FinCalculaVlrTotaisCbx;
procedure FinDeletaTitNaoSelecionadosCbx;




implementation

uses uDmGeral, uProxy,enConstantes;




procedure FinNovoCbx(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CBX.FieldByName('ID_CBX').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_CBX');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FIN_CD_M_CBX.FieldByName('ID_EMPRESA').AsInteger :=
             dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_CBX.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

  dmGeral.FIN_CD_M_CBX.FieldByName('DTA_BAIXA').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean := false;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency := 0;

end;

procedure FinNovoCbxTit(DataSet: TDataSet);
begin
  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency := 0;
  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency := 0;
end;

procedure FinMascaraCbx(DataSet: TDataSet);
begin
  dmGeral.FIN_CD_M_CBXVLR_BRUTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FIN_CD_M_CBXVLR_LIQUIDO.DisplayFormat    :=CMascaraValor;
  dmGeral.FIN_CD_M_CBXVLR_DESCONTO_OPE.DisplayFormat    :=CMascaraValor;
  dmGeral.FIN_CD_M_CBXVLR_DESCONTO_ANTEC.DisplayFormat    :=CMascaraValor;
end;

procedure FinMascaraCbxTit(DataSet: TDataSet);
begin
  dmGeral.FIN_CD_M_CBX_TITVLR_BRUTO.DisplayFormat           := CMascaraValor;
  dmGeral.FIN_CD_M_CBX_TITVLR_LIQUIDO.DisplayFormat         := CMascaraValor;
  dmGeral.FIN_CD_M_CBX_TITVLR_DESCONTO_OPE.DisplayFormat    := CMascaraValor;
  dmGeral.FIN_CD_M_CBX_TITVLR_DESCONTO_ANTEC.DisplayFormat  := CMascaraValor;
  dmGeral.FIN_CD_M_CBX_TITint_cartaxaope.DisplayFormat      := CMascaraValor;
end;

procedure FinValidaCbx;
var
  xMensErro:string;
begin

  xMensErro := '';
   if dmGeral.FIN_CD_M_CBX.FieldByName('DTA_BAIXA').AsString = '  /  /    ' then
     begin
       xMensErro := xMensErro + '.Data da Baixa' + #13;
     end;
   if dmGeral.FIN_CD_M_CBX.FieldByName('ID_CONTA').AsString = '' then
     begin
       xMensErro := xMensErro + '.Conta Corrente' + #13;
     end;
    if dmGeral.FIN_CD_M_CBX.FieldByName('ID_FORMA_PAG').AsString = '' then
     begin
       xMensErro := xMensErro + 'Tipo de Título' + #13;
     end;

  if dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       xMensErro := xMensErro + '.Vlr Bruto' + #13;
     end;
  if dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsInteger < 0 then
     begin
       xMensErro := xMensErro + '.Vlr Líquido' + #13;
     end;

   if (dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').IsNull or
      (dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').AsString = '')) then
     begin
       xMensErro := xMensErro + '.Vlr desconto operação' + #13;
     end;

  if (dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').IsNull or
     (dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').AsString = '')) then
     begin
       xMensErro := xMensErro + '.Vlr desconto antecipação' + #13;
     end;
  if xMensErro<>'' then
    begin
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     abort;
    end

end;

procedure FinValidaCbxTit;
var
  xMensErro:string;
begin

end;

procedure FinCalcTotaisCbxTit(Var TotGerBruto,TotGerLiq, TotGerBrutoSel,TotGerLiqSel, TotTxaOpeSel,TotTxaAntecSel: Currency);
var
  IdTitulo: integer;
begin
   TotGerBruto    := 0;
   TotGerLiq      := 0;
   TotGerBrutoSel := 0;
   TotGerLiqSel   := 0;
   TotTxaOpeSel   := 0;
   TotTxaAntecSel := 0;
   if not dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
      begin
        IdTitulo := dmGeral.FIN_CD_M_CBX_TIT.FieldByName('ID_TITULO').AsInteger;
        dmGeral.FIN_CD_M_CBX_TIT.First;
        while not dmGeral.FIN_CD_M_CBX_TIT.Eof do
           begin
             TotGerBruto := TotGerBruto + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency;
             TotGerLiq   := TotGerLiq   + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency;
             if dmGeral.FIN_CD_M_CBX_TIT.FieldByName('int_selecao').AsBoolean then
                begin
                   TotGerBrutoSel := TotGerBrutoSel + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency;
                   TotTxaOpeSel   := TotTxaOpeSel   + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency;
                   TotTxaAntecSel := TotTxaAntecSel + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency;
                   TotGerLiqSel   := TotGerLiqSel   + dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency;
                end;
             dmGeral.FIN_CD_M_CBX_TIT.Next;
           end;
        dmGeral.FIN_CD_M_CBX_TIT.locate('ID_TITULO',IdTitulo,[]);
      end;
end;

function FIN_CD_M_CBX_TITvlr_desconto_opeChange:Boolean;
begin
   if ((dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
       dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency) <
       dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency) then
     begin
       ShowMessage('O Vlr. Líquido não pode ser negativo.');
       dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency := 0;
     end;
    dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency :=
                            dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
                            (dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency+
                            dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency);
end;

function FIN_CD_M_CBX_TITvlr_desconto_antecChange:Boolean;
begin
   if dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean = True then
    begin
      if dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency=0 then
         begin
           ShowMessage('O Vlr. Desconto Antecipação não pode ser zero.');
           dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=
                     dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency*
                         (dmGeral.BUS_CD_C_FPG.FieldByName('TAXA_ANTECIPACAO').AsCurrency/100.0);
         end;

      if ((dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
          dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency) <
          dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency) then
       begin
         ShowMessage('O Vlr. Líquido não pode ser negativo.');
         dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=
                     dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency*
                     (dmGeral.BUS_CD_C_FPG.FieldByName('TAXA_ANTECIPACAO').AsCurrency/100.0);
       end;

    end;

    if dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean = False then
      begin
        ShowMessage('Não é utlizada a taxa de baixa de antecipação.');
        dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=   nil;
        dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency := 0;
        dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=   dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antecChange;
      end;
     dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
                              (dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency+
                              dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency);
end;

procedure FinCalculaVlrTotaisCbx;
var
  lPonteiroItens : TBookmark;
  IdTitulo: String;
begin
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency :=0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').AsCurrency :=0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=0;
  dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsCurrency := 0;

  lPonteiroItens := dmGeral.FIN_CD_M_CBX_TIT.GetBookmark;
  IdTitulo := dmGeral.FIN_CD_M_CBX_TIT.FieldByName('ID_TITULO').AsString;

  dmGeral.FIN_CD_M_CBX_TIT.First;
  while not dmGeral.FIN_CD_M_CBX_TIT.eof do
    begin
      if dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_SELECAO').AsBoolean = True then
         begin
           dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency :=
                   dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency +
                    dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency;
           dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').AsCurrency :=
                   dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_OPE').AsCurrency +
                    dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency;
            dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=
                   dmGeral.FIN_CD_M_CBX.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency +
                    dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency;
           dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsCurrency :=
                   dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsCurrency +
                    dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency;
         end;

      dmGeral.FIN_CD_M_CBX_TIT.Next;
    end;

  if trim(IdTitulo) <> '' then
     begin
       dmGeral.FIN_CD_M_CBX_TIT.Locate('id_titulo',IdTitulo,[]);
     end;
     dmGeral.FIN_CD_M_CBX_TIT.GotoBookmark(lPonteiroItens);
end;

PROCEDURE FinDeletaTitNaoSelecionadosCbx;
begin
  dmGeral.FIN_CD_M_CBX_TIT.First;
  while not dmGeral.FIN_CD_M_CBX_TIT.EOF do
    begin
      if dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_SELECAO').AsBoolean = False then
        begin
          dmGeral.FIN_CD_M_CBX_TIT.Delete;
        end
      else
        begin
          dmGeral.FIN_CD_M_CBX_TIT.Next;
        end;
    end;
end;


end.
