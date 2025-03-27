unit FAT_RN_M_PED;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient,enFunc;

procedure FatValidaPedidoTit(DataSet:TDataSet);
procedure FatValidaPedidoIte(DataSet:TDataSet);
procedure FatVerifPcpRomPedidoIte;
function FatVerifFatPcaPedidoIte(IdPedido: integer): String;

procedure FatValidaStatusPedido(DataSet:TDataSet);
function  FatValidBloqueiaPed(Letra: String): Boolean;
function  FatValidEnviaLibPed(Letra: String): Boolean;

procedure FatMascaraPedido(DataSet:TDataSet);
procedure FatMascaraPedidoIte(DataSet:TDataSet);
procedure FatNovoPedido(DataSet: TDataSet);
procedure FatNovoPedidoIte(DataSet: TDataSet);

procedure FAT_CD_M_PED_AtuSequencias;
procedure FAT_CD_M_PEDvlr_descontoChange;

procedure FatRatVlrEntreItensPedido(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte, lNomeCampoBaseIte,
                                    lNomeCampoPerIte: String);

//procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                  //  lNomeCampoIte,lNomeCampoPerIte: String);

procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var codItensAcimaDesc:String;ativarVerDesc:boolean;
                                    int_unif_desc_reg:boolean);

procedure PedRatearVlrDescPecServ;
procedure PedCalculaNumeroPecasSerTer(var num_pecas,num_servicos,num_terceiros:integer);


procedure FatMascaraPedidoTit(DataSet:TDataSet);
procedure FatMascaraPedidoTitSer(DataSet:TDataSet);
procedure FatNovoPedidoTit(DataSet: TDataSet);
procedure FatNovoPedidoTitSer(DataSet: TDataSet);
function  FatExisteTitAprazo: boolean;
function  FatValidaTitPNF: Boolean;
procedure FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
procedure FAT_CD_M_PED_ITEPER_DESCONTOChange(Sender: TField);
procedure FAT_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);
procedure FatRatearDescBasico_Especial;



function  FatVerifSeqNfe: Boolean;

function FAT_CD_M_PED_TesCampos: Boolean;
function FAT_CD_M_PED_TIT_TesCampos: Boolean;
function FAT_CD_M_PED_ITE_TesCampos: Boolean;
function FAT_CD_M_PED_TesTotItensXTotPed: Boolean;
function FAT_CD_M_PED_TesTotItensXTotPedComDescEspecial: Boolean;


function FAT_CD_M_PED_TesTotFpgXTotPed: Boolean;
function FAT_CD_M_PED_TesPermExclusao: Boolean;
function FAT_CD_M_PED_TestarTributacaoPed: String;


function PED_GRAVA_NFE(const cds_pai, cds_pai_antigo, cds_itens_antigo, cds_titulos_antigos: TClientDataSet): Boolean;
function PED_GRAVA_NFE_ITE(const cds_itens_antigo:    TClientDataSet): Boolean;
function PED_GRAVA_NFE_TIT(const cds_titulos_antigos: TClientDataSet): Boolean;
function PED_EXCLUI_NFE(const id_pedido: String): Boolean;



procedure fatPedCalcTotalItem;
procedure fatPedCalcTotal;
procedure fatPedVerifRestricoes;

procedure BusFuncionarioAtivo;

procedure FatInserirTitNotaCreditoPed(cdsTit:TClientDataSet;credito:currency);


procedure FAT_CD_M_PEDvlr_desc_produtosChange;
procedure FAT_CD_M_PEDvlr_desc_servicosChange;
procedure FAT_CD_M_PEDvlr_desc_terceiroChange;



procedure PedAtualizaVlrDescPecServ;

procedure PreencherMecItem;


implementation
Uses uDmGeral,enConstantes, uProxy, FAT_RN_M_NFE;


procedure PreencherMecItem;
begin

  try
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
    dmGeral.FAT_CD_M_PED_ITE.First;
    while not dmgeral.FAT_CD_M_PED_ITE.eof do
      begin
         if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
           begin
             dmGeral.FAT_CD_M_PED_ITE.Edit;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_MECANICO').AsInteger :=
                dmGeral.FAT_CD_M_PED.FieldByName('ID_MECANICO').AsInteger;
             dmGeral.FAT_CD_M_PED_ITE.post;
           end;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
  finally
    dmGeral.FAT_CD_M_PED_ITE.BeforePost :=  dmGeral.FAT_CD_M_PED_ITEBeforePost;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost :=  dmGeral.FAT_CD_M_PED_ITEAfterPost;
  end;



end;

procedure PedAtualizaVlrDescPecServ;
VAR
  des_produtos,des_servicos,des_terceiro:currency;
begin
    des_produtos :=0;
    des_servicos :=0;
    des_terceiro :=0;

    if (dmGeral.FAT_CD_M_PED_ITE.RecordCount >0) then
      begin
       dmGeral.FAT_CD_M_PED_ITE.First;
       while (not dmGeral.FAT_CD_M_PED_ITE.EOF) do
         begin

              if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                  des_produtos := des_produtos +
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;
              if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                  (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                begin
                 des_servicos := des_servicos +
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;
              if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                 (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                begin
                  des_terceiro := des_terceiro +
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;

         dmGeral.FAT_CD_M_PED_ITE.Next;
        end;
      end;

    try
        dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := nil;
        dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := nil;
        dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := nil;
        

        dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;

        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := des_produtos;
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency := des_servicos;
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := des_terceiro;

        if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
           end;

        if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
           end;

        if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
           end;
    finally
      dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_servicosChange;
      dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_produtosChange;
      dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_terceiroChange;

    end;

end;




procedure FAT_CD_M_PEDvlr_desc_terceiroChange;
begin

   if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').IsNull or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency < 0) then
    begin

      try
       dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := nil;
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
      finally
        dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_terceiroChange;
      end;

    end;


  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency >=
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency) and
       (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency > 0) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de terceiros.');
      PedAtualizaVlrDescPecServ;
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').FocusControl;
      exit;
    end;


    if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
       begin
        dmgeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency:=
                                                 RoundTo( (dmgeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                                                   dmgeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
       end;

    if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency = 0) then
       begin
         dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
       end;



  PedRatearVlrDescPecServ;
end;



procedure FAT_CD_M_PEDvlr_desc_servicosChange;
begin
   if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').IsNull or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency < 0) then
    begin
      try
        dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := nil;
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
      finally
         dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_servicosChange;
      end;

    end;


  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency >=
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency) and
       (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency >0) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de serviços.');
      PedAtualizaVlrDescPecServ;
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').FocusControl;
      exit;
    end;


      if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
         begin
          dmgeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency:=
                                               RoundTo( (dmgeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                                                     dmgeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
         end;

      if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency = 0) then
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
         end;



  PedRatearVlrDescPecServ;
end;



procedure FAT_CD_M_PEDvlr_desc_produtosChange;
begin
    if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').IsNull or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency < 0) then
    begin
      try
       dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := nil;
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
      finally
        dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_produtosChange;
      end;

    end;


  if ((dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency >=
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency) and
        (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency >0)) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de produtos.');
      PedAtualizaVlrDescPecServ;
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').FocusControl;
      exit;
    end;

  
    if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
       begin
        dmgeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency:=
                                                RoundTo(  (dmgeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                                                   dmgeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
       end;

    if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency = 0) then
       begin
         dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
       end;



  PedRatearVlrDescPecServ;
end;




procedure PedCalculaNumeroPecasSerTer(var num_pecas,num_servicos,num_terceiros:integer);
begin
  num_pecas := 0;
  num_servicos := 0;
  num_terceiros := 0;
  dmGeral.FAT_CD_M_PED_ITE.Cancel;
  if (dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0) then
    begin
      dmGeral.FAT_CD_M_PED_ITE.First;
      while (not dmGeral.FAT_CD_M_PED_ITE.Eof) do
         begin

             if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                  num_pecas := num_pecas + 1;
                end;
             if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                begin
                 num_servicos := num_servicos + 1;
                end;
             if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                begin
                 num_terceiros := num_terceiros + 1;
                end;

           dmGeral.FAT_CD_M_PED_ITE.Next;
         end;
    end;
end;



procedure PedRatearVlrDescPecServ;
var
  num_pecas,num_servicos,num_terceiros:integer;
  desc_acum_pec,desc_acum_ser,desc_acum_ter:currency;
begin
   desc_acum_pec := 0;
   desc_acum_ser := 0;
   desc_acum_ter := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;
 // dmGeral.FAT_CD_M_PED.FieldByName('ISS_VALOR_RETIDO').AsCurrency := 0;


  PedCalculaNumeroPecasSerTer(num_pecas,num_servicos,num_terceiros);

  if (dmGeral.FAT_CD_M_PED_ITE.RecordCount >0) then
    begin

       try

         dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
         dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
         dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
         dmGeral.FAT_CD_M_PED_ITE.First;
         while (not dmGeral.FAT_CD_M_PED_ITE.EOF) do
           begin

                 dmGeral.FAT_CD_M_PED_ITE.Edit;

                 if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                   begin
                    if (num_pecas > 1) then
                      begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            RoundTo(dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency*
                              (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency),-2);
                       desc_acum_pec := desc_acum_pec + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                      end;
                    if (num_pecas = 1) then
                      begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                             RoundTo(dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency - desc_acum_pec,-2);
                      end;

                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                            RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                            dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                            dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency+
                            dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                    num_pecas := num_pecas - 1;
                   end;

                   if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                      (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                     begin
                      if (num_servicos > 1) then
                        begin
                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                             RoundTo( dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency*
                                      (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency),-2);
                          desc_acum_ser := desc_acum_ser + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                        end;
                      if (num_servicos = 1) then
                        begin
                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency - desc_acum_ser,-2);
                        end;

                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                             RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                             dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency+
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                      num_servicos := num_servicos - 1;
                     end;

                     if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                        (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                       begin
                        if (num_terceiros > 1) then
                          begin
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            RoundTo( dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency*
                           (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency),-2);

                           desc_acum_ter := desc_acum_ter + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                         end;
                     if (num_terceiros = 1) then
                       begin
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                              RoundTo( dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency - desc_acum_ter,-2);
                       end;

                     dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                             RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                     dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                             dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency+
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     num_terceiros := num_terceiros - 1;
                   end;

                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                        RoundTo(  (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100 ,-2);

                   dmGeral.FAT_CD_M_PED_ITE.Post;

                dmGeral.FAT_CD_M_PED_ITE.Next;
            end;
       finally
            dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
            dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
            dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange :=  dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
       end;

    end;

    dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency -
                   (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency);// -
                  // dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency;

    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 1) then
      begin
          dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency -
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency;
      end;

    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 2) then
      begin
        if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean = true then
          begin
            dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency;
          end;
      end;

    dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency -
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency;
end;



procedure FatInserirTitNotaCreditoPed(cdsTit:TClientDataSet;credito:currency);
var
  id_titulo:integer;
begin
   id_titulo := 0;
   cdsTit.Cancel;
   if (cdsTit.RecordCount > 0) then
     begin
       cdsTit.First;
       while ((not cdsTit.Eof) and (id_titulo = 0)) do
         begin
           dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);
           if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
              begin
                id_titulo := cdsTit.FieldByName('ID_TITULO').AsInteger;
              end
           else
              begin
                cdsTit.Next;
              end;
         end;
     end;

   if (id_titulo = 0) then
     begin
       if (credito > 0) then
          begin
            cdsTit.Insert;
            cdsTit.FieldByName('ID_FORMA_PAG').AsInteger :=
                dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ID_FORMA_PAG_RCR').AsInteger;
            dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);
            cdsTit.FieldByName('INT_NOMEFPG').AsString :=
                    dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
            cdsTit.FieldByName('INT_DOCIMPRESSO').AsString :=
                    dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString;
            cdsTit.FieldByName('VLR_TITULO').AsCurrency := credito;
            cdsTit.Post;
          end;
     end
   else
     begin
       if (credito > 0) then
          begin
           cdsTit.Edit;
           cdsTit.FieldByName('VLR_TITULO').AsCurrency := credito;
           cdsTit.Post;
          end
       else
          begin
            cdsTit.Delete;
          end;
     end;
end;


procedure BusFuncionarioAtivo;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1,'']));
end;

