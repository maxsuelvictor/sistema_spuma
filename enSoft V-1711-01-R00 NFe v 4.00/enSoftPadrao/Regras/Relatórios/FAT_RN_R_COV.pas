unit FAT_RN_R_COV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
 var
      xOpcoes, xCondEmpresa,xCondVendedor,xCondFornecedor,xCondItem: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxVendedor,lbxFornecedor,lbxItem:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbTipoCmv:TComboBox;Fastreport1,Fastreport2,
                    Fastreport3,Fastreport4:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxVendedor,lbxFornecedor,lbxItem:TListBox;
                            deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;cbbTipoCmv:TComboBox;lboxEmpresaSelecionada:TListBox): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_COV;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxVendedor,lbxFornecedor,lbxItem:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbTipoCmv:TComboBox;Fastreport1,Fastreport2,Fastreport3,
                    Fastreport4:TfrxReport);
var
   rDtaIni, rDtaFin,PathImg: String;
   rTipoCmv:integer;
   LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
         exit;
      end;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   rTipoCmv := StrToInt(copy(cbbTipoCmv.Items[cbbTipoCmv.ItemIndex],1,1));

   PreencherCondicao(lbxEmpresas,lbxVendedor,lbxFornecedor,lbxItem,deInicial,deFinal);

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Faturamento' then
     begin

      if rTipoCmv in [0] then
        begin
           FAT_FM_R_COV.FAT_CD_R_COV_FAT.Close;
           FAT_FM_R_COV.FAT_CD_R_COV_FAT.Data :=
                   FAT_FM_R_COV.FAT_CD_R_COV_FAT.DataRequest(
                           VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin,'', xCondEmpresa, xCondVendedor,xCondFornecedor,xCondItem]));

           if not FAT_FM_R_COV.FAT_CD_R_COV_FAT.IsEmpty then
             begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

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
             end
           else
             begin
               ShowMessage('Nenhum registro foi encontrado.');
             end;
        end;

      if rTipoCmv in [1] then
        begin
           FAT_FM_R_COV.FAT_CD_R_COV_FAT_ITE.Close;
           FAT_FM_R_COV.FAT_CD_R_COV_FAT_ITE.Data :=
                   FAT_FM_R_COV.FAT_CD_R_COV_FAT_ITE.DataRequest(
                           VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, xCondEmpresa, xCondVendedor,xCondFornecedor,xCondItem]));

           if not FAT_FM_R_COV.FAT_CD_R_COV_FAT_ITE.IsEmpty then
             begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

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
             end
           else
             begin
               ShowMessage('Nenhum registro foi encontrado.');
             end;
        end;


      if rTipoCmv in [2] then
        begin
           FAT_FM_R_COV.FAT_CD_R_COV_FAT_PED.Close;
           FAT_FM_R_COV.FAT_CD_R_COV_FAT_PED.Data :=
                   FAT_FM_R_COV.FAT_CD_R_COV_FAT_PED.DataRequest(
                           VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, xCondEmpresa, xCondVendedor]));

           if not FAT_FM_R_COV.FAT_CD_R_COV_FAT_PED.IsEmpty then
             begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

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
             end
           else
             begin
               ShowMessage('Nenhum registro foi encontrado.');
             end;
        end;

    end;

    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Recebimento' then
       begin
          FAT_FM_R_COV.FAT_CD_R_COV_REC.Close;
           FAT_FM_R_COV.FAT_CD_R_COV_REC.Data :=
               FAT_FM_R_COV.FAT_CD_R_COV_REC.DataRequest(
                       VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, xCondEmpresa, xCondVendedor,xCondFornecedor,xCondItem]));

          if not FAT_FM_R_COV.FAT_CD_R_COV_REC.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';


              if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
              FastReport4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              Fastreport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
              Fastreport4.PrepareReport();
              Fastreport4.ShowReport();
            end
          else
            begin
              ShowMessage('Nenhum registro foi encontrado.');
            end;
       end;

end;
procedure PreencherCondicao(lbxEmpresas,lbxVendedor,lbxFornecedor,lbxItem:TListBox;
                            deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  Cond,opcoesVendedor,opcoesEmpresa,opcoesFornecedor,opcoesItem: String;
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

  // Vendedores ----------------------------------------------------------------
  xCondVendedor := '';
  opcoesVendedor := 'Todos';
  if lbxVendedor.Count > 0 then
     begin
       opcoesVendedor := '';
       for i := 0 to lbxVendedor.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                 '+lbxVendedor.Items[i] + #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lbxVendedor.Items[i] + #13+#10;
               end;
          end;
     end;


   // Fornecedor ----------------------------------------------------------------
  xCondFornecedor := '';
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean = false) then
    begin
      opcoesFornecedor := 'Todos';
      if lbxFornecedor.Count > 0 then
         begin
           opcoesFornecedor := '';
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
         end;
    end;

    // Item ----------------------------------------------------------------
  xCondItem := '';
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean = false) then
    begin
      opcoesItem := 'Todos';
      if lbxItem.Count > 0 then
         begin
           opcoesItem := '';
           for i := 0 to lbxItem.Count - 1 do
              begin
                if xCondItem <> '' then
                   begin
                     xCondItem :=
                     xCondItem + ',' +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem +'                 '+lbxItem.Items[i] + #13+#10;
                   end;
                if xCondItem = '' then
                   begin
                     xCondItem :=
                     xCondItem +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem + lbxItem.Items[i] + #13+#10;
                   end;
              end;
         end;
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresas.......: ' + opcoesEmpresa + #13+#10;
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) then
     xOpcoes := xOpcoes + 'Representante..: ' + opcoesVendedor + #13+#10
   else
     xOpcoes := xOpcoes + 'Vendedor.......: ' + opcoesVendedor + #13+#10;

   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=false)  then
     begin
       xOpcoes := xOpcoes + 'Fornecedor.....: ' + opcoesFornecedor + #13+#10;
       xOpcoes := xOpcoes + 'Item...........: ' + opcoesItem + #13+#10;
     end;


end;
function TestarCampos(deInicial,deFinal:TJvDateEdit;cbbTipoCmv:TComboBox;lboxEmpresaSelecionada:TListBox): Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
    begin
      mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
    end;

  if (cbbTipoCmv.ItemIndex = -1) then
    begin
      mens := mens +  '.Local de percentual de comissão' + #13;
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
