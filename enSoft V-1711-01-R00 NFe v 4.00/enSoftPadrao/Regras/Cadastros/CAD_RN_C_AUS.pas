unit CAD_RN_C_AUS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCAD_CD_C_AUS(DataSet: TDataSet);
procedure ValidaCAD_CD_C_AUS_PRG(DataSet: TDataSet);
procedure CadNovoAus(DataSet: TDataSet);
procedure CadNovoAusMod(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, CAD_UN_C_AUS;

Var
xMensErro:string;

procedure CadNovoAus(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_FM_C_AUS.CAD_CD_C_AUS.FieldByName('id_aus').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_AUS');
    CAD_FM_C_AUS.CAD_CD_C_AUS.FieldByName('id_empresa').AsInteger :=
      dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger;
  finally
    FreeAndNil(SMPrincipal);
  end;
  //dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_AUS',xCodLme,xRevLme,CAD_FM_C_AUS.CAD_CD_C_AUS);
end;

procedure ValidaCAD_CD_C_AUS(DataSet: TDataSet);
begin
  xMensErro:='';
  if CAD_FM_C_AUS.CAD_CD_C_AUS.FieldByName('id_funcionario').AsString='' then
     begin
       xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_AUS_PRG(DataSet: TDataSet);
begin
  xMensErro:='';
  if CAD_FM_C_AUS.CAD_CD_C_AUS_PRG.FieldByName('formulario').AsString='' then
     begin
       xMensErro:= xMensErro + '.Programa deve ser informado.'+ #13;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CadNovoAusMod(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_FM_C_AUS.CAD_CD_C_AUS_PRG.FieldByName('id_aus_prg').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_AUS_PRG');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

end.
