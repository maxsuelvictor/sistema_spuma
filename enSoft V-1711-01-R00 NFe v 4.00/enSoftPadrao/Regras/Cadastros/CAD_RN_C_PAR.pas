unit CAD_RN_C_PAR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms,
     System.Classes,System.Generics.Collections,Datasnap.DBClient;

procedure ValidaCAD_CD_C_PAR;
procedure ValidaCAD_CD_C_PAR_CPG;
procedure CadNovoPar(DataSet: TDataSet);

procedure CadNovoParCpg;
procedure CAD_CD_C_PAR_CPGper_reajusteChange;
procedure RecalcSequencia;

procedure CadValidaParSer;
procedure CadMascaraParSer;
procedure CadNovoParSer;

procedure CadPreencherRst(cdsPai,cdsRst: TClientDataSet);

procedure CadTrazerEmpParBxp;
procedure CadTrazerEmpParBxr;


function PreenCamposSef(campo: String; conteudo: TStringList; index: String): String;




implementation
Uses uDmGeral,enConstantes, uProxy, enFunc;
Var
xMensErro:string;

procedure ValidaCAD_CD_C_PAR;
begin
   xMensErro := '';

  {if trim(dmGeral.CAD_CD_C_PAR.FieldByName('pessoa').text) = '' then
     begin
       xMensErro:= xMensErro + '.Pessoa'+ #13;
     end;}

  if trim(dmGeral.CAD_CD_C_PAR.FieldByName('CNT_CNPJ').text) <> '' then
     begin
       {if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end  }
       if Length(trim(dmGeral.CAD_CD_C_PAR.FieldByName('CNT_CNPJ').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmGeral.CAD_CD_C_PAR.FieldByName('CNT_CNPJ').text)) = false then
               xMensErro:= xMensErro + '.CNPJ Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.CNPJ Inválido.'+ #13;
          end;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_PAR_CPG;
var
  xMensErro:string;
  lQtdeReg,lIdCondicaoPag,lSequencia: integer;
  lPerReajuste: Currency;
  lDescCpg: String;

begin
  xMensErro:='';

  if dmGeral.CAD_CD_C_PAR_CPG.State in [dsInsert,dsEdit] then
     begin
        if trim(dmGeral.CAD_CD_C_PAR_CPG.FieldByName('id_condicao_pag').AsString)='' then
           begin
             xMensErro:= xMensErro + '.Condição de pagamento deve ser informado'+ #13;
           end;

        if trim(dmGeral.CAD_CD_C_PAR_CPGper_reajuste.AsString)='' then
           begin
             xMensErro:= xMensErro + '.Percentual de reajuste'+ #13;
           end;


        if (dmGeral.CAD_CD_C_PAR_CPG.FieldByName('sequencia').AsString='') then
           begin
             xMensErro:= xMensErro + '.Sequência'+ #13;
           end;

        if xMensErro <> '' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end
        else
           begin
             try
               if dmGeral.CAD_CD_C_PAR_CPG.State in [dsInsert] then
                  begin
                     lIdCondicaoPag := dmGeral.CAD_CD_C_PAR_CPG.FieldByName('id_condicao_pag').AsInteger;
                     lDescCpg       := dmGeral.CAD_CD_C_PAR_CPG.FieldByName('int_nomecpg').AsString;
                     lPerReajuste   := dmGeral.CAD_CD_C_PAR_CPG.FieldByName('per_reajuste').AsCurrency;
                     lSequencia     := dmGeral.CAD_CD_C_PAR_CPG.FieldByName('sequencia').AsInteger;

                     dmGeral.CAD_CD_C_PAR_CPG.cancel;
                     abort;

                     lQtdeReg := dmGeral.CAD_CD_C_PAR_CPG.RecordCount;

                  end;
             finally
                begin
                     lQtdeReg := dmGeral.CAD_CD_C_PAR_CPG.RecordCount;

                     if dmGeral.CAD_CD_C_PAR_CPG.Locate('ID_CONDICAO_PAG',lIdCondicaoPag,[]) then
                        begin
                          xMensErro:= xMensErro + '.Condição de pagamento já informada'+ #13;
                        end;
                     if dmGeral.CAD_CD_C_PAR_CPG.FieldByName('sequencia').AsInteger > 0 then
                        if dmGeral.CAD_CD_C_PAR_CPG.Locate('sequencia',lSequencia,[]) then
                           begin
                             xMensErro:= xMensErro + '.Sequência já informada'+ #13;
                           end;

                     if xMensErro <> '' then
                        begin
                          raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
                           abort;
                        end
                     else
                        begin
                          dmGeral.CAD_CD_C_PAR_CPG.Insert;

                          dmGeral.CAD_CD_C_PAR_CPG.FieldByName('id_condicao_pag').AsInteger := lIdCondicaoPag;
                          dmGeral.CAD_CD_C_PAR_CPG.FieldByName('int_nomecpg').AsString   := lDescCpg;
                          dmGeral.CAD_CD_C_PAR_CPG.FieldByName('per_reajuste').AsCurrency := lPerReajuste;
                          dmGeral.CAD_CD_C_PAR_CPG.FieldByName('sequencia').AsInteger := lQtdeReg + 1;
                          dmGeral.CAD_CD_C_PAR_CPG.BeforePost := nil;
                          dmGeral.CAD_CD_C_PAR_CPG.Post;
                        end;


               dmGeral.CAD_CD_C_PAR_CPG.BeforePost := dmGeral.CAD_CD_C_PAR_CPGBeforePost;
                end;
             end;
           end;
     end;
