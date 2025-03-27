unit CTC_RN_M_PRO;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient,enFunc;

procedure CtcValida(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

Var
xMensErro:string;

procedure CtcValida(DataSet:TDataSet);
begin
  xMensErro:='';

  if (dmGeral.CTC_CD_M_PRO.FieldByName('id_item').AsString = '') or
    (dmGeral.CTC_CD_M_PRO.FieldByName('id_item').AsInteger = 0) then
    begin
      xMensErro:= xMensErro + '.Item' + #13;
    end;

  if (dmGeral.CTC_CD_M_PRO.FieldByName('lote').AsString = '') or
    (dmGeral.CTC_CD_M_PRO.FieldByName('lote').AsInteger = 0) then
    begin
      xMensErro:= xMensErro + '.Lote' + #13;
    end;

  if dmGeral.CTC_CD_M_PRO.FieldByName('descricao').AsString = '' then
    begin
      xMensErro:= xMensErro + '.Descrição' + #13;
    end;

  if dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').AsString = '' then
    begin
      xMensErro:= xMensErro + '.Arquivo' + #13;
    end;

  if dmGeral.CTC_CD_M_PRO.FieldByName('data').Text = '  /  /    ' then
    begin
      xMensErro:= xMensErro + '.Data' + #13;
    end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
