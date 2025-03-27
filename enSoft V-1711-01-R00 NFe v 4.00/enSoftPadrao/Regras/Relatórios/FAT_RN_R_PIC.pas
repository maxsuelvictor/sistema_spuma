unit FAT_RN_R_PIC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
      xOpcoes, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
      xCondVendedor, xCondIcms, xCondFornecedor: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor:TListBox;
                    deInicial,deFinal:TJvDateEdit;Fastreport1,Fastreport2,Fastreport3:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor:TListBox;
                            deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor:TListBox;
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

   PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor,deInicial,deFinal);

   {dmGeral.CAD_CD_R_ITE.Close;
   dmGeral.CAD_CD_R_ITE.Data :=
           dmGeral.CAD_CD_R_ITE.DataRequest(
                   VarArrayOf([rDtaIni, rDtaFin, xCond, xCond, xCond, xCond, xCond, xCond, xCond, xCond]));}

   if not dmGeral.CAD_CD_R_ITE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por CST' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por CST' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Produto' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

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
procedure PreencherCondicao(lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxIcms,lbxFornecedor:TListBox;
                            deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  Cond: String;
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
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
               end;
          end;
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
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
               end;
          end;
     end;

  // CFOP ----------------------------------------------------------------------
  xCondCfop := '';
  if lbxCfop.Count > 0 then
     begin
       for i := 0 to lbxCfop.Count - 1 do
          begin
            if xCondCfop <> '' then
               begin
                 xCondCfop :=
                 xCondCfop + ',' +''''+trim(copy(lbxCfop.Items[i],1,3))+'''';
               end;
            if xCondCfop = '' then
               begin
                 xCondCfop :=
                 xCondCfop +''''+trim(copy(lbxCfop.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';
  if lbxPagamento.Count > 0 then
     begin
       for i := 0 to lbxPagamento.Count - 1 do
          begin
            if xCondCondicaoPagamento <> '' then
               begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento + ',' +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
               end;
            if xCondCondicaoPagamento = '' then
               begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
               end;
          end;
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
                 xCondVendedor + ',' +''''+trim(copy(lbxVendedor.Items[i],1,3))+'''';
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lbxVendedor.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Perfil do Cliente ---------------------------------------------------------
  xCondIcms := '';
  if lbxIcms.Count > 0 then
     begin
       for i := 0 to lbxIcms.Count - 1 do
          begin
            if xCondIcms <> '' then
               begin
                 xCondIcms :=
                 xCondIcms + ',' +''''+trim(copy(lbxIcms.Items[i],1,9))+'''';
               end;
            if xCondIcms = '' then
               begin
                 xCondIcms :=
                 xCondIcms +''''+trim(copy(lbxIcms.Items[i],1,9))+'''';
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
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
end;
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;
end;
end.
