unit CTC_RN_M_APG;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure rn_apg_novo(DataSet: TDataSet);
procedure ValidaCTC_CD_M_APG(DataSet: TDataSet);
procedure Ctcmascaraapg;

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;

Var
xMensErro:string;

procedure rn_apg_novo(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CTC_CD_M_APG.FieldByName('ID_APG').AsInteger :=
      SMPrincipal.enValorChave('CTC_TB_M_APG');

    dmGeral.CTC_CD_M_APG.FieldByName('ID_EMPRESA').AsInteger :=
      dmgeral.CAD_CD_C_PARid_empresa.AsInteger;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure ValidaCTC_CD_M_APG(DataSet: TDataSet);
begin
  xMensErro:='';

  if trim(dmGeral.CTC_CD_M_APG.FieldByName('ID_OBRA').text) = '' then
    begin
      xMensErro:= xMensErro + '.Obra ' + #13;
    end;
  if trim(dmGeral.CTC_CD_M_APG.FieldByName('ID_OBRA').text) = '' then
    begin
      xMensErro:= xMensErro + '.Dia ' + #13;
    end;
  if trim(dmGeral.CTC_CD_M_APG.FieldByName('VLR_PREVISTO').text) = '' then
    begin
      xMensErro:= xMensErro + '.Valor  ' + #13;
    end;
  if trim(dmGeral.CTC_CD_M_APG.FieldByName('HISTORICO').text) = '' then
    begin
      xMensErro:= xMensErro + '.Histórico' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure Ctcmascaraapg;
begin
  dmGeral.CTC_CD_M_APGvlr_previsto.DisplayFormat := CMascaraValor;
end;

end.
