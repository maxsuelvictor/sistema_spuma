unit CTC_RN_C_EOC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure CtcNovoEoc;
procedure CtcNovoEocGru;

procedure CtcValidaEoc;
procedure CtcValidaEocGru;

procedure CtcMascaraEocGru;

implementation

uses uDmGeral, enConstantes, uProxy, uDmCtc;
Var
xMensErro:string;

procedure CtcNovoEoc;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_C_EOC.FieldByName('ID_ESTRUTURA').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_C_EOC');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcNovoEocGru;
begin
  dmCtc.CTC_CD_C_EOC_GRU.FieldByName('ID_ESTRUTURA').AsInteger :=
    dmCtc.CTC_CD_C_EOC.FieldByName('ID_ESTRUTURA').AsInteger;
end;

procedure CtcValidaEoc;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_C_EOC.FieldByName('DESCRICAO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição deve ser preenchida.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaEocGru;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_C_EOC_GRU.FieldByName('GRUPO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Grupo deve ser preenchido.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_EOC_GRU.FieldByName('DESCRICAO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição deve ser preenchida.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcMascaraEocGru;
begin
  //
end;

end.
