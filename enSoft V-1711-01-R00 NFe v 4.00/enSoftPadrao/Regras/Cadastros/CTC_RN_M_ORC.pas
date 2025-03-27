unit CTC_RN_M_ORC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure CtcNovoOrc;
procedure CtcNovoOrcIte;
procedure CtcNovoOrcIteCom;

procedure CtcValidaOrc;
procedure CtcValidaOrcIte;
procedure CtcValidaCtcOrcIteCom;

procedure CtcMascaraOrc;

implementation

uses uDmGeral, enConstantes, uProxy, uDmCtc;
Var
xMensErro:string;

procedure CtcNovoOrc;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_ORC');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcNovoOrcIte;
begin
  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('ID_ORC').AsInteger := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsInteger;
end;

procedure CtcNovoOrcIteCom;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_COM').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_ORC_ITE_COM');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_ORC').AsInteger := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsInteger;
  dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('GRUPO').AsString := dmCtc.CTC_CD_M_ORC_ITE.FieldByName('GRUPO').AsString;
end;

procedure CtcValidaOrc;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_M_ORC.FieldByName('DTA_ORC').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Data deve ser preenchida.' + #13;
    end;

  if trim(dmCtc.CTC_CD_M_ORC.FieldByName('ID_OBRA').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Obra deve ser preenchida.' + #13;
    end;

  if trim(dmCtc.CTC_CD_M_ORC.FieldByName('VLR_TOTAL').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Valor total deve ser preenchido.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaOrcIte;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_M_ORC_ITE.FieldByName('GRUPO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Grupo deve ser preenchido.' + #13;
    end;

  if trim(dmCtc.CTC_CD_M_ORC_ITE.FieldByName('DESCRICAO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição deve ser preenchida.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaCtcOrcIteCom;
begin
  //
end;

procedure CtcMascaraOrc;
begin
  //
end;

end.