procedure fatPedVerifRestricoes;
var

  lVlrTotTitPrazo: Currency;

begin

  { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    F - Envia para Carga
    G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda)
    H - Item com desconto acima do limite
    I - Pedido gerado pelo Mobile
  }

  { Caso a venda seja a prazo, o sistema irá somar as formas de pagamento
    que são a prazo e verifica se ultrapassou o limite do cliente.
  }
   dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString);

   if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
     begin
           //FatValidEnviaLibPed
        if FatValidEnviaLibPed('A') then
           begin
              if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
                 begin
                   if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('limite_cred_fpg').AsBoolean=true) then
                     begin
                       dmGeral.FAT_CD_M_PED_TIT.First;
                       while not dmGeral.FAT_CD_M_PED_TIT.eof do
                          begin
                            dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);
                            if (dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1) and
                               (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger IN [1,2,4]) then
                               begin
                                 if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,
                                                             dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency,
                                                              dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsString) then
                                    begin
                                      if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                        begin
                                         dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                                        end;
                                      break;
                                    end;
                               end;
                            dmGeral.FAT_CD_M_PED_TIT.Next;
                          end;

                       dmGeral.FAT_CD_M_PED_TIT_SER.First;
                       while not dmGeral.FAT_CD_M_PED_TIT_SER.eof do
                          begin
                            dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT_SERid_forma_pag.Text);
                            if (dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1) and
                               (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger IN [1,2,4]) then
                               begin
                                 if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,
                                                             dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency,
                                                              dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_FORMA_PAG').AsString) then
                                    begin
                                      if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                        begin
                                         dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                                        end;
                                      break;
                                    end;
                               end;
                            dmGeral.FAT_CD_M_PED_TIT_SER.Next;
                          end;

                     end
                   else
                     begin
                       lVlrTotTitPrazo := 0;
                       //LPonteiroItens  := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
                       dmGeral.FAT_CD_M_PED_TIT.First;
                       while not dmGeral.FAT_CD_M_PED_TIT.eof do
                          begin
                            dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);
                            if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
                               begin
                                 lVlrTotTitPrazo := lVlrTotTitPrazo + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
                               end;
                            dmGeral.FAT_CD_M_PED_TIT.Next;
                          end;

                        dmGeral.FAT_CD_M_PED_TIT_SER.First;
                        while not dmGeral.FAT_CD_M_PED_TIT.eof do
                          begin
                            dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT_SERid_forma_pag.Text);
                            if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
                               begin
                                 lVlrTotTitPrazo := lVlrTotTitPrazo + dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency;
                               end;
                            dmGeral.FAT_CD_M_PED_TIT_SER.Next;
                          end;


                       //dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(lPonteiroItens);
                       dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);

                       if lVlrTotTitPrazo > 0 then
                          begin
                            if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,lVlrTotTitPrazo) then
                               begin
                                 if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                    begin
                                      dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                                    end;
                               end
                          end;
                     end;
                 end;
           end;
     end;


  // Irá verificar se o cliente encontra-se em débito
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
        if FatValidEnviaLibPed('B') then
           begin
             if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                                       dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)then
                begin
                  if not (pos('B',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                     begin
                       dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'B';
                     end;
                end;
           end;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
     begin
       // Verifica se existe item com estoque negativo
       //Substitui a busca do valor saldo na nota fiscal por proprio pedido de venda, pois
       //sistema acusava que o item não tem saldo mesmo que na tabela do estoque tinha saldo suficiente.Resp:Luan.Data:16/09/2017
       //dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);

       dmGeral.BUS_CD_M_PED.Close;
       dmGeral.BUS_CD_M_PED.Data :=
       dmGeral.BUS_CD_M_PED.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString]));

       if dmGeral.VerifEstNeg(dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,dmGeral.BUS_CD_M_PED_ITE) then
          begin
               if not (pos('C',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                  begin
                    dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'C';
                  end;
          end;
     end;

  // Irá verificar se o cliente encontra-se com o credito encerrado
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
       if FatValidEnviaLibPed('D') then
           begin
             dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
             if dmGeral.BUS_CD_C_CLI.FieldByName('SITUACAO').AsInteger = 2 then
                begin
                  if not (pos('D',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                     begin
                       dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'D';
                     end;
                end;
             dmgeral.BUS_CD_C_CLI.close;
           end;
     end;


   //LPonteiroItens  := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
   if ((dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) and
       (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = False)) then
     begin
       if FatValidEnviaLibPed('E') then
          begin
            dmGeral.FAT_CD_M_PED_ITE.First;
            while not dmGeral.FAT_CD_M_PED_ITE.eof do
              begin
                if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <>
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
                   begin
                     if not (pos('E',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                        begin
                          dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'E';
                          dmGeral.FAT_CD_M_PED_ITE.Last;
                        end;
                   end;
                dmGeral.FAT_CD_M_PED_ITE.Next;
              end;
          end;
       end
    else
      begin
        if FatValidEnviaLibPed('E') then
           begin
              if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
                 (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
                begin
                  dmGeral.FAT_CD_M_PED_ITE.First;
                   while not dmGeral.FAT_CD_M_PED_ITE.eof do
                      begin
                        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
                           begin
                             if not (pos('E',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                begin
                                  dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'E';
                                end;
                           end;
                        dmGeral.FAT_CD_M_PED_ITE.Next;
                      end;
                end;
           end;

        if FatValidEnviaLibPed('H') then
           begin
             // if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
             //   begin
                  dmGeral.FAT_CD_M_PED_ITE.First;
                  while not dmGeral.FAT_CD_M_PED_ITE.eof do
                      begin
                        if (not dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').IsNull) then
                           begin
                            if dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency then
                               begin
                                 if not (pos('H',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                    begin
                                      dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'H';
                                    end;
                               end;
                           end;
                        dmGeral.FAT_CD_M_PED_ITE.Next;
                      end;
             //   end;
           end;
       end;



    if (dmGeral.CAD_CD_C_PAR_CTR.FieldBYname('utiliza_lote_na_entrada').AsBoolean=true) then
      begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
              if (dmgeral.FAT_CD_M_PED_ITE.FieldByname('INT_LOTE_GRU').AsBoolean) then
                begin
                  if (not (dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean = true)) then
                    begin
                     ShowMessage('O pedido será enviado para carga pois há itens que utiliza lote.');
                     dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean := true;
                     dmGeral.FAT_CD_M_PED_ITE.First;
                     break;
                    end;
                end;
            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;
      end;




    if (dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean = True) then
     begin
       if not (pos('F',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'F';
          end;
     end;
end;


procedure FatValidaStatusPedido(DataSet:TDataSet);
var
  result: Boolean;
begin
  result := true;
  if dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
     begin
       case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
         1:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Reprovado".');
            result := false;
          end;
         {2:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Em produção".');
            result := false;
          end;}
         3:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Faturado".');
            result := false;
          end;
         4:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Cancelado".');
            result := false;
          end;
       end;
     end
  else
     begin
       dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);
       if not dmGeral.BUS_CD_M_NFE.IsEmpty then
          begin
            if dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0 then
               begin
                 ShowMessage('Este pedido de venda não pode ser alterado pois a nota fiscal gerada já possui número.');
                 result := false;
               end;
            if dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02' then
               begin
                 ShowMessage('Este pedido de venda não pode ser alterado pois a nota fiscal gerada está com a situação de cancelada.');
                 result := false;
               end;

            if dmGeral.BUS_CD_M_NFE.FieldByName('PREVENDA').AsBoolean then
               begin
                  dmGeral.CD_BR_CUPOM_MESTRE.Close;
                  dmGeral.CD_BR_CUPOM_MESTRE.Data :=
                          dmGeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([8,
                                 dmGeral.BUS_CD_M_NFE.FieldByName('ECF_PREVENDA').AsString]));
                  if not dmGeral.CD_BR_CUPOM_MESTRE.IsEmpty then
                     begin
                       ShowMessage('Pedido de venda com cupom fiscal gerado: ' + #13 +
                               'Cupom: ' +
                               dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('CCF').AsString +' - ' +
                               'Serial ecf: ' + dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('SERIAL_IMPRESSORA').AsString +' - ' +
                               'Data: ' + dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('data_movimento').AsString);
                       result := false;
                     end;
                  dmGeral.CD_BR_CUPOM_MESTRE.Close;
               end;
          end;
       dmGeral.BUS_CD_M_NFE.Close;
     end;
  if not result then
     begin
       abort;
     end;
end;

procedure FatMascaraPedido(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PEDhor_pedido.DisplayFormat      :=CMascaraHora;
  dmGeral.FAT_CD_M_PEDVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_ICM_DESN.DisplayFormat    :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDPER_DESC_ESPECIAL.DisplayFormat  :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDPER_DESC_BASICO.DisplayFormat    :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDVLR_DESC_ESPECIAL.DisplayFormat  :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_DESC_BASICO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_FRETE.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDPER_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDCUBAGEM.DisplayFormat         :=CMascaraVlrMerc;
  dmGeral.FAT_CD_M_PEDVLR_CREDITO.DisplayFormat     :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDvlr_cred_produtos.DisplayFormat :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_cred_servicos.DisplayFormat :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDsgq_per_comissao.DisplayFormat     :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDvlr_produtos.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_desc_produtos.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDper_desc_produtos.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_prod_liquido.DisplayFormat     :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDvlr_serv_bruto.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_desc_servicos.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDper_desc_servicos.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_ser_liquido.DisplayFormat     :=CMascaraValor;

  dmGeral.FAT_CD_M_PEDvlr_terceiro.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDper_desc_terceiro.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDvlr_terc_liquido.DisplayFormat     :=CMascaraValor;





end;

procedure FatMascaraPedidoIte(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
end;

procedure FatNovoPedido(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').AsInteger := 0;
  if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
      begin
        if not dmGeral.CAD_CD_C_PAR_CTRID_ALM_PADRAO.AsInteger > 0 then
           begin
             ShowMessage('O sistema está configurado para utilizar almoxarifado mas o código do almoxarifado padrão não foi encontrado nos parâmetros!');
             abort;
           end;
        dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                dmGeral.CAD_CD_C_PAR_CTRID_ALM_PADRAO.AsInteger;
      end;

  //Busca sequencia no servidor
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  //try
    dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger :=
         dmGeral.BuscarSeq('FAT_TB_M_PED');
         //SMPrincipal.enValorChave('FAT_TB_M_PED');
  //finally
  //  FreeAndNil(SMPrincipal);
  //end;

  dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').text          := '';
  dmGeral.FAT_CD_M_PED.FieldByName('HOR_PEDIDO').AsDateTime         := Time;
  dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime         := xDataSis;
  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger            := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency        := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger              := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString          := TEnorth.NomeComputador();
  dmGeral.FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat         := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean         := false;
  dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger      := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean           := false;
  dmGeral.FAT_CD_M_PED.FieldByName('MOD_FRETE').AsInteger           := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency        := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_cred_produtos').AsCurrency        := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_cred_servicos').AsCurrency        := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_produtos').AsCurrency        := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_produtos').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('per_desc_produtos').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_prod_liquido').AsCurrency   := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_serv_bruto').AsCurrency      := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_servicos').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('per_desc_servicos').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_ser_liquido').AsCurrency     := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_terceiro').AsCurrency      := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_terceiro').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('per_desc_terceiro').AsCurrency   := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('vlr_terc_liquido').AsCurrency     := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('pedido_automatico').AsBoolean   := false;

  dmGeral.FAT_CD_M_PED.FieldByName('GERAR_PEDIDO_DIFERENCA').AsBoolean := false;

  dmGeral.BusCodigoRevListMestre(true,false,'FAT_FM_M_PED',xCodLme,xRevLme,dmGeral.FAT_CD_M_PED);
end;

procedure FatValidaPedidoTit(DataSet:TDataSet);
begin
  if dmGeral.FAT_CD_M_PED_TIT.State in [dsInsert,dsEdit] then
     begin
        if not FAT_CD_M_PED_TIT_TesCampos then
           begin
             abort;
           end;
     end;
end;

procedure FatValidaPedidoIte(DataSet:TDataSet);
begin
   if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert,dsEdit] then
     begin
        if not FAT_CD_M_PED_ITE_TesCampos then
           begin
             abort;
           end;
     end;
end;

procedure FatVerifPcpRomPedidoIte;
var
  xMensErro:string;
begin
  xMensErro:='';


  if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
        dmGeral.BUS_CD_M_PCP_ROM.Close;
        dmGeral.BUS_CD_M_PCP_ROM.Data :=
                dmGeral.BUS_CD_M_PCP_ROM.DataRequest(VarArrayOf([6,dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger]));
        if not (dmGeral.BUS_CD_M_PCP_ROM.IsEmpty) then
           begin
             if dmGeral.BUS_CD_M_PCP_ROM_PED.Locate('ID_PEDIDO',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger,[]) then
                begin
                  if dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.locate('id_pedido;id_item;id_ped_ite',
                                                               VarArrayOf([dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString,
                                                                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString,
                                                                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsString
                                                                          ]),[]) then
                     begin
                       if dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency > 0 then
                          begin
                            xMensErro := 'Este item não pode ser excluído pois existe conferência!' + #13 +
                                         'Romaneio: ' + dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString;
                          end;
                     end;
                end;
           end;
     end;

  if xMensErro<>'' then
     raise Exception.Create(xMensErro);
end;

function FatVerifFatPcaPedidoIte(IdPedido: integer): String;
var
  xMensErro:string;
begin
  xMensErro:='';

  result := '';
  if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
        dmGeral.BUS_CD_M_PCA.Close;
        dmGeral.BUS_CD_M_PCA.Data :=
                dmGeral.BUS_CD_M_PCA.DataRequest(VarArrayOf([3,IdPedido]));
        if not (dmGeral.BUS_CD_M_PCA.IsEmpty) then
           begin
             //if dmGeral.BUS_CD_M_PCA_PED.Locate('ID_PEDIDO',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger,[]) then
             //   begin
                  result := dmGeral.BUS_CD_M_PCA_PED.FieldByName('int_seq_carreg_anual').AsString;
                  //xMensErro := 'Este item não pode ser excluído pois este pedido já foi importado para carregamento!' + #13 +
                  //             'Carregamento: ' + dmGeral.BUS_CD_M_PCA_PED.FieldByName('id_carregamento').AsString;
             //   end;
           end;
     end;

//  if xMensErro<>'' then
//     raise Exception.Create(xMensErro);
end;

procedure FatNovoPedidoIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    //dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger := (dmGeral.FAT_CD_M_PED_ITE.RecordCount + 1) * -1;
    //dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger := dmGeral.BuscarSeq('FAT_TB_M_NFE_ITE');
    dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger :=  SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat               := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat     := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_ICM_DESN').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency     := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_ESPECIAL').AsCurrency  := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_ESPECIAL').AsCurrency  := 0;


end;

procedure FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
begin
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.FAT_CD_M_PED_ITE,false,false,
                        dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger);
end;

procedure FAT_CD_M_PED_ITEPER_DESCONTOChange(Sender: TField);
var
  per_desconto_ant:Currency;
begin
  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
           begin
              dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
              dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                 roundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);

              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                 roundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency,-2);

              if (per_desconto_ant <
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) then
                 begin
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := per_desconto_ant;
                 end;

              dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
              dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
           end;
      end
   else
      begin
        dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
      end;
  fatPedCalcTotalItem;
end;

procedure FAT_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);
begin
  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
          begin
             dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                   RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency,-2);

             dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
          end;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;
       dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
       dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);

 // fatPedCalcTotalItem; //Subsituir o metodo por dois instruções do calculo do vlr_bruto e vlr_liquido
 //para evitar vlr_desconto seja calculado novamente,que acaba deixando valor diferente que usuário tinha digitado.Resp.:Luan.Data:14/02/2017
end;


function  FatExisteTitAprazo: boolean;
begin
  { TODO -oMaxsuel -cInclusão :
   Criado em 28/02/2016
   Verifica se existe título a prazo. }
  result := false;
  dmGeral.FAT_CD_M_PED_TIT.cancel;
  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            dmgeral.BusFormaPgtos2(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString);
            if not ( dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [0,3,5,8]) then
               begin
                 result := true;
                 dmGeral.FAT_CD_M_PED_TIT.Last;
               end;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;
        dmGeral.FAT_CD_M_PED_TIT.First;
     end;
end;

procedure FatRatearDescBasico_Especial;
var
  PercTemp: Currency;
  vlrBrutoTemp,vlrBrutoComDescBasicTemp: Currency;
  QtdeItens,i: integer;
begin


  vlrBrutoTemp := 0;
  vlrBrutoComDescBasicTemp := 0;

  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
            begin
              vlrBrutoTemp := vlrBrutoTemp + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
            end;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
  dmGeral.FAT_CD_M_PED_ITE.First;

  QtdeItens := dmGeral.FAT_CD_M_PED_ITE.RecordCount;

  i:=0;
  if QtdeItens > 1 then
     begin
       dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
     end;


  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin

        inc(i);
        dmGeral.FAT_CD_M_PED_ITE.edit;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;

        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency > 0 then
           begin
             if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                begin
                   PercTemp := RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency/
                               vlrBrutoTemp) * 100,-2);

                   if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
                      begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_BASICO').AsCurrency :=
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                      end;

                   if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                      begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                             RoundTo((dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency *
                                      PercTemp) / 100,-4);
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_BASICO').AsCurrency :=
                             RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency * 100) /
                                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency,-4);

                      end;
                end;
           end;

        if QtdeItens > 1 then
           begin
             if QtdeItens = i then
                begin
                   dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
                   dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost ;
                end;
           end;

        dmGeral.FAT_CD_M_PED_ITE.Post;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
   dmGeral.FAT_CD_M_PED_ITE.First;


   dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency;



  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
            begin
              vlrBrutoComDescBasicTemp := vlrBrutoComDescBasicTemp +
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency;
            end;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
  dmGeral.FAT_CD_M_PED_ITE.First;


  i:=0;

  if QtdeItens > 1 then
     begin
       dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
     end;


  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin

        inc(i);

        dmGeral.FAT_CD_M_PED_ITE.edit;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;

        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             //if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
             //   begin

                  PercTemp := RoundTo((dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency/
                                       vlrBrutoComDescBasicTemp) * 100,-4);


                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_ESPECIAL').AsCurrency :=
                          RoundTo(( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                                     dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency) *
                                      PercTemp) / 100,-4);

                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_ESPECIAL').AsCurrency := PercTemp;



             //   end;
           end;

        if QtdeItens > 1 then
           begin
             if QtdeItens = i then
                begin
                   dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
                   dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost ;
                end;
           end;

        dmGeral.FAT_CD_M_PED_ITE.Post;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
   dmGeral.FAT_CD_M_PED_ITE.First;



