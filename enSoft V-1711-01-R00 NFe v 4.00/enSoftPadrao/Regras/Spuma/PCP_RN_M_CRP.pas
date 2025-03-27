unit PCP_RN_M_CRP;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


procedure PcpNovoCrpIte(DataSet: TDataSet);
procedure PcpNovoCrpIteBxa(DataSet: TDataSet);


procedure PcpValidaCrp(DataSet: TDataSet);
procedure PcpValidaCrpIte(DataSet: TDataSet);
procedure PcpValidaCrpIteBxa(DataSet: TDataSet);
procedure pcpOutrasValCrp;


procedure PCP_CD_M_CRP_ITEitemChange;



implementation
Uses uDmGeral,enConstantes, uProxy, enFunc;


procedure PcpOutrasValCrp;
var
  xMensErro: String;
begin
  xMensErro := '';
  dmGeral.PCP_CD_M_CRP_ITE.cancel;
  if dmGeral.PCP_CD_M_CRP_ITE.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum item foi inserido no controle de recipiente!' + #13;
     end;
  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;


procedure PcpNovoCrpIte;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_CRP_ITE.FieldByName('id_sequencia').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_CRP_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').AsString:='0';
  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').AsString:='0';
  dmgeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE_BAIXADA').AsString:='0';

end;

procedure PcpNovoCrpIteBxa;
begin

end;

procedure PcpValidaCrp;
var
  xMensErro: string;
  xTamDoc: Integer;
begin
  xMensErro := '';

    if (dmGeral.PCP_CD_M_CRP.FieldByName('dta_emissao').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de Emissão deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP.FieldByName('dta_emissao').FocusControl;
     end;

    if (dmGeral.PCP_CD_M_CRP.FieldByName('id_responsavel').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Responsável deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP.FieldByName('id_responsavel').FocusControl;
     end;

    if (dmGeral.PCP_CD_M_CRP.FieldByName('id_rpt').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Recipiente deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP.FieldByName('id_rpt').FocusControl;
     end;

    if (dmGeral.PCP_CD_M_CRP.FieldByName('id_grupo').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Grupo deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP.FieldByName('id_grupo').FocusControl;
     end;


    if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure PcpValidaCrpIte;
var
  xMensErro: string;
begin
  xMensErro := '';

    if (dmGeral.PCP_CD_M_CRP_ITE.FieldByName('id_item').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('id_item').FocusControl;
     end;

    if (dmGeral.PCP_CD_M_CRP_ITE.FieldByName('num_lote').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº do lote deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('num_lote').FocusControl;
     end;

    if (dmGeral.PCP_CD_M_CRP_ITE.FieldByName('qtde').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('qtde').FocusControl;
     end;

    if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure PcpValidaCrpIteBxa;
begin

end;


procedure PCP_CD_M_CRP_ITEitemChange;
begin
   dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').AsString]));

   if(not dmGeral.BUS_CD_C_ITE.IsEmpty) then
     begin
        if(dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsString ='4') then
          begin
            ShowMessage('Só é permitido itens que controla lote!');
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMECOR').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMETAM').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').Text := '';
            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_BUSCA_ITEM').FocusControl;
            abort;
          end;
     end;
end;


end.
