unit FAT_RN_R_ABC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondEmpresa,xcondItens,xcondCor,xcondTamanho,xCondFornecedor,xCondTipoEstoque,xCondCfop,xCondCondicaoPagamento,
xCondVendedor,xCondPerfilCliente,xCondGrupo: string;

procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxcfop,lbxpagamento,lbxvenda,lbxcliente,lbxfornecedor,lbxGrupo:TListBox;
                    deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:Tedit;
                    Fastreport1,Fastreport2,Fastreport3:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxcfop,lbxpagamento,lbxvenda,lbxcliente,lbxfornecedor,lbxGrupo:TListBox;
                            deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:Tedit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:TEdit): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_ABC;

procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxcfop,lbxpagamento,lbxvenda,lbxcliente,lbxfornecedor,lbxGrupo:TListBox;
                    deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:Tedit;
                    Fastreport1,Fastreport2,Fastreport3:TfrxReport);
var
  rDtaIni, rDtaFin, rOrdenacao, rFaixaA, rFaixaB, rFaixaC, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
    end;

  // Período
    rDtaIni := deInicial.Text;
    rDtaFin := deFinal.Text;

  // Faixas
    rFaixaA := txtFaixaA.Text;
    rFaixaB := txtFaixaB.Text;
    rFaixaC := txtFaixaC.Text;

  PreencherCondicao(lbxEmpresas,lbxEstoque,lbxcfop,lbxpagamento,lbxvenda,lbxcliente,lbxfornecedor,lbxGrupo,
                            deInicial,deFinal,txtFaixaA,txtFaixaB,txtFaixaC);

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Cliente' then
    begin
       FAT_FM_R_ABC.FAT_CD_R_ABC_CLI.Close;
       FAT_FM_R_ABC.FAT_CD_R_ABC_CLI.Data :=
          FAT_FM_R_ABC.FAT_CD_R_ABC_CLI.DataRequest(
              VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, rFaixaA, rFaixaB, rFaixaC, xCondTipoEstoque, xCondCfop,
              xCondCondicaoPagamento, xCondVendedor, xCondPerfilCliente, xCondFornecedor,xCondGrupo]));

      if not FAT_FM_R_ABC.FAT_CD_R_ABC_CLI.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,Fastreport1.Name,xCodLme,xRevLme,nil);
          Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport1.PrepareReport();
          Fastreport1.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;

 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor' then
    begin
      FAT_FM_R_ABC.FAT_CD_R_ABC_FOR.Close;
       FAT_FM_R_ABC.FAT_CD_R_ABC_FOR.Data :=
          FAT_FM_R_ABC.FAT_CD_R_ABC_FOR.DataRequest(
              VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, rFaixaA, rFaixaB, rFaixaC, xCondTipoEstoque, xCondCfop,
              xCondCondicaoPagamento, xCondVendedor, xCondPerfilCliente, xCondFornecedor,xCondGrupo]));

      if not FAT_FM_R_ABC.FAT_CD_R_ABC_FOR.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,Fastreport2.Name,xCodLme,xRevLme,nil);
          Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport2.PrepareReport();
          Fastreport2.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;

 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Grupo de Item' then
    begin
      FAT_FM_R_ABC.FAT_CD_R_ABC_GRU.Close;
       FAT_FM_R_ABC.FAT_CD_R_ABC_GRU.Data :=
          FAT_FM_R_ABC.FAT_CD_R_ABC_GRU.DataRequest(
              VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, rFaixaA, rFaixaB, rFaixaC, xCondTipoEstoque, xCondCfop,
              xCondCondicaoPagamento, xCondVendedor, xCondPerfilCliente, xCondFornecedor,xCondGrupo]));

       if not FAT_FM_R_ABC.FAT_CD_R_ABC_GRU.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,Fastreport3.Name,xCodLme,xRevLme,nil);
          Fastreport3.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FastReport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport3.PrepareReport();
          Fastreport3.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxcfop,lbxpagamento,lbxvenda,lbxcliente,lbxfornecedor,lbxGrupo:TListBox;
                            deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:Tedit);
var
  i: integer;
  Cond,opcoesEmpresa,opcoesTipoEstoque,opcoesCfop,opcoesCondicaoPagamento,
  opcoesVendedor,opcoesPerfilCliente,opcoesFornecedor,opcoesGrupo: String;
