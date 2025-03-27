unit PCP_RN_M_OPR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math, Datasnap.DBClient,
     System.Generics.Collections;

function PcpTesValQtdeOpr(const valor: currency): Boolean;

procedure PcpImportarPed(cdsPed,cdsPedItens,PCP_CD_M_OPR_OPP: TClientDataSet; PreparaGeracaoBloco: integer);

procedure PcpValidaOprOpp;
procedure PcpCalcSldDispOprOpp;
procedure PCP_CD_M_OPR_OPPqtde_a_produzirChange;
procedure PCP_CD_M_OPR_OPPqtde_atender_opr;
function PcpVerificarStatusPed: String;


implementation

Uses enConstantes, uProxy, enFunc, uDmGeral;


procedure PcpImportarPed(cdsPed,cdsPedItens,PCP_CD_M_OPR_OPP: TClientDataSet; PreparaGeracaoBloco: integer);
var
  cdsItensSel: TClientDataSet;  //ListaItens: TDictionary<Integer,Currency>;
  SMPrincipal : TSMClient;
  Ped_Sel,itens_sel,Cores_Sel,Tam_Sel: String;
  temp: string;
begin

  cdsItensSel := TClientDataSet.Create(nil);

  with cdsItensSel, FieldDefs do
    begin
      Close;
      Clear;
      // Aereo
      Add('id_almoxarifado', ftInteger);
      Add('id_item', ftInteger);
      Add('id_cor', ftInteger);
      Add('id_tamanho', ftInteger);
      Add('qtde', ftCurrency);
      Add('pcp_obs_item', ftString,150);
      CreateDataSet;
    end;

  Ped_Sel   := '';
  itens_sel := '';
  Cores_Sel := '';
  Tam_Sel   := '';

  cdsPed.First;
  while not cdsPed.eof do
     begin
       cdsPedItens.First;

       while not cdsPedItens.eof do
          begin
            temp := cdsPed.FieldByName('id_pedido').AsString;
            if not cdsItensSel.Locate('id_almoxarifado;id_item;id_cor;id_tamanho;pcp_obs_item',
                                      VarArrayOf([cdsPed.FieldByName('id_almoxarifado').AsInteger,
                                                  cdsPedItens.FieldByName('id_item').AsInteger,
                                                  cdsPedItens.FieldByName('id_cor').AsInteger,
                                                  cdsPedItens.FieldByName('id_tamanho').AsInteger,
                                                  cdsPedItens.FieldByName('pcp_obs_item').AsString]),[])  then
               begin
                 cdsItensSel.Insert;
                 cdsItensSel.FieldByName('id_almoxarifado').AsInteger := cdsPed.FieldByName('id_almoxarifado').AsInteger;
                 cdsItensSel.FieldByName('id_item').AsInteger := cdsPedItens.FieldByName('id_item').AsInteger;
                 cdsItensSel.FieldByName('id_cor').AsInteger := cdsPedItens.FieldByName('id_cor').AsInteger;
                 cdsItensSel.FieldByName('id_tamanho').AsInteger := cdsPedItens.FieldByName('id_tamanho').AsInteger;
                 cdsItensSel.FieldByName('qtde').AsCurrency := cdsPedItens.FieldByName('qtde').AsCurrency;
                 cdsItensSel.FieldByName('pcp_obs_item').AsString := cdsPedItens.FieldByName('pcp_obs_item').AsString;
                 cdsItensSel.Post;
               end
            else
               begin
                 cdsItensSel.Edit;
                 cdsItensSel.FieldByName('qtde').AsCurrency :=
                    cdsItensSel.FieldByName('qtde').AsCurrency +
                    cdsPedItens.FieldByName('qtde').AsCurrency;
                 cdsItensSel.Post;
               end;
            cdsPedItens.Next;
          end;

       if Ped_Sel <> '' then
          begin
            Ped_Sel :=
            Ped_Sel + ',' +''''+ cdsPed.FieldByName('id_pedido').AsString+'''';
          end;

       if Ped_Sel = '' then
          begin
            Ped_Sel :=
            Ped_Sel +'''' + cdsPed.FieldByName('id_pedido').AsString+'''';
          end;

       cdsPed.Next;
     end;

    cdsItensSel.First;
    while not cdsItensSel.eof do
          begin

            if itens_sel <> '' then
               begin
                itens_sel :=
                itens_sel + ',' +''''+ cdsItensSel.FieldByName('ID_ITEM').AsString+'''';
               end;
            if itens_sel = '' then
               begin
                 itens_sel :=
                 itens_sel +'''' + cdsItensSel.FieldByName('ID_ITEM').AsString+'''';
               end;


            // busca as cores dos itens
            if Cores_Sel <> '' then
               begin
                 Cores_Sel :=
                 Cores_Sel + ',' +''''+cdsItensSel.FieldByName('ID_COR').AsString+'''';
               end;
            if Cores_Sel = '' then
               begin
                 Cores_Sel :=
                 Cores_Sel +''''+ cdsItensSel.FieldByName('ID_COR').AsString+'''';
               end;


            if Tam_Sel <> '' then
               begin
                 Tam_Sel :=
                 Tam_Sel + ',' +''''+cdsItensSel.FieldByName('ID_TAMANHO').AsString+'''';
               end;
            if Tam_Sel = '' then
               begin
                 Tam_Sel :=
                 Tam_Sel +''''+ cdsItensSel.FieldByName('ID_TAMANHO').AsString+'''';
               end;

            cdsItensSel.Next;
          end;


  try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
    SMPrincipal.enSgqPcpImportarPed(cdsItensSel,
                                 dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString,
                                 dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString,
                                 IntToStr(xFuncionario),
                                 dmGeral.PCP_CD_M_OPR.FieldByName('id_almoxarifado').AsString,
                                 Ped_Sel,itens_sel,Cores_Sel,Tam_Sel, PreparaGeracaoBloco);

  finally
     FreeAndNil(SMPrincipal);
  end;

  cdsPed.First;
  cdsPedItens.First;
