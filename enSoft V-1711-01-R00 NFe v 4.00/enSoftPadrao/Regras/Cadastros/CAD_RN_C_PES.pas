unit CAD_RN_C_PES;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCAD_CD_C_PES(DataSet: TDataSet);
procedure ValidaCAD_CD_C_PES_MOD(DataSet: TDataSet);
procedure CadNovoPes(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

Var
xMensErro:string;

procedure CadNovoPes(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CAD_CD_C_PES.FieldByName('id_perfil_seg').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_PES');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.CAD_CD_C_PES.FieldByName('descricao').AsString:='Nome do Perfil';

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_PES',xCodLme,xRevLme,dmGeral.CAD_CD_C_PES);
end;

procedure ValidaCAD_CD_C_PES(DataSet: TDataSet);
begin
  xMensErro:='';
  if dmGeral.CAD_CD_C_PES.FieldByName('descricao').AsString='' then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
       dmGeral.CAD_CD_C_PES.FieldByName('descricao').FocusControl;
     end;
  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_PES_MOD(DataSet: TDataSet);
begin
//Falta
end;





end.
