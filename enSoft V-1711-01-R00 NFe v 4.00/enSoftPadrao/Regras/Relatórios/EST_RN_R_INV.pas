unit EST_RN_R_INV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes, xCondEmpresa, xCondGrupo, xCondFornecedor: string;

procedure ExibirRel(lbxRelatorios,lbxGrupo,lbxFornecedor:TListBox;dpkDataBase:TJvDateEdit; cbbEstoque,cbbTipoCusto:Tcombobox;
                    Fastreport1,Fastreport2,Fastreport3,Fastreport4:TfrxReport);
procedure PreencherCondicao(lbxGrupo,lbxFornecedor:TListBox; dpkDataBase:TJvDateEdit);
function TestarCampos(dpkDataBase:TJvDateEdit): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, EST_UN_R_INV;

procedure ExibirRel(lbxRelatorios,lbxGrupo,lbxFornecedor:TListBox;
                   dpkDataBase:TJvDateEdit; cbbEstoque,cbbTipoCusto:Tcombobox; Fastreport1,Fastreport2,Fastreport3,Fastreport4:TfrxReport);
var
  rDtaBase, rEstoque,lbxEmpresa, PathImg, rInativo: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   // Empresa
   lbxEmpresa := dmgeral.CAD_CD_C_PARid_empresa.Text;

   rInativo := '';

   // Data
   rDtaBase := dpkDataBase.Text;

   // Estoque
   if cbbEstoque.ItemIndex = 0 then
   begin
     rEstoque := '';
   end
else
  begin
    rEstoque := IntToStr(cbbEstoque.ItemIndex);
  end;

  if EST_FM_R_INV.cbbInativos.ItemIndex = 0  then
    begin
      rInativo := '';
    end
  else
    begin
      rInativo := IntToStr(EST_FM_R_INV.cbbInativos.ItemIndex);
    end;

   PreencherCondicao(lbxGrupo,lbxFornecedor,dpkDataBase);

   EST_FM_R_INV.EST_CD_R_INV.Close;
   EST_FM_R_INV.EST_CD_R_INV.Data :=
           EST_FM_R_INV.EST_CD_R_INV.DataRequest(
                   VarArrayOf([lbxRelatorios.ItemIndex, lbxEmpresa, rDtaBase, rEstoque, xCondGrupo, xCondFornecedor,rInativo,cbbTipoCusto.ItemIndex]));

  if not EST_FM_R_INV.EST_CD_R_INV.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            FastReport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Grupo' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            FastReport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport2.PrepareReport();
            FastReport2.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Locação' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport3.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            FastReport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport3.PrepareReport();
            FastReport3.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Fornecedor' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            FastReport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport4.PrepareReport();
            FastReport4.ShowReport();
          end;

      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure PreencherCondicao(lbxGrupo,lbxFornecedor:TListBox; dpkDataBase:TJvDateEdit);
var
  i: integer;
  Cond,opcoesGrupo,opcoesFornecedor: String;
begin

  // Grupo ---------------------------------------------------------------------
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
                 opcoesGrupo +'                 '+lbxGrupo.Items[i] + #13+#10;
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
                 opcoesFornecedor +'                 '+lbxFornecedor.Items[i] + #13+#10;
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

  //Opções ---------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Período........: ' + dpkDataBase.Text + #13+#10;
  xOpcoes := xOpcoes + 'Fornecedor.....: ' + opcoesFornecedor+#13+#10;
  xOpcoes := xOpcoes + 'Grupo..........: ' + opcoesGrupo+#13+#10;
  //xOpcoes := xOpcoes + 'Faixa A........: ' + cbbEstoque.Text + #13+#10;
end;

function TestarCampos(dpkDataBase:TJvDateEdit): Boolean;
begin
  result := True;

  if (dpkDataBase.Text = '  /  /    ') then
    begin
      ShowMessage('A dasa base deve ser preenchida.');
      result := False;
    end;
end;
end.
