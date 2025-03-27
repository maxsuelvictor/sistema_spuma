unit CTC_RN_C_OBR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcValidaObr(DataSet:TDataSet);
procedure CtcValidaObrEqp;
procedure CtcValidaObrCrg;
procedure CtcValidaObrIte;
procedure CtcMascaraObrEqp;
procedure CtcMascaraObrCrg;
procedure CtcMascaraObrIte;
procedure CtcMascaraObr(DataSet:TDataSet);
procedure CtcNovoObr(DataSet: TDataSet);
procedure CtcNovoObrEqp;
procedure CtcNovoObrCrg;
procedure CtcNovoObrIte;
procedure gravaObra(Sender: TObject);




implementation
Uses uDmGeral,enConstantes, uProxy,uDmCtc;

procedure CtcValidaObr(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';

  if trim(dmCTC.CTC_CD_C_OBR.FieldByName('id_cliente').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Cliente deve ser infornado.' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR.FieldByName('descricao').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Descrição deve ser infornada.' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR.FieldByName('endereco').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Endereço deve ser infornado.' + #13;
    end;

  if (dmCTC.CTC_CD_C_OBR.FieldByName('dta_entrega').AsString = '  /  /    ') or
    (dmCTC.CTC_CD_C_OBR.FieldByName('dta_entrega').AsString = '') then
    begin
      xMensErro:= xMensErro +  '.Data de entrega deve ser infornada.' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaObrEqp;
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(dmCTC.CTC_CD_C_OBR_EQP.FieldByName('id_meq').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Código de equipamento' + #13;
    end;

   if trim(dmCTC.CTC_CD_C_OBR_EQP.FieldByName('dta_ini_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Início do contrato do equipamento' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR_EQP.FieldByName('dta_fim_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Final do contrato do equipamento' + #13;
    end;

  if dmCTC.CTC_CD_C_OBR_EQP.FieldByName('valor').AsCurrency = 0 then
    begin
      xMensErro:= xMensErro +  '.Valor' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
  else
    begin
      if (dmCTC.CTC_CD_C_OBR_EQP.FieldByName('dta_ini_contrato').AsDateTime) >
         (dmCTC.CTC_CD_C_OBR_EQP.FieldByName('dta_fim_contrato').AsDateTime) then
          begin
            raise Exception.Create('A data de início de contrato não pode ser maior que a data final do contrato!');
          end;
    end;
end;

procedure CtcValidaObrCrg;
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(dmCTC.CTC_CD_C_OBR_CRG.FieldByName('id_cargo').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Código do cargo' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR_CRG.FieldByName('dta_ini_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Início do contrato do cargo' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR_CRG.FieldByName('dta_fim_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Final do contrato do cargo' + #13;
    end;

  if dmCTC.CTC_CD_C_OBR_CRG.FieldByName('qtde_func').AsCurrency = 0 then
    begin
      xMensErro:= xMensErro +  '.Qtde de funcionário' + #13;
    end;

  if dmCTC.CTC_CD_C_OBR_CRG.FieldByName('valor').AsCurrency = 0 then
    begin
      xMensErro:= xMensErro +  '.Valor' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
  else
    begin
      if (dmCTC.CTC_CD_C_OBR_CRG.FieldByName('dta_ini_contrato').AsDateTime) >
         (dmCTC.CTC_CD_C_OBR_CRG.FieldByName('dta_fim_contrato').AsDateTime) then
          begin
            raise Exception.Create('A data de início de contrato não pode ser maior que a data final do contrato!');
          end;
    end;
end;

procedure CtcValidaObrIte;
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(dmCTC.CTC_CD_C_OBR_ITE.FieldByName('id_item').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Código do item' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR_ITE.FieldByName('dta_ini_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Início do contrato do item' + #13;
    end;

  if trim(dmCTC.CTC_CD_C_OBR_ITE.FieldByName('dta_fim_contrato').AsString) = '' then
    begin
      xMensErro:= xMensErro +  '.Final do contrato do item' + #13;
    end;

  if dmCTC.CTC_CD_C_OBR_ITE.FieldByName('valor').AsCurrency = 0 then
    begin
      xMensErro:= xMensErro +  '.Valor' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
  else
    begin
      if (dmCTC.CTC_CD_C_OBR_ITE.FieldByName('dta_ini_contrato').AsDateTime) >
         (dmCTC.CTC_CD_C_OBR_ITE.FieldByName('dta_fim_contrato').AsDateTime) then
          begin
            raise Exception.Create('A data de início de contrato não pode ser maior que a data final do contrato!');
          end;
    end;

end;



procedure CtcMascaraObrEqp;
begin
  dmCTC.CTC_CD_C_OBR_EQPvalor.DisplayFormat  := CMascaraValor;
end;

procedure CtcMascaraObrCrg;
begin
  dmCTC.CTC_CD_C_OBR_CRGvalor.DisplayFormat  := CMascaraValor;
end;

procedure CtcMascaraObrIte;
begin
  dmCTC.CTC_CD_C_OBR_ITEvalor.DisplayFormat  := CMascaraValor;
end;


procedure CtcMascaraObr(DataSet:TDataSet);
begin

end;

procedure CtcNovoObr(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_C_OBR.FieldByName('ID_OBRA').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_C_OBR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_C_OBR.FieldByName('ativo').AsBoolean:=true;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_FM_C_OBR',xCodLme,xRevLme,dmCtc.CTC_CD_C_OBR);


end;

procedure CtcNovoObrEqp;
begin
  dmCtc.CTC_CD_C_OBR_EQP.FieldByName('id_obra_seq').AsInteger :=
        dmCtc.CTC_CD_C_OBR_EQP.RecordCount + 1;
end;

procedure CtcNovoObrCrg;
begin
 dmCtc.CTC_CD_C_OBR_CRG.FieldByName('id_obra_crg').AsInteger :=
        dmCtc.CTC_CD_C_OBR_CRG.RecordCount + 1;

end;

procedure CtcNovoObrIte;
begin
  dmCtc.CTC_CD_C_OBR_ITE.FieldByName('id_obra_ite').AsInteger :=
        dmCtc.CTC_CD_C_OBR_ITE.RecordCount + 1;
end;

procedure gravaObra(Sender: TObject);

begin
  DmGeral.Grava(dmCtc.CTC_CD_C_OBR);
end;

end.
