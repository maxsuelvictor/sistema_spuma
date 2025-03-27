unit FAT_RN_M_MKT;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;


procedure FatValidaMkt;
procedure FatApagarCliDesmarcado;
procedure FatNovoMkt(DataSet: TDataSet);

implementation
uses udmGeral,uProxy, FAT_UN_M_MKT, enConstantes;


procedure FatNovoMkt(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    DataSet.FieldByName('id_mkt').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_MKT');

    DataSet.fieldByName('hor_criacao').AsDateTime :=
                 SMPrincipal.enHoraServer;
  finally
    FreeAndNil(SMPrincipal);
  end;

  DataSet.fieldByName('id_empresa').AsInteger      := dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger;
  DataSet.fieldByName('id_responsavel').AsInteger  := xFuncionario;
  DataSet.fieldByName('dta_criacao').AsDateTime    := xDataSis;

  dmGeral.BusCodigoRevListMestre(true,false,'FAT_FM_M_MKT',xCodLme,xRevLme,FAT_FM_M_MKT.FAT_CD_M_MKT);
end;

procedure FatValidaMkt;
var
  xMensErro:string;
begin
  xMensErro:='';

  {if (FAT_FM_M_MKT.FAT_CD_M_MKT.FieldByName('id_rota').AsString=null) or
     (FAT_FM_M_MKT.FAT_CD_M_MKT.FieldByName('id_rota').AsInteger=0) then
     begin
       xMensErro:= xMensErro + '.Rota'+ #13;
     end; }

 { if (FAT_FM_M_MKT.FAT_CD_M_MKT.FieldByName('id_vis').AsString=null) or
     (FAT_FM_M_MKT.FAT_CD_M_MKT.FieldByName('id_vis').AsInteger=0) then
     begin
       xMensErro:= xMensErro + '.Visita'+ #13;
     end; }

   if (FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.RecordCount=0)  then
     begin
       xMensErro:= xMensErro + '.Deve selecionar pelo menos 1 cliente.'+ #13;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FatApagarCliDesmarcado;
begin
  FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.First;
  while not FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.eof do
    begin
      if not (FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean) then
         FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.delete
      else
         FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.Next;
    end;
  FAT_FM_M_MKT.FAT_CD_M_MKT_CLI.First;
end;

end.