end;

procedure fatPedCalcTotalItem;
begin

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  // Maxsuel Victor em 17-03-2015
 // Este if foi inserido para poder atender a questão do PERC de promoção
 // pois no momento em que o usuário digita o item o sistema já mostra o
 // percentual de desconto.
 if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency > 0) then
     begin
       //Este if foi retirado pois evitava que o valor desconto fosse recalculado
       //se alterasse qtde do item.Responsavel:Luan.Data:11-06-2016
      // if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0) and
         // (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency = 0)   then
         // begin
          dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                 RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                            dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
          dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
          //end;
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;

procedure fatPedCalcTotal;
Var
  PonteiroItens : TBookmark;
begin
  //Totaliza o Orçamento
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency := 0;


  dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency := 0;

  dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;


  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;


  try

    dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := nil;
    dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := nil;
    dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := nil;

    dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_produtos').AsCurrency := 0;
    dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_servicos').AsCurrency := 0;
    dmGeral.FAT_CD_M_PED.FieldByName('vlr_desc_terceiro').AsCurrency := 0;

  finally
    dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_produtosChange;
    dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_servicosChange;
    dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_terceiroChange;
  end;




  dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsCurrency      := 0;
  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency  := 0;
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency  := 0;
     end;

  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin

        try
          dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := nil;
          dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := nil;
          dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := nil;


          while not dmGeral.FAT_CD_M_PED_ITE.eof do
            begin
              dmGeral.BusItens(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);


               dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=

                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

              dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency :=

                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency +
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

              if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean = true) then
                 begin
                   if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                      (NOT (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=true)) then
                     begin
                       dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                       dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency +
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                       dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency+
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

                     end;

                   if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                      (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
                     begin
                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency :=
                             dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency +
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency+
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;


                   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean=true) then
                     begin
                        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <>'09') then
                         begin
                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency +
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency+
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                         end;
                     end
                   else if (pos(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
                     begin
                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency :=
                               dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency +
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency+
                                dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;
                 end
              else
                 begin


                     dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=

                        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency +
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                 end;

              dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency :=
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency +
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency;

              dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency :=
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency +
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_ICM_DESN').AsCurrency;


              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                 begin
                   dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsFloat      :=
                           dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsFloat +
                           (dmGeral.BUS_CD_C_ITE.FieldByName('CUBAGEM').AsFloat *
                            dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat);
                 end;

              dmGeral.FAT_CD_M_PED_ITE.Next;
            end;

          // Código colocado em 25-10-22, por Maxsuel Victor , solicitação do funcionário Caio (Colchões Globo)
          dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency -
               dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;
          // -----------------------------------------------

        finally
            dmGeral.FAT_CD_M_PEDvlr_desc_produtos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_produtosChange;
            dmGeral.FAT_CD_M_PEDvlr_desc_servicos.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_servicosChange;
            dmGeral.FAT_CD_M_PEDvlr_desc_terceiro.OnChange := dmGeral.FAT_CD_M_PEDvlr_desc_terceiroChange;
        end;


        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency :=
               RoundTo((dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency,-2);

             if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
                begin
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                       dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;

                  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency :=
                      RoundTo( (( dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency -
                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency ) * 100 )
                        / dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency, -2);

                end;
           end;


         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
           end;

        if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
           end;

        if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
           end;

     end;

  if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 1) then
      begin
          dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency -
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency;
      end;
  if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 2) then
      begin
        if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean = true then
          begin
            dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency;
          end;
      end;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency -
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency;

  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
end;

function FAT_CD_M_PED_TIT_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsString   = '')  or
     (dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsCurrency = 0) then
      begin
         mens := mens + '.Código do título' + #13;
      end;

  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString   = '')  or
     (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsCurrency = 0) then
      begin
         mens := mens + '.Forma de pagamento' + #13;
      end;

  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString   = '') then
      begin
         mens := mens + '.Data de vencimento' + #13;
      end;

  if mens <> '' then
     begin
       ShowMessage('Registro de forma de pagamento com campos abaixo faltando ser preenchido:' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

function FAT_CD_M_PED_ITE_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsCurrency = 0 then
     begin
       mens := mens + '.Código do item' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat = 0 then
     begin
       mens := mens + '.Qtde' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor unitário' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor total' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').text = '' then
          begin
            mens := mens + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text = '' then
          begin
            mens := mens + '.Tamanho' + #13;
          end;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

function FAT_CD_M_PED_TesCampos: Boolean;
var
  mens,codItens: String;
  txt: string;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Código da empresa' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger = 0 then
     begin
       mens := mens + '.Código do pedido' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').text = '' then
     begin
       mens := mens + '.Data do pedido' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
     begin
       mens := mens + '.Código do cliente' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger = 0 then
     begin
       mens := mens + '.Vendedor' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger = 0 then
     begin
       mens := mens + '.Tipo de estoque' + #13;
     end;

 {  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_UTILIZA_MECANICO').AsBoolean=true) and
      (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_ped').AsBoolean=true)) and
      (not (dmGeral.FAT_CD_M_PED.FieldByName('ID_MECANICO').AsInteger > 0))  then
     begin
       mens := mens + '.Mecânico' + #13;
     end;   }

  if trim(dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').text) = '' then
     begin
       mens := mens + '.Situação' + #13;
     end;

  if trim(dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').Text) = '' then
     begin
       mens := mens + '.Situação aprovação' + #13;
     end;


  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency = 0) then
     begin
       mens := mens + '.Vlr bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Vlr líquido' + #13;
     end;

 { if dmGeral.FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency > 0 then
     begin
       if TRIM(dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').AsString) = '' then
         begin
          mens := mens + '.Motorista' + #13;
         end;
       if TRIM(dmGeral.FAT_CD_M_PED.FieldByName('ID_PLACA').AsString) = '' then
         begin
          mens := mens + '.Placa' + #13;
         end;
     end;  }

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('SGQ_TIPO_COMISSAO').AsInteger = 1) then
    begin
      if (dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsString = '') then
        begin
          mens := mens + 'Comissão %' + #13;
        end;
    end;


  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_tipo_comissao').AsInteger = 1) then
          begin
           if(dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency <0) then
             begin
               mens := mens + 'Percentual de comissão deve ser maior ou igual a zero.'+#13;
             end;

           if(dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency >
             dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency) then
             begin
               mens := mens + 'Limite máximo de percentual de comissão é de '+CurrToStr(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency)+' %.'+#13;
             end;


          end;


        dmGeral.FAT_CD_M_PED_ITE.cancel;
        if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido no pedido de venda.' + #13;
           end;

        if dmgeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger=0 then
          begin
            codItens := FAT_CD_M_PED_TestarTributacaoPed;
            if codItens<>'' then
              begin
                  mens := mens + 'Não foi encontrada tributação dos seguintes itens: '+codItens + #13;
              end;
          end;

        if (dmGeral.CAD_CD_C_PAR_CTRped_utiliza_frete.AsBoolean=false) then
          begin

            // Comentado em 25/10/2022, por Maxsuel Victor
            {if FAT_CD_M_PED_TesTotItensXTotPed then
               begin
                 mens := mens + 'Valor bruto dos itens diferente do total bruto do pedido de venda.' + #13;
               end;}
            txt := '';

            if FAT_CD_M_PED_TesTotItensXTotPedComDescEspecial then
               begin
                 mens := mens + 'Valor líquido dos itens diferente do total do pedido de venda.' + #13;
               end;
          end;
        dmGeral.FAT_CD_M_PED_TIT.cancel;
        dmGeral.FAT_CD_M_PED_TIT_SER.cancel;
        if (dmGeral.FAT_CD_M_PED_TIT.IsEmpty AND dmGeral.FAT_CD_M_PED_TIT_SER.IsEmpty)  then
           begin
             if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger <> 2 then // Sem pagamentos
                begin
                   if (dmGeral.CAD_CD_C_PAR_CTRped_ativa_titulos.AsBoolean) then
                       mens := mens + 'Nenhum título foi inserido no pedido de venda.' + #13
                end;
           end
        else
           begin
             if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean) and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('obrig_dados_cheque_ped_vnd').AsBoolean=true) then
                begin
                   dmGeral.FAT_CD_M_PED_TIT.First;
                   while not dmGeral.FAT_CD_M_PED_TIT.eof do
                       begin
                          dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsString);
                          if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                             begin
                               if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                                  begin
                                    if (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_banco').AsString)    = '') or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_agencia').AsString)  = '') or
                                       (not (dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsInteger > 0)) or
                                       (not (dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger > 0))  or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_emitente').AsString) = '') then
                                       begin
                                         dmGeral.BUS_CD_C_FPG.close;
                                         mens := mens + 'Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!';
                                         BREAK;
                                       end;
                                  end;
                               dmGeral.BUS_CD_C_FPG.close;
                              end;
                          dmGeral.FAT_CD_M_PED_TIT.Next;
                       end;
                   dmGeral.FAT_CD_M_PED_TIT.First;


                   dmGeral.FAT_CD_M_PED_TIT_SER.First;
                   while not dmGeral.FAT_CD_M_PED_TIT_SER.eof do
                       begin
                          dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_FORMA_PAG').AsString);
                          if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                             begin
                               if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                                  begin
                                    if (trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('che_banco').AsString)    = '') or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('che_agencia').AsString)  = '') or
                                       (not (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_CONTA').AsInteger > 0)) or
                                       (not (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_NUMERO').AsInteger > 0))  or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('che_emitente').AsString) = '') then
                                       begin
                                         dmGeral.BUS_CD_C_FPG.close;
                                         mens := mens + 'Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!';
                                         BREAK;
                                       end;
                                  end;
                               dmGeral.BUS_CD_C_FPG.close;
                              end;
                          dmGeral.FAT_CD_M_PED_TIT_SER.Next;
                       end;
                   dmGeral.FAT_CD_M_PED_TIT_SER.First;

                end;
           end;

        if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger <> 2 then // Sem pagamentos
           begin
              if FAT_CD_M_PED_TesTotFpgXTotPed then
                 begin
                   mens := mens + 'Valor dos vencimentos diferente do total do pedido de venda.' + #13;
                 end;
           end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
           end
     end;
end;

function FAT_CD_M_PED_TesTotItensXTotPed: Boolean;
Var
  PonteiroItens : TBookmark;
  TotItens: Currency;
begin
  result := false;
  TotItens := 0;

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
            TotItens := TotItens + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;

        if (TotItens <> (dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency)) then
           begin
             result := true;
           end;
     end;
  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_PED_ITE.edit;
end;

function FAT_CD_M_PED_TesTotItensXTotPedComDescEspecial: Boolean;
var
  PonteiroItens : TBookmark;
  TotItens: Currency;
begin
  result := false;
  TotItens := 0;

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
            TotItens := TotItens + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;
        // Criado em 25-10-22, por Maxsuel Victor.
        // Este teste leva em consideração o valor do desconto especial
        if ( TotItens <> ( dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency+
                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_ICM_DESN').AsCurrency)) then
           begin
             result := true;
           end;
     end;

  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_PED_ITE.edit;
end;


function FAT_CD_M_PED_TestarTributacaoPed: String;
Var
  PonteiroItens : TBookmark;
  codItens: String;
begin
  result := '';
  codItens := '';

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.EOF do
    begin
      if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                         dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text,
                                         dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                         dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').Text,
                                         'V') then
          begin
            if codItens <> '' then
              codItens := codItens +','+dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString
            else
              codItens := codItens + dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
          end;
      dmGeral.FAT_CD_M_PED_ITE.Next;
    end;

  result := codItens;
  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_PED_ITE.edit;
end;



function FAT_CD_M_PED_TesTotFpgXTotPed: Boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := false;
  TotFpg := 0;

  dmGeral.FAT_CD_M_PED_TIT.cancel;
  dmGeral.FAT_CD_M_PED_TIT_SER.cancel;

  //PonteiroItens := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            TotFpg := TotFpg + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;
     end;

  dmGeral.FAT_CD_M_PED_TIT_SER.First;
  if not dmGeral.FAT_CD_M_PED_TIT_SER.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT_SER.eof do
          begin
            TotFpg := TotFpg + dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT_SER.Next;
          end;
     end;

  if TotFpg <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
     begin
       result := true;
     end;
  //dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(PonteiroItens);
  //dmGeral.FAT_CD_M_PED_TIT.edit;
end;

function FAT_CD_M_PED_TesPermExclusao: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
        ShowMessage('Registro não encontrado para exclusão.');
        result := false;
      end;

   if dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
      begin
         case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
           1:
            begin
              mens := mens + '.Pedido de venda "reprovado".' + #13;
            end;
           2:
            begin
              mens := mens + '.Pedido de venda "Em produção".' + #13;
            end;
           3:
            begin
              mens := mens + '.Pedido de venda "Faturado".' + #13;
            end;
           4:
            begin
              mens := mens + '.Pedido de venda "Cancelado".' + #13;
            end;
         end;
      end
   else
      begin
         dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);
         if not dmGeral.BUS_CD_M_NFE.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0 then
                 begin
                   mens := mens + '.A nota fiscal deste pedido de venda já possui número' + #13;
                 end;

              if dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02' then
                 begin
                   mens := mens + '.A nota fiscal deste pedido de venda foi cancelada.' + #13;
                 end;

              if dmGeral.BUS_CD_M_NFE.FieldByName('PREVENDA').AsBoolean then
                 begin
                    dmGeral.CD_BR_CUPOM_MESTRE.Close;
                    dmGeral.CD_BR_CUPOM_MESTRE.Data :=
                            dmGeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([8,
                                   dmGeral.BUS_CD_M_NFE.FieldByName('ECF_PREVENDA').AsString]));
                    if not dmGeral.CD_BR_CUPOM_MESTRE.IsEmpty then
                       begin
                         mens := mens + '.Pedido de venda com cupom fiscal gerado: ' + #13 +
                                 'Cupom: ' +
                                 dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('CCF').AsString +' - ' +
                                 'Serial ecf: ' + dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('SERIAL_IMPRESSORA').AsString +' - ' +
                                 'Data: ' + dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('data_movimento').AsString + #13;
                       end;
                    dmGeral.CD_BR_CUPOM_MESTRE.Close;
                 end;
            end;
         dmGeral.BUS_CD_M_NFE.Close;
      end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

procedure FatMascaraPedidoTit(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PED_TITVLR_TITULO.DisplayFormat := CMascaraValor;
end;


procedure FatMascaraPedidoTitSer(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PED_TIT_SERVLR_TITULO.DisplayFormat := CMascaraValor;
end;

procedure FatNovoPedidoTit(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    //dmGeral.FAT_CD_M_PED_TITID_TITULO.AsInteger := (dmGeral.FAT_CD_M_PED_TIT.RecordCount + 1) * -1;

    dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger :=
            SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
            //dmGeral.BuscarSeq('FAT_TB_M_NFE_TIT');
    //dmGeral.FAT_CD_M_PED_TITID_TITULO.AsInteger := (dmGeral.FAT_CD_M_PED_TIT.RecordCount + 1) * -1;

  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger            := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency     := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').text            := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').text          := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsString        := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').text         := '';
  //dmGeral.FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').text     := '0';
end;



procedure FatNovoPedidoTitSer(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    //dmGeral.FAT_CD_M_PED_TITID_TITULO.AsInteger := (dmGeral.FAT_CD_M_PED_TIT.RecordCount + 1) * -1;

    dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_TITULO').AsInteger :=
            SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
            //dmGeral.BuscarSeq('FAT_TB_M_NFE_TIT');
    //dmGeral.FAT_CD_M_PED_TITID_TITULO.AsInteger := (dmGeral.FAT_CD_M_PED_TIT.RecordCount + 1) * -1;

  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DIAS').AsInteger            := 0;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency     := 0;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_BANCO').text            := '';
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_AGENCIA').text          := '';
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_CONTA').AsString        := '';
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_NUMERO').AsInteger      := 0;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_EMITENTE').text         := '';
  //dmGeral.FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').text     := '0';
end;


function FatValidaTitPNF: Boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := true;
  TotFpg := 0;

  dmGeral.FAT_CD_M_PED_TIT.cancel;


  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            TotFpg := TotFpg + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;

        if TotFpg <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := false;
           end;
     end;
end;


function PED_GRAVA_NFE(const cds_pai, cds_pai_antigo,
                                      cds_itens_antigo,
                                      cds_titulos_antigos: TClientDataSet): Boolean;
var
  lPonteiroItens : TBookmark;
  SMPrincipal : TSMClient;
begin

  dmGeral.BusNotaFiscal(9,cds_pai.FieldByName('ID_EMPRESA').AsString,'S',cds_pai.FieldByName('ID_PEDIDO').AsString);


  if dmGeral.BUS_CD_M_NFE.IsEmpty then
     begin
       dmGeral.BUS_CD_M_NFE.Insert;
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
          dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE');
       finally
         FreeAndNil(SMPrincipal);
       end;
     end
  else
     begin
       dmGeral.BUS_CD_M_NFE.edit;
     end;

  dmGeral.BUS_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger              := dmGeral.FAT_CD_M_PEDid_empresa.AsInteger;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := dmGeral.FAT_CD_M_PEDid_responsavel.AsInteger;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := dmGeral.FAT_CD_M_PEDid_pedido.AsInteger;
  dmGeral.BUS_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := dmGeral.CAD_CD_C_PARint_uf.AsString;
  dmGeral.BUS_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
  dmGeral.BUS_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';

  dmGeral.BUS_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';


  dmGeral.BUS_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := dmGeral.FAT_CD_M_PEDid_cliente.AsInteger;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       dmGeral.BUS_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger         := dmGeral.FAT_CD_M_PEDid_almoxarifado.AsInteger;
     end;


  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
  dmGeral.BUS_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'A';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsString           := '1';
  dmGeral.BUS_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
  dmGeral.BUS_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
  dmGeral.BUS_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
  dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'S';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

  dmGeral.BUS_CD_M_NFE.FieldByName('DTA_EMISSAO').AsString              := DateToStr(dmGeral.FAT_CD_M_PEDdta_pedido.AsDateTime);
  dmGeral.BUS_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsString            := DateToStr(dmGeral.FAT_CD_M_PEDdta_pedido.AsDateTime);
  dmGeral.BUS_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime          := xDataSis;

  dmGeral.BUS_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString;
  dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
  dmGeral.BUS_CD_M_NFE.FieldByName('SERIE').AsString                    := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
  dmGeral.BUS_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
  dmGeral.BUS_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
  dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;

  dmGeral.BUS_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.AsInteger;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := dmGeral.FAT_CD_M_PEDid_condicao_pag.AsInteger;
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_CFO').AsString                   := dmGeral.BusCFOPDoc(dmGeral.FAT_CD_M_PEDid_cliente.AsString,dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.text,'','',true);
  dmGeral.BUS_CD_M_NFE.FieldByName('ID_VENDEDOR').AsInteger             := dmGeral.FAT_CD_M_PEDid_vendedor.AsInteger;

  dmGeral.BUS_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := dmGeral.FAT_CD_M_PEDint_nomeest.AsString;

  dmGeral.BUS_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
  dmGeral.BUS_CD_M_NFEvlr_mercadoria.AsCurrency                         := dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency;
  dmGeral.BUS_CD_M_NFEvlr_desconto.AsCurrency                           := dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency;
  dmGeral.BUS_CD_M_NFEvlr_liquido.AsCurrency                            := dmGeral.FAT_CD_M_PEDvlr_liquido.AsCurrency;

  dmGeral.BUS_CD_M_NFEvlr_isenta.AsCurrency      := 0;
  dmGeral.BUS_CD_M_NFEvlr_outras.AsCurrency      := 0;
  dmGeral.BUS_CD_M_NFEvlr_seguro.AsCurrency      := 0;

  dmGeral.BUS_CD_M_NFEicm_n_valor.AsCurrency     := 0;
  dmGeral.BUS_CD_M_NFEicm_n_base.AsCurrency      := 0;
  dmGeral.BUS_CD_M_NFEicm_s_valor.AsCurrency     := 0;
  dmGeral.BUS_CD_M_NFEicm_s_base.AsCurrency      := 0;

  dmGeral.BUS_CD_M_NFEipi_base.AsCurrency        := 0;
  dmGeral.BUS_CD_M_NFEipi_valor.AsCurrency       := 0;

  dmGeral.BUS_CD_M_NFEiss_base.AsCurrency        := 0;
  dmGeral.BUS_CD_M_NFEiss_valor.AsCurrency       := 0;

  dmGeral.BUS_CD_M_NFEfre_base.AsCurrency        := 0;
  dmGeral.BUS_CD_M_NFEfre_valor.AsCurrency       := 0;

  dmGeral.BUS_CD_M_NFEfre_custo.AsCurrency       := 0;

  dmGeral.BUS_CD_M_NFEcof_valor.AsCurrency       := 0;
  dmGeral.BUS_CD_M_NFEcof_base.AsCurrency        := 0;
  dmGeral.BUS_CD_M_NFEcof_valor_st.AsCurrency    := 0;

  dmGeral.BUS_CD_M_NFEpis_valor.AsCurrency       := 0;
  dmGeral.BUS_CD_M_NFEpis_valor_st.AsCurrency    := 0;
  dmGeral.BUS_CD_M_NFEpis_base.AsCurrency        := 0;

  dmGeral.BUS_CD_M_NFE.FieldByName('ecf_serial_impressora').AsString  := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('ecf_marca_impressora').AsString   := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('ecf_modelo_impressora').AsString  := '';
  dmGeral.BUS_CD_M_NFE.FieldByName('ecf_caixa').AsString              := '';
  dmGeral.BUS_CD_M_NFEvlr_outras_desp.AsCurrency      := 0;


  // Grava os dados do item
  PED_GRAVA_NFE_ITE(cds_itens_antigo);

  FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE,dmGeral.BUS_CD_M_NFE_ITE);

  // Grava os dados das formas de pagamento
  PED_GRAVA_NFE_TIT(cds_titulos_antigos);
end;

function PED_GRAVA_NFE_ITE(const cds_itens_antigo: TClientDataSet): Boolean;
var
  lPonteiroItens : TBookmark;
begin

  try

  dmGeral.BUS_CD_M_NFE_ITE.First;
  while not dmGeral.BUS_CD_M_NFE_ITE.eof do
     begin
       dmGeral.BUS_CD_M_NFE_ITE.Delete;
     end;

  lPonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;

  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.Eof do
     begin
           dmGeral.BUS_CD_M_NFE_ITE.Insert;
           dmGeral.BUS_CD_M_NFE_ITEid_item.AsInteger           :=  dmGeral.FAT_CD_M_PED_ITEid_item.AsInteger;

           dmGeral.BUS_CD_C_ITE.close;
           dmGeral.BUS_CD_C_ITE.Data :=
              dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_NFE_ITEid_item.text]));

           dmGeral.BUS_CD_M_NFE_ITEorigem_mercadoria.AsString  := dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
           dmGeral.BUS_CD_C_ITE.close;

           dmGeral.BUS_CD_M_NFE_ITEid_cfo.AsString             :=  dmGeral.BUS_CD_M_NFEid_cfo.AsString;
           dmGeral.BUS_CD_M_NFE_ITEid_sequencia.AsInteger      :=  dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger;
           dmGeral.BUS_CD_M_NFE_ITEid_cor.AsInteger            :=  dmGeral.FAT_CD_M_PED_ITEid_cor.AsInteger;
           dmGeral.BUS_CD_M_NFE_ITEid_tamanho.AsInteger        :=  dmGeral.FAT_CD_M_PED_ITEid_tamanho.AsInteger;;
           dmGeral.BUS_CD_M_NFE_ITEint_tipo_item.AsString      :=  dmGeral.FAT_CD_M_PED_ITEint_tipo_item.AsString;
           dmGeral.BUS_CD_M_NFE_ITEqtde.AsFloat                :=  dmGeral.FAT_CD_M_PED_ITEqtde.AsFloat;
           dmGeral.BUS_CD_M_NFE_ITEqtde_devolvida.AsFloat      :=  0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_unitario.AsCurrency     :=  dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency;
           dmGeral.BUS_CD_M_NFE_ITEvlr_mercadoria.AsCurrency   :=  dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency;
           dmGeral.BUS_CD_M_NFE_ITEper_desconto.AsCurrency     :=  dmGeral.FAT_CD_M_PED_ITEper_desconto.AsFloat;
           dmGeral.BUS_CD_M_NFE_ITEvlr_desconto.AsCurrency     :=  dmGeral.FAT_CD_M_PED_ITEvlr_desconto.AsCurrency;
           dmGeral.BUS_CD_M_NFE_ITEvlr_liquido.AsCurrency      :=  dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency;

           dmGeral.BUS_CD_M_NFE_ITEid_inf_fisco.AsInteger         := 0;
           dmGeral.BUS_CD_M_NFE_ITEID_ST_PIS.AsString             := ' ';
           dmGeral.BUS_CD_M_NFE_ITEID_ST_COF.AsString             := ' ';
           dmGeral.BUS_CD_M_NFE_ITEID_ST_IPI.AsString             := ' ';
           dmGeral.BUS_CD_M_NFE_ITEID_ST_ICM.AsString             := ' ';
           dmGeral.BUS_CD_M_NFE_ITEvlr_custo.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_outras.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_isenta.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_seguro.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_n_base.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_n_valor.AsCurrency         := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_s_base.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_s_valor.AsCurrency         := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_n_dif_aliq.AsCurrency      := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_n_vlr_dif_aliq.AsFloat        := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_icm_ser_nao_incide.AsCurrency := 0;
           dmGeral.BUS_CD_M_NFE_ITEipi_base.AsCurrency               := 0;
           dmGeral.BUS_CD_M_NFE_ITEipi_aliquota.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEipi_valor.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEiss_base.AsCurrency               := 0;
           dmGeral.BUS_CD_M_NFE_ITEiss_aliquota.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEiss_valor.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_base.AsCurrency               := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_percentual.AsCurrency         := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_valor.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_custo.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat          := 0;
           dmGeral.BUS_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency        := 0;
           dmGeral.BUS_CD_M_NFE_ITEpis_base.AsCurrency               := 0;
           dmGeral.BUS_CD_M_NFE_ITEpis_aliquota.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEpis_valor.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEpis_valor_st.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEcof_base.AsCurrency               := 0;
           dmGeral.BUS_CD_M_NFE_ITEcof_aliquota.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEcof_valor.AsCurrency              := 0;
           dmGeral.BUS_CD_M_NFE_ITEcof_valor_st.AsCurrency           := 0;
           dmGeral.BUS_CD_M_NFE_ITEnro_pedido.AsInteger              := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_outras_desp.AsCurrency        := 0;
           dmGeral.BUS_CD_M_NFE_ITEvlr_acrescimo.AsCurrency          := 0;
           dmGeral.BUS_CD_M_NFE_ITEnum_lote.AsString                   := '';
           dmGeral.BUS_CD_M_NFE_ITEpara_analise_raa.AsInteger          := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_s_per_mva.AsFloat               := 0;
           dmGeral.BUS_CD_M_NFE_ITEicm_s_vlr_mva.AsFloat               := 0;
           dmGeral.BUS_CD_M_NFE_ITEid_sequencia_ite_cmp_ped.AsInteger  := 0;
           dmGeral.BUS_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger      := 0;
           dmGeral.BUS_CD_M_NFE_ITEid_sequencia_ite_xml.AsInteger      := 0;

           dmGeral.CalculaTributos(dmGeral.BUS_CD_M_NFE,dmGeral.BUS_CD_M_NFE_ITE);

           FAT_RN_M_NFE.CalcPesoItem(dmGeral.BUS_CD_M_NFE_ITE);

           // Atualizando o Peso Bruto e Líquido da Nota Pai ----------------------------------
           dmGeral.BUS_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency   :=
                    dmGeral.BUS_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency +
                            dmGeral.BUS_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;

           dmGeral.BUS_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency     :=
                    dmGeral.BUS_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency +
                            dmGeral.BUS_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsCurrency;
           // ---------------------------------------------------------------------------------


           dmGeral.BUS_CD_M_NFE_ITE.Post;

       dmGeral.FAT_CD_M_PED_ITE.Next;
     end;
  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(lPonteiroItens);

  finally
   // FAT_CD_M_NFE_ITE.AfterPost := FAT_CD_M_NFE_ITEAfterPost
  end;

