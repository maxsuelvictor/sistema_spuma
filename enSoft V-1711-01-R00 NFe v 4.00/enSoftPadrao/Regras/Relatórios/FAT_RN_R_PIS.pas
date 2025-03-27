unit FAT_RN_R_PIS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondEmpresa,xCondTipoEstoque,xCondCfop,xCondCondicaoPagamento,xCondVendedor,xCondPisCofins,xCondFornecedor: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxPisCofins,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxPisCofinsDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;Fastreport1,Fastreport2,Fastreport3:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxPisCofins,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxPisCofinsDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_PIS;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxPisCofins,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxPisCofinsDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;Fastreport1,Fastreport2,Fastreport3:TfrxReport);
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxPisCofins,lbxFornecedor,
                     lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxPisCofinsDisp,
                     deInicial,deFinal);

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Produto')then
      begin
        FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.Data :=
           FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPisCofins,
                               xCondFornecedor,lbxRelatorios.ItemIndex]));

        if (not FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Produto' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport1.Name,xCodLme,xRevLme,nil);
            Fastreport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;
      end;
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por CST')then
      begin
        FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.Data :=
           FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPisCofins,
                               xCondFornecedor,lbxRelatorios.ItemIndex]));

        if (not FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por CST' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport2.Name,xCodLme,xRevLme,nil);
            Fastreport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;
      end;
      end;


   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Nota Fiscal')then
      begin
        FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_NFL.Close;
        FAT_FM_R_PIS.FAT_CD_R_PIS_NFL.Data :=
           FAT_FM_R_PIS.FAT_CD_R_PIS_NFL.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPisCofins,
                               xCondFornecedor,lbxRelatorios.ItemIndex]));

        if (not FAT_FM_R_PIS.FAT_CD_R_PIS_NFL.IsEmpty) then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Nota Fiscal' then
              begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,Fastreport3.Name,xCodLme,xRevLme,nil);
                Fastreport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                Fastreport3.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
                Fastreport3.PrepareReport();
                Fastreport3.ShowReport();
              end;
          end;
      end;

   if (FAT_FM_R_PIS.FAT_CD_R_PIS_CIP.IsEmpty) and (FAT_FM_R_PIS.FAT_CD_R_PIS_ITE.IsEmpty) and (FAT_FM_R_PIS.FAT_CD_R_PIS_NFL.IsEmpty) then
      ShowMessage('Nenhum registro foi encontrado.');
      end;


procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxPisCofins,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxPisCofinsDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesTipoEstoque,opcoesCfop,
  opcoesCondicaoPagamento,opcoesVendedor,opcoesPisCofins:string;
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
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento +'                           '+lbxPagamento.Items[i]+ #13+#10;
                 end;
              if xCondCondicaoPagamento = '' then
                 begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento + lbxPagamento.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesCondicaoPagamento:= 'Todos';
    End;
     end
  else
    begin
      opcoesCondicaoPagamento:= 'Todos';
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

  // Pis/Cofins ---------------------------------------------------------
  xCondPisCofins := '';
  if lbxPisCofins.Count > 0 then
     begin
      if lbxPisCofins.Count > 0 then
        begin
          for i := 0 to lbxPisCofins.Count - 1 do
            begin
              if xCondPisCofins <> '' then
                 begin
                 xCondPisCofins :=
                 xCondPisCofins + ',' +''''+trim(copy(lbxPisCofins.Items[i],1,2))+'''';
                 opcoesPisCofins :=
                 opcoesPisCofins +'                           '+lbxPisCofins.Items[i]+ #13+#10;
                 end;
              if xCondPisCofins = '' then
                 begin
                 xCondPisCofins :=
                 xCondPisCofins +''''+trim(copy(lbxPisCofins.Items[i],1,2))+'''';
                 opcoesPisCofins :=
                 opcoesPisCofins + lbxPisCofins.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesPisCofins:= 'Todos';
    end;
     end
  else
    begin
      opcoesPisCofins:= 'Todos';
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
   xOpcoes := xOpcoes + 'Condições de Pagamento...: ' + opcoesCondicaoPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor.................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Pis/Cofins........: ' + opcoesPisCofins+#13+#10;
end;

function TestarCampos(deInicial , deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;
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
