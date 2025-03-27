unit CMP_RN_M_SOL;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CmpNovaSolicitacao(DataSet: TDataSet);
procedure CmpValidaSol(DataSet:TDataSet);
procedure CmpValidaSituacaoSol(DataSet:TDataSet);
procedure CmpOutrasValSol;

function  BusSldItemSemAlm(empresa,id_item, id_cor, id_tamanho: String; var saldo_fisico: String): Boolean;

procedure CmpNovaSolIte(DataSet: TDataSet);
procedure CmpValidaSolIte(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure CmpNovaSolicitacao(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin

  dmGeral.CMP_CD_M_SOL.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CMP_CD_M_SOL.FieldByName('ID_SOLICITACAO').AsInteger :=
         SMPrincipal.enValorChave('CMP_TB_M_SOL');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.CMP_CD_M_SOL.FieldByName('DTA_SOLICITACAO').AsDateTime := xDataSis;
  {
    0- SOLICITADO
    1- COTADO/PEDIDO
    }
  dmGeral.CMP_CD_M_SOL.FieldByName('STATUS').AsInteger  := 0;
  dmGeral.CMP_CD_M_SOL.FieldByName('ID_OP').AsInteger   := 0;
  dmGeral.CMP_CD_M_SOL.FieldByName('ID_COTACAO_IMP').AsInteger  := 0;
  dmGeral.CMP_CD_M_SOL.FieldByName('ID_PEDIDO_IMP').AsInteger  := 0;


  dmGeral.BusCodigoRevListMestre(true,false,'CMP_FM_M_SOL',xCodLme,xRevLme,dmGeral.CMP_CD_M_SOL);
end;

procedure CmpValidaSol(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';


  if (dmGeral.CMP_CD_M_SOL.FieldByName('id_empresa').AsString='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informada.'+ #13;
       dmGeral.CMP_CD_M_SOL.FieldByName('id_empresa').FocusControl;
     end;

  if (dmGeral.CMP_CD_M_SOL.FieldByName('id_setor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Setor deve ser informado.'+ #13;
       dmGeral.CMP_CD_M_SOL.FieldByName('id_setor').FocusControl;
     end;

  if (dmGeral.CMP_CD_M_SOL.FieldByName('dta_solicitacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data deve ser informado.'+ #13;
       dmGeral.CMP_CD_M_SOL.FieldByName('dta_solicitacao').FocusControl;
     end;
  if trim(dmGeral.CMP_CD_M_SOL.FieldByName('MOTIVO').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Motivo da compra deve ser informado.'+ #13;
       dmGeral.CMP_CD_M_SOL.FieldByName('MOTIVO').FocusControl;
     end;

  if trim(dmGeral.CMP_CD_M_SOL.FieldByName('status').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Status deve ser informada.'+ #13;
       dmGeral.CMP_CD_M_SOL.FieldByName('status').FocusControl;
     end;


  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure CmpNovaSolIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CMP_CD_M_SOL_ITEid_sequencia.AsInteger :=
         SMPrincipal.enValorChave('CMP_TB_M_SOL_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CmpValidaSolIte(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.CMP_CD_M_SOL_ITE.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.CMP_CD_M_SOL_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
           begin
             if (dmGeral.CMP_CD_M_SOL_ITE.FieldByName('id_cor').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Cor deve ser informada.'+ #13;
                 end;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
           begin
              if (dmGeral.CMP_CD_M_SOL_ITE.FieldByName('id_tamanho').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Tamanho deve ser informado.'+ #13;
                 end;
           end;

        if (dmGeral.CMP_CD_M_SOL_ITE.FieldByName('qtde').AsFloat=0) then
           begin
             xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;

function  BusSldItemSemAlm(empresa,id_item, id_cor, id_tamanho: String; var saldo_fisico: String): Boolean;
var
  index: integer;
  filtro: string;
begin
    { Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, int(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }

     result := true;

     saldo_fisico := '0';

     index  := 0;
     filtro := empresa + ',' + id_item;

     if (dmgeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = false) and (dmgeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean = true) then
        begin
          index := 1;
          filtro := filtro + ',' + id_cor;
        end;

     if (dmgeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean = false) and (dmgeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = true) then
        begin
          index := 2;
          filtro := filtro + ',' + id_tamanho;
        end;

     if (dmgeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean = true) and (dmgeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = true) then
        begin
          index := 3;
          filtro := filtro + ',' + id_cor + ',' + id_tamanho;
        end;

     dmgeral.EST_CD_M_FES.Close;
     if index = 0 then
         dmgeral.EST_CD_M_FES.Data :=
             dmgeral.EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item]));

     if index = 1 then
         dmgeral.EST_CD_M_FES.Data :=
             dmgeral.EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor]));
     if index = 2 then
         dmgeral.EST_CD_M_FES.Data :=
              dmgeral.EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_tamanho]));

     if index = 3 then
         dmgeral.EST_CD_M_FES.Data :=
              dmgeral.EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_tamanho]));

     if not dmgeral.EST_CD_M_FES.IsEmpty then
        begin
          saldo_fisico := dmgeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').Text;
        end
    else
       begin
         result := false;
       end;

end;

procedure CmpOutrasValSol;
var
  xMensErro: String;
begin
  xMensErro := '';
  dmGeral.CMP_CD_M_SOL_ITE.cancel;
  if dmGeral.CMP_CD_M_SOL_ITE.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum item foi inserido na solicitação de compra' + #13;
     end;
  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;

procedure CmpValidaSituacaoSol(DataSet:TDataSet);
begin
  case dmGeral.CMP_CD_M_SOL.FieldByName('STATUS').AsInteger of
     1:
      begin
        ShowMessage('Solicitação de compra já foi importada.');
        abort;
      end;
  end;
end;

end.
