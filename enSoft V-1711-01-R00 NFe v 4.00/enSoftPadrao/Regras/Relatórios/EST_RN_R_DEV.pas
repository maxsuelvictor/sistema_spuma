unit EST_RN_R_DEV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes, xCondEmpresa, xcondItens, xcondCor, xcondTamanho, xCondFornecedor: string;

procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxItem,lbxFornecedor:TListBox;
                    deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxItem,lbxFornecedor:TListBox; deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;lbxEmpresas:TListBox): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, EST_UN_R_DEV;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxItem,lbxFornecedor:TListBox;
                    deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2:TfrxReport);
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
       ShowMessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;
   xcondCor := '';
   xcondTamanho := '';

   PreencherCondicao(lbxEmpresas,lbxItem,lbxFornecedor,deInicial,deFinal);

   EST_FM_R_DEV.FAT_CD_R_DEV_FOR.Active:= False;
   EST_FM_R_DEV.FAT_CD_R_DEV_FOR.Close;
   EST_FM_R_DEV.FAT_CD_R_DEV_FOR.Data :=
   EST_FM_R_DEV.FAT_CD_R_DEV_FOR.DataRequest(
        VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin, xCondEmpresa, xcondItens, xcondCor, xcondTamanho, xCondFornecedor]));

  if not EST_FM_R_DEV.FAT_CD_R_DEV_FOR.IsEmpty then
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
             FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
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
             dmGeral.BusCodigoRevListMestre(true,false,FastReport2.Name,xCodLme,xRevLme,nil);
             Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
             Fastreport2.PrepareReport();
             Fastreport2.ShowReport();
          end;
      end
  else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure PreencherCondicao(lbxEmpresas,lbxItem,lbxFornecedor:TListBox; deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesItens,opcoesFornecedor:string;
begin

  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  opcoesEmpresa := '';
  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                 '+lbxEmpresas.Items[i] + #13+#10;
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
  // Itens --------------------------------------------------------------------
  xCondItens := '';
  opcoesItens := '';
  if lbxItem.Count > 0 then
     begin
       for i := 0 to lbxItem.Count - 1 do
          begin
            if xCondItens <> '' then
               begin
                 xCondItens :=
                 xCondItens + ',' +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
                 opcoesItens :=
                 opcoesItens +'                 '+lbxItem.Items[i] + #13+#10;
               end;
            if xCondItens = '' then
               begin
                 xCondItens :=
                 xCondItens +''''+ trim(copy(lbxItem.Items[i],1,6))+'''';
                 opcoesItens :=
                 opcoesItens + lbxItem.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesItens := 'Todos';
     end;


 // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  opcoesFornecedor := '';
  if lbxFornecedor.Count > 0 then
     begin
       for i := 0 to lbxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                 '+lbxFornecedor.Items[i] + #13+#10;
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

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Itens..........: ' + opcoesItens+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedores...: ' + opcoesFornecedor+#13+#10;
  end;

function TestarCampos(deInicial,deFinal:TJvDateEdit;lbxEmpresas:TListBox): Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;

  if lbxEmpresas.Count = 0 then
    begin
      ShowMessage('É necessário selecionar pelo menos uma empresa.');
      result := False;
    end;
end;

end.
