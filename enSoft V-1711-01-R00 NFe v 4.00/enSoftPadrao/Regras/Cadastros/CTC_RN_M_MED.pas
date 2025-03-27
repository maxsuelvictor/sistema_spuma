unit CTC_RN_M_MED;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure CtcNovoMed;
procedure CtcValidaMed;

implementation

uses uDmGeral, enConstantes, uProxy, uDmCtc;
Var
xMensErro:string;

procedure CtcNovoMed;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_ORC_ITE_MED.FieldByName('ID_MED').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_MED');

     dmCtc.CTC_CD_M_ORC_ITE_MED.FieldByName('DTA_MEDICAO').AsDateTime := xDataSis;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcValidaMed;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_M_ORC_ITE_MED.FieldByName('ID_RESPONSAVEL').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Responsavel deve ser informado.' + #13;
    end;

  if trim(dmCtc.CTC_CD_M_ORC_ITE_MED.FieldByName('QTDE').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Quantidade deve ser informada.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
end.
