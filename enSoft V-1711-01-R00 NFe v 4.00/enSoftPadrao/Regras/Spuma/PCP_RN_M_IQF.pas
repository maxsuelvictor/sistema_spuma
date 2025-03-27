unit PCP_RN_M_IQF;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,
     Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Forms;

procedure PcpNovoIqf(DataSet: TDataSet);
procedure PcpValidaIqf(DataSet:TDataSet);

procedure PcpAtualizarIQF(var lblTotFornecedores:TLabel; var pbarAtualizacao: TProgressBar; pcp_fm_m_iqf: TForm;Ano: integer);
procedure PcpBuscarIndices(xCondForn:String);


implementation
Uses uDmGeral,enConstantes, uProxy;

procedure PcpNovoIqf(DataSet: TDataSet);
begin
  dmGeral.PCP_CD_M_IQF.FieldByName('ID_EMPRESA').AsInteger                :=
                                   dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.PCP_CD_M_IQF.FieldByName('Id_responsavel').AsInteger            := xFuncionario;
  dmGeral.PCP_CD_M_IQF.FieldByName('Dta_semestre1').AsDateTime            := xDataSis;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_nf_semestre1').AsInteger         := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre1').AsInteger := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Iqf_semestre1').AsInteger             := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Status_semestre1').AsInteger          := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_demeritos_semestre1').AsInteger  := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Dta_semestre2').AsDateTime            := xDataSis;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_nf_semestre2').AsInteger         := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_demeritos_semestre2').AsInteger  := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre2').AsInteger := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Iqf_semestre2').AsInteger             := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Status_semestre2').AsInteger          := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_IQF',xCodLme,xRevLme,dmGeral.PCP_CD_M_IQF);
end;

procedure PcpValidaIqf(DataSet:TDataSet);
begin

end;

procedure PcpAtualizarIQF(var lblTotFornecedores:TLabel; var pbarAtualizacao: TProgressBar; pcp_fm_m_iqf: TForm; Ano: integer);
var
  xCondFor: String;
  i: integer;
