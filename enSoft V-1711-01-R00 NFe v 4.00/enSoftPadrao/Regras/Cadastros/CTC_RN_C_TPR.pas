unit CTC_RN_C_TPR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure CtcNovoTpr;
procedure CtcNovoTprIte;
procedure CtcNovoTprIteCom;

procedure ValidaCtcTpr;
procedure ValidaCtcTprIteCom;

procedure CtcMascaraTpr;
procedure gravaTpr(Sender: TObject);

implementation

uses uDmGeral, enConstantes, uProxy, uDmCtc;
Var
xMensErro:string;

procedure CtcNovoTpr;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_C_TPR');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcNovoTprIte;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_C_TPR_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_TPR').AsInteger := dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').AsInteger;
end;

procedure CtcNovoTprIteCom;
begin
  dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM').AsInteger := dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM').AsInteger;
end;

procedure ValidaCtcTpr;
begin
  xMensErro:='';

  if trim(dmCtc.CTC_CD_C_TPR.FieldByName('DESCRICAO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição do serviço deve ser preenchido.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM_INTERNO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Item deve ser preenchido.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('DESCRICAO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição do item deve ser preenchida.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('CLASSE').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Classe deve ser preenchida.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('UNIDADE').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Unidade deve ser preenchida.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('PRECO_UNITARIO').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Preço unitário deve ser preenchido.' + #13;
    end;

  if trim(dmCtc.CTC_CD_C_TPR_ITE.FieldByName('DATA_BASE').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Data deve ser preenchida.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCtcTprIteCom;
begin
  xMensErro:='';

   if trim(dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM_COMP').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Item de coposição deve ser preenchido.' + #13;
    end;

   if trim(dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('QTDE').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Quantidade da composição deve ser preenchida.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcMascaraTpr;
begin
  dmCtc.CTC_CD_C_TPR_itepreco_unitario.DisplayFormat    :=CMascaraValor;
end;

procedure gravaTpr(Sender: TObject);

begin
  DmGeral.Grava(dmCtc.CTC_CD_C_TPR);
end;

end.
