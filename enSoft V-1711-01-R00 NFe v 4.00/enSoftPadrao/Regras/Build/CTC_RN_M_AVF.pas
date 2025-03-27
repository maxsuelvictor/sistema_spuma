unit CTC_RN_M_AVF;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcValidaAvf(DataSet:TDataSet);
procedure CtcMascaraAvf(DataSet:TDataSet);
procedure CtcNovoAvf(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc, uDmCtc;
VAR
xMensErro:String;

procedure CtcValidaAvf(DataSet:TDataSet);
var
xTamDoc:Integer;
begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').AsString='') then
     begin
       xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_AVF.FieldByName('nom_fornecedor').AsString=null) or
     (dmCtc.CTC_CD_M_AVF.FieldByName('nom_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
     end;

  if trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text) = '' then
     begin
       xMensErro:= xMensErro + '.CPF/CNPJ'+ #13;
     end;

  if trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text) <> '' then
     begin
       xTamDoc:=Length(trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text));
       if Length(trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text))=11 then  //CPF
          begin
            if VerCPF(trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else if Length(trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text))=14 then  //CNPJ
          begin
            if VerCNPJ(trim(dmCtc.CTC_CD_M_AVF.FieldByName('doc_cnpj').text)) = false then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.Doc CPF/CNPJ Inválido.'+ #13;
          end;
     end;

  if Dataset.FieldByName('id_responsavel').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FUN.Close;
       dmGeral.BUS_CD_C_FUN.Data :=
       dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_responsavel').asstring]));
       dmGeral.BUS_CD_C_FUN.Open;
       if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Responsavel não cadastrado.'+ #13;
          end;
     end;

  {if (DataSet.State in [dsInsert]) Then
          begin
            dmGeral.BUS_CD_C_FOR.Close;
            dmGeral.BUS_CD_C_FOR.Data :=
            dmGeral.BUS_CD_C_FOR.DataRequest(
                    VarArrayOf([2, dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').text]));
            if not dmGeral.BUS_CD_C_FOR.IsEmpty then
               begin
                 xMensErro:= xMensErro + '.CNPJ/CPF já cadastrado.'+ #13;
               end;
          end;}

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure CtcMascaraAvf(DataSet:TDataSet);
begin

end;

procedure CtcNovoAvf(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_AVF.FieldByName('ID_AVF').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_AVF');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_AVF.FieldByName('dta_avf').AsDateTime := xDataSis;

  dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').AsInteger := xFuncionario;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').Text);

  dmCtc.CTC_CD_M_AVF.FieldByName('int_nomeres').AsString := dmGeral.BUS_CD_C_FUNnome.AsString;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_FM_M_AVF',xCodLme,xRevLme,dmCtc.CTC_CD_M_AVF);

  dmCtc.ctc_cd_m_avfpeso_01.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_01').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_02.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_02').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_03.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_03').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_04.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_04').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_05.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_05').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_06.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_06').AsCurrency;
  dmCtc.ctc_cd_m_avfpeso_07.AsCurrency := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('avf_peso_07').AsCurrency;
end;

end.
