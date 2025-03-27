unit uValidacoes;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Forms,Vcl.Dialogs,ACBrValidador;


procedure ValidaCAD_CD_C_PCC(DataSet: TDataSet);
procedure ValidaCAD_CD_C_NTR(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CNE(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CFO(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CID(DataSet: TDataSet);
procedure ValidaCAD_CD_C_PAI(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CIN(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CUL(DataSet: TDataSet);
procedure ValidaCAD_CD_C_GRP(DataSet: TDataSet);
procedure ValidaCAD_CD_C_MTV(DataSet: TDataSet);
procedure ValidaCAD_CD_C_NAT(DataSet: TDataSet);
procedure ValidaCAD_CD_C_NCM(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CPG(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CTC(DataSet: TDataSet);
procedure ValidaCAD_CD_C_MVE(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FAM(DataSet: TDataSet);
procedure MascaraCAD_CD_C_MVE_MES(DataSet: TDataSet);
procedure NovoCAD_CD_C_MVE_MES(DataSet: TDataSet);

procedure ValidaCAD_CD_C_ECF(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ECF_FPG(DataSet: TDataSet);
procedure ValidaCAD_CD_C_PCT(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TIF(DataSet: TDataSet);
procedure ValidaCAD_CD_C_GRU(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TME(DataSet: TDataSet);
procedure ValidaCAD_CD_C_UND(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TRI(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TRI_REG(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TRI_REG_Outras;
procedure ValidaCAD_CD_C_CVE(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TDF(DataSet: TDataSet);
procedure ValidaCAD_CD_C_LTO(DataSet: TDataSet);
procedure ValidaCAD_CD_C_SET(DataSet: TDataSet);
procedure ValidaCAD_CD_C_VEI(DataSet: TDataSet);
procedure ValidaCAD_CD_C_RAM(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CCU(DataSet: TDataSet);
procedure ValidaCAD_CD_C_COR(DataSet: TDataSet);
procedure ValidaCAD_CD_C_TAM(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FPG(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ROT(DataSet: TDataSet);
procedure ValidaCAD_CD_C_PEC(DataSet: TDataSet);
procedure ValidaCAD_CD_C_INF(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FUN(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FUN_Senha(SenhaAnt,SenhaAtual, NovaSenha, ConfirSenha: String);
procedure ValidaCAD_CD_C_CLI(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CLI_INF(DataSet: TDataSet);
procedure MascaraCAD_CD_C_CLI_INF;
procedure ValidaCAD_CD_C_CLI_REC(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CLI_CTO(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FOR(DataSet: TDataSet);
procedure ValidaCAD_CD_C_FOR_REP(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ALM(DataSet: TDataSet);
procedure ValidaCAD_CD_C_PRG(DataSet: TDataSet);
procedure ValidaCAD_CD_C_MCT(DataSet: TDataSet);
procedure ValidaCAD_CD_C_CCR(DataSet: TDataSet);

procedure ValidaOFI_CD_C_TIO(DataSet: TDataSet);



procedure ValidaPCP_CD_C_CDP(DataSet: TDataSet);
procedure ValidaPCP_CD_C_CDR(DataSet: TDataSet);
procedure ValidaPCP_CD_C_CNF(DataSet: TDataSet);
procedure ValidaPCP_CD_C_CRG(DataSet: TDataSet);
procedure ValidaPCP_CD_C_DIS(DataSet: TDataSet);
procedure ValidaPCP_CD_C_ESP(DataSet: TDataSet);
procedure ValidaPCP_CD_C_INS(DataSet: TDataSet);
procedure ValidaPCP_CD_C_MDE(DataSet: TDataSet);
procedure ValidaPCP_CD_C_MEQ(DataSet: TDataSet);
procedure MascaraPCP_CD_C_MEQ(DataSet: TDataSet);
procedure ValidaPCP_CD_C_MTA(DataSet: TDataSet);
procedure ValidaPCP_CD_C_ORI(DataSet: TDataSet);
procedure ValidaPCP_CD_C_PRP(DataSet: TDataSet);
procedure ValidaPCP_CD_C_PRQ(DataSet: TDataSet);
procedure ValidaPCP_CD_C_REG(DataSet: TDataSet);
procedure ValidaPCP_CD_C_ROT(DataSet: TDataSet);
procedure ValidaPCP_CD_C_RPT(DataSet: TDataSet);
procedure ValidaPCP_CD_C_TIN(DataSet: TDataSet);
procedure ValidaPCP_CD_C_TLM(DataSet: TDataSet);
procedure ValidaPCP_CD_C_TPP(DataSet: TDataSet);
procedure ValidaPCP_CD_C_FTE(DataSet: TDataSet);
procedure ValidaPCP_CD_C_FTE_ETQ(DataSet: TDataSet);
procedure ValidaPCP_CD_C_CUE(DataSet: TDataSet);
procedure ValidaPCP_CD_C_CLE(DataSet: TDataSet);
procedure ValidaCTC_CD_C_EPI(DataSet: TDataSet);

procedure MascaraCAD_CD_C_CLI_CRD;
procedure CalculaLimCreditoCAD_CD_C_CLI;

//Verifica se há alguma tela aberta que utiliza o dataset FAT_CD_M_NFE.Responsavel:Luan.Data:10/09/2015
function VerificarTelasAbertasFAT_CD_M_NFE:Boolean;
function VerifVersao:Boolean;

implementation
Uses uDmGeral,enConstantes, enFunc, uDmCtc, uDmSgq, uProxy;

Var
xMensErro:string;

procedure MascaraCAD_CD_C_CLI_CRD;
BEGIN
    //
    dmGeral.CAD_CD_C_CLI_CRDlim_valor.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_CLI_CRDlim_saldo.DisplayFormat := CMascaraValor;
END;


procedure CalculaLimCreditoCAD_CD_C_CLI;
begin
  dmGeral.CAD_CD_C_CLI_CRD.First;

  dmGeral.CAD_CD_C_CLI.FieldByName('LIM_SALDO').AsCurrency := 0;
  dmGeral.CAD_CD_C_CLI.FieldByname('LIM_VALOR').AsCurrency := 0;
  while not dmGeral.CAD_CD_C_CLI_CRD.eof do
    begin
      dmGeral.CAD_CD_C_CLI.FieldByName('LIM_VALOR').AsCurrency :=
              dmGeral.CAD_CD_C_CLI.FieldByName('LIM_VALOR').AsCurrency +
              dmGeral.CAD_CD_C_CLI_CRD.FieldByName('LIM_VALOR').AsCurrency;

      dmGeral.CAD_CD_C_CLI.FieldByName('LIM_SALDO').AsCurrency :=
              dmGeral.CAD_CD_C_CLI.FieldByName('LIM_SALDO').AsCurrency +
              dmGeral.CAD_CD_C_CLI_CRD.FieldByName('LIM_SALDO').AsCurrency;
      dmGeral.CAD_CD_C_CLI_CRD.Next;
    end;


end;

function VerificarTelasAbertasFAT_CD_M_NFE:Boolean;
var
  i: integer;
  nome_tela:string;
begin
  i := 0;
  result := true;
  while ((i < Screen.FormCount) and (result = true)) do
     begin
       if Screen.Forms[I] is TForm then
          begin
            if Screen.Forms[I].Showing  then
               begin
                 if (pos(Screen.Forms[I].Name,'EST_FM_M_NFC-EST_FM_M_NFD-EST_FM_M_NFE-EST_FM_M_NFS-CMP_FM_M_XML-FAT_FM_M_NFE_FRE-EST_FM_M_NCF') <> 0) then
                    begin
                      if (Screen.Forms[i].Name = 'EST_FM_M_NFC') then
                         begin
                            nome_tela := 'Devolução do Cliente';
                         end;
                      if (Screen.Forms[i].Name = 'EST_FM_M_NFD') then
                         begin
                            nome_tela := 'Nota Fiscal de Devolução ao Fornecedor';
                         end;
                      if (Screen.Forms[i].Name = 'EST_FM_M_NFE') then
                         begin
                           nome_tela := 'Nota Fiscal de Entrada';
                         end;
                      if (Screen.Forms[i].Name = 'EST_FM_M_NFS') then
                         begin
                            nome_tela := 'Nota Fiscal de Saída';
                         end;
                      if (Screen.Forms[i].Name = 'CMP_FM_M_XML') then
                         begin
                            nome_tela := 'Importação de XML';
                         end;
                      if (Screen.Forms[i].Name = 'FAT_FM_M_NFE_FRE') then
                         begin
                            nome_tela := 'Conhecimento de Frete';
                         end;
                       if (Screen.Forms[i].Name = 'EST_FM_M_NCF') then
                         begin
                            nome_tela := 'Faturamento de Devolução de Vendas';
                         end;
                       ShowMessage('É preciso que feche o formulário de '+nome_tela+'.');
                       result := false;
                    end;
               end;
          end;
       i := i+1;
     end;
end;

procedure ValidaCAD_CD_C_PCC(DataSet: TDataSet);
begin
  xMensErro:='';
  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('cod_cta').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Cód. Conta deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('cod_cta').FocusControl;
     end;
  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('nome_cta').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Descrição da Conta deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('nome_cta').FocusControl;
     end;

  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('nivel').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Nível deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('nivel').FocusControl;
     end;

  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('cod_nat_cc').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Código natureza deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('cod_nat_cc').FocusControl;
     end;

  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('ind_cta').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Indicador tipo de conta deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('ind_cta').FocusControl;
     end;

  if TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('cod_cta_ref').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Cód. Conta Correlacionada no Plano de Contas deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PCC.FieldByName('cod_cta_ref').FocusControl;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_NTR(DataSet: TDataSet);
begin
    xMensErro:='';

  if TRIM(DataSet.FieldByName('codigo').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Código'+ #13;
     end;

  if TRIM(DataSet.FieldByName('descricao').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Descrição'+ #13;
     end;


  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCAD_CD_C_CNE(DataSet: TDataSet);
var
xd:integer;
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_cnae').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_CNE.Close;
            dmGeral.BUS_CD_C_CNE.Data :=
            dmGeral.BUS_CD_C_CNE.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_cnae').asstring]));
            dmGeral.BUS_CD_C_CNE.Open;
            if (not dmGeral.BUS_CD_C_CNE.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.CNAE já cadastrado.'+ #13;
               end;
          end;
     end;

  if (dmGeral.CAD_CD_C_CNE.FieldByName('id_cnae').AsString=null) or
     (dmGeral.CAD_CD_C_CNE.FieldByName('id_cnae').AsString='') then
     begin
       xMensErro:= xMensErro + '.CNAE deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_CNE.FieldByName('id_cnae').FocusControl;
     end;
  if dmGeral.CAD_CD_C_CNE.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_CFO(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_cfo').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_CFO.Close;
            dmGeral.BUS_CD_C_CFO.Data :=
            dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_cfo').asstring]));
            dmGeral.BUS_CD_C_CFO.Open;
            if (not dmGeral.BUS_CD_C_CFO.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.CFOP já cadastrado.'+ #13;
               end;
          end;
     end;

  if (dmGeral.CAD_CD_C_CFO.FieldByName('id_cfo').AsString=null) or
     (dmGeral.CAD_CD_C_CFO.FieldByName('id_cfo').AsString='') then
     begin
       xMensErro:= xMensErro + '.CFO deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_CFO.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_CFO.FieldByName('desc_nat_operacao_nfe').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição resumida.'+ #13;
     end;


  dmGeral.BUS_CD_C_NAT.Close;
  dmGeral.BUS_CD_C_NAT.Data :=
  dmGeral.BUS_CD_C_NAT.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_classe').AsString]));
  if dmGeral.BUS_CD_C_NAT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Natureza não cadastrada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCAD_CD_C_PAI(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_PAI.FieldByName('id_pais').AsString='' then
     begin
       xMensErro:= xMensErro + '.Codigo do país deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_PAI.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição do país deve ser informado.'+ #13;
     end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CID(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_CID.FieldByName('id_cidade').AsString='' then
     begin
       xMensErro:= xMensErro + '.Codigo da cidade deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_CID.FieldByName('cod_pais').AsString='' then
     begin
       xMensErro:= xMensErro + '.Codigo do país deve ser informado.'+ #13;
     end;

  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_cidade').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_CID.Close;
            dmGeral.BUS_CD_C_CID.Data :=
            dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_cidade').asstring]));
            dmGeral.BUS_CD_C_CID.Open;
            if (not dmGeral.BUS_CD_C_CID.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Cidade já cadastrada.'+ #13;
               end;
          end;
     end;

  if dmGeral.CAD_CD_C_CID.FieldByName('nome').AsString='' then
     begin
       xMensErro:= xMensErro + '.Nome da cidade deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_CID.FieldByName('uf').AsString='' then
     begin
       xMensErro:= xMensErro + '.Estado deve ser informada.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_CID.FieldByName('cep').IsNull) or
     (dmGeral.CAD_CD_C_CID.FieldByName('cep').AsString='')then
     begin
       xMensErro:= xMensErro + '.CEP deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CIN(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_CIN.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_NAT(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_classe').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_NAT.Close;
            dmGeral.BUS_CD_C_NAT.Data :=
            dmGeral.BUS_CD_C_NAT.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_classe').asstring]));
            dmGeral.BUS_CD_C_NAT.Open;
            if (not dmGeral.BUS_CD_C_NAT.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Natureza já cadastrado.'+ #13;
               end;
          end;
     end;

  if (dmGeral.CAD_CD_C_NAT.FieldByName('id_classe').AsString=null) or
     (dmGeral.CAD_CD_C_NAT.FieldByName('id_classe').AsString='') then
     begin
       xMensErro:= xMensErro + '.Natureza deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_NAT.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_NCM(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_ncm').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_NCM.Close;
            dmGeral.BUS_CD_C_NCM.Data :=
            dmGeral.BUS_CD_C_NCM.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_ncm').asstring]));
            dmGeral.BUS_CD_C_NCM.Open;
            if (not dmGeral.BUS_CD_C_NCM.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.NCM já cadastrado.'+ #13;
               end;
          end;
     end;
  if (dmGeral.CAD_CD_C_NCM.FieldByName('id_ncm').AsString=null) or
     (dmGeral.CAD_CD_C_NCM.FieldByName('id_ncm').AsString='') then
     begin
       xMensErro:= xMensErro + '.NCM deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_NCM.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CPG(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_CPG.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_CPG.FieldByName('num_parcelas').IsNull then
     begin
       xMensErro:= xMensErro + '.Num.parcela deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CTC(DataSet: TDataSet);
begin
  xMensErro:='';
  if  (dmgeral.CAD_CD_C_CTC.FieldByName('tipo').AsString = '1') then
    begin
      if (dmgeral.CAD_CD_C_CTC.FieldByName('banco').AsString = '') then
        begin
          xMensErro:= xMensErro + '.Banco deve ser informado.'+ #13;
        end;
      if (dmgeral.CAD_CD_C_CTC.FieldByName('agencia').AsString = '') then
        begin
          xMensErro:= xMensErro + '.Agencia deve ser informada.'+ #13;
        end;
       //A pedido de sangia retirei essas validacões.Responsavel:Luan.Data:30/09/2015
      {if (dmgeral.CAD_CD_C_CTC.FieldByName('cedente_cod').AsString = '') then
        begin
          xMensErro:= xMensErro + '.Cód. do Cedente deve ser informado.'+ #13;
        end;
      if (dmgeral.CAD_CD_C_CTC.FieldByName('cedente_nom').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Nome do Cedente deve ser informado.'+ #13;
        end;
      if (dmgeral.CAD_CD_C_CTC.FieldByName('cedente_mail').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Email do Cedente deve ser informado.'+ #13;
        end;}
      if (dmgeral.CAD_CD_C_CTC.FieldByName('conta_corrente').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
        end;
      if (dmgeral.CAD_CD_C_CTC.FieldByName('conta_corrente_dig').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Dígito da conta corrente deve ser informada.'+ #13;
        end;

      if (dmgeral.CAD_CD_C_CTC.FieldByName('descricao').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
        end;
    end
  else
    begin
      if (dmgeral.CAD_CD_C_CTC.FieldByName('descricao').AsString = '')   then
        begin
          xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
        end;
    end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_MVE(DataSet: TDataSet);
begin
  xMensErro:= '';
  if (dmGeral.CAD_CD_C_MVE.FieldByName('DESCRICAO').AsString='') then
     begin
       xMensErro := xMensErro + '.Descrição deve ser informada.'+#13;
     end;

  if dmGeral.CAD_CD_C_PAR_MODome.AsBoolean and (dmGeral.CAD_CD_C_MVE.FieldByName('ID_CAT').AsString='') then
    begin
      if (dmGeral.CAD_CD_C_MVE.FieldByName('ID_CAT').AsString='') then
        xMensErro := xMensErro + '.Categoria deve ser informada.'+#13;

      if (dmGeral.CAD_CD_C_MVE.FieldByName('ID_MAR').AsString='') then
        xMensErro := xMensErro + '.Marca deve ser informada.'+#13;
    end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure MascaraCAD_CD_C_MVE_MES(DataSet: TDataSet);
begin
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_01.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_02.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_03.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_04.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_05.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_06.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_07.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_08.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_09.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_10.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_11.DisplayFormat := CMascaraValor;
    dmGeral.CAD_CD_C_MTV_MESvalor_mes_12.DisplayFormat := CMascaraValor;
end;

procedure NovoCAD_CD_C_MVE_MES(DataSet: TDataSet);
begin
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_01').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_02').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_03').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_04').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_05').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_06').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_07').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_08').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_09').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_10').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_11').AsCurrency := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_12').AsCurrency := 0;

    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_01').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_02').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_03').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_04').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_05').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_06').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_07').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_08').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_09').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_10').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_11').AsFloat := 0;
    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_12').AsFloat := 0;
end;

procedure ValidaCAD_CD_C_ECF_FPG(DataSet: TDataSet);
begin
  xMensErro:= '';
  if (dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ECF_SERIAL_IMPRESSORA').AsString='') then
     begin
       xMensErro := xMensErro + '.Serial deve ser informada.'+#13;
     end;

  {if (dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_MARCA').AsString='') then
     begin
       xMensErro := xMensErro + '.Marca deve ser informada.'+#13;
     end;}

  if ((dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').IsNull) or
      (dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString='')) then
     begin
       xMensErro := xMensErro + '.Forma de pagamento do sistema deve ser informada.'+#13;
     end;

   if ((dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').IsNull) or
       (dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString='')) then
     begin
       xMensErro := xMensErro + '.Forma de pagamento da impressora fiscal deve ser informada.'+#13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_ECF(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_ECF.FieldByName('ecf_serial_impressora').AsString='' then
     begin
       xMensErro:= xMensErro + '.Serial deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_ECF.FieldByName('ecf_marca_impressora').IsNull then
     begin
       xMensErro:= xMensErro + '.Marca deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_ECF.FieldByName('ecf_modelo_impressora').IsNull then
     begin
       xMensErro:= xMensErro + '.Modelo deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_ECF.FieldByName('ecf_caixa').IsNull then
     begin
       xMensErro:= xMensErro + '.Caixa deve ser informada.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_ECF.FieldByName('id_empresa').AsString='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_PCT(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_plano').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_PCT.Close;
            dmGeral.BUS_CD_C_PCT.Data :=
            dmGeral.BUS_CD_C_PCT.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_plano').asstring]));
            dmGeral.BUS_CD_C_PCT.Open;
            if (not dmGeral.BUS_CD_C_PCT.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Conta já cadastrado.'+ #13;
               end;
          end;
     end;
  if dmGeral.CAD_CD_C_PCT.FieldByName('id_plano').AsString='' then
     begin
       xMensErro:= xMensErro + '.Código deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_PCT.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_CDP(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_CDP.FieldByName('dta_lancamento').IsNull then
     begin
       xMensErro:= xMensErro + 'A data deve ser informada.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_comp_01').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida do comprimento 01 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_comp_02').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida do comprimento 02 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_comp_03').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida do comprimento 03 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_largura_01').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da largura 01 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_largura_02').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da largura 02 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_largura_03').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da largura 03 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_altura_01').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da altura 01 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_altura_02').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da altura 02 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_altura_03').IsNull then
     begin
       xMensErro:= xMensErro + 'Medida da altura 03 deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_comp_media').IsNull then
     begin
       xMensErro:= xMensErro + 'Media do comprimento deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_largura_media').IsNull then
     begin
       xMensErro:= xMensErro + 'Media da largura deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_CDP.FieldByName('med_altura_media').IsNull then
     begin
       xMensErro:= xMensErro + 'Media da altura deve ser informado.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);


end;

procedure ValidaCAD_CD_C_TIF(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_TIF.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_TIF.FieldByName('sigla').AsString='' then
     begin
       xMensErro:= xMensErro + '.Sigla deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCTC_CD_C_EPI(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmCtc.ctc_cd_c_epi.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;



procedure ValidaCAD_CD_C_GRU(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_grupo').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_GRU.Close;
            dmGeral.BUS_CD_C_GRU.Data :=
            dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_grupo').asstring]));
            dmGeral.BUS_CD_C_GRU.Open;
            if (not dmGeral.BUS_CD_C_GRU.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Grupo já cadastrado.'+ #13;
               end;
          end;
     end;
  if (dmGeral.CAD_CD_C_GRU.FieldByName('id_grupo').AsString=null) or
     (dmGeral.CAD_CD_C_GRU.FieldByName('id_grupo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Grupo deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_GRU.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_GRU.FieldByName('imprime_selo_etq').AsBoolean then
     begin
       if trim(dmGeral.CAD_CD_C_GRU.FieldByName('nome_selo_etq').AsString) = '' then
          begin
            xMensErro:= xMensErro + '.Nome do selo deve ser informado'+ #13;
          end;
     end;

 if dmgeral.CAD_CD_C_GRU.FieldByName('nivel').AsInteger > 1 then
    begin
       if dmGeral.CAD_CD_C_GRU.FieldByName('origem_mercadoria').AsString='' then
           begin
             xMensErro:= xMensErro + '.Origem deve ser informada.'+ #13;
           end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('tipo_item').AsString='') or
           (dmGeral.CAD_CD_C_GRU.FieldByName('tipo_item').IsNull) then
           begin
             xMensErro:= xMensErro + '.Tipo do item deve ser informada.'+ #13;
           end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('mva').AsString='') or
           (dmGeral.CAD_CD_C_GRU.FieldByName('mva').IsNull) then
           begin
             xMensErro:= xMensErro + '.MVA inválido.'+ #13;
           end;
        if dmGeral.CAD_CD_C_GRU.FieldByName('ID_TRIBUTO').AsString = '' then
          begin
              xMensErro:= xMensErro + '.Tributo deve ser informada.'+ #13;
          end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('PER_IPI').AsString = '') or
           (dmGeral.CAD_CD_C_GRU.FieldByName('PER_IPI').IsNull) then
          begin
              xMensErro:= xMensErro + '.IPI inválido.'+ #13;
          end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('ALI_INTERNA_ICMS').AsString = '') or
            (dmGeral.CAD_CD_C_GRU.FieldByName('ALI_INTERNA_ICMS').IsNull) then
          begin
              xMensErro:= xMensErro + '.Alíquota interna inválido.'+ #13;
          end;

        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.PIS Entrada deve ser informada.'+ #13;
          end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.PIS Saída deve ser informada.'+ #13;
          end;

        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.COFINS Entrada deve ser informada.'+ #13;
          end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.COFINS Saída deve ser informada.'+ #13;
          end;

        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_IPI_ENTRADA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.IPI Entrada deve ser informada.'+ #13;
          end;
        if (dmGeral.CAD_CD_C_GRU.FieldByName('ID_ST_IPI_SAIDA').AsString = '') then
          begin
              xMensErro:= xMensErro + '.IPI Saída deve ser informada.'+ #13;
          end;

        dmGeral.BUS_CD_C_TRI.Close;
        dmGeral.BUS_CD_C_TRI.Data :=
        dmGeral.BUS_CD_C_TRI.DataRequest(
                VarArrayOf([0, dataset.FieldByName('id_tributo').AsString]));
        if dmGeral.BUS_CD_C_TRI.IsEmpty then
           begin
             xMensErro:= xMensErro + '.Tributo não cadastrado.'+ #13;
           end;
        // if not dmGeral.BUS_CD_X_PIS_ENT.Locate('CODIGO',dmGeral.CAD_CD_C_GRU.FieldByName('id_st_pis_entrada').AsString,[loPartialKey,loCaseInsensitive]) Then
        //    begin
        //      xMensErro:= xMensErro + '.Tributo não cadastrado.'+ #13;
        //    end;

        if (dmGeral.CAD_CD_C_GRU.FieldByName('sgq_calc_bloco_produzir').AsBoolean = true) then
           begin
             if trim(dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma').AsString) = '' then
               xMensErro:= xMensErro + '.Item do tipo bloco de espuma'+ #13;
           end;
    end;
 if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_TME(DataSet: TDataSet);
begin
    xMensErro:='';
  if (dmGeral.CAD_CD_C_TME.FieldByName('ATIVO').IsNull) then
     begin
       xMensErro:= xMensErro + '.O tipo de estoque deve ser ativo ou initivo.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_TME.FieldByName('ESTO_CRITICA').IsNull) then
     begin
       xMensErro:= xMensErro + '.O campo critica estoque deve ser informado.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_TME.FieldByName('ESTO_MOVIMENTA').IsNull) then
     begin
       xMensErro:= xMensErro + '.O campo movimenta estoque deve ser informado.'+ #13;
     end;

  if (dmGeral.CAD_CD_C_TME.FieldByName('descricao').AsString='') OR
     (dmGeral.CAD_CD_C_TME.FieldByName('descricao').IsNull) then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_TME.FieldByName('TIPO_MOVIMENTO').IsNull) then
     begin
       xMensErro:= xMensErro + '.Tipo do movimento deve ser informado.'+ #13;
     end;
  if (dmGeral.CAD_CD_C_TME.FieldByName('INDICADOR').IsNull) then
     begin
       xMensErro:= xMensErro + '.Indicador deve ser informado.'+ #13;
     end;

  if (dmGeral.CAD_CD_C_TME.FieldByName('cfo_interno_pf').AsString='') OR
     (dmGeral.CAD_CD_C_TME.FieldByName('cfo_interno_pf').IsNull) then
     begin
       xMensErro:= xMensErro + '.CFOP interno pessoa física deve ser informado.'+ #13;
     end
  else
    begin
      dmGeral.BUS_CD_C_CFO.Close;
      dmGeral.BUS_CD_C_CFO.Data :=
      dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, Dataset.FieldByName('cfo_interno_pf').asstring]));
      dmGeral.BUS_CD_C_CFO.Open;
      if dmGeral.BUS_CD_C_CFO.IsEmpty then
        begin
          xMensErro:= xMensErro + '.CFOP interno pessoa fisica não cadastrado.'+ #13;
        end;
    end;

  if (dmGeral.CAD_CD_C_TME.FieldByName('cfo_interno_pj').AsString='') OR
     (dmGeral.CAD_CD_C_TME.FieldByName('cfo_interno_pj').IsNull) then
     begin
       xMensErro:= xMensErro + '.CFOP interno pessoa jurídica deve ser informado.'+ #13;
     end
  else
    begin
      dmGeral.BUS_CD_C_CFO.Close;
      dmGeral.BUS_CD_C_CFO.Data :=
      dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, Dataset.FieldByName('cfo_interno_pj').asstring]));
      dmGeral.BUS_CD_C_CFO.Open;
      if dmGeral.BUS_CD_C_CFO.IsEmpty then
        begin
          xMensErro:= xMensErro + '.CFOP interno pessoa jurídica não cadastrado.'+ #13;
        end;
    end;

  if (dmGeral.CAD_CD_C_TME.FieldByName('cfo_externo_pf').AsString='') OR
     (dmGeral.CAD_CD_C_TME.FieldByName('cfo_externo_pf').IsNull) then
     begin
       xMensErro:= xMensErro + '.CFOP externo pessoa física deve ser informado.'+ #13;
     end
  else
     begin
       dmGeral.BUS_CD_C_CFO.Close;
       dmGeral.BUS_CD_C_CFO.Data :=
       dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, Dataset.FieldByName('cfo_externo_pf').asstring]));
       dmGeral.BUS_CD_C_CFO.Open;
       if dmGeral.BUS_CD_C_CFO.IsEmpty then
          begin
            xMensErro:= xMensErro + '.CFOP externo pessoa física não cadastrado.'+ #13;
          end;
     end;

  if (dmGeral.CAD_CD_C_TME.FieldByName('cfo_externo_pj').AsString='') OR
     (dmGeral.CAD_CD_C_TME.FieldByName('cfo_externo_pj').IsNull) then
     begin
       xMensErro:= xMensErro + '.CFOP externo pessoa jurídica deve ser informado.'+ #13;
     end
  else
     begin
       dmGeral.BUS_CD_C_CFO.Close;
       dmGeral.BUS_CD_C_CFO.Data :=
       dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0, Dataset.FieldByName('cfo_externo_pj').asstring]));
       dmGeral.BUS_CD_C_CFO.Open;
       if dmGeral.BUS_CD_C_CFO.IsEmpty then
          begin
            xMensErro:= xMensErro + '.CFOP externo pessoa jurídica não cadastrado.'+ #13;
          end;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_UND(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_unidade').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_UND.Close;
            dmGeral.BUS_CD_C_UND.Data :=
            dmGeral.BUS_CD_C_UND.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_unidade').asstring]));
            dmGeral.BUS_CD_C_UND.Open;
            if (not dmGeral.BUS_CD_C_UND.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Unidade já cadastrado.'+ #13;
               end;
          end;
     end;
  if (dmGeral.CAD_CD_C_UND.FieldByName('id_unidade').AsString=null) or
     (dmGeral.CAD_CD_C_UND.FieldByName('id_unidade').AsString='') then
     begin
       xMensErro:= xMensErro + '.Unidade deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_UND.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_TRI(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_TRI.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
 {  if dataset.State in [dsInsert] then
     begin
       if CAD_CD_C_TRI_REG.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Você deve informa informar pelo menos uma regra.'+ #13;
          end;
     end;
 }
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_TRI_REG(DataSet: TDataSet);
begin

  xMensErro := '';

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_empresa').IsNull then
     begin
       xMensErro:= xMensErro + '.Código da empresa'+ #13;
     end;

  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_tipo_mov_estoque').AsString]));
  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Tipo deestoque de vendas não cadastrado.'+ #13;
     end;

  dmGeral.BUS_CD_C_INF.Close;
  dmGeral.BUS_CD_C_INF.Data :=
  dmGeral.BUS_CD_C_INF.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_inf').AsString]));
  if dmGeral.BUS_CD_C_INF.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Informação fiscal interno não cadastrado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').IsNull then
     begin
       xMensErro:= xMensErro + '.CST contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('cnt_csosn').IsNull then
     begin
       xMensErro:= xMensErro + '.CSOSN contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('nct_id_st_icm').IsNull then
     begin
       xMensErro:= xMensErro + '.CST não contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('nct_csosn').IsNull then
     begin
       xMensErro:= xMensErro + '.CSOSN não contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('cnt_aliquota').IsNull then
     begin
       xMensErro:= xMensErro + '.Alíquota interna contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('nct_aliquota').IsNull then
     begin
       xMensErro:= xMensErro + '.Alíquota interna não-contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('cnt_reducao').IsNull then
     begin
       xMensErro:= xMensErro + '.% redução interna contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('nct_reducao').IsNull then
     begin
       xMensErro:= xMensErro + '.% redução interna não-contribuinte deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('part_per_aliq_dest').IsNull then
     begin
       xMensErro:= xMensErro + '.Alíquota de destino deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_TRI_REG.FieldByName('part_per_red_dest').IsNull then
     begin
       xMensErro:= xMensErro + '.% redução destino deve ser informada.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_TRI_REG_Outras;
var
  xMensErro: String;
begin
  xMensErro := '';
  dmGeral.CAD_CD_C_TRI_REG.cancel;
  if dmGeral.CAD_CD_C_TRI_REG.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhuma tributação foi inserida' + #13;
     end;
  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;

procedure ValidaCAD_CD_C_CVE(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_TDF(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_LTO(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_LTO.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_SET(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_SET.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_SET.FieldByName('tipo').AsInteger=-1 then
     begin
       xMensErro:= xMensErro + '.Tipo do setor deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_VEI(DataSet: TDataSet);
begin
  xMensErro:='';
  if dataset.State in [dsInsert] then
     begin
       if Dataset.FieldByName('id_placa').asstring<>'' then
          begin
            dmGeral.BUS_CD_C_VEI.Close;
            dmGeral.BUS_CD_C_VEI.Data :=
            dmGeral.BUS_CD_C_VEI.DataRequest(VarArrayOf([3, Dataset.FieldByName('id_placa').asstring]));
            dmGeral.BUS_CD_C_VEI.Open;
            if (not dmGeral.BUS_CD_C_VEI.IsEmpty) then
               begin
                 xMensErro:= xMensErro + '.Placa já cadastrada.'+ #13;
               end;
          end;
     end;

  if (dmGeral.CAD_CD_C_VEI.FieldByName('id_placa').AsString = null) or
     (dmGeral.CAD_CD_C_VEI.FieldByName('id_placa').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Placa deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_VEI.FieldByName('id_placa').FocusControl;
     end;

 { if dmGeral.CAD_CD_C_VEI.FieldByName('descricao').AsString = '' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;  }

  if (dmGeral.CAD_CD_C_VEI.FieldByName('id_mve').AsString = null) or
     (dmGeral.CAD_CD_C_VEI.FieldByName('id_mve').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Modelo deve ser informado.'+ #13;
     end;

 { if (dmGeral.CAD_CD_C_VEI.FieldByName('dta_aquisicao').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de aquisição deve ser informado.'+ #13;
     end;  }


 { if (dmGeral.CAD_CD_C_VEI.FieldByName('alimentacao').AsString = null) or
      (dmGeral.CAD_CD_C_VEI.FieldByName('alimentacao').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Alimentação deve ser informada.'+ #13;
     end; }

 { if (dmGeral.CAD_CD_C_VEI.FieldByName('combustivel').AsString = null) or
      (dmGeral.CAD_CD_C_VEI.FieldByName('combustivel').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Combustivel deve ser informado.'+ #13;
     end; }

  {if (dmGeral.CAD_CD_C_VEI.FieldByName('rastreado').AsString = null) or
      (dmGeral.CAD_CD_C_VEI.FieldByName('rastreado').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Rastreado deve ser informado.'+ #13;
     end; }


  if (dmGeral.CAD_CD_C_VEI.FieldByName('tipo').AsString = null) or
      (dmGeral.CAD_CD_C_VEI.FieldByName('tipo').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Tipo deve ser informado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_VEI.FieldByName('tipo_rodado').AsString <> '' then
     begin
        if dmGeral.CAD_CD_C_VEI.FieldByName('tipo_rodado').AsInteger = 3 then // Cavalo mecânico
           begin
              if (dmGeral.CAD_CD_C_VEI.FieldByName('placa_reboque').AsString = null) or
                 (dmGeral.CAD_CD_C_VEI.FieldByName('placa_reboque').AsString = '') then
                  begin
                    xMensErro:= xMensErro + '.Placa do reboque/carreta'+ #13;
                  end;

              if (dmGeral.CAD_CD_C_VEI.FieldByName('tara_reboque').AsString = null) or
                 (dmGeral.CAD_CD_C_VEI.FieldByName('tara_reboque').AsString = '') then
                  begin
                    xMensErro:= xMensErro + '.Tara do reboque/carreta'+ #13;
                  end;


              if (dmGeral.CAD_CD_C_VEI.FieldByName('cap_reboque').AsString = null) or
                 (dmGeral.CAD_CD_C_VEI.FieldByName('cap_reboque').AsString = '') then
                  begin
                    xMensErro:= xMensErro + '.Capacidade do reboque/carreta'+ #13;
                  end;

              if (dmGeral.CAD_CD_C_VEI.FieldByName('cubagem_reboque').AsString = null) or
                 (dmGeral.CAD_CD_C_VEI.FieldByName('cubagem_reboque').AsString = '') then
                  begin
                    xMensErro:= xMensErro + '.Cubagem do reboque/carreta'+ #13;
                  end;
           end;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_RAM(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_RAM.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  dmGeral.BUS_CD_C_CNE.Close;
  dmGeral.BUS_CD_C_CNE.Data :=
  dmGeral.BUS_CD_C_CNE.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_RAM.FieldByName('id_cnae').AsString]));
  if dmGeral.BUS_CD_C_CNE.IsEmpty then
     begin
       xMensErro:= xMensErro + '.CNAE não cadastrado.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CCU(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_CCU.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CCR(DataSet: TDataSet);
begin
  xMensErro:='';
  if (dmGeral.CAD_CD_C_CCR.FieldByName('descricao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if Length(trim(dmGeral.CAD_CD_C_CCR.FieldByName('CNPJ').text))=14 then  //CNPJ
     begin
       if VerCNPJ(trim(dmGeral.CAD_CD_C_CCR.FieldByName('CNPJ').text)) = false then
         xMensErro:= xMensErro + '.CNPJ Inválido.'+ #13;
     end
  else
     begin
      xMensErro:= xMensErro + '.CNPJ Inválido.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_COR(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_TAM(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_FPG(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_FPG.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;
  if dmGeral.CAD_CD_C_FPG.FieldByName('doc_impresso').IsNull then
     begin
       xMensErro:= xMensErro + '.Doc.Impresso deve ser informado.'+ #13;
     end;
  if dmGeral.CAD_CD_C_FPG.FieldByName('tipo_pagamento').IsNull then
     begin
       xMensErro:= xMensErro + '.Tipo de pagamento deve ser informado.'+ #13;
     end;

  if ((dmGeral.CAD_CD_C_FPG.FieldByName('dias_vencimento').AsString = '') or
      (dmGeral.CAD_CD_C_FPG.FieldByName('dias_vencimento').AsInteger = 0)) then
     begin
       xMensErro := xMensErro + '.Nº de dias para vencimento tem que ser maior que zero.'+#13;
     end;

  if dmGeral.CAD_CD_C_FPG.FieldByName('doc_impresso').asString='3' then
    begin
     if dmGeral.CAD_CD_C_FPG.FieldByName('car_deb_cre').isNull then
        begin
          xMensErro:= xMensErro + '.Tipo do Cartão deve ser informado.'+ #13;
        end;
     if ((dmGeral.CAD_CD_C_FPG.FieldByName('ativa_red_parc_car_rec').AsBoolean=true) and
        (not (dmGeral.CAD_CD_C_FPG.FieldByName('qtde_red_parc_car_rec').AsInteger >0))) then
        begin
           xMensErro:= xMensErro + '.Limite de parcelamento do cartão tem que ser maior que zero.'+ #13;
        end;
    end;



  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('ven_id_plano').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de vendas não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('com_id_plano').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de compras não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de juros no pagamento não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de desconto no pagamento não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('rec_id_plano_juros').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de juros no recebimento não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('rec_id_plano_desconto').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas de desconto no recebimento não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_CCU.Close;
  dmGeral.BUS_CD_C_CCU.Data :=
  dmGeral.BUS_CD_C_CCU.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('id_ccusto').AsString]));
  if dmGeral.BUS_CD_C_CCU.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Centro de custo não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_TIF.Close;
  dmGeral.BUS_CD_C_TIF.Data :=
  dmGeral.BUS_CD_C_TIF.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('id_tipo_financeiro').AsString]));
  if dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Tipo financeiro não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_LTO.Close;
  dmGeral.BUS_CD_C_LTO.Data :=
  dmGeral.BUS_CD_C_LTO.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_FPG.FieldByName('id_local_titulo').AsString]));
  if dmGeral.BUS_CD_C_LTO.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Local do titulo não cadastrado.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_ROT(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_CUL(DataSet: TDataSet);
begin
   xMensErro:='';
  if dmGeral.CAD_CD_C_CUL.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCAD_CD_C_MTV(DataSet: TDataSet);
begin
   xMensErro:='';
  if dmGeral.CAD_CD_C_MTV.FieldByName('id_vendedor').AsString='' then
     begin
       xMensErro:= xMensErro + '.Vendedor deve ser informado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_MTV.FieldByName('ano').AsString='' then
     begin
       xMensErro:= xMensErro + '.Ano deve ser informado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_MTV.FieldByName('id_grupo_prod').AsString='' then
     begin
       xMensErro:= xMensErro + '.Grupo deve ser informado.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCAD_CD_C_GRP(DataSet: TDataSet);
begin
   xMensErro:='';
  if trim(dmGeral.CAD_CD_C_GRP.FieldByName('descricao').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_FAM(DataSet: TDataSet);
BEGIN
  xMensErro:='';
  if dmGeral.CAD_CD_C_FAM.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

END;


procedure ValidaCAD_CD_C_PEC(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_PEC.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if (dmGeral.CAD_CD_C_PEC.FieldByName('per_correcao').AsFloat>0) and
     (dmGeral.CAD_CD_C_PEC.FieldByName('operacao').asInteger=-1) then
     begin
       xMensErro:= xMensErro + '.Você deve informar uma operação.'+ #13;
     end;

  if (dmGeral.CAD_CD_C_PEC.FieldByName('per_correcao_aprazo').AsFloat>0) and
     (dmGeral.CAD_CD_C_PEC.FieldByName('operacao').asInteger=-1) then
     begin
       xMensErro:= xMensErro + '.Você deve informar uma operação.'+ #13;
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True))  then
    BEGIN
       if (dmGeral.CAD_CD_C_PEC.FieldByName('per_correcao_financeiro').AsFloat>0) and
         (dmGeral.CAD_CD_C_PEC.FieldByName('operacao').asInteger=-1) then
         begin
           xMensErro:= xMensErro + '.Você deve informar uma operação.'+ #13;
         end;
    END;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_INF(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_INF.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_FUN_Senha(SenhaAnt,SenhaAtual, NovaSenha, ConfirSenha: String);
begin
  xMensErro := '';
  if trim(SenhaAnt) <> '' then
     begin
        if trim(SenhaAnt) <> trim(SenhaAtual)  then
           begin
             xMensErro:= xMensErro + 'Senha anterior não confere..'+ #13;
             if xMensErro<>'' then
                raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
             abort;
           end;
        if trim(NovaSenha) = '' then
           begin
             xMensErro:= xMensErro + 'Nova senha deve ser informada.'+ #13;
             if xMensErro<>'' then
                raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
             abort;
           end;

        if trim(ConfirSenha) = '' then
           begin
             xMensErro:= xMensErro + 'A confirmação da senha deve ser informada.'+ #13;
             if xMensErro<>'' then
                raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
             abort;
           end;

        if trim(NovaSenha) <> trim(ConfirSenha) then
           begin
             xMensErro:= xMensErro + 'Confirmação da senha inválida.'+ #13;
             if xMensErro<>'' then
                raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
             abort;
           end;
     end
  else
     begin
       if trim(SenhaAtual) = '' then
          begin
            if trim(NovaSenha) = '' then
               begin
                 xMensErro:= xMensErro + 'Nova senha deve ser informada.'+ #13;
                 if xMensErro<>'' then
                    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                 abort;
               end;

            if trim(ConfirSenha) = '' then
               begin
                 xMensErro:= xMensErro + 'A confirmação da senha deve ser informada.'+ #13;
                 if xMensErro<>'' then
                    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                 abort;
               end;

            if trim(NovaSenha) <> trim(ConfirSenha) then
               begin
                 xMensErro:= xMensErro + 'Confirmação da senha inválida.'+ #13;
                 if xMensErro<>'' then
                    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                 abort;
               end;
          end
       else
          begin
             if (trim(NovaSenha) <> '') or (trim(ConfirSenha) <> '') then
               begin
                 xMensErro:= xMensErro + 'A senha anterior deve ser informada.'+ #13;
                 if xMensErro<>'' then
                    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                 abort;
               end;
          end;

     end;

end;

procedure ValidaCAD_CD_C_FUN(DataSet: TDataSet);
Var xTamDoc:Integer;
begin
//Falta

{  integer NOT NULL,

   boolean NOT NULL,

   character varying(50) NOT NULL,
   character varying(50) NOT NULL,
   character(9) NOT NULL,
   character(10) NOT NULL,
   character varying(40) NOT NULL,
   character(10) NOT NULL,

   date NOT NULL,
   date NOT NULL,
   date NOT NULL,

    integer NOT NULL,
    boolean NOT NULL,
    boolean NOT NULL,
    boolean NOT NULL,
    boolean NOT NULL,

   integer NOT NULL,}

  xMensErro:='';

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('ativo').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Ativo.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('nome').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Nome.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('endereco').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Endereço.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('cep').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Cep.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('numero').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Número.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('bairro').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Bairro.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text) = '' then
     begin
       xMensErro:= xMensErro + '.CPF'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text) <> '' then
     begin
       xTamDoc:=Length(trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text));
       if Length(trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else if Length(trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmGeral.CAD_CD_C_FUN.FieldByName('doc_cpf').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.Doc CPF Inválido.'+ #13;
          end;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('id_cidade').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Cidade.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('dta_nascimento').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Data de nascimento.'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('dta_cadastro').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Data de cadastro.'+ #13;
     end;

  {if trim(dmGeral.CAD_CD_C_FUN.FieldByName('id_cargo').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Cargo.'+ #13;
     end;}
  if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsString) = '' then
     begin
       xMensErro:= xMensErro + 'Habilitar Segurança.'+ #13;
     end;

  if ((trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsString) <> '') and
     (dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean = True))  then
    begin

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('dta_senha_expira').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Data expiração da senha.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('login').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Login.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('id_perfil_seg').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Perfil do Usuario.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_alt_lim_cli').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Altera Limite do Cliente.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_alt_sit_cli').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Altera Situacao cliente.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_alt_pre_pro').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Altera preço do item.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Habilita Botão de exclusão.'+ #13;
         end;

      if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_vis_ult_cmp_ite').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Exibe última compra do item na consulta(F3).'+ #13;
         end;

       if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_apr_rep_cmp_ped').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Permite Aprovar/Reprovar pedido de compra.'+ #13;
         end;

       if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True)) then
         begin
          if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_canc_orv').AsString) = '' then
           begin
             xMensErro:= xMensErro + 'Permite cancelar abertura de ordem de serviço.'+ #13;
           end;
         end;

        if trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_redef_senha').AsString) = '' then
         begin
           xMensErro:= xMensErro + 'Redefinir Senha.'+ #13;
         end;
    end;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
          dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([5, dmGeral.CAD_CD_C_FUN.FieldByName('LOGIN').AsString,
                                                          dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger]));
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       xMensErro:= xMensErro + 'Existe funcionário cadastrado com este login.'+ #13;
     end;
  dmGeral.BUS_CD_C_FUN.close;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CLI(DataSet: TDataSet);
Var
   ACBrVerfIE:TACBrValidador;
   xTamDoc:Integer;
begin

  xMensErro := '';

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('pessoa').text) = '' then
     begin
       xMensErro:= xMensErro + '.Pessoa'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text) = '' then
     xMensErro:= xMensErro + '.Cnpj/Cpf'+ #13
  else
     begin
       xTamDoc:=Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text));
       if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)) = false then
               xMensErro:= xMensErro + '.CNPJ Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.Doc CPF/CNPJ Inválido.'+ #13;
          end;
     end;

  if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text) = '') and
     (trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_nome').text) <> '') then
      xMensErro:= xMensErro + '.Cnpj/Cpf do avalista boleto bancário'+ #13;

  if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text) <> '') and
     (trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_nome').text) = '') then
      xMensErro:= xMensErro + '.Nome do avalista do boleto bancário'+ #13;


  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text) <> '' then
     begin
       if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text)) = false then
               xMensErro:= xMensErro + '.CPF do avalista do boleto bancário inválido.'+ #13;
          end
       else if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmGeral.CAD_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').text)) = false then
               xMensErro:= xMensErro + '.CNPJ do avalista do boleto bancário inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.CPF/CNPJ do avalista boleto bancário inválido.'+ #13;
          end;
     end;


  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').text) = '' then
     begin
       xMensErro:= xMensErro + '.IE/Identidade'+ #13;
     end
  else
     begin
        if (dmGeral.CAD_CD_C_CLI.FieldByName('PESSOA').AsInteger = 1) then
         begin
          ACBrVerfIE :=  TACBrValidador.Create(nil);
          ACBrVerfIE.TipoDocto := docInscEst;
          ACBrVerfIE.Documento := trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').text);
          ACBrVerfIE.Complemento := dmGeral.CAD_CD_C_CLI.FieldByName('INT_UF').text;
          if not  ACBrVerfIE.Validar then
           begin
              xMensErro:= xMensErro + '.IE Inválido'+ #13;
           end;
         end;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('tipo_cliente').text) = '' then
     begin
        xMensErro:= xMensErro + '.Tipo de cliente'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('tipo_cliente').text) = '' then
     begin
        xMensErro:= xMensErro + '.Tipo de cliente'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome').text) = '' then
     begin
       xMensErro:= xMensErro + '.Nome do cliente'+ #13;
     end
  else if Length(dmGeral.CAD_CD_C_CLI.FieldByName('nome').text)<2 then
    begin
      xMensErro:= xMensErro + '.Nome do cliente deve ter no minino dois caracteres'+ #13;
    end;


  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('endereco').text) = '' then
     begin
       xMensErro:= xMensErro + '.Endereço'+ #13;
     end
  else if Length(dmGeral.CAD_CD_C_CLI.FieldByName('endereco').text)<2 then
    begin
      xMensErro:= xMensErro + '.Endereço deve ter no minino dois caracteres'+ #13;
    end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('bairro').text) = '' then
     begin
       xMensErro:= xMensErro + '.Bairro'+ #13;
     end
  else if Length(dmGeral.CAD_CD_C_CLI.FieldByName('bairro').text)<2 then
    begin
      xMensErro:= xMensErro + '.Bairro deve ter no minino dois caracteres'+ #13;
    end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('cep').text) = '' then
     begin
       xMensErro:= xMensErro + '.Cep'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('numero').text) = '' then
     begin
       xMensErro:= xMensErro + '.Número'+ #13;
     end;

  if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('TEL_FIXO').text)  = '') and
     (trim(dmGeral.CAD_CD_C_CLI.FieldByName('TEL_MOVEL').text) = '') then
     begin
       xMensErro:= xMensErro + '.Telefone fixo ou Celular'+ #13;
     end;

  if ((not (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean)) and
     (trim(dmGeral.CAD_CD_C_CLI.FieldByName('id_perfil_cli').text) = '')) then
     begin
        xMensErro:= xMensErro + '.Perfil de cliente'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('id_cidade').text) = '' then
     begin
       xMensErro:= xMensErro + '.Cidade'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('ativo').text) = '' then
     begin
       xMensErro:= xMensErro + '.Ativo'+ #13;
     end;

  if ((not (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean)) and
     (trim(dmGeral.CAD_CD_C_CLI.FieldByName('situacao').text) = '')) then
     begin
       xMensErro:= xMensErro + '.Situação'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('id_vendedor').text) = '' then
     begin
        xMensErro:= xMensErro + '.Representante'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('dta_cadastro').text) = '' then
     begin
        xMensErro:= xMensErro + '.Data de cadastro'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('contribuinte').text) = '' then
     begin
        xMensErro:= xMensErro + '.Tipo contribuinte'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('id_regiao').text) = '' then
     begin
        xMensErro:= xMensErro + '.Região'+ #13;
     end;



  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean)) and
     (((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CAR').AsBoolean = True) or
    (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true)) and
    (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = False)) then
     begin
       if trim(dmGeral.CAD_CD_C_CLI.FieldByName('ID_ROTA').text)='' then
         xMensErro:= xMensErro + '.Rota'+ #13;
     end;


  {if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome_proprietario').text) = '') then
      xMensErro:= xMensErro + '.Nome do proprietário'+ #13;


  if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text) = '') then
      xMensErro:= xMensErro + '.Cnpj/Cpf do proprietário'+ #13;    }


  if  (trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome_proprietario').text) = '') then
       xMensErro:= xMensErro + '.Nome do responsável'+ #13
  else
      begin
        if trim(xMensErro) = '' then
            begin
              if trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome').text) =
                 trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome_proprietario').text)  then
                 begin
                   xMensErro:= xMensErro + '.Nome do cliente não pode ser igual ao nome do responsável.'+ #13;
                 end;
            end;
      end;


//  if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('nome_proprietario').text) <> '') and (trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text) = '')
//      then
//       xMensErro:= xMensErro + '.Cnpj/Cpf do proprietário'+ #13
//  else
//     begin
       if (trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text) <> '') then
           begin
             xTamDoc:=Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text));
             if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text))=11 then  //CPF
                begin
                  if VerCPF(trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text)) = false then
                     xMensErro:= xMensErro + '.CPF do responsável Inválido.'+ #13;
                end
             else if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text))=14 then  //CNPJ
                begin
                  if VerCNPJ(trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text)) = false then
                     xMensErro:= xMensErro + '.CNPJ do responsável Inválido.'+ #13;
                end
             else
                begin
                     xMensErro:= xMensErro + '.Doc CPF/CNPJ do responsável inválido.'+ #13;
                end;

             if trim(xMensErro) = '' then
                begin
                  if trim(dmGeral.CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf_proprietario').text) =
                     trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)  then
                     begin
                       xMensErro:= xMensErro + '.Doc CPF/CNPJ do cliente não pode ser igual ao do responsável.'+ #13;
                     end;
                end;
           end;
 //    end;



  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_CLI_INF(DataSet: TDataSet);