end;

function PED_GRAVA_NFE_TIT(const cds_titulos_antigos: TClientDataSet): Boolean;
var
  lPonteiroItens : TBookmark;
begin

  dmGeral.BUS_CD_M_NFE_TIT.first;
  while not dmGeral.BUS_CD_M_NFE_TIT.eof do
     begin
       dmGeral.BUS_CD_M_NFE_TIT.delete;
     end;

  lPonteiroItens := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;

  dmGeral.FAT_CD_M_PED_TIT.First;
  while not dmGeral.FAT_CD_M_PED_TIT.Eof do
     begin
       dmGeral.BUS_CD_M_NFE_TIT.Insert;

       dmGeral.BUS_CD_M_NFE_TITid_nfe_tit.AsInteger      := dmGeral.FAT_CD_M_PED_TITid_titulo.AsInteger;

       dmGeral.BUS_CD_M_NFE_TITid_forma_pag.AsInteger    := dmGeral.FAT_CD_M_PED_TITid_forma_pag.AsInteger;

       dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.text);
       dmGeral.BUS_CD_M_NFE_TITid_ccusto.AsInteger       := dmGeral.BUS_CD_C_FPGid_ccusto.AsInteger;
       dmGeral.BUS_CD_M_NFE_TITid_plano.AsString         := dmGeral.BUS_CD_C_FPGven_id_plano.Text;
       dmGeral.BUS_CD_C_FPG.Close;

       dmGeral.BUS_CD_M_NFE_TITnum_parcela.AsString      := '0';
       dmGeral.BUS_CD_M_NFE_TITdias.AsInteger            := dmGeral.FAT_CD_M_PED_TITdias.AsInteger;
       dmGeral.BUS_CD_M_NFE_TITdta_vencimento.AsDateTime := dmGeral.FAT_CD_M_PED_TITdta_vencimento.AsDateTime;
       dmGeral.BUS_CD_M_NFE_TITvlr_titulo.AsCurrency     := dmGeral.FAT_CD_M_PED_TITvlr_titulo.AsCurrency;


       dmGeral.BUS_CD_M_NFE_TITche_banco.AsString        := dmGeral.FAT_CD_M_PED_TITche_banco.AsString;
       dmGeral.BUS_CD_M_NFE_TITche_agencia.AsString      := dmGeral.FAT_CD_M_PED_TITche_agencia.AsString;
       dmGeral.BUS_CD_M_NFE_TITche_conta.AsString        := dmGeral.FAT_CD_M_PED_TITche_conta.AsString;
       dmGeral.BUS_CD_M_NFE_TITche_numero.AsString       := dmGeral.FAT_CD_M_PED_TITche_numero.AsString;
       dmGeral.BUS_CD_M_NFE_TITche_emitente.AsString     := dmGeral.FAT_CD_M_PED_TITche_emitente.AsString;

       dmGeral.BUS_CD_M_NFE_TIT.Post;
       dmGeral.FAT_CD_M_PED_TIT.Next;
     end;

  //FAT_RN_M_NFE.FatGravarNumParcNfe(dmGeral.BUS_CD_M_NFE,dmGeral.BUS_CD_M_NFE_TIT);

  dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(lPonteiroItens);
