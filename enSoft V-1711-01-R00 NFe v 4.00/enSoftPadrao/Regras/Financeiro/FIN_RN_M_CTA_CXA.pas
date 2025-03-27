unit FIN_RN_M_CTA_CXA;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaCtaCxa(DataSet:TDataSet);
procedure FinMascaraCtaCxa(DataSet:TDataSet);
procedure FinMascaraBusCtaCxa(DataSet:TDataSet);
procedure FinNovoCtaCxa(DataSet: TDataSet);
procedure FinDeletaCtaCxa(DataSet: TDataSet);
procedure FinEditaCtaCxa(DataSet: TDataSet);
procedure CxaModificaTipoFin(Sender: TField);
procedure FinMascaraBusCta(DataSet:TDataSet);



implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinValidaCtaCxa(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';

  if (dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean) and (
      (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_obra').AsString=null) or
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_obra').AsString='')) then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_conta').AsString=null) or
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_conta').AsString='') then
     begin
       xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_CTC.Close;
       dmGeral.BUS_CD_C_CTC.Data :=
       dmGeral.BUS_CD_C_CTC.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_conta').AsString]));
       if dmGeral.BUS_CD_C_CTC.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Conta Corrente não cadastrada.'+ #13;
            dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_tipo_financeiro').AsString=null) or
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_tipo_financeiro').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo financeiro deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_TIF.Close;
       dmGeral.BUS_CD_C_TIF.Data :=
       dmGeral.BUS_CD_C_TIF.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_tipo_financeiro').AsString]));
       if dmGeral.BUS_CD_C_TIF.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Tipo financeiro não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_plano').AsString=null) or
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_plano').AsString='') then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_PCT.Close;
       dmGeral.BUS_CD_C_PCT.Data :=
       dmGeral.BUS_CD_C_PCT.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_plano').AsString]));
       if dmGeral.BUS_CD_C_PCT.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Plano de contas não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('vlr_lancamento').AsCurrency=0) or
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('vlr_lancamento').IsNull) then
     begin
       xMensErro:= xMensErro + 'Valor de lançamento deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
     end;

  dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').Text);
  if not dmGeral.BUS_CD_C_TIF.IsEmpty then
    begin
      if dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = True then
         begin
          if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString = '') or
            (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString=null) then
             begin
              xMensErro := xMensErro + 'Conta corrente exportada deve ser informda.'+#13;
              dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
             end
          else
            begin
              dmGeral.BUS_CD_C_CTC_EXP.Close;
              dmGeral.BUS_CD_C_CTC_EXP.Data :=
              dmGeral.BUS_CD_C_CTC_EXP.DataRequest(
                   VarArrayOf([0, dataset.FieldByName('EXP_ID_CONTA').AsString]));
              if dmGeral.BUS_CD_C_CTC_EXP.IsEmpty then
                begin
                  xMensErro:= xMensErro + '.Conta Corrente não cadastrada.'+ #13;
                  dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
                end;
            end;


         if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString=null) or
             (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString='') then
            begin
              xMensErro:= xMensErro + '.Tipo financeiro deve ser informado.'+ #13;
              dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
            end
         else
           begin
             dmGeral.BUS_CD_C_TIF_EXP.Close;
             dmGeral.BUS_CD_C_TIF_EXP.Data :=
             dmGeral.BUS_CD_C_TIF_EXP.DataRequest(
               VarArrayOf([0, dataset.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString]));
             if dmGeral.BUS_CD_C_TIF_EXP.IsEmpty then
               begin
                 xMensErro:= xMensErro + '.Tipo financeiro não cadastrado.'+ #13;
                 dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
               end
             else
               begin
                 if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString =
                     dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString then
                   xMensErro := xMensErro + '.Tipo financeiro exportado não pode ser igual ao que foi selecionado.'+#13;

                 if dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsString =
                     dmGeral.BUS_CD_C_TIF_EXP.FieldByName('NATUREZA').AsString then
                        xMensErro := xMensErro + '.Tipo financeiro exportado não pode ser o mesmo tipo ao que foi selecionado.'+#13;

               end;
           end;


           if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString=null) or
               (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString='') then
             begin
               xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
               dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
             end
           else
             begin
               dmGeral.BUS_CD_C_PCT_EXP.Close;
               dmGeral.BUS_CD_C_PCT_EXP.Data :=
               dmGeral.BUS_CD_C_PCT_EXP.DataRequest(
                  VarArrayOf([0, dataset.FieldByName('EXP_ID_PLANO').AsString]));
               if dmGeral.BUS_CD_C_PCT_EXP.IsEmpty then
                 begin
                   xMensErro:= xMensErro + '.Plano de contas não cadastrado.'+ #13;
                   dmGeral.FIN_CD_M_CTA_CXA.FieldByName('num_doc').FocusControl;
                 end;
             end;

           if ((not dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').IsNull) and
              (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString <> '') and
              (not dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').IsNull) and
              (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString <> '')) and
              (trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString)=
               trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString)) then
              begin
                xMensErro := xMensErro + '.Conta corrente exportada não pode ser igual ao que foi selecionado.'+#13;
              end;

          if ((not dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_PLANO').IsNull) and
             (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString <> '') and
             (not dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').IsNull) and
             (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString <> '')) and
             (trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString)=
              trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString)) then
                begin
                  xMensErro := xMensErro + '.Plano de contas exportada não pode ser igual ao que foi selecionado.'+#13;
                end;
      end;

    end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FinMascaraCtaCxa(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_CTA_CXAvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

procedure FinMascaraBusCtaCxa(DataSet:TDataSet);
begin
  dmGeral.BUS_CD_M_CTA_CXAvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

procedure FinNovoCtaCxa(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    DataSet.FieldByName('ID_CONTROLE').AsInteger :=
       SMPrincipal.enValorChave('FIN_TB_M_CTA');
  finally
    FreeAndNil(SMPrincipal);
  end;

  DataSet.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  DataSet.FieldByName('DEB_CRE').AsInteger            := 0;
  DataSet.FieldByName('ORIGEM').AsInteger             := 0;
  DataSet.FieldByName('EXP_ID_CONTROLE').AsInteger    := 0;
  DataSet.FieldByName('dta_lancamento').AsDateTime    := xDataSis;
  DataSet.FieldByName('CONCILIADO').AsBoolean         := false;
  DataSet.FieldByName('TIPO_LANCAMENTO').AsInteger    := 0; //Caxa
  DataSet.FieldByName('id_abertura').AsInteger        := 0;
  DataSet.FieldByName('pag_cred_cli').AsInteger        := 0;
  //Repassa dados de caixa em aberto
  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
               VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));
  if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       DataSet.FieldByName('dta_movimento').AsDateTime    :=
          dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
       DataSet.FieldByName('id_conta').AsInteger   :=
          dmGeral.BUS_CD_M_CXA.FieldByName('id_conta').AsInteger;
       DataSet.FieldByName('id_abertura').AsInteger   :=
          dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').AsInteger;
     end;

  DataSet.FieldByName('num_doc').AsString:=
    DataSet.FieldByName('id_controle').AsString;

  DataSet.FieldByName('id_baixa_pbx').AsInteger   := 0;
  DataSet.FieldByName('id_baixa_rbx').AsInteger   := 0;
  DataSet.FieldByName('id_fiscal').AsInteger      := 0;
  DataSet.FieldByName('id_titulo_rec').AsInteger  := 0;
  DataSet.FieldByName('id_credito').AsInteger     := 0;
  DataSet.FieldByName('id_mch').AsInteger         := 0;
  DataSet.FieldByName('id_conciliacao').AsInteger := 0;