end;

procedure PcpValidaOprOpp;
var
  xMensErro: String;
begin
  xMensErro := '';

  { TODO -oMaxsuel -cCriação : Criado em 20/07/2016 }


  if (dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_A_PRODUZIR').AsCurrency) <
     (dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_ATENDER_OPR').AsCurrency +
      dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_ATENDER_OPR_EXT').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Quantidade a produzir não pode ser menor que' +
                               ' (Qtde a atender + Qtde utilizada por outras O.P)'+ #13;
     end;

  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
             abort;
     end;
end;

procedure PcpCalcSldDispOprOpp;
begin
 { TODO -oMaxsuel -cCriação : Criado em 26/07/2016 }
 dmGeral.PCP_CD_M_OPR_OPP.FieldByName('saldo_disponivel').AsCurrency :=
    dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_A_PRODUZIR').AsCurrency -
     (dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_ATENDER_OPR').AsCurrency +
      dmGeral.PCP_CD_M_OPR_OPP.FieldByName('QTDE_ATENDER_OPR_EXT').AsCurrency);
end;

procedure PCP_CD_M_OPR_OPPqtde_a_produzirChange;
begin
  { TODO -oMaxsuel -cCriação : Criado em 26/07/2016 }

   PcpCalcSldDispOprOpp;
end;

procedure PCP_CD_M_OPR_OPPqtde_atender_opr;
begin
  { TODO -oMaxsuel -cCriação : Criado em 26/07/2016 }
   PcpCalcSldDispOprOpp;
end;

function PcpTesValQtdeOpr(const valor: currency): Boolean;
begin
  result := true;
  if valor < 0 then
     begin
       ShowMessage('O campo não pode ser menor que 0.');
       result := false;
     end;
end;

function PcpVerificarStatusPed: String;
var
  Pedidos_Opr: String;
  Pedidos_sem_op: String;
begin

  dmGeral.PCP_CD_M_OPR_PED.First;
  while not dmGeral.PCP_CD_M_OPR_PED.eof do
     begin
       if Pedidos_Opr <> '' then
          begin
            Pedidos_Opr :=
            Pedidos_Opr + ',' +''''+ dmGeral.PCP_CD_M_OPR_PED.FieldByName('id_pedido').AsString+'''';
          end;

       if Pedidos_Opr = '' then
          begin
            Pedidos_Opr :=
            Pedidos_Opr +'''' + dmGeral.PCP_CD_M_OPR_PED.FieldByName('id_pedido').AsString+'''';
          end;

       dmGeral.PCP_CD_M_OPR_PED.Next;
     end;
  dmGeral.PCP_CD_M_OPR_PED.First;

  Pedidos_sem_op := '';

  dmGeral.BUS_CD_M_PED2.Close;
  dmGeral.BUS_CD_M_PED2.Data :=
  dmGeral.BUS_CD_M_PED2.DataRequest(
              VarArrayOf([100, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,Pedidos_Opr]));
  if not dmGeral.BUS_CD_M_PED2.IsEmpty then
     begin
       dmGeral.BUS_CD_M_PED2.First;

       while not dmGeral.BUS_CD_M_PED2.eof do
          begin
            if (dmGeral.BUS_CD_M_PED2.FieldByName('pcp_id_opr').AsInteger = 0) then
                begin
                  Pedidos_sem_op :=  Pedidos_sem_op + dmGeral.BUS_CD_M_PED2.FieldByName('id_pedido').AsString + '; ';
                end;
            dmGeral.BUS_CD_M_PED2.Next;
          end;
       dmGeral.BUS_CD_M_PED2.First;
     end;

  if trim(Pedidos_sem_op) <> '' then
     begin
       Showmessage('Os pedidos abaixo não ficaram com o código da O.P gravado.' +#13 +
                   'Pedidos: ' + Pedidos_sem_op + #13 +
                   'Por favor entrar em contato com o suporte.');
     end;
  dmGeral.BUS_CD_M_PED2.close;
end;


end.


