unit CAD_RN_C_ITE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure rn_Ite_novo(DataSet: TDataSet);
procedure rn_Ite_AposAbrir(DataSet: TDataSet);
procedure rn_ite_gera_preco;

procedure MascaraCAD_CD_C_ITE_PRC(DataSet: TDataSet);
procedure MascaraCAD_CD_C_ITE_CAT(DataSet: TDataSet);

procedure CadNovoIteCoj;

procedure CadCalcCubagemIte;

function CadVerificarCodBarraIte:Boolean;

procedure ValidaCAD_CD_C_ITE(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ITE_ESP(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ITE_COM(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ITE_PRC(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ITE_CAT(DataSet: TDataSet);
procedure ValidaCAD_CD_C_ITE_COJ(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;

Var
xMensErro:string;


procedure MascaraCAD_CD_C_ITE_PRC(DataSet: TDataSet);
begin
  dmGeral.CAD_CD_C_ITE_PRCPRECO_AVISTA.DisplayFormat  := CMascaraValor;
  dmGeral.CAD_CD_C_ITE_PRCPRECO1.DisplayFormat        := CMascaraValor;
  dmGeral.CAD_CD_C_ITE_PRCPRECO2.DisplayFormat        := CMascaraValor;
  dmGeral.CAD_CD_C_ITE_PRCPRECO3.DisplayFormat        := CMascaraValor;
  dmGeral.CAD_CD_C_ITE_PRCPRECO4.DisplayFormat        := CMascaraValor;
end;

procedure MascaraCAD_CD_C_ITE_CAT(DataSet: TDataSet);
begin
  dmGeral.CAD_CD_C_ITE_CATPRECO.DisplayFormat        := CMascaraValor;
end;

procedure rn_Ite_AposAbrir(DataSet: TDataSet);
begin
  dmGeral.CAD_CD_C_ITEPRECO_AVISTA.DisplayFormat        := CMascaraValor;
  dmGeral.CAD_CD_C_ITEPRECO_APRAZO.DisplayFormat        := CMascaraValor;
  dmGeral.CAD_CD_C_ITEcusto_servico.DisplayFormat       := CMascaraValor;
  dmGeral.CAD_CD_C_ITEpreco_sugerido.DisplayFormat      := CMascaraValor;

  dmGeral.CAD_CD_C_ITE_TPRpreco.DisplayFormat           := CMascaraValor;
  dmGeral.CAD_CD_C_ITECUBAGEM.DisplayFormat             := CMascaraVlrMerc;

  dmGeral.CAD_CD_C_ITEtam_largura.DisplayFormat         := CMascaraVlrMerc;
  dmGeral.CAD_CD_C_ITEtam_comprimento.DisplayFormat     := CMascaraVlrMerc;
  dmGeral.CAD_CD_C_ITEtam_espessura.DisplayFormat       := CMascaraVlrMerc;

end;

function CadVerificarCodBarraIte:Boolean;
begin
  Result := true;
  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data := dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsString,trim(dmGeral.CAD_CD_C_ITE.FieldByName('COD_BARRA').AsString)]));
  if not dmGeral.BUS_CD_C_ITE.IsEmpty then
    begin
      ShowMessage('Já item cadastrado com esse mesmo cód. barra digitado.');
      Result := false;
    end;
end;


procedure rn_ite_gera_preco;
begin

  dmCtc.CTC_CD_C_TPR.Close;
  dmCtc.CTC_CD_C_TPR.Data := dmCtc.CTC_CD_C_TPR.DataRequest(VarArrayOf([1, '%']));
  dmCtc.CTC_CD_C_TPR.First;
  while not dmCtc.CTC_CD_C_TPR.Eof do
    begin
      if  not dmGeral.CAD_CD_C_ITE_TPR.Locate('id_tpr', dmCtc.CTC_CD_C_TPR.FieldByName('id_tpr').AsString, [loCaseInsensitive, loPartialKey]) Then
          begin
            dmGeral.CAD_CD_C_ITE_TPR.Insert;
            dmGeral.CAD_CD_C_ITE_TPR.FieldByName('id_tpr').AsInteger:=dmCtc.CTC_CD_C_TPR.FieldByName('id_tpr').AsInteger;
            dmGeral.CAD_CD_C_ITE_TPR.FieldByName('int_nometpr').AsString:=dmCtc.CTC_CD_C_TPR.FieldByName('Descricao').AsString;
            dmGeral.CAD_CD_C_ITE_TPR.Post;
          end;
      dmCtc.CTC_CD_C_TPR.Next;
    end;
  dmGeral.CAD_CD_C_ITE_TPR.First;
end;


procedure rn_Ite_novo(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.CAD_CD_C_ITE.FieldByName('ATIVO').AsBoolean       := true;
  dmGeral.CAD_CD_C_ITE.FieldByName('CARDAPIO').AsBoolean    := False;
  dmGeral.CAD_CD_C_ITE.FieldByName('TIPO').AsInteger        := 0;
  dmGeral.CAD_CD_C_ITE.FieldByName('PES_LIQUIDO').AsInteger := 0;
  dmGeral.CAD_CD_C_ITE.FieldByName('PES_BRUTO').AsInteger   := 0;
  dmGeral.CAD_CD_C_ITE.FieldByName('FANTASIA').AsString     :=  '';

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true))  then
    dmGeral.CAD_CD_C_ITE.FieldByName('TIPO_SERVICO').AsBoolean := false;

  dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsInteger := 0;

  try
    dmGeral.CAD_CD_C_ITE.BeforePost := nil;
    dmGeral.CAD_CD_C_ITE_LOC.Insert;
  finally
    dmGeral.CAD_CD_C_ITE.BeforePost := dmGeral.CAD_CD_C_ITEBeforePost;
  end;
  dmGeral.CAD_CD_C_ITE_LOC.FieldByName('ID_EMPRESA').AsInteger :=
                              dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_ITE',xCodLme,xRevLme,dmGeral.CAD_CD_C_ITE);
end;


procedure ValidaCAD_CD_C_ITE(DataSet: TDataSet);
var
  txt: String;
begin

  xMensErro:='';

  if trim(dmGeral.CAD_CD_C_ITE.FieldByName('ATIVO').text) = '' then
     begin
       xMensErro:= xMensErro + '.Ativo ' + #13;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean then
     begin
        if trim(dmGeral.CAD_CD_C_ITE.FieldByName('cardapio').text) = '' then
           begin
             xMensErro:= xMensErro + '.Cardápio' + #13;
           end;

        if trim(dmGeral.CAD_CD_C_ITE.FieldByName('tipo').text) = '' then
           begin
             xMensErro:= xMensErro + '.Tipo(rastreabilidade)' + #13;
           end;

        if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('geracao_lote_interno').text) = '') and (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean) then
           begin
             xMensErro:= xMensErro + '.Gerador do lote interno' + #13;
           end;
     end;

  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('DESCRICAO').text) = '') then
     begin
       xMensErro:= xMensErro + '.Descrição' + #13;
     end;

  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('ID_GRUPO').text) = '') then
     begin
        xMensErro:= xMensErro + '.Grupo' + #13;
     end;

  if dmGeral.CAD_CD_C_ITE.FieldByName('TIPO').Isnull then
     begin
       xMensErro:= xMensErro + '.Tipo' + #13;
     end;


  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('id_fornecedor').text) = '' ) then
     begin
       xMensErro:= xMensErro + '.Fornecedor' + #13;
     end;



  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('cod_fabrica').text) = '' ) then
     begin
       //xMensErro:= xMensErro + '.Código de fábrica' + #13;
     end;

  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('pes_liquido').text) = '' ) then
     begin
       xMensErro:= xMensErro + '.Peso líquido' + #13;
     end;

  if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('pes_bruto').text) = '' ) then
     begin
       xMensErro:= xMensErro + '.Peso bruto' + #13;
     end;


   if dmGeral.CAD_CD_C_ITE.FieldByName('ID_FORNECEDOR').AsInteger = 0 then
      begin
        xMensErro:= xMensErro +  '.Fornecedor deve ser preenchido.' + #13;
      end;

   if (not(((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
            (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
            (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true)) and
            (dmGeral.CAD_CD_C_ITE.FieldByName('TIPO_SERVICO').AsBoolean=true))) then
      begin
         if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').text) = '' ) then
           begin
             xMensErro:= xMensErro + '.NCM' + #13;
           end;

         if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('emb_compra').text) = '' ) then
           begin
             xMensErro:= xMensErro + '.Embalagem compra' + #13;
           end;

         if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('emb_venda').text) = '' ) then
           begin
             xMensErro:= xMensErro + '.Embalagem venda' + #13;
           end;

         if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('est_minimo').text) = '' ) then
           begin
             xMensErro:= xMensErro + '.Estoque mínimo' + #13;
           end;

         if trim(dmGeral.CAD_CD_C_ITE.FieldByName('ID_UND_COMPRA').text) = '' then
            begin
              xMensErro:= xMensErro +  '.Unidade de compra deve ser preenchido.' + #13;
            end;

         if trim(dmGeral.CAD_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString) = '' then
            begin
              xMensErro:= xMensErro +  '.Unidade de venda deve ser preenchido.' + #13;
            end;
      end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true then
     begin
       if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsString) = '6') or
          (trim(dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsString) = '7') then
          begin
            if dmGeral.CAD_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean = false then
               begin
                 if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').AsString) = '') then
                     xMensErro:= xMensErro +  '.Item caixa de madeira deve ser preenchido.' + #13;
               end;
          end;
     end;


  if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_1').AsCurrency <> 0) or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_1').AsCurrency <> 0)     or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_1').AsCurrency <> 0)   or
     (dmGeral.CAD_CD_C_ITE.FieldByName('densidade').AsCurrency <> 0) then
      begin


        if (dmGeral.CAD_CD_C_ITE.FieldByName('densidade').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Densidade 1.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Comprimento 1.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Largura 1.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Espessura 1.' + #13;

            end;


      end;


  if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_2').AsCurrency <> 0) or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_2').AsCurrency <> 0)     or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_2').AsCurrency <> 0)   or
     (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_2').AsCurrency <> 0) then
      begin



        if (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_2').AsCurrency = 0) then
           begin
            xMensErro:= xMensErro +  '.Densidade 2.' + #13;

           end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Comprimento 2.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_2').AsCurrency = 0) then
            begin
              xMensErro := xMensErro +  '.Largura 2.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Espessura 2.' + #13;

            end;

      end;



  if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_3').AsCurrency <> 0) or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_3').AsCurrency <> 0)     or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_3').AsCurrency <> 0)   or
     (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_3').AsCurrency <> 0) then
      begin


        if (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_3').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Densidade 3.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_3').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Comprimento 3.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_3').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Largura 3.' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_3').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Espessura 3.' + #13;

            end;



      end;


  if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_1').AsCurrency <> 0) or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_1').AsCurrency <> 0)     or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_1').AsCurrency <> 0)   or
     (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_esp_revest_1').AsCurrency <> 0) then
      begin



        if (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_esp_revest_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Densidade 1 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Comprimento 1 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Largura 1 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_1').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Espessura 1 espuma revestimento' + #13;

            end;


      end;

  if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_2').AsCurrency <> 0) or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_2').AsCurrency <> 0)     or
     (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_2').AsCurrency <> 0)   or
     (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_esp_revest_2').AsCurrency <> 0) then
      begin



        if (dmGeral.CAD_CD_C_ITE.FieldByName('densidade_esp_revest_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Densidade 2 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Comprimento 2 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Largura 2 espuma revestimento' + #13;

            end;

        if (dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_2').AsCurrency = 0) then
            begin
              xMensErro:= xMensErro +  '.Espessura 2 espuma revestimento' + #13;

            end;

      end;


  if (dmGeral.CAD_CD_C_ITE.FieldByName('SGQ_CRITICA_LAUDO_FAB').IsNull) and (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean) then
      begin
        xMensErro := xMensErro + '.Laudo fabricante deve ser preenchido.' + #13;
      end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure ValidaCAD_CD_C_ITE_ESP(DataSet: TDataSet);
begin
//Falta
end;

procedure ValidaCAD_CD_C_ITE_COM(DataSet: TDataSet);
begin
//Falta
end;


procedure ValidaCAD_CD_C_ITE_COJ(DataSet: TDataSet);
begin
  xMensErro:='';

  if (trim(dmGeral.CAD_CD_C_ITE_COJ.FieldByName('qtde').text) = '') or
     (dmGeral.CAD_CD_C_ITE_COJ.FieldByName('qtde').AsFloat = 0) then
    begin
      xMensErro:= xMensErro + '.Qtde' + #13;
    end;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
      begin
        if (dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_tamanho').text) = '' then
            xMensErro:= xMensErro + '.Tamanho' + #13;
      end;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) then
      begin
        if (dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_cor').text) = '' then
            xMensErro:= xMensErro + '.Cor' + #13;
      end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure ValidaCAD_CD_C_ITE_PRC(DataSet: TDataSet);
begin
  xMensErro:='';

  if trim(dmGeral.CAD_CD_C_ITE_PRC.FieldByName('id_perfil_cli').text) = '' then
    begin
      xMensErro:= xMensErro + '.Perfil ' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure ValidaCAD_CD_C_ITE_CAT(DataSet: TDataSet);
begin
  xMensErro:='';

  if trim(dmGeral.CAD_CD_C_ITE_CAT.FieldByName('preco').text) = '' then
    begin
      xMensErro:= xMensErro + '.Preco da Categoria' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CadCalcCubagemIte;
begin
  { TODO -oMaxsuel -cCriação :
     Criado em 08/03/2016
     Calcula a cubagem do item, pegando a Altura, Comprimento e Espessura. }
  dmGeral.CAD_CD_C_ITEcubagem.AsCurrency := 0;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean then
     begin
        if (dmGeral.CAD_CD_C_ITEtam_largura.AsCurrency > 0) and
           (dmGeral.CAD_CD_C_ITEtam_comprimento.AsCurrency > 0) and
           (dmGeral.CAD_CD_C_ITEtam_espessura.AsCurrency > 0) then
           begin
             dmGeral.CAD_CD_C_ITEcubagem.AsCurrency := roundTo(
                     dmGeral.CAD_CD_C_ITEtam_largura.AsCurrency *
                     dmGeral.CAD_CD_C_ITEtam_comprimento.AsCurrency *
                     dmGeral.CAD_CD_C_ITEtam_espessura.AsCurrency,-4);
           end;
     end;
end;

procedure CadNovoIteCoj;
begin
  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_cor').AsInteger       := 0;
  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_tamanho').AsInteger   := 0;
end;


end.
