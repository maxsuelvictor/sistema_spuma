unit OFI_RN_M_RQV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaRqvDes(DataSet: TDataSet);
procedure OfiMascaraRqvDes(DataSet: TDataSet);
procedure OfiValidaRqvDes(DataSet: TDataSet);

procedure OfiCalculaVlrDespesaRqvDes;
procedure OfiCalculaVlrTotaisRqv;

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure OfiNovaRqvDes(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin

    dmGeral.OFI_CD_M_ORV_DES.FieldByName('ID_SEQUENCIA').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV_DES.FieldByName('DTA_DESPESA').AsCurrency := xDataSis;
    dmGeral.OFI_CD_M_ORV_DES.FieldByName('VLR_DESPESA').AsCurrency := 0;
end;

procedure OfiCalculaVlrTotaisRqv;
begin
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;

  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;

  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
  dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;


  if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
    begin
      dmGeral.OFI_CD_M_ORV_ITE.First;
      while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
        begin
          if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
             begin
               if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                  (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
                 begin
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                 end;

              if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                 (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
                 begin
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                 end;


              if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
                begin
                  if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').text<>'09') then
                     begin
                       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                              dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                              dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                              dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                              dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                              dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                              dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;
                end
              else if (pos(dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
                 begin
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                 end;
             end;
          dmGeral.OFI_CD_M_ORV_ITE.Next;
        end;

      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency  +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency;

      if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
         begin
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100;
         end;

      if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
         begin
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100;
         end;

      if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
         begin
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100;
         end;

    end;
  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange :=  dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange :=  dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
  dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
  dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
  dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
end;

procedure OfiCalculaVlrDespesaRqvDes;
begin
   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency := 0;
   dmGeral.OFI_CD_M_ORV_DES.Cancel;
   if (not dmGeral.OFI_CD_M_ORV_DES.IsEmpty)  then
      begin
       dmGeral.OFI_CD_M_ORV_DES.First;
       while(not dmGeral.OFI_CD_M_ORV_DES.EOF) do
        begin
          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency :=
                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency +
                 dmGeral.OFI_CD_M_ORV_DES.FieldByName('VLR_DESPESA').AsCurrency;
          dmGeral.OFI_CD_M_ORV_DES.Next;
        end;
      end;

    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency  +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency;
end;


procedure OfiMascaraRqvDes(DataSet: TDataSet);
begin
   dmGeral.OFI_CD_M_ORV_DESvlr_despesa.DisplayFormat:=CMascaraValor;
end;

procedure OfiValidaRqvDes(DataSet: TDataSet);
 var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('dta_despesa').AsString='') then
    begin
       xMensErro:= xMensErro + '.Data deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('local').AsString='') then
    begin
       xMensErro:= xMensErro + '.Local deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('tipo').AsString='') then
    begin
       xMensErro:= xMensErro + '.Tipo deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('VLR_DESPESA').IsNull) or
     (dmGeral.OFI_CD_M_ORV_DES.FieldByName('VLR_DESPESA').AsCurrency<=0) then
    begin
       xMensErro:= xMensErro + '.Valor da despesa deve ser maior que zero.'+ #13;
    end;

  if xMensErro<>'' then
        begin
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
           abort;
     end;

end;

end.
