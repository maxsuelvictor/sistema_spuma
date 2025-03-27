unit PCP_RN_M_OPR_REQ;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure PcpNovaReq;
procedure PcpValidaReq;
procedure PcpNovaReqIte;
procedure PcpValidaReqIte;
Procedure PcpImportReq;

implementation
Uses uDmGeral,enConstantes, uProxy, uDmSgq;

procedure PcpNovaReq;
var
  SMPrincipal : TSMClient;
begin
  dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR').AsInteger :=
          dmGeral.PCP_CD_M_OPR.FieldByName('ID_OPR').AsInteger;

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR_REQ').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_OPR_REQ');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmSgq.PCP_CD_M_OPR_REQ.FieldByName('DTA_EMISSAO').AsDateTime := xDataSis;
  dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_RESPONSAVEL').AsInteger  := dmGeral.PCP_CD_M_OPR.FieldByName('ID_RESPONSAVEL').AsInteger;
  dmSgq.PCP_CD_M_OPR_REQ.FieldByName('INT_NOMERESP').AsString  := dmGeral.PCP_CD_M_OPR.FieldByName('INT_NOMERES').AsString;
  dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean := False;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_OPR_REQ',xCodLme,xRevLme,dmSgq.PCP_CD_M_OPR_REQ);
end;

procedure PcpValidaReq;
begin
  if dmSgq.PCP_CD_M_OPR_REQ_ITE.IsEmpty then
    raise Exception.Create(enConstantes.MensErro + #13 + 'Item deve ser informado.');
end;

procedure PcpNovaReqIte;
var
  SMPrincipal : TSMClient;
begin
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_OPR').AsInteger :=
          dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR').AsInteger;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_OPR_REQ').AsInteger :=
          dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR_REQ').AsInteger;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsInteger := 0;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE_ATENDIDA').AsInteger := 0;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').AsInteger := 0;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').AsInteger := 0;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString := '1';
  dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean := False;


  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_OPR_REQ_ITE').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_OPR_REQ_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure PcpValidaReqIte;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsCurrency = 0 then
     begin
       xMensErro := xMensErro + '.Código do item' + #13;
     end;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsFloat = 0 then
     begin
       xMensErro := xMensErro + '.Qtde' + #13;
     end;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('SITUACAO').AsSTRING = '' then
     begin
       xMensErro := xMensErro + '.Situação' + #13;
     end;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_SETOR').AsCurrency = 0 then
     begin
       xMensErro := xMensErro + '.Setor' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').text = '' then
          begin
            xMensErro := xMensErro + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').text = '' then
          begin
            xMensErro := xMensErro + '.Tamanho' + #13;
          end;
     end;

  if xMensErro <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + xMensErro);
       xMensErro := '';
       abort;
     end;
end;

Procedure PcpImportReq;
begin
  {dmgeral.BUS_CD_M_SOL.Close;
  dmgeral.BUS_CD_M_SOL.Data :=
    dmgeral.BUS_CD_M_SOL.DataRequest(
      VarArrayOf([93,dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR').text,
        dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR_REQ').text]));

  if  dmgeral.BUS_CD_M_SOLstatus.Text = '1' then
    begin
      Showmessage('Não é possivel alterar requisições importadas.');
      abort;
    end;}
end;

end.
