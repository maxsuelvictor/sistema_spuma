unit CMP_RN_M_COT;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math, vcl.controls;

procedure CmpNovaCotacao(DataSet: TDataSet);
procedure CmpValidaCot(DataSet:TDataSet);
procedure CmpValidaSituacaoCot(DataSet:TDataSet);
function CmpExcluirPed: Boolean;


procedure CmpValidaCotIte(DataSet:TDataSet);
procedure CmpNovaCotIte(DataSet: TDataSet);

procedure CmpCotFitCalcTotalItem;
procedure CmpAdicionarCotFit;
function  CmpVerifExistCotFit: Boolean;

procedure CmpCotFitValVlrUnitario;
procedure CMP_CD_M_COT_FITVLR_DESCONTOChange;
procedure CMP_CD_M_COT_FITvlr_unitarioChange;
procedure CmpMascaraCotFit;
procedure CmpMascaraCotFitApr;

procedure CmpValidaCotFor(DataSet:TDataSet);
procedure CmpNovaCotFor(DataSet: TDataSet);

procedure CmpOutrasValCot;


implementation
Uses uDmGeral,enConstantes, uProxy,UApplayClassProxy;

procedure CmpNovaCotacao(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin
  dmGeral.CMP_CD_M_COT.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CMP_CD_M_COT.FieldByName('ID_COTACAO').AsInteger :=
         SMPrincipal.enValorChave('CMP_TB_M_COT');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.CMP_CD_M_COT.FieldByName('DTA_COTACAO').AsDateTime := xDataSis;
  { Situacao:
     0 aberto,
     1-gerado pedido
  }
  dmGeral.CMP_CD_M_COT.FieldByName('SITUACAO').AsInteger    := 0;
  dmGeral.CMP_CD_M_COT.FieldByName('APROVADA').AsBoolean    := false;
  dmGeral.CMP_CD_M_COT.FieldByName('IP_LANCADOR').AsString  := '';

  dmGeral.BusCodigoRevListMestre(true,false,'CMP_FM_M_COT',xCodLme,xRevLme,dmGeral.CMP_CD_M_COT);
end;

procedure CmpValidaCot(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.CMP_CD_M_COT.FieldByName('id_empresa').AsString='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informada.'+ #13;
       dmGeral.CMP_CD_M_COT.FieldByName('id_empresa').FocusControl;
     end;

  if trim(dmGeral.CMP_CD_M_COT.FieldByName('DTA_COTACAO').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Data da cotação deve ser informado.'+ #13;
       dmGeral.CMP_CD_M_COT.FieldByName('DTA_COTACAO').FocusControl;
     end;

  if trim(dmGeral.CMP_CD_M_COT.FieldByName('ID_FUNCIONARIO').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Responsável deve ser informado.'+ #13;
       dmGeral.CMP_CD_M_COT.FieldByName('ID_FUNCIONARIO').FocusControl;
     end;

  if trim(dmGeral.CMP_CD_M_COT.FieldByName('SITUACAO').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Situação deve ser informada.'+ #13;
       dmGeral.CMP_CD_M_COT.FieldByName('SITUACAO').FocusControl;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CmpValidaCotIte(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.CMP_CD_M_COT_ITE.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.CMP_CD_M_COT_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
           begin
             if (dmGeral.CMP_CD_M_COT_ITE.FieldByName('id_cor').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Cor deve ser informada.'+ #13;
                 end;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
           begin
              if (dmGeral.CMP_CD_M_COT_ITE.FieldByName('id_tamanho').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Tamanho deve ser informado.'+ #13;
                 end;
           end;

        if (dmGeral.CMP_CD_M_COT_ITE.FieldByName('qtde').AsString='') then
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

procedure CmpNovaCotIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CMP_CD_M_COT_ITEid_sequencia.AsInteger :=
         SMPrincipal.enValorChave('CMP_TB_M_COT_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.CMP_CD_M_COT_ITE.FieldByName('QTDE').AsFloat := 0;
end;

procedure CmpValidaCotFor(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.CMP_CD_M_COT_FOR.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.CMP_CD_M_COT_FOR.FieldByName('id_fornecedor').AsString='') then
           begin
             xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;


procedure CmpOutrasValCot;
var
  xMensErro: String;
begin
  xMensErro := '';
  dmGeral.CMP_CD_M_COT_ITE.cancel;
  if dmGeral.CMP_CD_M_COT_ITE.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum item foi inserido na cotação de compra' + #13;
     end;

  dmGeral.CMP_CD_M_COT_FOR.cancel;
  if dmGeral.CMP_CD_M_COT_FOR.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum fornecedor foi inserido na cotação de compra' + #13;
     end;

  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;

procedure CmpNovaCotFor(DataSet: TDataSet);
begin
  dmGeral.CMP_CD_M_COT_FOR.FieldByName('DTA_LANCAMENTO').AsDateTime := xDataSis;
  dmGeral.CMP_CD_M_COT_FOR.FieldByName('VLR_TOTAL').AsFloat := 0;
end;

procedure CmpValidaSituacaoCot(DataSet:TDataSet);
begin
  case dmGeral.CMP_CD_M_COT.FieldByName('SITUACAO').AsInteger of
     1:
      begin
        ShowMessage('Esta cotação de compra não pode ser alterada pois já gerou pedido de compra.');
        abort;
      end;
  end;

end;

procedure CmpCotFitCalcTotalItem;
var
  SMPrincipal : TSMClient;
begin

  dmGeral.CMP_CD_M_COT_FITvlr_total.AsCurrency :=
         (dmGeral.CMP_CD_M_COT_FITqtde.AsFloat * dmGeral.CMP_CD_M_COT_FITvlr_unitario.AsCurrency) -
          dmGeral.CMP_CD_M_COT_FITvlr_desconto.AsCurrency;
end;

procedure CMP_CD_M_COT_FITVLR_DESCONTOChange;
begin
  if dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_DESCONTO').AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor desconto" não pode ser menor que 0.');
       abort;
     end;

  if (dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_DESCONTO').AsCurrency > dmGeral.CMP_CD_M_COT_FITvlr_total.AsCurrency) then
     begin
       ShowMessage('O campo "Valor desconto" não pode ser maior que o "Valor total" do item.');
       abort;
     end;

  if dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_TOTAL').AsCurrency > 0 then
          begin
             dmGeral.CMP_CD_M_COT_FIT.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    (dmGeral.CMP_CD_M_COT_FIT.FieldByName('QTDE').AsFloat *
                     dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_UNITARIO').AsCurrency);

          end;
     end
  else
     begin
       dmGeral.CMP_CD_M_COT_FITVLR_DESCONTO.OnChange := nil;

       dmGeral.CMP_CD_M_COT_FIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.CMP_CD_M_COT_FITVLR_DESCONTO.OnChange := dmGeral.CMP_CD_M_COT_FITVLR_DESCONTOChange;
     end;
  CmpCotFitCalcTotalItem;
end;

procedure CMP_CD_M_COT_FITvlr_unitarioChange;
begin
  if dmGeral.CMP_CD_M_COT_FIT.FieldByName('VLR_UNITARIO').AsCurrency < 0 then
     begin
       ShowMessage('O campo "Valor unitário" não pode ser menor que 0.');
       abort;
     end;


  CmpCotFitCalcTotalItem;
end;

procedure CmpAdicionarCotFit;
begin

 try
   dmGeral.CMP_CD_M_COT_FITvlr_desconto.OnChange :=  nil;

   dmGeral.CMP_CD_M_COT_FIT.First;
   while not dmGeral.CMP_CD_M_COT_FIT.eof do
      begin
        dmGeral.CMP_CD_M_COT_FIT.Delete;
      end;

   dmGeral.CMP_CD_M_COT_FIT_APR.First;
   while not dmGeral.CMP_CD_M_COT_FIT_APR.eof do
       begin
         dmGeral.CMP_CD_M_COT_FIT_APR.Delete;
       end;

 if dmGeral.CMP_CD_M_COT_FIT.IsEmpty then
     begin
       dmGeral.CMP_CD_M_COT_FOR.First;
       while not dmGeral.CMP_CD_M_COT_FOR.eof do
          begin
            dmGeral.CMP_CD_M_COT_ITE.First;
            while not dmGeral.CMP_CD_M_COT_ITE.eof do
                  begin
                    dmGeral.CMP_CD_M_COT_FIT.Insert;
                    dmGeral.CMP_CD_M_COT_FITid_fornecedor.AsInteger := dmGeral.CMP_CD_M_COT_FORid_fornecedor.AsInteger;
                    dmGeral.CMP_CD_M_COT_FITint_nomefor.AsString    := dmGeral.CMP_CD_M_COT_FORint_nomefor.Text;
                    dmGeral.CMP_CD_M_COT_FITid_item.AsInteger       := dmGeral.CMP_CD_M_COT_ITEid_item.AsInteger;
                    dmGeral.CMP_CD_M_COT_FITint_nomeite.AsString    := dmGeral.CMP_CD_M_COT_ITEint_nomeite.AsString;
                    dmGeral.CMP_CD_M_COT_FITid_sequencia.AsInteger  := dmGeral.CMP_CD_M_COT_ITEid_sequencia.AsInteger;
                    dmGeral.CMP_CD_M_COT_FITqtde.AsFloat            := dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat;
                    dmGeral.CMP_CD_M_COT_FITvlr_unitario.AsCurrency := 0;
                    dmGeral.CMP_CD_M_COT_FITper_desconto.AsCurrency := 0;
                    dmGeral.CMP_CD_M_COT_FITvlr_desconto.AsCurrency := 0;
                    dmGeral.CMP_CD_M_COT_FITvlr_total.AsCurrency      := 0;
                    dmGeral.CMP_CD_M_COT_FITfrete.AsInteger           := 0;
                    dmGeral.CMP_CD_M_COT_FITipi.AsBoolean             := False;
                    dmGeral.CMP_CD_M_COT_FITprazo.AsInteger           := 0;
                    dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean := True;
                    dmGeral.CMP_CD_M_COT_FITaprovado.AsBoolean        := False;
                    dmGeral.CMP_CD_M_COT_FITid_cor.Text               := dmGeral.CMP_CD_M_COT_ITEid_cor.Text;
                    dmGeral.CMP_CD_M_COT_FITid_tamanho.Text           := dmGeral.CMP_CD_M_COT_ITEid_tamanho.Text;
                    dmGeral.CMP_CD_M_COT_FITint_nomecor.AsString      := dmGeral.CMP_CD_M_COT_ITEint_nomecor.Text;
                    dmGeral.CMP_CD_M_COT_FITint_nometam.AsString      := dmGeral.CMP_CD_M_COT_ITEint_nometam.Text;
                    dmGeral.CMP_CD_M_COT_FITint_undcom.AsString       := dmGeral.CMP_CD_M_COT_ITEint_undcom.Text;
                    dmGeral.CMP_CD_M_COT_FIT.Post;

                    dmGeral.CMP_CD_M_COT_ITE.Next;
                  end;
            dmGeral.CMP_CD_M_COT_FOR.Next;
          end;
       dmGeral.CMP_CD_M_COT_FOR.First;
     end;
    dmGeral.CMP_CD_M_COT.FieldByName('APROVADA').AsBoolean := false;
 finally
    dmGeral.CMP_CD_M_COT_FITvlr_desconto.OnChange :=  dmGeral.CMP_CD_M_COT_FITvlr_descontoChange;
 end;
end;



procedure CmpMascaraCotFit;
begin
  dmGeral.CMP_CD_M_COT_FITper_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FITvlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FITvlr_unitario.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FITvlr_total.DisplayFormat       := CMascaraValor;
end;

function CmpExcluirPed: Boolean;
var
  PedidoExc: Boolean;
  ExecutaExcPed: Boolean;
  codigo: String;
  Obj:TSMClient;
begin
  { BUS_CD_M_CMP_PED
    0 – id_pedido
    1 – nome do fornecedor
    2 – data do pedido
    3 – nome do responsavel
    4 – observação
    90 – todos os pedidos em aberto por fornecedor
    91-COTACAO
    92-SOLICITACAO
  }

  if not dmGeral.CMP_CD_M_COT.IsEmpty then
     begin
        PedidoExc := false;
        ExecutaExcPed := false;

        dmGeral.BUS_CD_M_CMP_PED.Close;
        dmGeral.BUS_CD_M_CMP_PED.Data :=
        dmGeral.BUS_CD_M_CMP_PED.DataRequest(
                VarArrayOf([91,dmGeral.CMP_CD_M_COTid_cotacao.text]));
        if not dmGeral.BUS_CD_M_CMP_PED.IsEmpty then
           begin
             dmGeral.BUS_CD_M_CMP_PED.First;
             while not dmGeral.BUS_CD_M_CMP_PED.eof do
                 begin
                   ExecutaExcPed := true;
                   if not dmGeral.BUS_CD_M_CMP_PED_NFE.IsEmpty then
                      begin
                        ShowMessage('Alteração não permitida pois existe nota fiscal de entrada ' + #13 +
                                    'utilizando pedido de compra gerado por esta aprovação.');
                        dmGeral.BUS_CD_M_CMP_PED.Close;
                        abort;
                      end;
                   dmGeral.BUS_CD_M_CMP_PED.Next;
                 end;

             if ExecutaExcPed then
                begin
                  if MessageDlg('Atenção: Os pedidos de compra gerado por esta cotação serão apagados! ' +
                                'Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                        codigo := dmGeral.CMP_CD_M_COTid_cotacao.Text;

                        dmGeral.BUS_CD_M_CMP_PED.First;
                        while not dmGeral.BUS_CD_M_CMP_PED.eof do
                            begin
                              PedidoExc := True;
                              dmGeral.BUS_CD_M_CMP_PED.delete;
                            end;
                     end
                  else
                     begin
                       abort;
                     end;
                end;
           end;
        if PedidoExc then
           begin
               Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             try
               dmGeral.CMP_CD_M_COT.BeforeEdit := nil;

               dmGeral.CMP_CD_M_COT.Edit;
               dmGeral.CMP_CD_M_COTsituacao.AsInteger := 0;
               dmGeral.CMP_CD_M_COT.post;

               TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_CMP_PED,dmGeral.CMP_CD_M_COT]);

             finally
                obj.Free;

                dmGeral.CMP_CD_M_COT.Close;
                dmGeral.CMP_CD_M_COT.Data :=
                        dmGeral.CMP_CD_M_COT.DataRequest(VarArrayOf([0, codigo]));

                dmGeral.CMP_CD_M_COT.BeforeEdit := dmGeral.CMP_CD_M_COTBeforeEdit;
             end;
           end;
     end;
end;

procedure CmpMascaraCotFitApr;
begin
  dmGeral.CMP_CD_M_COT_FIT_APRint_per_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_unitario.DisplayFormat    := CMascaraValor;
  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_total.DisplayFormat       := CMascaraValor;
end;

procedure CmpCotFitValVlrUnitario;
begin
  if dmGeral.CMP_CD_M_COT_FIT.FieldByName('APROVADO').AsBoolean = true then
     begin
       ShowMessage('Alteração não permitida pois este item já foi aprovado.');
       abort;
     end;
end;

function CmpVerifExistCotFit: boolean;
begin
  result := False;
  if dmGeral.CMP_CD_M_COT.FieldByName('APROVADA').AsBoolean then
     begin
        if MessageDlg('Esta cotação possui itens aprovados.' +#13 +
                      'Deseja continuar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
           begin
             result := false;
           end
        else
           result := true;
     end
end;
end.