end;

procedure CadNovoPar(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_PAR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_PAR',xCodLme,xRevLme,dmGeral.CAD_CD_C_PAR);

end;

procedure CadNovoParCpg;
begin
  dmGeral.CAD_CD_C_PAR_CPG.FieldByName('per_reajuste').AsCurrency := 0;
  dmGeral.CAD_CD_C_PAR_CPG.FieldByName('sequencia').AsInteger    := 0;
end;

procedure CAD_CD_C_PAR_CPGper_reajusteChange;
begin
  if dmGeral.CAD_CD_C_PAR_CPGper_reajuste.AsCurrency < 0 then
     begin
       ShowMessage('O percentual não pode ser menor que 0.');
       dmGeral.CAD_CD_C_PAR_CPGper_reajuste.FocusControl;
       abort;
     end;
end;

procedure RecalcSequencia;
var
  i: integer;
begin

  try

  i := 0;

  dmGeral.CAD_CD_C_PAR_CPG.BeforePost := nil;

  dmGeral.CAD_CD_C_PAR_CPG.IndexFieldNames := 'sequencia';
  dmGeral.CAD_CD_C_PAR_CPG.First;
  while not dmGeral.CAD_CD_C_PAR_CPG.eof do
     begin
       inc(i);
       dmGeral.CAD_CD_C_PAR_CPG.Edit;
       dmGeral.CAD_CD_C_PAR_CPGsequencia.AsInteger := i;
       dmGeral.CAD_CD_C_PAR_CPG.Post;
       dmGeral.CAD_CD_C_PAR_CPG.Next;
     end;
  finally
     dmGeral.CAD_CD_C_PAR_CPG.BeforePost := dmGeral.CAD_CD_C_PAR_CPGBeforePost;
  end;

end;

procedure CadValidaParSer;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.CAD_CD_C_PAR_SER.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.CAD_CD_C_PAR_SER.FieldByName('nfe_serie').AsString='') then
           begin
             xMensErro:= xMensErro + '.Série'+ #13;
           end;

        if (dmGeral.CAD_CD_C_PAR_SER.FieldByName('nfe_numero').AsString='') then
           begin
             xMensErro:= xMensErro + '.Sequência'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;

procedure CadMascaraParSer;
begin
  dmGeral.CAD_CD_C_PAR_SERnfe_numero.DisplayFormat := CMascaraVlrInt;
end;

procedure CadNovoParSer;
begin
  dmGeral.CAD_CD_C_PAR_SERnfe_numero.AsInteger := 0;
end;


function PreenCamposSef(campo: String; conteudo: TStringList; index: String): String;
{var
  Lista: TDictionary<String,String>;
  i: integer;
  x: String;}
begin
 { try

{  if Campo = 'sef_cod_fin' then
     begin
       Lista := TDictionary<String,String>.create;
       Lista.Add('0','0-Documento original emitido em arquivo');
       Lista.Add('1','1-Transcrição de documentos de emissão própria');
       Lista.Add('2','2-Transcrição de documentos emitidos por terceiros');
       Lista.Add('3','3-Transcrição de documentos capturados por digitalização');
       Lista.Add('4','4-Transcrição de documentos emitidos em equipamento especializado');
       Lista.Add('5','5-Livros de resultados e obrigações');
       Lista.Add('6','6-Livros e mapas de controle');
       Lista.Add('7','7-Guias de informações econômico-fiscais');
       Lista.Add('8','8-Livros da contabilidade');
       Lista.Add('9','9-Extratos de documentos');
       for i := 1 to Lista.Count do
           begin
             x := inttostr(i-1);
             conteudo.Add(Lista.Items[x]);
           end;
       if index <> '' then
          begin
            if Lista.ContainsKey(index) then
               Result := Lista[index]
          end;
     end;
  finally
     FreeAndNil(Lista);
  end;      }
end;






procedure CadTrazerEmpParBxp;
begin
  { TODO -oMaxsuel -cCriação :
    Criado em 28-03-2016
    Tem a função de inserir as empresas sem ser alogada,
    na tabela CAD_TB_C_PAR_BXP. }


  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
      dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([2, '%']));
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
     begin
       dmGeral.BUS_CD_C_PAR.First;
       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            if (dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger <>
                dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger) and

               (not (dmGeral.CAD_CD_C_PAR_BXP.Locate('ID_EMPRESA_BXP',dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,[]))) then
               begin
                 dmGeral.CAD_CD_C_PAR_BXP.Insert;
                 dmGeral.CAD_CD_C_PAR_BXP.FieldByName('ID_EMPRESA_BXP').AsInteger :=
                         dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
                 dmGeral.CAD_CD_C_PAR_BXP.FieldByName('INT_FANTASIA').AsString   :=
                         dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
                 dmGeral.CAD_CD_C_PAR_BXP.FieldByName('permite_baixar').AsBoolean := False;
                 dmGeral.CAD_CD_C_PAR_BXP.Post;
               end;
            dmGeral.BUS_CD_C_PAR.Next;
         end;
       dmGeral.BUS_CD_C_PAR.Close;

       dmGeral.CAD_CD_C_PAR_BXP.IndexFieldNames := 'ID_EMPRESA_BXP';
       dmGeral.CAD_CD_C_PAR_BXP.First;

       dmGeral.CAD_CD_C_PAR_BXP.edit;
     end;