begin
  lblTotFornecedores.caption       := ' Atualizando fornecedores: 0';
  pbarAtualizacao.Max      := 0;
  pbarAtualizacao.Position := 0;



  // input[0] - 0 - Irá trazer qtde total de fornecedore com NF de entrada
  //            1 - Irá trazer cada fornecedor que tem NF de entrada
  dmGeral.BUS_CD_M_IQF_FOR.Close;
  dmGeral.BUS_CD_M_IQF_FOR.Data :=
          dmGeral.BUS_CD_M_IQF_FOR.DataRequest(
                  VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.text]));
  if not dmGeral.BUS_CD_M_IQF_FOR.FieldByName('QTDE_FORNECEDORES').AsInteger > 0 then
     begin
       ShowMessage('Nenhum fornecedor foi encontrado para atualização.');
       dmGeral.BUS_CD_M_IQF_FOR.close;
       exit;
     end;

  if dmGeral.BUS_CD_M_IQF_FOR.FieldByName('QTDE_FORNECEDORES').AsInteger > 0 then
     begin
       pbarAtualizacao.Max := dmGeral.BUS_CD_M_IQF_FOR.FieldByName('QTDE_FORNECEDORES').AsInteger;

       // Filtros: 0,Ano,IdFornecedor;
       //          1,Ano,NomeFantasia;
       //          2,Ano;

      // if ano > 0 then
      //    begin
            dmGeral.PCP_CD_M_IQF.Close;
            dmGeral.PCP_CD_M_IQF.Data :=
               dmGeral.PCP_CD_M_IQF.DataRequest(
                       VarArrayOf([2,ano]));
      {    end
       else
          begin
            dmGeral.PCP_CD_M_IQF.Close;
            dmGeral.PCP_CD_M_IQF.Data :=
               dmGeral.PCP_CD_M_IQF.DataRequest(
                       VarArrayOf([2,dmGeral.CAD_CD_C_PAR_CTRano_corrente.text]));
          end;}

       // Filtros: - 0, Empresa - Irá trazer qtde total de fornecedore com NF de entrada
       //            1, Empresa - Irá trazer cada fornecedor que tem NF de entrada
       dmGeral.BUS_CD_M_IQF_FOR.Close;
       dmGeral.BUS_CD_M_IQF_FOR.Data :=
              dmGeral.BUS_CD_M_IQF_FOR.DataRequest(
                      VarArrayOf([1,dmGeral.CAD_CD_C_PAR_CTRid_empresa.text]));

       xCondFor := '';
       // Seleção de fornecedores
       while not dmGeral.BUS_CD_M_IQF_FOR.eof do
          begin
            if xCondFor <> '' then
               begin
                 xCondFor :=
                 xCondFor + ',' +''''+dmGeral.BUS_CD_M_IQF_FOR.FieldByName('ID_FORNECEDOR').text+'''';
               end;
            if xCondFor = '' then
               begin
                 xCondFor :=
                 xCondFor +''''+dmGeral.BUS_CD_M_IQF_FOR.FieldByName('ID_FORNECEDOR').text+'''';
               end;
            dmGeral.BUS_CD_M_IQF_FOR.Next;
          end;


      // if ano > 0 then
        //  begin
            dmGeral.BUS_CD_M_IQF_NFE.Close;
            dmGeral.BUS_CD_M_IQF_NFE.Data :=
               dmGeral.BUS_CD_M_IQF_NFE.DataRequest(
                      VarArrayOf([dmGeral.CAD_CD_C_PAR_CTRid_empresa.text,
                                  ano,
                                  xCondFor]));
        //  end
       {else
          begin
            dmGeral.BUS_CD_M_IQF_NFE.Close;
            dmGeral.BUS_CD_M_IQF_NFE.Data :=
               dmGeral.BUS_CD_M_IQF_NFE.DataRequest(
                      VarArrayOf([dmGeral.CAD_CD_C_PAR_CTRid_empresa.text,
                                  dmGeral.CAD_CD_C_PAR_CTRano_corrente.Text,
                                  xCondFor]));
          end;}

       i := 0;
       pcp_fm_m_iqf.Refresh;
       dmGeral.BUS_CD_M_IQF_FOR.First;
       while not dmGeral.BUS_CD_M_IQF_FOR.eof do
             begin
               pcp_fm_m_iqf.Refresh;

               dmGeral.BUS_CD_M_IQF_NFE.Locate('id_fornecedor',dmGeral.BUS_CD_M_IQF_FOR.FieldByName('id_fornecedor').text,[]);

               dmGeral.BusFornecedor(0,dmGeral.BUS_CD_M_IQF_FOR.FieldByName('id_fornecedor').text);
               if dmGeral.PCP_CD_M_IQF.Locate('id_fornecedor',dmGeral.BUS_CD_M_IQF_FOR.FieldByName('id_fornecedor').text,[]) then
                  begin
                    dmGeral.PCP_CD_M_IQF.Edit;
                    PcpBuscarIndices(xCondFor);
                    dmGeral.PCP_CD_M_IQF.Post;
                  end
               else
                  begin
                    dmGeral.PCP_CD_M_IQF.Insert;
                    dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_IQF',xCodLme,xRevLme,dmGeral.PCP_CD_M_IQF);

                   // if ano > 0 then
                       dmGeral.PCP_CD_M_IQF.FieldByName('ANO_IQF').AsInteger := ano;
                    {else
                       dmGeral.PCP_CD_M_IQF.FieldByName('ANO_IQF').AsInteger :=
                            dmGeral.CAD_CD_C_PAR_CTRano_corrente.AsInteger;}

                    dmGeral.PCP_CD_M_IQF.FieldByName('ID_FORNECEDOR').AsInteger :=
                            dmGeral.BUS_CD_M_IQF_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

                    dmGeral.PCP_CD_M_IQF.FieldByName('int_nomefor').AsString :=
                            dmGeral.BUS_CD_C_FOR.FieldByName('fantasia').AsString;

                    PcpBuscarIndices(xCondFor);
                    dmGeral.PCP_CD_M_IQF.Post;
                  end;

               inc(i);
               lblTotFornecedores.caption  := ' Atualizando fornecedores: ' + inttostr(i);
               pbarAtualizacao.Position := pbarAtualizacao.Position + 1;

               dmGeral.BUS_CD_M_IQF_FOR.Next;
             end;
       dmGeral.BUS_CD_C_FOR.Close;

       dmGeral.BUS_CD_M_IQF_FOR.Close;
       dmGeral.PCP_CD_M_IQF.Edit;
       dmGeral.PCP_CD_M_IQF.ApplyUpdates(0);
       dmGeral.PCP_CD_M_IQF.IndexFieldNames := 'int_nomefor';
       dmGeral.PCP_CD_M_IQF.First;
     end;
end;

