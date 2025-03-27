unit FAT_RN_R_RET;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondEmpresa,xCondTipoEstoque,xCondCfop,xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,xCondFornecedor: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;chbExibirCliente:TCheckBox;
                    Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,Fastreport6:TfrxReport;
                    TipoCusto:Integer);
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit; TipoCusto: integer);
function TestarCampos(deInicial,deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_RET;


procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp:TListBox;
                    deInicial,deFinal:TJvDateEdit;chbExibirCliente:TCheckBox;
                    Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,Fastreport6:TfrxReport; TipoCusto:Integer);

var
  rDtaIni, rDtaFin, PathImg,rExibirCliente: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   if chbExibirCliente.Checked then
     rExibirCliente:= '1'
   else
      rExibirCliente:= '0';

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                     lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,
                     deInicial,deFinal,TipoCusto);

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Cliente') then
      begin
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Data :=
           FAT_FM_R_RET.FAT_CD_R_RET_CLI.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,lbxRelatorios.ItemIndex,TipoCusto]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Item') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Por Nota/Item')  then
      begin
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Data :=
           FAT_FM_R_RET.FAT_CD_R_RET_ITE.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,1,TipoCusto, rExibirCliente]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Fornecedor') then
      begin
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Data :=
           FAT_FM_R_RET.FAT_CD_R_RET_FOR.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,lbxRelatorios.ItemIndex,TipoCusto, rExibirCliente]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Grupo') then
      begin
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Data :=
           FAT_FM_R_RET.FAT_CD_R_RET_GRU.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,lbxRelatorios.ItemIndex,TipoCusto, rExibirCliente]));
      end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Vendedor') then
      begin
        FAT_FM_R_RET.FAT_CD_R_RET_ITE.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_CLI.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_FOR.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_GRU.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Close;
        FAT_FM_R_RET.FAT_CD_R_RET_VND.Data :=
           FAT_FM_R_RET.FAT_CD_R_RET_VND.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,lbxRelatorios.ItemIndex,TipoCusto, rExibirCliente]));
      end;

   if (not FAT_FM_R_RET.FAT_CD_R_RET_ITE.IsEmpty) or (not FAT_FM_R_RET.FAT_CD_R_RET_CLI.IsEmpty) or
      (not FAT_FM_R_RET.FAT_CD_R_RET_FOR.IsEmpty) or (not FAT_FM_R_RET.FAT_CD_R_RET_GRU.IsEmpty) or
      (not FAT_FM_R_RET.FAT_CD_R_RET_VND.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Cliente' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_CLI.Name,xCodLme,xRevLme,nil);
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Item' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_ITE.Name,xCodLme,xRevLme,nil);

            if chbExibirCliente.Checked = true then
              begin
                 TfrxGroupHeader (fastreport2.FindComponent('GroupHeader1')).Visible:= true;
                 TfrxGroupFooter (fastreport2.FindComponent('GroupFooter1')).Visible:= true;
              end
            else
              begin
                 TfrxGroupHeader (fastreport2.FindComponent('GroupHeader1')).Visible:= false;
                 TfrxGroupFooter (fastreport2.FindComponent('GroupFooter1')).Visible:= false;
              end;

            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Fornecedor' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_FOR.Name,xCodLme,xRevLme,nil);

            if chbExibirCliente.Checked = true then
              begin
                 TfrxGroupHeader (fastreport3.FindComponent('GroupHeader1')).Visible:= true;
                 TfrxGroupFooter (fastreport3.FindComponent('GroupFooter1')).Visible:= true;
              end
            else
              begin
                 TfrxGroupHeader (fastreport3.FindComponent('GroupHeader1')).Visible:= false;
                 TfrxGroupFooter (fastreport3.FindComponent('GroupFooter1')).Visible:= false;
              end;


            Fastreport3.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport3.PrepareReport();
            Fastreport3.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Grupo' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_GRU.Name,xCodLme,xRevLme,nil);

            if chbExibirCliente.Checked = true then
              begin
                 TfrxGroupHeader (fastreport4.FindComponent('GroupHeader1')).Visible:= true;
                 TfrxGroupFooter (fastreport4.FindComponent('GroupFooter1')).Visible:= true;
              end
            else
              begin
                 TfrxGroupHeader (fastreport4.FindComponent('GroupHeader1')).Visible:= false;
                 TfrxGroupFooter (fastreport4.FindComponent('GroupFooter1')).Visible:= false;
              end;


            Fastreport4.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport4.PrepareReport();
            Fastreport4.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Vendedor' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport5.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_VND.Name,xCodLme,xRevLme,nil);

            if chbExibirCliente.Checked = true then
              begin
                 TfrxGroupHeader (fastreport5.FindComponent('GroupHeader1')).Visible:= true;
                 TfrxGroupFooter (fastreport5.FindComponent('GroupFooter1')).Visible:= true;
              end
            else
              begin
                 TfrxGroupHeader (fastreport5.FindComponent('GroupHeader1')).Visible:= false;
                 TfrxGroupFooter (fastreport5.FindComponent('GroupFooter1')).Visible:= false;
              end;


            Fastreport5.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport5.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport5.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport5.PrepareReport();
            Fastreport5.ShowReport();
          end;

         if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Por Nota/Item' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport6.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_R_RET.FAT_CD_R_RET_ITE.Name,xCodLme,xRevLme,nil);
            FAT_FM_R_RET.FAT_CD_R_RET_ITE.IndexFieldNames := 'int_nomeite;numero';
            Fastreport6.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport6.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport6.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport6.PrepareReport();
            Fastreport6.ShowReport();
          end;

      end
   else
   begin
     ShowMessage('Nenhum registro foi encontrado.');
   end;

end;
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp:TListBox;
                            deInicial,deFinal:TJvDateEdit; TipoCusto: integer);
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesTipoEstoque,opcoesCfop,
  opcoesCondicaoPagamento,opcoesVendedor,opcoesPerfilCliente,opcoesTipoCusto:string;
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

  // Perfil do Cliente ---------------------------------------------------------
 xCondPerfilCliente := '';
  if lbxCliente.Count > 0 then
     begin
      if lbxClienteDisp.Count > 0 then
        begin
          for i := 0 to lbxCliente.Count - 1 do
            begin
              if xCondPerfilCliente <> '' then
                 begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente + ',' +''''+trim(copy(lbxCliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente +'                           '+lbxCliente.Items[i]+ #13+#10;
                 end;
              if xCondPerfilCliente = '' then
                 begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente +''''+trim(copy(lbxCliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente + lbxCliente.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesPerfilCliente:= 'Todos';
    end;
     end
  else
    begin
      opcoesPerfilCliente:= 'Todos';
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

   if TipoCusto = 0 then
      opcoesTipoCusto := 'Valor custo na NF'
   else
      if TipoCusto = 1 then
         opcoesTipoCusto := 'Valor custo última compra';


  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período..................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa..................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor...............: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque..........: ' + opcoesTipoEstoque+#13+#10;
   xOpcoes := xOpcoes + 'CFOP.....................: ' + opcoesCfop+#13+#10;
   xOpcoes := xOpcoes + 'Condições de Pagamento...: ' + opcoesCondicaoPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor.................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Perfil do Cliente........: ' + opcoesPerfilCliente+#13+#10;
   xOpcoes := xOpcoes + 'Tipo custo...............: ' + opcoesTipoCusto+#13+#10;
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
