unit FAT_RN_R_ICM;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
      xOpcoes, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
      xCondVendedor, xCondIcms, xCondFornecedor: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxIcmsDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;Fastreport1,Fastreport2,Fastreport3:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxIcmsDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_ICM;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxIcmsDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;Fastreport1,Fastreport2,Fastreport3:TfrxReport);
var
  rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,
                     lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxIcmsDisp,
                     deInicial,deFinal);

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por CST') then
      begin
   FAT_FM_R_ICM.FAT_CD_R_ICM_CST.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_CST.Data :=
           FAT_FM_R_ICM.FAT_CD_R_ICM_CST.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
                               xCondVendedor, xCondIcms,xCondFornecedor, lbxRelatorios.ItemIndex]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por CFOP') then
      begin
   FAT_FM_R_ICM.FAT_CD_R_ICM_CST.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.Data :=
           FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
                               xCondVendedor, xCondIcms,xCondFornecedor, lbxRelatorios.ItemIndex]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Produto') then
      begin
   FAT_FM_R_ICM.FAT_CD_R_ICM_CST.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.Close;
   FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.Data :=
           FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
                               xCondVendedor, xCondIcms,xCondFornecedor, lbxRelatorios.ItemIndex]));
      end;

   if (not FAT_FM_R_ICM.FAT_CD_R_ICM_CST.IsEmpty) or (not FAT_FM_R_ICM.FAT_CD_R_ICM_CFO.IsEmpty) or
      (not FAT_FM_R_ICM.FAT_CD_R_ICM_ITE.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por CST' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por CFOP' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Produto' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            FastReport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport3.PrepareReport();
            Fastreport3.ShowReport();
          end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxIcmsDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesTipoEstoque,opcoesCfop,
  opcoesFormaPagamento,opcoesVendedor,opcoesIcms:string;
begin

  // Empresas ------------------------------------------------------------------
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
                 opcoesEmpresa +'                           '+lbxEmpresas.Items[i]+ #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lbxEmpresas.Items[i]+ #13+#10;
               end;
          end;
     end;

  // Tipos de Estoque ----------------------------------------------------------
   xCondTipoEstoque := '';
  if lbxEstoque.Count > 0 then
     begin
      if lbxEstoqueDisp.Count > 0 then
        begin
          for i := 0 to lbxEstoque.Count - 1 do
            begin
              if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque +'                           '+lbxEstoque.Items[i]+ #13+#10;
               end;
              if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + lbxEstoque.Items[i]+ #13+#10;
               end;
          end;
     end
   else
    begin
      opcoesTipoEstoque:= 'Todos';
    End;
     end
   else
   begin
     opcoesTipoEstoque:= 'Todos';
   end;

  // CFOP ----------------------------------------------------------------------
  xCondCfop := '';
  if lbxCfop.Count > 0 then
     begin
      if lbxCfopDisp.Count > 0 then
        begin
          for i := 0 to lbxCfop.Count - 1 do
            begin
              if xCondCfop <> '' then
                 begin
                 xCondCfop :=
                 xCondCfop + ',' +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop +'                           '+copy(lbxCfop.Items[i],1,60)+ #13+#10;
               end;
             if xCondCfop = '' then
               begin
                 xCondCfop :=
                 xCondCfop +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop + copy(lbxCfop.Items[i],1,60)+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCfop:= 'Todos';
    End;
     end
  else
    begin
      opcoesCfop:= 'Todos';
    end;

  // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';
  if lbxPagamento.Count > 0 then
     begin
      if lbxPagamentoDisp.Count > 0 then
        begin
          for i := 0 to lbxPagamento.Count - 1 do
            begin
              if xCondCondicaoPagamento <> '' then
                 begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento + ',' +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento +'                           '+lbxPagamento.Items[i]+ #13+#10;
                 end;
              if xCondCondicaoPagamento = '' then
                 begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento + lbxPagamento.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesFormaPagamento:= 'Todos';
    End;
     end
  else
    begin
      opcoesFormaPagamento:= 'Todos';
    end;

  // Vendedores ----------------------------------------------------------------
 xCondVendedor := '';
  if lbxVendedor.Count > 0 then
     begin
       for i := 0 to lbxVendedor.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                           '+lbxVendedor.Items[i]+ #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lbxVendedor.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor:= 'Todos';
    end;

  // CST ICMS ---------------------------------------------------------
   xCondIcms := '';
  if lbxIcms.Count > 0 then
     begin
      if lbxIcmsDisp.Count > 0 then
        begin
          for i := 0 to lbxIcms.Count - 1 do
            begin
              if xCondIcms <> '' then
                 begin
                    if pos('0',lbxicms.Items[i])= 1 then
                      begin
                        xCondIcms :=
                            xCondIcms + ',' +''''+trim(copy(lbxIcms.Items[i],2,2))+'''';
                        opcoesIcms :=
                                  opcoesIcms +'                           '+lbxIcms.Items[i]+ #13+#10;
                      end
                    else
                      begin
                        xCondIcms :=
                              xCondIcms + ',' +''''+trim(copy(lbxIcms.Items[i],1,3))+'''';
                        opcoesIcms :=
                              opcoesIcms +'                           '+lbxIcms.Items[i]+ #13+#10;
                      end;
                 end;
              if xCondIcms = '' then
                 begin
                    if pos('0',lbxicms.Items[i])= 1 then
                      begin
                        xCondIcms :=
                             xCondIcms +''''+trim(copy(lbxIcms.Items[i],2,2))+'''';
                        opcoesIcms :=
                             opcoesIcms + lbxIcms.Items[i]+ #13+#10;
                      end
                    else
                    begin
                 xCondIcms :=
                 xCondIcms +''''+trim(copy(lbxIcms.Items[i],1,3))+'''';
                 opcoesIcms :=
                 opcoesIcms + lbxIcms.Items[i]+ #13+#10;
                    end;
                 end;
          end;
     end
  else
    begin
      opcoesIcms:= 'Todos';
    End;
     end
  else
    begin
      opcoesIcms:= 'Todos';
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
                 opcoesFornecedor +'                           '+lbxFornecedor.Items[i]+ #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lbxFornecedor.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesFornecedor:= 'Todos';
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período..................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa..................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor...............: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque..........: ' + opcoesTipoEstoque+#13+#10;
   xOpcoes := xOpcoes + 'CFOP.....................: ' + opcoesCfop+#13+#10;
   xOpcoes := xOpcoes + 'Condições de Pagamento...: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor.................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Perfil do Cliente........: ' + opcoesIcms+#13+#10;
end;
function TestarCampos(deInicial,deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;
var
mens: String;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  if EmpresaSel.Count = 0 then
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
