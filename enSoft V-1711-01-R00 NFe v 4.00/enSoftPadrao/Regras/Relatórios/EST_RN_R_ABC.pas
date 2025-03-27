unit EST_RN_R_ABC;

interface
uses Data.DB, Datasnap.DBClient,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes, xCondEmpresa, xCondFornecedor, xCondGrupo, xCondTipoEstoque: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxGrupoDisp,lbxGrupo,lbxEstoqueDisp,lbxEstoque:TListBox;
                    deInicial,deFinal:TJvDateEdit;chbTipoNServico:TCheckBox;txtFaixaA,txtFaixaB,txtFaixaC:Tedit; Fastreport1,Fastreport2:TfrxReport;cdsABCVlr,cdsABCQtd:TClientDataSet);
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxGrupoDisp,lbxGrupo,lbxEstoqueDisp,lbxEstoque:TListBox;
                            chbTipoNServico:TCheckBox;txtFaixaA,txtFaixaB,txtFaixaC:Tedit; deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:TEdit;lboxEmpresaSelecionada:TListBox): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, EST_UN_R_ABC;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxGrupoDisp,lbxGrupo,lbxEstoqueDisp,lbxEstoque:TListBox;
                    deInicial,deFinal:TJvDateEdit;chbTipoNServico:TCheckBox;txtFaixaA,txtFaixaB,txtFaixaC:Tedit; Fastreport1,Fastreport2:TfrxReport;cdsABCVlr,cdsABCQtd:TClientDataSet);