end;


//Esse metodo deixou de ser utilizado, segundo Max. Data:15/10/2015.Responsavel:Luan
function PED_EXCLUI_NFE(const id_pedido: String): Boolean;
begin

 { dmGeral.BusNotaFiscal(9,'S',id_pedido);
  if not dmGeral.BUS_CD_M_NFE.IsEmpty then
     begin
       dmGeral.BUS_CD_M_NFE.delete;
     end }
end;

function FatVerifSeqNfe: Boolean;
begin
  result := true;

  if trim(dmGeral.CAD_CD_C_PAR_CTRserie_nf.AsString) = '' then
     begin
       ShowMessage('Não será possível gerar o registro nota fiscal pois não foi encontrado a "Série da nota fiscal" nos parâmetros!');
       result := false;
       abort;
     end;

  if dmGeral.CAD_CD_C_PAR_SER.IsEmpty then
     begin
       ShowMessage('Não será possível gerar o registro nota fiscal pois a tabela de "Sequência do número da nota fiscal" está vazia!');
       result := false;
       abort;
     end;
end;
procedure FAT_CD_M_PEDvlr_descontoChange;
var
  lPonteiroItens : TBookmark;
  lTotDescItens: Currency;
begin
  if dmGeral.FAT_CD_M_PED.FieldByName('origem').AsString = '2' then
     begin
        lTotDescItens:= 0;

        {dmGeral.FAT_CD_M_PED_ITE.Cancel;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
             dmGeral.FAT_CD_M_PED_ITE.First;
             while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  lTotDescItens := lTotDescItens +
                                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end; }

        try
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;

      //  if lTotDescItens <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency then
      //     begin
             FatRatVlrEntreItensPedido(dmGeral.FAT_CD_M_PEDvlr_liquido.AsCurrency, dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO', '', '');
      //     end;
        FatPedCalcTotal;
        finally
           dmGeral.FAT_CD_M_PED_ITE.afterpost            :=  dmGeral.FAT_CD_M_PED_ITEAfterPost;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
        end;
     end;

end;

procedure FatRatVlrEntreItensPedido(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte, lNomeCampoBaseIte,
                                    lNomeCampoPerIte: String);
var
  lPonteiroItens: TBookmark;
  lPercTemp, lPercAcum: Currency;
  lQtdeReg, lNroReg: Integer;
  { TODO -oMaxsuel -cCriação :
    Criado em 29/02/2016
    Método usado pela rotina de pedido cupom (FAT_FM_M_PNF) }
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_PED_ITE.RecordCount;
  lNroReg   := 0;
  lPercAcum := 0;
  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  inc(lNroReg);
                  if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end;
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo((lPercTemp * lVlrMontante) / 100,-2);
                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                     end;
                  if trim(lNomeCampoBaseIte) <> '' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency :=
                         dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := lPercTemp;
                     end;
                  lPercAcum := lPercAcum + lPercTemp;
                  //FAT_CD_M_NFE_ITE.post;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITE.First;
       if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_PED_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;
                 if trim(lNomeCampoBaseIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency := 0;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_PED_ITE.Post;
                 dmGeral.FAT_CD_M_PED_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_PED_ITE.First;
     end;
end;


procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var codItensAcimaDesc:String;ativarVerDesc:boolean;
                                    int_unif_desc_reg:boolean);
var
  lPonteiroItens: TBookmark;
  //lPercTemp, lPercAcum : Currency;
  PercDescPerm,lVlrAcum : Currency;
  lQtdeReg, lNroReg: Integer;

  SMPrincipal : TSMClient;

  xPercDescPermRegIte: Currency;


  { TODO -oMaxsuel -cCriação :
    Criado em 29/02/2016
    Método usado pela rotina de pedido cupom (FAT_FM_M_PNF) }
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL

  try

  codItensAcimaDesc := '';
  dmGeral.FAT_CD_M_PED_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_PED_ITE.RecordCount;
  lNroReg   := 0;
  //lPercAcum := 0;
  lVlrAcum := 0;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  inc(lNroReg);
                 { if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end; }


                  if lNroReg < lQtdeReg then
                     begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo(((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency/lVlrTotDoc) * lVlrMontante),-2);
                     end
                  else
                     begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency :=  roundTo(lVlrMontante - lVlrAcum,-2);
                     end;


                  //dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo((lPercTemp * lVlrMontante) / 100,-2);
                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               roundTo(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency,-2);
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                       //dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := roundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency/
                                                                                         // dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := roundTo((lVlrMontante/lVlrTotDoc)*100,-2);
                       if ativarVerDesc then
                         begin

                         { if ((not dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').IsNull) and
                             (dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency)) then
                             begin
                               descAcimaMax := true;
                             end; }

                          xPercDescPermRegIte := 0;
                          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);
                               xPercDescPermRegIte :=
                                     SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,
                                                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
                               if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                                  begin
                                    PercDescPerm := PercDescPerm + xPercDescPermRegIte + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency;
                                  end;
                             end;
                          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
                             end;

                          if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
                             end;

                          if int_unif_desc_reg then
                             begin
                               if (dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                  (PercDescPerm + xPercDescPermRegIte) ) then
                                   begin
                                     if codItensAcimaDesc = '' then
                                        codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString
                                     else
                                        codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
                                   end;
                             end
                          else
                             begin
                                if (xPercDescPermRegIte > 0 ) and (dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                   (xPercDescPermRegIte) ) then
                                   begin
                                     if codItensAcimaDesc = '' then
                                        codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString
                                     else
                                        codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
                                   end
                                else
                                   begin
                                      if (dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                         (PercDescPerm) ) then
                                          begin
                                            if codItensAcimaDesc = '' then
                                               codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString
                                            else
                                               codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
                                          end;
                                   end;
                             end;
                         end;
                     end;

                 // lPercAcum := lPercAcum + lPercTemp;
                  lVlrAcum := lVlrAcum + dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                  dmGeral.FAT_CD_M_PED_ITE.Post;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITE.First;
       if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_PED_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_PED_ITE.Post;
                 dmGeral.FAT_CD_M_PED_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_PED_ITE.First;
     end;

  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure FAT_CD_M_PED_AtuSequencias;
var
  i: integer;
  SMPrincipal : TSMClient;
begin

 { TODO -oMaxsuel -cCriação :
   Criado em 07/09/2016
   Tem a função de refazer as sequencias dos itens e títulos que estão com valor negativo. }


  try

   dmgeral.FAT_CD_M_PED_ITE.AfterPost  := nil;
   dmgeral.FAT_CD_M_PED_ITE.BeforePost := nil;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  dmGeral.FAT_CD_M_PED_ITE.Filtered := true;
  dmGeral.FAT_CD_M_PED_ITE.Filter   := 'id_sequencia < 0 ';

  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
       i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_ITE',dmGeral.FAT_CD_M_PED_ITE.RecordCount);
       dmGeral.FAT_CD_M_PED_ITE.First;
       while not dmGeral.FAT_CD_M_PED_ITE.eof do
           begin
             dmGeral.FAT_CD_M_PED_ITE.edit;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger := i;
             inc(i);
             dmGeral.FAT_CD_M_PED_ITE.Post;
             //dmGeral.FAT_CD_M_PED_ITE.Next;
           end;
     end;

  dmGeral.FAT_CD_M_PED_TIT.Filtered := true;
  dmGeral.FAT_CD_M_PED_TIT.Filter   := 'ID_TITULO < 0 ';

  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
       i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_TIT',dmGeral.FAT_CD_M_PED_TIT.RecordCount);
       dmGeral.FAT_CD_M_PED_TIT.First;
       while not dmGeral.FAT_CD_M_PED_TIT.eof do
           begin
             dmGeral.FAT_CD_M_PED_TIT.edit;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger := i;
             inc(i);
             dmGeral.FAT_CD_M_PED_TIT.Post;
             //dmGeral.FAT_CD_M_PED_TIT.Next;
           end;
     end;


  finally
    dmGeral.FAT_CD_M_PED_ITE.Filtered := false;
    dmGeral.FAT_CD_M_PED_ITE.First;

    dmGeral.FAT_CD_M_PED_TIT.Filtered := false;
    dmGeral.FAT_CD_M_PED_TIT.First;

    dmgeral.FAT_CD_M_PED_ITE.AfterPost  := dmgeral.FAT_CD_M_PED_ITEAfterPost;
    dmgeral.FAT_CD_M_PED_ITE.BeforePost := dmgeral.FAT_CD_M_PED_ITEBeforePost;
    FreeAndNil(SMPrincipal);
  end;

end;

function  FatValidBloqueiaPed(Letra: String): Boolean;
begin
  try
    result := false;

    dmGeral.CAD_CD_C_PAR_RST.Filtered := true;
    dmGeral.CAD_CD_C_PAR_RST.Filter   := ' letra_restricao = ''' + letra + '''';
    if not dmGeral.CAD_CD_C_PAR_RST.IsEmpty then
       if  dmGeral.CAD_CD_C_PAR_RST.FieldByName('tipo_restricao').AsInteger = 1 then // Bloqueia
           begin
             result := true;
           end;
  finally
     dmGeral.CAD_CD_C_PAR_RST.Filtered := false;
  end;

end;

function FatValidEnviaLibPed(Letra: String): Boolean;
begin
   try
    result := false;

    dmGeral.CAD_CD_C_PAR_RST.Filtered := true;
    dmGeral.CAD_CD_C_PAR_RST.Filter   := ' letra_restricao = ''' + letra + '''';
    if not dmGeral.CAD_CD_C_PAR_RST.IsEmpty then
       if  dmGeral.CAD_CD_C_PAR_RST.FieldByName('tipo_restricao').AsInteger = 2 then // Envia para Liberação de Pedido de Venda
           begin
             result := true;
           end;
  finally
     dmGeral.CAD_CD_C_PAR_RST.Filtered := false;
  end;
end;

end.