end;

procedure FinDeletaCtaCxa(DataSet: TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';
  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('Origem').AsInteger<>0) Then
     begin
       xMensErro:= xMensErro + 'Não é permitido excluir lançamento gerado.'+ #13;
     end;

  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('Id_abertura').AsString ]));
  if dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       xMensErro:= xMensErro + 'Não é permitido excluir, caixa não encontrado.'+ #13;
     end;

  if (dmGeral.BUS_CD_M_CXA.FieldByName('status').AsInteger=1) then
     begin
       xMensErro:= xMensErro + 'Não é permitido excluir, caixa já foi fechado.'+ #13;
     end;



   IF xFuncionario <> dmGeral.BUS_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger then
     begin
      dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
      if NOT ((dmGeral.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean=true) and
           (dmGeral.BUS_CD_C_FUN.FieldByName('excluir_caixa').ASBoolean=true))  then
         begin
            xMensErro:= xMensErro + 'Funcionário não tem permissão para excluir movimento realizado por outro funcionário.'+ #13;
         end;
     end;



  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure FinEditaCtaCxa(DataSet: TDataSet);
Var
xMensErro:string;
begin

  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('Origem').AsInteger<>0) OR
     ((dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger = 0) and
       (not dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').IsNull) and
        (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').AsInteger <> 0)) Then
     begin
       xMensErro:= xMensErro + 'Não é permitido alterar lançamento gerado.'+ #13;
     end;

  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('Id_abertura').AsString ]));
  if dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       xMensErro:= xMensErro + 'Não é permitido alterar, caixa não encontrado.'+ #13;
     end;

  if (dmGeral.BUS_CD_M_CXA.FieldByName('status').AsInteger=1) then
     begin
       xMensErro:= xMensErro + 'Não é permitido alterar, caixa já foi fechado.'+ #13;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure CxaModificaTipoFin(Sender: TField);
begin
  dmGeral.BUS_CD_C_TIF.Close;
  dmGeral.BUS_CD_C_TIF.Data :=
  dmGeral.BUS_CD_C_TIF.DataRequest(
          VarArrayOf([0, dmGeral.FIN_CD_M_CTA_CXA.FieldByName('id_tipo_financeiro').AsString]));
  if not dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       dmGeral.FIN_CD_M_CTA_CXA.FieldByName('deb_cre').AsInteger:=
       dmGeral.BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
     end;
end;


procedure FinMascaraBusCta(DataSet:TDataSet);
begin
  dmGeral.BUS_CD_M_CTAvlr_lancamento.DisplayFormat:=CMascaraValor;
end;

end.
