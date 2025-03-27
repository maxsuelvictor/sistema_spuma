unit FIN_RN_R_PAG;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
      xOpcoes, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxPagamento,lbxTitulo,lbxConta,lbxCusto:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbPorData,cbbOrdenacao:TComboBox;
                    Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,Fastreport6,Fastreport7:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxPagamento,lbxTitulo,lbxConta,lbxCusto:TListBox;
                            cbbPorData,cbbOrdenacao:TComboBox;deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, FIN_UN_R_PAG;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxPagamento,lbxTitulo,lbxConta,lbxCusto:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbPorData,cbbOrdenacao:TComboBox;
                    Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,Fastreport6,Fastreport7:TfrxReport);
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Por Data de Emissão / Vencimento
   rTipoData := copy(cbbPorData.Text,1,1);

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxPagamento,lbxTitulo,lbxConta,lbxCusto,cbbPorData,cbbOrdenacao,deInicial,deFinal);

   FIN_FM_R_PAG.FIN_CD_R_PAG_ABE.Active:= False;
   FIN_FM_R_PAG.FIN_CD_R_PAG_ABE.Close;
   FIN_FM_R_PAG.FIN_CD_R_PAG_ABE.Data :=
           FIN_FM_R_PAG.FIN_CD_R_PAG_ABE.DataRequest(
                VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                            xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto, rOrdenacao, lbxRelatorios.ItemIndex]));

   if not FIN_FM_R_PAG.FIN_CD_R_PAG_ABE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport1.Name,xCodLme,xRevLme,nil);
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport2.Name,xCodLme,xRevLme,nil);
            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
             Fastreport2.PrepareReport();
             Fastreport2.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa3'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport3.Name,xCodLme,xRevLme,nil);
            Fastreport3.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
             Fastreport3.PrepareReport();
             Fastreport3.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport4.FindObject('imgEmpresa4'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport4.Name,xCodLme,xRevLme,nil);
            Fastreport4.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             Fastreport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
             Fastreport4.PrepareReport();
             Fastreport4.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Faixa de Vencimento' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport5.FindObject('imgEmpresa5'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport5.Name,xCodLme,xRevLme,nil);
            Fastreport5.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport5.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport5.PrepareReport();
            Fastreport5.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport6.FindObject('imgEmpresa6'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport6.Name,xCodLme,xRevLme,nil);
            Fastreport6.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport6.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport6.PrepareReport();
            Fastreport6.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport7.FindObject('imgEmpresa7'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport7.Name,xCodLme,xRevLme,nil);
            Fastreport7.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport7.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport7.PrepareReport();
            Fastreport7.ShowReport();
           end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxPagamento,lbxTitulo,lbxConta,lbxCusto:TListBox;
                            cbbPorData,cbbOrdenacao:TComboBox;deInicial,deFinal:TJvDateEdit);
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

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lbxFornecedor.Count > 0 then
     begin
       for i := 0 to lbxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,4))+'''';
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,4))+'''';
               end;
          end;
     end;

  // Formas de Pagamento ----------------------------------------------------------------
  xCondFormaPagamento := '';
  if lbxPagamento.Count > 0 then
     begin
       for i := 0 to lbxPagamento.Count - 1 do
          begin
            if xCondFormaPagamento <> '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento + ',' +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
               end;
            if xCondFormaPagamento = '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento + ',' +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Locais de Títulos ---------------------------------------------------------
  xCondLocalTitulo := '';
  if lbxTitulo.Count > 0 then
     begin
       for i := 0 to lbxTitulo.Count - 1 do
          begin
            if xCondLocalTitulo <> '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo + ',' +''''+trim(copy(lbxTitulo.Items[i],1,3))+'''';
               end;
            if xCondLocalTitulo = '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo + ',' +''''+trim(copy(lbxTitulo.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Planos de Contas ----------------------------------------------------------
  xCondPlanoContas := '';
  if lbxConta.Count > 0 then
     begin
       for i := 0 to lbxConta.Count - 1 do
          begin
            if xCondPlanoContas <> '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lbxConta.Items[i],1,9))+'''';
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lbxConta.Items[i],1,9))+'''';
               end;
          end;
     end;

  // Centros de Custos ---------------------------------------------------------
  xCondCentroCusto := '';
  if lbxCusto.Count > 0 then
     begin
       for i := 0 to lbxCusto.Count - 1 do
          begin
            if xCondCentroCusto <> '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto + ',' +''''+trim(copy(lbxCusto.Items[i],1,3))+'''';
               end;
            if xCondCentroCusto = '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto + ',' +''''+trim(copy(lbxCusto.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Por data de....: ' + cbbPorData.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação......: ' + cbbOrdenacao.Text + #13+#10;
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