begin
  opcoesEmpresa := '';
  opcoesTipoEstoque := '';
  opcoesCfop := '';
  opcoesCondicaoPagamento := '';
  opcoesVendedor := '';
  opcoesPerfilCliente := '';
  opcoesFornecedor := '';

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
                 opcoesEmpresa +'                         '+lbxEmpresas.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lbxEmpresas.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesEmpresa := 'Todas';
    end;

  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lbxEstoque.Count > 0 then
     begin
       for i := 0 to lbxEstoque.Count - 1 do
          begin
            if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + '                         '+lbxEstoque.Items[i] + #13+#10;
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + lbxEstoque.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesTipoEstoque := 'Todos';
    end;

  // CFOP ----------------------------------------------------------------------
  xCondCfop := '';
  if lbxcfop.Count > 0 then
     begin
       for i := 0 to lbxcfop.Count - 1 do
          begin
            if xCondCfop <> '' then
               begin
                 xCondCfop :=
                 xCondCfop + ',' +''''+trim(copy(lbxcfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop + '                         '+lbxcfop.Items[i] + #13+#10;
               end;
            if xCondCfop = '' then
               begin
                 xCondCfop :=
                 xCondCfop +''''+trim(copy(lbxcfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop + lbxcfop.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCfop := 'Todos';
    end;

  // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';
  if lbxpagamento.Count > 0 then
     begin
       for i := 0 to lbxpagamento.Count - 1 do
          begin
            if xCondCondicaoPagamento <> '' then
               begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento + ',' +''''+trim(copy(lbxpagamento.Items[i],1,3))+'''';
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento + '                         '+lbxpagamento.Items[i] + #13+#10;
               end;
            if xCondCondicaoPagamento = '' then
               begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento +''''+trim(copy(lbxpagamento.Items[i],1,3))+'''';
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento + lbxpagamento.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCondicaoPagamento := 'Todos';
    end;

  // Vendedores ----------------------------------------------------------------
  xCondVendedor := '';
  if lbxvenda.Count > 0 then
     begin
       for i := 0 to lbxvenda.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lbxvenda.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + '                         '+lbxvenda.Items[i] + #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lbxvenda.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lbxvenda.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor := 'Todos';
    end;

  // Perfil do Cliente ---------------------------------------------------------
  xCondPerfilCliente := '';
  if lbxcliente.Count > 0 then
     begin
       for i := 0 to lbxcliente.Count - 1 do
          begin
            if xCondPerfilCliente <> '' then
               begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente + ',' +''''+trim(copy(lbxcliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente + '                         '+lbxcliente.Items[i] + #13+#10;
               end;
            if xCondPerfilCliente = '' then
               begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente +''''+trim(copy(lbxcliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente + lbxcliente.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesPerfilCliente := 'Todos';
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
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,3))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + '                         '+lbxFornecedor.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,3))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lbxFornecedor.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesFornecedor := 'Todos';
    end;

   // Grupo -----------------------------------------------------
  xCondGrupo := '';
  if lbxGrupo.Count > 0 then
     begin
       for i := 0 to lbxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +trim(copy(lbxGrupo.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo + '                         '+lbxGrupo.Items[i] + #13+#10;
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +trim(copy(lbxGrupo.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo + lbxGrupo.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesGrupo := 'Todos';
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Faixa A................: ' + txtFaixaA.Text + #13+#10;
   xOpcoes := xOpcoes + 'Faixa B................: ' + txtFaixaB.Text + #13+#10;
   xOpcoes := xOpcoes + 'Faixa C................: ' + txtFaixaC.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque........: ' + opcoesTipoEstoque+#13+#10;
   xOpcoes := xOpcoes + 'CFOP...................: ' + opcoesCfop+#13+#10;
   xOpcoes := xOpcoes + 'Condições de Pagamento.: ' + opcoesCondicaoPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor...............: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Perfil Cliente.........: ' + opcoesPerfilCliente+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor.............: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Grupo..................: ' + opcoesGrupo+#13+#10;
end;

function TestarCampos(deInicial,deFinal:TJvDateEdit;txtFaixaA,txtFaixaB,txtFaixaC:TEdit): Boolean;
var
  mens,valorFaixa: String;
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
  {if (txtfaixaB.Text = '0') or (txtfaixaB.Text = '') then
    begin
      mens := mens +  '.Faixa B" dever ser preenchida.'+ #13;
    end;
  if (txtfaixaA.Text = '0') or (txtfaixaA.Text = '') then
    begin
      mens := mens +  '.Faixa A" dever ser preenchida.'+ #13;
    end;
  if (txtfaixaC.Text = '0') or (txtfaixaC.Text = '') then
    begin
      mens := mens +  '.Faixa C" dever ser preenchida.'+ #13;
    end;}

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

    if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        Result := False;
        exit;
      end;
end;

end.