begin
//Falta
end;

procedure MascaraCAD_CD_C_CLI_INF;
begin
  dmGeral.CAD_CD_C_CLI_INFvlr_maior_compra.DisplayFormat := CMascaraValor;
  dmGeral.CAD_CD_C_CLI_INFvlr_lim_liberado.DisplayFormat := CMascaraValor;
  dmGeral.CAD_CD_C_CLI_INFvlr_ult_compra.DisplayFormat   := CMascaraValor;
end;

procedure ValidaCAD_CD_C_CLI_REC(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_CLI_CTO(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_FOR(DataSet: TDataSet);
Var xTamDoc:Integer;
    ACBrVerfIE:TACBrValidador;
begin
  xMensErro:='';

  if (trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text) = '') and (trim(dmGeral.CAD_CD_C_FOR.FieldByName('INT_UF').text) <> 'EX') then
     begin
       xMensErro:= xMensErro + '.CPF/CNPJ'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text) <> '' then
     begin
       xTamDoc:=Length(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text));
       if Length(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else if Length(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.Doc CPF/CNPJ Inválido.'+ #13;
          end;

       if (DataSet.State in [dsInsert]) Then
          begin
            dmGeral.BUS_CD_C_FOR.Close;
            dmGeral.BUS_CD_C_FOR.Data :=
            dmGeral.BUS_CD_C_FOR.DataRequest(
                    VarArrayOf([2, dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text]));
            if not dmGeral.BUS_CD_C_FOR.IsEmpty then
               begin
                 xMensErro:= xMensErro + '.CNPJ/CPF já cadastrado.'+ #13;
               end;
          end;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('DOC_IE').text) = '' then
     begin
       xMensErro:= xMensErro + '.IE/Identidade'+ #13;
     end
  else
     begin
        if Length(trim(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text))=14 then
         begin
          ACBrVerfIE :=  TACBrValidador.Create(nil);
          ACBrVerfIE.TipoDocto := docInscEst;
          ACBrVerfIE.Documento := trim(dmGeral.CAD_CD_C_FOR.FieldByName('DOC_IE').text);
          ACBrVerfIE.Complemento := dmGeral.CAD_CD_C_FOR.FieldByName('INT_UF').text;
          if not  ACBrVerfIE.Validar then
           begin
              xMensErro:= xMensErro + '.IE Inválido'+ #13;
           end;
         end;
     end;


  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('ativo').text) = '' then
     begin
       xMensErro:= xMensErro + '.Ativo'+ #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('transportadora').text) = '' then
     begin
       xMensErro:= xMensErro + '.Transportadora' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('descricao').text) = '' then
     begin
       xMensErro:= xMensErro + '.Razão social' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('fantasia').text) = '' then
     begin
       xMensErro:= xMensErro + '.Fantasia' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('endereco').text) = '' then
     begin
       xMensErro:= xMensErro + '.Endereço' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('cep').text) = '' then
     begin
       xMensErro:= xMensErro + '.Cep' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('numero').text) = '' then
     begin
       xMensErro:= xMensErro + '.Número' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('bairro').text) = '' then
     begin
       xMensErro:= xMensErro + '.Bairro' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('id_cidade').text) = '' then
     begin
       xMensErro:= xMensErro + '.Cidade' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('id_cidade').text) = '9999999' then
     begin
       if trim(dmGeral.CAD_CD_C_FOR.FieldByName('cod_pais').text) = '' then
        begin
          xMensErro:= xMensErro + '.Pais' + #13;
        end;
     end;


  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('dta_cadastro').text) = '' then
     begin
       xMensErro:= xMensErro + '.Data do cadastrofundação' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('tipo_fornecedor').text) = '' then
     begin
       xMensErro:= xMensErro + '.Tipo de fornecedor' + #13;
     end
  else
     begin
      if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true then
          begin
            dmGeral.BUS_PR_X_FOR_TFO;
            dmGeral.BUS_CD_X_FOR_TFO.Locate('CODIGO',dmGeral.CAD_CD_C_FOR.FieldByName('TIPO_FORNECEDOR').Text,[]);
            if dmGeral.BUS_CD_X_FOR_TFO.FieldByName('QUALIF_FORNEC').text = 'S' then
              begin
                if (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO1_NORMA_APLICAVEL').Text)   = '') and
                   (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO2_PROC_QUALIFICACAO').Text) = '') and
                   (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO3_METODO').text) = '') then
                      xMensErro:= xMensErro + '.Nenhum dos critérios de qualificação do fornecedor foi preenchido' + #13;
              end;
          end;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('regime').text) = '' then
     begin
       xMensErro:= xMensErro + '.Regime tributário' + #13;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('contribuinte').text) = '' then
     begin
        xMensErro:= xMensErro + '.Tipo contribuinte'+ #13;
     end;



   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;


procedure ValidaCAD_CD_C_FOR_REP(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_ALM(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_ALM.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_PRG(DataSet: TDataSet);
begin
  xMensErro := '';

  if dmGeral.CAD_CD_C_PRG.FieldByName('descricao').AsString = '' then
     begin
       xMensErro := xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_PRG.FieldByName('modulo').AsString='' then
     begin
       xMensErro:= xMensErro + '.Módulo deve ser informado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_PRG.FieldByName('menu_ordem').AsString='' then
     begin
       xMensErro:= xMensErro + '.Ordem no Menu deve ser informada.'+ #13;
     end;

  if dmGeral.CAD_CD_C_PRG.FieldByName('menu_path').AsString='' then
     begin
       xMensErro:= xMensErro + '.Path do Menu deve ser informado.'+ #13;
     end;

   if xMensErro <> '' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_MCT(DataSet: TDataSet);
begin
  xMensErro := '';

  if dmGeral.CAD_CD_C_MCT.FieldByName('descricao').text = '' then
     begin
       xMensErro:= xMensErro + 'Descrição de ser informada.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaOFI_CD_C_TIO(DataSet: TDataSet);
begin
   xMensErro := '';

  if dmGeral.OFI_CD_C_TIO.FieldByName('descricao').text = '' then
     begin
       xMensErro:= xMensErro + 'Descrição de ser informada.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_CDR(DataSet: TDataSet);
begin
  xMensErro :='';
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_grupo').AsString]));
  if dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Grupo não cadastrado.'+ #13;
     end;

  dmGeral.BUS_CD_C_COR.Close;
  dmGeral.BUS_CD_C_COR.Data :=
  dmGeral.BUS_CD_C_COR.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_cor_grupo').AsString]));
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Cor do grupo não cadastrado.'+ #13;
     end;

  dmGeral.BUS_CD_C_COR.Close;
  dmGeral.BUS_CD_C_COR.Data :=
  dmGeral.BUS_CD_C_COR.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_cor_cadarco').AsString]));
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Cor do cadarço não cadastrado.'+ #13;
     end;

  if dmSgq.PCP_CD_C_CDR.FieldByName('tipo_cadarco').IsNull then
     begin
       xMensErro:= xMensErro + 'Tipo do cadarço deve ser informado.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_CNF(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_CNF.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_CRG(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.PCP_CD_C_CRG.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
     begin
       if dmGeral.PCP_CD_C_CRG.FieldByName('atribuicoes').AsString='' then
          begin
            xMensErro:= xMensErro + '.Atribuições deve ser informada.'+ #13;
          end;
       if dmGeral.PCP_CD_C_CRG.FieldByName('requisitos').AsString='' then
          begin
            xMensErro:= xMensErro + '.Requisitos deve ser informada.'+ #13;
          end;
       if dmGeral.PCP_CD_C_CRG.FieldByName('data_aprovacao').IsNull then
          begin
            xMensErro:= xMensErro + '.Data de aprovação deve ser informada.'+ #13;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) then
     begin
        if (dmGeral.PCP_CD_C_CRG.FieldByName('tipo').AsString = '') then
          begin
            xMensErro:= xMensErro + '.Tipo deve ser informada.'+ #13;
          end;
     end;


  dmGeral.BUS_CD_C_SET.Close;
  dmGeral.BUS_CD_C_SET.Data :=
  dmGeral.BUS_CD_C_SET.DataRequest(
          VarArrayOf([0, dmGeral.PCP_CD_C_CRG.FieldByName('id_setor').AsString]));
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
      // xMensErro:= xMensErro + '.Setor não cadastrado.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_DIS(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_DIS.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_ESP(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_ESP.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_INS(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_INS.FieldByName('nro_serie').AsString='' then
     begin
       xMensErro:= xMensErro + 'Numero de serie deve ser informado.'+ #13;
     end;

  dmGeral.BUS_CD_C_MDE.Close;
  dmGeral.BUS_CD_C_MDE.Data :=
  dmGeral.BUS_CD_C_MDE.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_mde').AsString]));
  if dmGeral.BUS_CD_C_MDE.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Modelo de equipamento não cadastrado.'+ #13;
     end;
  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_fabricante').AsString]));
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Fabricante não cadastrado.'+ #13;
     end;
  dmSgq.BUS_CD_C_TIN.Close;
  dmSgq.BUS_CD_C_TIN.Data :=
  dmSgq.BUS_CD_C_TIN.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_tin').AsString]));
  if dmSgq.BUS_CD_C_TIN.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Tipo de instrumento não cadastrado.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_MDE(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_MDE.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_MEQ(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_MEQ.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) or
     ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = true) and
      (dmSgq.PCP_CD_C_MEQ.FieldByName('tipo_mei').AsString = '0')  ) then
     begin
        if dmSgq.PCP_CD_C_MEQ.FieldByName('id_setor').AsString='' then
           begin
             //xMensErro:= xMensErro + '.Setor'+ #13;
           end;

        if dmSgq.PCP_CD_C_MEQ.FieldByName('nro_serie').AsString='' then
           begin
             xMensErro:= xMensErro + '.Numero de série deve ser informado'+ #13;
           end;

         //Inseri essa validacao do campo fabricante. Responsavel:Luan.Data:14/10/2015
         if dmSgq.PCP_CD_C_MEQ.FieldByName('nome_fabricante').AsString='' then
           begin
             xMensErro:= xMensErro + '.Fabricante deve ser informado'+ #13;
           end;

        if dmSgq.PCP_CD_C_MEQ.FieldByName('dta_cadastro').IsNull then
           begin
             xMensErro:= xMensErro + '.Data de cadastro deve ser informado'+ #13;
           end;
        if dmSgq.PCP_CD_C_MEQ.FieldByName('dta_compra').IsNull then
           begin
             xMensErro:= xMensErro + '.Data de compra deve ser informado'+ #13;
           end;
        if dmSgq.PCP_CD_C_MEQ.FieldByName('numero_nf').IsNull then
           begin
             xMensErro:= xMensErro + '.Numero da nota fiscal deve ser informado'+ #13;
           end;

        if dmSgq.PCP_CD_C_MEQ.FieldByName('gara_existe').IsNull then
           begin
             xMensErro:= xMensErro + '.Garantia deve ser informado'+ #13;
           end;
        if dmSgq.PCP_CD_C_MEQ.FieldByName('gara_existe').AsBoolean=true then
           begin
             if trim(dmSgq.PCP_CD_C_MEQ.FieldByName('gara_validade').text) = '' then
                begin
                  xMensErro:= xMensErro + '.Data da Garantia deve ser informada'+ #13;
                end;
           end;
        if dmSgq.PCP_CD_C_MEQ.FieldByName('tipo_mei').IsNull then
           begin
             xMensErro:= xMensErro + '.Tipo deve ser informado'+ #13;
           end;

        dmGeral.BUS_CD_C_MDE.Close;
        dmGeral.BUS_CD_C_MDE.Data :=
        dmGeral.BUS_CD_C_MDE.DataRequest(
                VarArrayOf([0, dataset.FieldByName('id_mde').AsString]));
        if dmGeral.BUS_CD_C_MDE.IsEmpty then
           begin
             xMensErro:= xMensErro + '.Modelo de equipamento não cadastrado'+ #13;
           end;
     end;


  if (dmSgq.PCP_CD_C_MEQ.FieldByName('tipo_mei').AsInteger = 4) then
     begin
        if dataset.State in [dsInsert] then
           begin
             if Dataset.FieldByName('id_placa').asstring<>'' then
                begin
                  dmSgq.BUS_CD_C_MEQ.Close;
                  dmSgq.BUS_CD_C_MEQ.Data :=
                  dmSgq.BUS_CD_C_MEQ.DataRequest(VarArrayOf([4, Dataset.FieldByName('id_placa').asstring]));
                  dmSgq.BUS_CD_C_MEQ.Open;
                  if (not dmSgq.BUS_CD_C_MEQ.IsEmpty) then
                     begin
                       xMensErro:= xMensErro + '.Placa já cadastrada.'+ #13;
                     end;
                end;
           end;

        if (dmSgq.PCP_CD_C_MEQ.FieldByName('id_placa').AsString = null) or
           (dmSgq.PCP_CD_C_MEQ.FieldByName('id_placa').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Placa deve ser informada.'+ #13;
           end;


        if (dmSgq.PCP_CD_C_MEQ.FieldByName('id_mde').AsString = null) or
           (dmSgq.PCP_CD_C_MEQ.FieldByName('id_mde').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Modelo deve ser informado.'+ #13;
           end;

        if (dmSgq.PCP_CD_C_MEQ.FieldByName('dta_aquisicao').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Data de aquisição deve ser informado.'+ #13;
           end;

        if (dmSgq.PCP_CD_C_MEQ.FieldByName('alimentacao').AsString = null) or
            (dmSgq.PCP_CD_C_MEQ.FieldByName('alimentacao').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Alimentação deve ser informada.'+ #13;
           end;

        if (dmSgq.PCP_CD_C_MEQ.FieldByName('combustivel').AsString = null) or
            (dmSgq.PCP_CD_C_MEQ.FieldByName('combustivel').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Combustivel deve ser informado.'+ #13;
           end;

        if (dmSgq.PCP_CD_C_MEQ.FieldByName('rastreado').AsString = null) or
            (dmSgq.PCP_CD_C_MEQ.FieldByName('rastreado').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Rastreado deve ser informado.'+ #13;
           end;
     end;

    //Removi as instruções abaixo.Responsavel:Luan.Data:14/10/2015
  {dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_fabricante').AsString]));
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Fabricante não cadastrado'+ #13;
     end;}

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_resp_lancto').AsString]));
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Responsável não cadastrado'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure MascaraPCP_CD_C_MEQ(DataSet: TDataSet);
begin
  dmSgq.PCP_CD_C_MEQvlr_hora.DisplayFormat     := CMascaraValor;
  dmSgq.PCP_CD_C_MEQvlr_comissao.DisplayFormat := CMascaraValor;
end;

procedure ValidaPCP_CD_C_MTA(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_MTA.FieldByName('nome').AsString='' then
     begin
       xMensErro:= xMensErro + '.Nome do motorista deve ser informado.'+ #13;
     end;
  if (dmSgq.PCP_CD_C_MTA.FieldByName('doc_cpf').AsString='') or
     (dmSgq.PCP_CD_C_MTA.FieldByName('doc_cpf').AsString='0') then
     begin
       xMensErro:= xMensErro + '.cpf do motorista deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('placa').AsString='' then
     begin
       xMensErro:= xMensErro + '.Placa deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_endereco').AsString='' then
     begin
       xMensErro:= xMensErro + '.Endereço deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_numero').AsString='' then
     begin
       xMensErro:= xMensErro + '.Numero deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_cidade').AsString='' then
     begin
       xMensErro:= xMensErro + '.Cidade deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_bairro').AsString='' then
     begin
       xMensErro:= xMensErro + '.Bairro deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_cep').AsString='' then
     begin
       xMensErro:= xMensErro + '.Cep deve ser informado.'+ #13;
     end;
  if dmSgq.PCP_CD_C_MTA.FieldByName('end_estado').AsString='' then
     begin
       xMensErro:= xMensErro + '.Estado deve ser informado.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_ORI(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_ORI.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_PRP(DataSet: TDataSet);
begin
  xMensErro:='';
  if (trim(dmSgq.PCP_CD_C_PRP.FieldByName('id_grupo').AsString) = '') then
     begin
       if (trim(dmSgq.PCP_CD_C_PRP.FieldByName('id_item').AsString) = '') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;
     end
  else
     begin
        if (trim(dmSgq.PCP_CD_C_PRP.FieldByName('id_item').AsString) = '') then
             begin
               if (trim(dmSgq.PCP_CD_C_PRP.FieldByName('id_grupo').AsString) = '') then
                   begin
                     xMensErro:= xMensErro + '.Grupo deve ser informado.'+ #13;
                   end;
             end;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_PRQ(DataSet: TDataSet);
begin
  xMensErro:='';

  if dmSgq.PCP_CD_C_PRQ.FieldByName('dta_cadastro').IsNull then
     begin
       xMensErro:= xMensErro + '.Data de cadastro deve ser informado.'+ #13;
     end;

  if dmSgq.PCP_CD_C_PRQ.FieldByName('id_item').AsString <> '' then
     begin
        dmGeral.BUS_CD_C_ITE.Close;
        dmGeral.BUS_CD_C_ITE.Data :=
        dmGeral.BUS_CD_C_ITE.DataRequest(
                VarArrayOf([0, dataset.FieldByName('id_item').AsString]));
        if dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             xMensErro:= xMensErro + '.Item não cadastrado.'+ #13;
           end;
     end;

  if dmSgq.PCP_CD_C_PRQ.FieldByName('id_grupo').AsString <> '' then
     begin
        dmGeral.BUS_CD_C_GRU.Close;
        dmGeral.BUS_CD_C_GRU.Data :=
        dmGeral.BUS_CD_C_GRU.DataRequest(
                VarArrayOf([0, dataset.FieldByName('id_grupo').AsString]));
        if dmGeral.BUS_CD_C_GRU.IsEmpty then
           begin
             xMensErro:= xMensErro + '.Grupo não cadastrado.'+ #13;
           end;
     end;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_responsavel').AsString]));
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Responsavel não cadastrado.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_REG(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_REG.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
  dmGeral.BUS_CD_C_ROT.Close;
  dmGeral.BUS_CD_C_ROT.Data :=
  dmGeral.BUS_CD_C_ROT.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_rota').AsString]));
  if dmGeral.BUS_CD_C_ROT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Rota não cadastrado.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_ROT(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_ROT.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;

  if dmSgq.PCP_CD_C_ROT.FieldByName('dis_inicial').IsNull then
     begin
       xMensErro:= xMensErro + '.Distância inicial deve ser informado'+ #13;
     end;
  if dmSgq.PCP_CD_C_ROT.FieldByName('dis_final').IsNull then
     begin
       xMensErro:= xMensErro + '.Distância final deve ser informado'+ #13;
     end;
  if (dmSgq.PCP_CD_C_ROT.FieldByName('dis_final').AsFloat<
      dmSgq.PCP_CD_C_ROT.FieldByName('dis_inicial').AsFloat) then
     begin
       xMensErro:= xMensErro + '.Distância final não pode ser menor que a distância inicial'+ #13;
     end;
  if (dmSgq.PCP_CD_C_ROT.FieldByName('dis_inicial').AsFloat>
      dmSgq.PCP_CD_C_ROT.FieldByName('dis_final').AsFloat) then
     begin
       xMensErro:= xMensErro + '.Distância inicial não pode ser maior que a distância final'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_RPT(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_RPT.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaPCP_CD_C_TIN(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_TIN.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_TLM(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_TLM.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_TPP(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_TPP.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + enConstantes.DescErro+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaPCP_CD_C_FTE(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_FTE.FieldByName('requisitos').AsString='' then
     begin
        xMensErro:= xMensErro + '.Requisitos'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_CUE(DataSet: TDataSet);
begin
   xMensErro:='';
  if dmSgq.PCP_CD_C_CUE.FieldByName('descricao').AsString='' then
     begin
        xMensErro:= xMensErro + '.Descrição'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
procedure ValidaPCP_CD_C_CLE(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmSgq.PCP_CD_C_CLE.FieldByName('descricao').AsString='' then
     begin
        xMensErro:= xMensErro + '.Descrição'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaPCP_CD_C_FTE_ETQ(DataSet: TDataSet);
begin
  if DataSet.State in [dsInsert,dsEdit] then
     begin
        xMensErro:='';
        if dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('COD_INT_ETQ').AsString='' then
           begin
              xMensErro:= xMensErro + '.Código da etiqueta não foi criado'+ #13;
           end;
        if dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('COD_INT_ETQ_REV').AsString='' then
           begin
              xMensErro:= xMensErro + '.Revisão deve ser informada'+ #13;
           end;
        if dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('DESCRICAO').AsString='' then
           begin
             xMensErro:= xMensErro + enConstantes.DescErro+ #13;
           end;
        if dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('ESPECIFICACOES').AsString='' then
           begin
             xMensErro:= xMensErro + '.Especificações deve ser informada'+ #13;
           end;

        if xMensErro<>'' then
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     end;
end;

function VerifVersao:Boolean;
var
  SMPrincipal : TSMClient;
  VersaoCli: String;
  VersaoCliServer: String;
begin
    result := true;

    VersaoCli := CVersaoSistema;
    VersaoCli := StringReplace(VersaoCli,'-','',[rfReplaceAll]);
    VersaoCli := StringReplace(VersaoCli,' ','',[rfReplaceAll]);

   try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    VersaoCliServer := SMPrincipal.enVerifVersao;
    if VersaoCli <> VersaoCliServer then
       begin
         result := false;
       end;
    finally
       FreeAndNil(SMPrincipal);
    end;
end;

end.


