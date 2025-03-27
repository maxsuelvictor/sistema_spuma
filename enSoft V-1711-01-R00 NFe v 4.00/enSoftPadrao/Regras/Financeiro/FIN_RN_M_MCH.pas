unit FIN_RN_M_MCH;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;
procedure FinNovoCheMch(DataSet:TDataSet);
procedure FinValidaCheMch(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;
VAR
xMensErro:String;

procedure FinNovoCheMch(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_MCH');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure FinValidaCheMch(DataSet:TDataSet);
begin
  xMensErro:='';
     if (dmGeral.FIN_CD_M_MCHid_controle.Text=null) or
     (dmGeral.FIN_CD_M_MCHid_controle.Text='') then
     begin
       xMensErro:= xMensErro + '.Codigo deve ser informado.'+ #13;
     end;

      if (dmGeral.FIN_CD_M_MCHid_conta.Text=null) or
     (dmGeral.FIN_CD_M_MCHid_conta.Text='') then
     begin
       xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
     end;

     if (dmGeral.FIN_CD_M_MCHid_empresa.Text=null) or
     (dmGeral.FIN_CD_M_MCHid_empresa.Text='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informada.'+ #13;
     end;

     if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
end.