end;


procedure CadTrazerEmpParBxr;
begin
  { TODO -oLuan -cCriação :
    Criado em 20-02-2017
    Tem a função de inserir as empresas sem ser alogada,
    na tabela CAD_TB_C_PAR_BXR. }


  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
      dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([2, '%']));
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean then
     begin
       dmGeral.BUS_CD_C_PAR.First;
       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            if (dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger <>
                dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger) and

               (not (dmGeral.CAD_CD_C_PAR_BXR.Locate('ID_EMPRESA_BXR',dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,[]))) then
               begin
                 dmGeral.CAD_CD_C_PAR_BXR.Insert;
                 dmGeral.CAD_CD_C_PAR_BXR.FieldByName('ID_EMPRESA_BXR').AsInteger :=
                         dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
                 dmGeral.CAD_CD_C_PAR_BXR.FieldByName('INT_FANTASIA').AsString   :=
                         dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
                 dmGeral.CAD_CD_C_PAR_BXR.FieldByName('permite_baixar').AsBoolean := False;
                 dmGeral.CAD_CD_C_PAR_BXR.Post;
               end;
            dmGeral.BUS_CD_C_PAR.Next;
         end;
       dmGeral.BUS_CD_C_PAR.Close;

       dmGeral.CAD_CD_C_PAR_BXR.IndexFieldNames := 'ID_EMPRESA_BXR';
       dmGeral.CAD_CD_C_PAR_BXR.First;

       dmGeral.CAD_CD_C_PAR_BXR.edit;
     end;
end;

procedure CadPreencherRst(cdsPai,cdsRst: TClientDataSet);
var
  Restricao: Array[0..5] of String;
begin
  { TODO -oMaxsuel  -cCriação :
    Criado em 14/12/2016
    Irá preencher os tipo de validações do Pedido de Venda }

  { A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    -- C -	Produto com estoque negativo     NÃO PRECISOU FAZER PRA ESTE
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    -- F - Envia para Carga                  NÃO PRECISOU FAZER PRA ESTE
    -- G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda) NÃO PRECISOU FAZER PRA ESTE
    H - Item com desconto acima do limite   }



  if not (cdsRst.Locate('letra_restricao','A',[])) then
     begin
       cdsRst.Insert;
       cdsRst.FieldByName('letra_restricao').AsString := 'A';
       cdsRst.FieldByName('descricao').AsString := 'Sem Limite de Credito';
       cdsRst.FieldByName('tipo_restricao').AsString := '0';
       cdsRst.Post;
     end;
 if not (cdsRst.Locate('letra_restricao','B',[])) then
     begin
       cdsRst.Insert;
       cdsRst.FieldByName('letra_restricao').AsString := 'B';
       cdsRst.FieldByName('descricao').AsString := 'Cliente Com Debito na Empresa';
       cdsRst.FieldByName('tipo_restricao').AsString := '0';
       cdsRst.Post;
     end;
  if not (cdsRst.Locate('letra_restricao','D',[])) then
     begin
       cdsRst.Insert;
       cdsRst.FieldByName('letra_restricao').AsString := 'D';
       cdsRst.FieldByName('descricao').AsString := 'Cliente com credito encerrado';
       cdsRst.FieldByName('tipo_restricao').AsString := '0';
       cdsRst.Post;
     end;
  if not (cdsRst.Locate('letra_restricao','E',[])) then
     begin
       cdsRst.Insert;
       cdsRst.FieldByName('letra_restricao').AsString := 'E';
       cdsRst.FieldByName('descricao').AsString := 'Pedido com preço alterado pelo vendedor';
       cdsRst.FieldByName('tipo_restricao').AsString := '0';
       cdsRst.Post;
     end;

  if not (cdsRst.Locate('letra_restricao','H',[])) then
     begin
       cdsRst.Insert;
       cdsRst.FieldByName('letra_restricao').AsString := 'H';
       cdsRst.FieldByName('descricao').AsString := 'Item com desconto acima do limite';
       cdsRst.FieldByName('tipo_restricao').AsString := '0';
       cdsRst.Post;
     end;

  if cdsRst.ChangeCount > 0 then
     begin
       cdsPai.ApplyUpdates(0);
       cdsPai.Edit;
       dmgeral.CAD_CD_C_PAR_CTR.Edit;
       dmGeral.CAD_CD_C_PAR_NFE.Edit;
     end;

  cdsRst.IndexFieldNames := 'letra_restricao';
end;


end.