var
  rDtaIni, rDtaFin, rOrdenacao, rFaixaA, rFaixaB, rFaixaC,rNServico, PathImg: String;
  LogoEmpresa: TfrxPictureView;
  vlrAcu,perAcu:currency;
  total_registro,index:integer;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   if chbTipoNServico.Checked then
     rNServico :='1'
   else
     rNServico := '0';

   PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxGrupoDisp,lbxGrupo,lbxEstoqueDisp,lbxEstoque,chbTipoNServico,txtFaixaA,txtFaixaB,txtFaixaC,deInicial,deFinal);

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Valor de Vendas' then
      begin
         EST_FM_R_ABC.EST_CD_R_ABC_VLR.Close;
         EST_FM_R_ABC.EST_CD_R_ABC_VLR.Data :=
                 EST_FM_R_ABC.EST_CD_R_ABC_VLR.DataRequest(
                         VarArrayOf([rDtaIni, rDtaFin,rNServico, xCondEmpresa, xCondFornecedor, xCondGrupo, xCondTipoEstoque]));

         if not EST_FM_R_ABC.EST_CD_R_ABC_VLR.IsEmpty then
            begin
               PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
               if FileExists(PathImg) then
                  begin
                     LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                     if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;
               vlrAcu := 0;
               perAcu := 0;
               total_registro := EST_FM_R_ABC.EST_CD_R_ABC_VLR.RecordCount;
               index := 0;
               cdsABCVlr.EmptyDataSet;
               while (not EST_FM_R_ABC.EST_CD_R_ABC_VLR.eof) do
                 begin
                   cdsABCVlr.Insert;
                   cdsABCVlr.FieldByName('ID_SEQUENCIA').AsInteger := index;
                   cdsABCVlr.FieldByName('ID_ITEM').AsInteger := EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('ID_ITEM').AsInteger;
                   cdsABCVlr.FieldByName('DESCRICAO').AsString := EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('DESCRICAO').AsString;
                   cdsABCVlr.FieldByName('ID_UND_VENDA').AsString := EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('ID_UND_VENDA').AsString;
                   cdsABCVlr.FieldByName('VLR_CUSTO_ULT_CMP').AsCurrency := EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('INT_VLR_CUSTO_ULT_CMP').AsCurrency;
                   cdsABCVlr.FieldByName('VLR_LIQUIDO').AsCurrency := EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('VLR_LIQUIDO').AsCurrency;
                   vlrAcu := vlrAcu + cdsABCVlr.FieldByName('VLR_LIQUIDO').AsCurrency;
                   cdsABCVlr.FieldByName('VLR_ACUMULADO').AsCurrency := vlrAcu;
                   if (index <(total_registro-1) ) then
                     begin
                      cdsABCVlr.FieldByName('PER_VLR').AsCurrency := 100*(EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('VLR_LIQUIDO').AsCurrency/
                                                                      EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('VLR_TOTAL').AsCurrency);
                     end
                   else
                     begin
                       cdsABCVlr.FieldByName('PER_VLR').AsCurrency := 100 - perAcu;
                     end;
                    perAcu := perAcu + cdsABCVlr.FieldByName('PER_VLR').AsCurrency;
                    cdsABCVlr.FieldByName('PER_ACUM').AsCurrency := perAcu;
                   if perAcu <= rFaixaA.ToInteger(txtFaixaA.Text) then
                     cdsABCVlr.FieldByName('curva').AsString := 'A';
                   if (perAcu<= (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text)) ) and (perAcu> rFaixaA.ToInteger(txtFaixaA.Text)) Then
                      cdsABCVlr.FieldByName('curva').AsString := 'B';
                   if (perAcu<= (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text) + rFaixaC.ToInteger(txtFaixaC.Text) ) ) and
                      (perAcu> (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text)) ) Then
                       cdsABCVlr.FieldByName('curva').AsString := 'C';
                   cdsABCVlr.Post;
                   EST_FM_R_ABC.EST_CD_R_ABC_VLR.Next;
                   index := index +1;
                 end;
                 cdsABCVlr.IndexFieldNames :='ID_SEQUENCIA';
                 dmGeral.BusCodigoRevListMestre(true,false,FastReport1.Name,xCodLme,xRevLme,nil);
                 FastReport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 FastReport1.Variables['ft_vlr_total'] := QuotedStr(EST_FM_R_ABC.EST_CD_R_ABC_VLR.FieldByName('VLR_TOTAL').AsString);
                 FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                 FastReport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 FastReport1.PrepareReport();
                 FastReport1.ShowReport();
            end
          else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Quantidade Vendida' then
     begin
        EST_FM_R_ABC.EST_CD_R_ABC_QTD.Close;
        EST_FM_R_ABC.EST_CD_R_ABC_QTD.Data :=
        EST_FM_R_ABC.EST_CD_R_ABC_QTD.DataRequest(
                     VarArrayOf([rDtaIni, rDtaFin,rNservico, xCondEmpresa, xCondFornecedor, xCondGrupo, xCondTipoEstoque]));
        if not EST_FM_R_ABC.EST_CD_R_ABC_QTD.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(FastReport2.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
             vlrAcu := 0;
             perAcu := 0;
             total_registro := EST_FM_R_ABC.EST_CD_R_ABC_QTD.RecordCount;
             index := 0;
             cdsABCQtd.EmptyDataSet;
             while (not EST_FM_R_ABC.EST_CD_R_ABC_QTD.eof) do
               begin
                 cdsABCQtd.Insert;
                 cdsABCQtd.FieldByName('ID_SEQUENCIA').AsInteger := index;
                 cdsABCQtd.FieldByName('ID_ITEM').AsInteger := EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('ID_ITEM').AsInteger;
                 cdsABCQtd.FieldByName('DESCRICAO').AsString := EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('DESCRICAO').AsString;
                 cdsABCQtd.FieldByName('ID_UND_VENDA').AsString := EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('ID_UND_VENDA').AsString;
                 cdsABCQtd.FieldByName('VLR_CUSTO_ULT_CMP').AsCurrency := EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('INT_VLR_CUSTO_ULT_CMP').AsCurrency;
                 cdsABCQtd.FieldByName('QTDE').AsCurrency := EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('QTDE').AsCurrency;
                 vlrAcu := vlrAcu + cdsABCQtd.FieldByName('QTDE').AsCurrency;
                 cdsABCQtd.FieldByName('QTDE_ACUM').AsCurrency := vlrAcu;
                 if (index <(total_registro-1) ) then
                   begin
                    cdsABCQtd.FieldByName('PER_QTDE').AsCurrency := 100*(EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('QTDE').AsCurrency/
                                                                    EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('QTDE_TOTAL').AsCurrency);
                   end
                 else
                   begin
                     cdsABCQtd.FieldByName('PER_QTDE').AsCurrency := 100 - perAcu;
                   end;
                 perAcu := perAcu + cdsABCQtd.FieldByName('PER_QTDE').AsCurrency;
                 cdsABCQtd.FieldByName('PER_ACUM').AsCurrency := perAcu;
                 if perAcu <= rFaixaA.ToInteger(txtFaixaA.Text) then
                   cdsABCQtd.FieldByName('curva').AsString := 'A';
                 if (perAcu<= (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text)) ) and (perAcu> rFaixaA.ToInteger(txtFaixaA.Text)) Then
                    cdsABCQtd.FieldByName('curva').AsString := 'B';
                 if (perAcu<= (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text) + rFaixaC.ToInteger(txtFaixaC.Text) ) ) and
                    (perAcu> (rFaixaA.ToInteger(txtFaixaA.Text) + rFaixaB.ToInteger(txtFaixaB.Text)) ) Then
                     cdsABCQtd.FieldByName('curva').AsString := 'C';
                 cdsABCQtd.Post;
                 EST_FM_R_ABC.EST_CD_R_ABC_QTD.Next;
                 index := index +1;
               end;
               cdsABCQtd.IndexFieldNames :='ID_SEQUENCIA';
               dmGeral.BusCodigoRevListMestre(true,false,FastReport2.Name,xCodLme,xRevLme,nil);
               FastReport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               FastReport2.Variables['ft_qtde_total'] := QuotedStr(EST_FM_R_ABC.EST_CD_R_ABC_QTD.FieldByName('QTDE_TOTAL').AsString);
               FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               FastReport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
               FastReport2.PrepareReport();
               FastReport2.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
     end;