procedure PcpBuscarIndices(xCondForn:String);
begin
  // input[0] - Empresa
  // input[1] - Ano
  // input[2] - Fornecedores

  // Ao fazer isso ele sempre irá limpar os dados para fazer tudo novamente;
  dmGeral.PCP_CD_M_IQF.FieldByName('Dta_semestre1').AsDateTime            := xDataSis;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_nf_semestre1').AsInteger         := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre1').AsInteger := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Iqf_semestre1').AsInteger             := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Status_semestre1').AsInteger          := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_demeritos_semestre1').AsInteger  := 0;

  dmGeral.PCP_CD_M_IQF.FieldByName('Dta_semestre2').AsDateTime            := xDataSis;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_nf_semestre2').AsInteger         := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_demeritos_semestre2').AsInteger  := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre2').AsInteger := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Iqf_semestre2').AsInteger             := 0;
  dmGeral.PCP_CD_M_IQF.FieldByName('Status_semestre2').AsInteger          := 0;

  dmGeral.PCP_CD_M_IQF.FieldByName('qtde_nf_semestre1').Text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_nfs_semestre1.Text;
  dmGeral.PCP_CD_M_IQF.FieldByName('qtde_demeritos_semestre1').Text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_nfs_demerito_sem1.Text;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre1').text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_planoacao_semestre1.Text;


  dmGeral.PCP_CD_M_IQF.FieldByName('qtde_nf_semestre2').Text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_nfs_semestre2.Text;
  dmGeral.PCP_CD_M_IQF.FieldByName('qtde_demeritos_semestre2').Text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_nfs_demerito_sem2.Text;
  dmGeral.PCP_CD_M_IQF.FieldByName('Qtde_plano_acao_semestre2').text :=
          dmGeral.BUS_CD_M_IQF_NFEqtde_planoacao_semestre2.Text;

  if dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_NF_SEMESTRE1').AsInteger = 0 then
     dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger := 0
  else
     dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger :=
             100 - dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_DEMERITOS_SEMESTRE1').AsInteger;

  if dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_NF_SEMESTRE1').AsInteger = 0 then
     dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE1').AsInteger := 1
  else
     begin
        if dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger < 60 then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE1').AsInteger := 2;
           end;

        if (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger > 60)  and
           (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger < 90)  then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE1').AsInteger := 3;
           end;

        if dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsInteger > 90 then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE1').AsInteger := 4;
           end;
     end;
  //E(C14=0;"-";SE(C14=0;"Sem fornecimento no semestre";SE(E14<=60;"Ruim - DESQUALIFICAR O FONECEDOR";SE(E14>=90;"Bom";SE(E14<90>60;"Regular - enviar plano de ação";)))))



  if dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_NF_SEMESTRE2').AsInteger = 0 then
     dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger := 0
  else
     dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger :=
             100 - dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_DEMERITOS_SEMESTRE2').AsInteger;

  if dmGeral.PCP_CD_M_IQF.FieldByName('QTDE_NF_SEMESTRE2').AsInteger = 0 then
     dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE2').AsInteger := 1
  else
     begin
        if dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger < 60 then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE2').AsInteger := 2;
           end;

        if (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger > 60)  and
           (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger < 90)  then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE2').AsInteger := 3;
           end;

        if dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsInteger > 90 then
           begin
             dmGeral.PCP_CD_M_IQF.FieldByName('STATUS_SEMESTRE2').AsInteger := 4;
           end;
     end;
  //E(C14=0;"-";SE(C14=0;"Sem fornecimento no semestre";SE(E14<=60;"Ruim - DESQUALIFICAR O FONECEDOR";SE(E14>=90;"Bom";SE(E14<90>60;"Regular - enviar plano de ação";)))))




  dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat := 0;

  if (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsFloat > 0) and
     (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsFloat > 0) then
     begin
       dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat :=
               (dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE1').AsFloat +
                dmGeral.PCP_CD_M_IQF.FieldByName('IQF_SEMESTRE2').AsFloat) / 2;
     end;

  dmGeral.PCP_CD_M_IQF.FieldByName('RA_METODO1_STATUS').AsInteger := 0;

  if dmGeral.PCP_CD_M_IQF.FieldByName('RA_METODO1_MEDIA_ANUAL').AsInteger > 0 then
     begin
       if (dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat >= 90) then
           dmGeral.PCP_CD_M_IQF.FieldByName('RA_METODO1_STATUS').AsInteger := 1
       else
           begin
             if ((dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat >= 75)
                and (dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat <= 89)) then
                begin
                  dmGeral.PCP_CD_M_IQF.FieldByName('RA_METODO1_STATUS').AsInteger := 2;
                end
             else
                begin
                  if (dmGeral.PCP_CD_M_IQF.FieldByName('ra_metodo1_media_anual').AsFloat < 75) then
                     begin
                       dmGeral.PCP_CD_M_IQF.FieldByName('RA_METODO1_STATUS').AsInteger := 3;
                     end
                end;
           end;
     end;
end;

end.