end;
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxGrupoDisp,lbxGrupo,lbxEstoqueDisp,lbxEstoque:TListBox;
                            chbTipoNServico:TCheckBox;txtFaixaA,txtFaixaB,txtFaixaC:Tedit; deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  opcoesEmpresa,opcoesFornecedor,opcoesGrupo,opcoesEstoque: String;
begin

  // Empresas ------------------------------------------------------------------
  opcoesEmpresa := '';
  xCondEmpresa := '';
  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                             '+lbxEmpresas.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lbxEmpresas.Items[i] + #13+#10;
               end;
          end;
     end;

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lbxFornecedor.Count > 0 then
     begin
       for i := 0 to lbxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                             '+lbxFornecedor.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lbxFornecedor.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
       opcoesFornecedor := 'Todos';
    end;

  // Grupo ----------------------------------------------------------------------
  xCondGrupo := '';
  if lbxGrupo.Count > 0 then
  begin
    if lbxGrupoDisp.Count <> 0 then
     begin
       for i := 0 to lbxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +''''+trim(copy(lbxGrupo.Items[i],1,11))+'''';
                 opcoesGrupo :=
                 opcoesGrupo +'                             '+lbxGrupo.Items[i] + #13+#10;
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +''''+trim(copy(lbxGrupo.Items[i],1,11))+'''';
                 opcoesGrupo :=
                 opcoesGrupo + lbxGrupo.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesGrupo := 'Todos';
        End;
  end
   else
     begin
      opcoesGrupo := 'Todos';
     end;

  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lbxEstoque.Count > 0 then
  begin
    if lbxEstoqueDisp.Count <> 0 then
     begin
       for i := 0 to lbxEstoque.Count - 1 do
          begin
            if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesEstoque :=
                 opcoesEstoque +'                             '+lbxEstoque.Items[i] + #13+#10;
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesEstoque :=
                 opcoesEstoque + lbxEstoque.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesEstoque := 'Todos';
        End;
  end
   else
     begin
      opcoesEstoque := 'Todos';
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Faixa......................: ' +'A='+txtFaixaA.Text+'; B='+txtFaixaB.Text+'; C='+txtFaixaC.Text + #13+#10;

   if chbTipoNServico.Checked then
     xOpcoes := xOpcoes + 'Exibir itens tipo serviço..: Sim'+ #13+#10
   else
     xOpcoes := xOpcoes + 'Exibir itens tipo serviço..: Não'+ #13+#10;

   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor.................: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Grupo......................: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque............: ' + opcoesEstoque+#13+#10;
end;

{function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;
   if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        Result := False;
        exit;
      end;
end;    }


function  TestarCampos(deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:TEdit;lboxEmpresaSelecionada:TListBox):Boolean;
var
  mens,valorFaixa: String;
begin
  result := True;
  mens := '';
  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  if ((txtFaixaA.Text = '') or (txtFaixaB.Text = '') or (txtFaixaC.Text = '')) then
    begin
      mens := mens +  '.Os campos da Faixa tem que ser preenchidos.' + #13;
    end
  else
    begin
      if ((valorFaixa.ToInteger(txtFaixaA.Text) + valorFaixa.ToInteger(txtFaixaB.Text) +
          valorFaixa.ToInteger(txtFaixaC.Text))<>100) then
         begin
           mens := mens +  '.A soma dos valores dos campos da Faixa tem que ser igual a 100.' + #13;
         end;
    end;


  if lboxEmpresaSelecionada.Count = 0 then
      begin
        mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
      end;

  if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end;
end;
end.
