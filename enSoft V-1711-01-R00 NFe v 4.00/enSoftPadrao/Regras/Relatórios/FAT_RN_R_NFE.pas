unit FAT_RN_R_NFE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
      xOpcoes, xCondEmpresa,xCondFornecedor, xCondTipoEstoque, xCondCfop,xCondModelo,
      xCondSitNota,xCondItem,opcoesAlmoxarifado,opcoesGrupo,opcoesFamilia,
      xCondGrupoItem,xCondAlmoxarifado,xCondFamilia: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxEstoque,lbxCfop,
                    lbxModelo,lbxSitNota,lbxItem, lboxGruposSelecionados, lboxFamSel,lboxAlmSel:TListBox;
                    chbExibirNotaCancelada:TCheckBox;cbbTipoNF,cbbPesquisaPor,cbbOrdenacao,cbTipoPeriodo:TComboBox;
                    txtNDoc:Tedit;deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,
                    Fastreport6,Fastreport7:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxEstoque,lbxCfop,lbxModelo,
          lbxSitNota,lbxItem,lboxGruposSelecionados, lboxFamSel,lboxAlmSel:TListBox;chbExibirNotaCancelada:TCheckBox;cbbTipoNF,cbbPesquisaPor,cbbOrdenacao:TComboBox;
          txtNDoc:Tedit;deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_NFE;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxFornecedor,lbxEstoque,lbxCfop,
                   lbxModelo,lbxSitNota,lbxItem,lboxGruposSelecionados, lboxFamSel,lboxAlmSel:TListBox;
                    chbExibirNotaCancelada:TCheckBox;cbbTipoNF,cbbPesquisaPor,cbbOrdenacao,cbTipoPeriodo:TComboBox;
                    txtNDoc:Tedit;deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2,Fastreport3,Fastreport4,Fastreport5,
                    Fastreport6,Fastreport7:TfrxReport);
var
  rDtaIni, rDtaFin, rOrdenacao, rTipoPeriodo, rTipoNF, rPesquisaPor, rNDoc,rSerie, rExibirNotaCancelada, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   //Exibir Nota Cancelada
   if (chbExibirNotaCancelada.Checked = True) then
      begin
        rExibirNotaCancelada := '1';
      end
   else
      begin
        rExibirNotaCancelada := '0';
      end;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Tipo de NF
   rTipoNF := copy(cbbTipoNF.Text,1,1);

   // Pesquisa Por
    if cbbPesquisaPor.ItemIndex = 2 then
      begin
        rPesquisaPor := '';
      end
    else
      begin
        rPesquisaPor := copy(cbbPesquisaPor.Text,1,1);
      end;

    if FAT_FM_R_NFE.chbExibirNotaF11.Checked then
      rSerie := 'X'
    else
      rSerie := '';


   // Nº do Documento
   rNDoc := txtNDoc.Text;

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   // Tipo período
   rTipoPeriodo :=  inttostr(cbTipoPeriodo.ItemIndex);


   PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxEstoque,lbxCfop,lbxModelo,lbxSitNota,lbxItem,
                     lboxGruposSelecionados, lboxFamSel,lboxAlmSel,
                     chbExibirNotaCancelada,cbbTipoNF,cbbPesquisaPor,cbbOrdenacao,txtNDoc,
                     deInicial,deFinal);

   if lbxRelatorios.ItemIndex = 7 then  // 07- Detalhado por item(Simples)
    begin
      FAT_FM_R_NFE.FAT_CD_R_NFE_DPI.Close;
      FAT_FM_R_NFE.FAT_CD_R_NFE_DPI.Data :=
        FAT_FM_R_NFE.FAT_CD_R_NFE_DPI.DataRequest(VarArrayOf([rDtaIni, rDtaFin,xCondEmpresa, xCondTipoEstoque,
          xCondCfop, xCondModelo,xCondSitNota,xCondFornecedor,rTipoNF,xCondItem,
          xCondGrupoItem,xCondAlmoxarifado,xCondFamilia  ]));

      if not FAT_FM_R_NFE.FAT_CD_R_NFE_DPI.IsEmpty then
        begin
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(Fastreport7.FindObject('ingEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;

          Fastreport7.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport7.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport7.PrepareReport();
          Fastreport7.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end
   else
     begin
       FAT_FM_R_NFE.FAT_CD_R_NFE.Close;
       FAT_FM_R_NFE.FAT_CD_R_NFE.Data :=
        FAT_FM_R_NFE.FAT_CD_R_NFE.DataRequest(
          VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, rTipoNF, rNDoc,
            rPesquisaPor, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondModelo,xCondSitNota,
            rOrdenacao,rExibirNotaCancelada,xCondFornecedor,rSerie, rTipoPeriodo]));

       FAT_FM_R_NFE.FAT_CD_R_NFE_CFO.Close;
       FAT_FM_R_NFE.FAT_CD_R_NFE_CFO.Data :=
        FAT_FM_R_NFE.FAT_CD_R_NFE_CFO.DataRequest(
          VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, rTipoNF, rNDoc,
            rPesquisaPor, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondModelo,xCondSitNota,
            rOrdenacao,xCondFornecedor,rSerie,rTipoPeriodo]));

       FAT_FM_R_NFE.FAT_CD_R_NFE_TME.Close;
       FAT_FM_R_NFE.FAT_CD_R_NFE_TME.Data :=
        FAT_FM_R_NFE.FAT_CD_R_NFE_TME.DataRequest(
          VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, rTipoNF, rNDoc,
            rPesquisaPor, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondModelo,xCondSitNota,
            rOrdenacao,xCondFornecedor,rSerie,rTipoPeriodo]));
     end;

   if not FAT_FM_R_NFE.FAT_CD_R_NFE.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00-Espelho das Notas' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('ingEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

          FastReport1.Variables['NotaFiscalEntrada'] := False;
          if (cbbTipoNf.ItemIndex = 1)  then
            begin
              FastReport1.Variables['NotaFiscalEntrada'] := True;
            end;

          FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport1.Variables['ExibirNotaCancelada'] := chbExibirNotaCancelada.Checked;
          Fastreport1.PrepareReport();
          Fastreport1.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01-Resumo das Notas' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('ingEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;
          FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport2.Variables['ExibirNotaCancelada'] := chbExibirNotaCancelada.Checked;
          Fastreport2.PrepareReport();
          Fastreport2.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04-Agrupado por Tipo de Estoque' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport5.FindObject('ingEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;
          FastReport5.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport5.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport5.Variables['ExibirNotaCancelada'] := chbExibirNotaCancelada.Checked;
          Fastreport5.PrepareReport();
          Fastreport5.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05-Agrupado por CFOP' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport6.FindObject('ingEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;
          FastReport6.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport6.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport6.Variables['ExibirNotaCancelada'] := chbExibirNotaCancelada.Checked;
          Fastreport6.PrepareReport();
          Fastreport6.ShowReport();
        end;
    end
   else
      begin
        if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00-Espelho das Notas') or (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01-Resumo das Notas')  or
           (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04-Agrupado por Tipo de Estoque') or (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05-Agrupado por CFOP') then
              ShowMessage('Nenhum registro foi encontrado.');
      end;

   if not FAT_FM_R_NFE.FAT_CD_R_NFE_TME.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02-Resumo por Tipo de Estoque' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('ingEmpresa1'));
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
        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02-Resumo por Tipo de Estoque' then
          ShowMessage('Nenhum registro foi encontrado.');
      end;

   if not FAT_FM_R_NFE.FAT_CD_R_NFE_CFO.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03-Resumo por CFOP' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(Fastreport4.FindObject('ingEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;
          FastReport4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          Fastreport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
          Fastreport4.PrepareReport();
          Fastreport4.ShowReport();
        end;
    end
   else
      begin
        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03-Resumo por CFOP' then
          ShowMessage('Nenhum registro foi encontrado.');
      end;
end;
procedure PreencherCondicao(lbxEmpresas,lbxFornecedor,lbxEstoque,lbxCfop,lbxModelo,
                        lbxSitNota,lbxItem,lboxGruposSelecionados, lboxFamSel,lboxAlmSel:TListBox;
                        chbExibirNotaCancelada:TCheckBox;cbbTipoNF,cbbPesquisaPor,cbbOrdenacao:TComboBox;
                             txtNDoc:Tedit;deInicial,deFinal:TJvDateEdit);
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

  xCondFornecedor := '';
  if lbxFornecedor.Count > 0 then
     begin
       for i := 0 to lbxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 {opcoesFornecedor :=
                 opcoesFornecedor +'                    '+lbxFornecedor.Items[i] + #13+#10; }
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                { opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedores.Items[i] + #13+#10; }
               end;
          end;
     end
  else
     begin
        //opcoesFornecedor := 'Todos';
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
                 xCondCfop + ',' +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
               end;
            if xCondCfop = '' then
               begin
                 xCondCfop :=
                 xCondCfop +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
               end;
          end;
     end;

    // Modelo ----------------------------------------------------------------------
  xCondModelo := '';
  if lbxModelo.Count > 0 then
     begin
       for i := 0 to lbxModelo.Count - 1 do
          begin
            if xCondModelo <> '' then
               begin
                 xCondModelo :=
                 xCondModelo + ',' +''''+trim(copy(lbxModelo.Items[i],1,2))+'''';
               end;
            if xCondModelo = '' then
               begin
                 xCondModelo :=
                 xCondModelo +''''+trim(copy(lbxModelo.Items[i],1,2))+'''';
               end;
          end;
     end;

  // Cod. Situação Nota  ----------------------------------------------------------------------
  xCondSitNota := '';

  if lbxSitNota.Count > 0 then
     begin
       for i := 0 to lbxSitNota.Count - 1 do
          begin
            if xCondSitNota <> '' then
               begin
                 xCondSitNota :=
                 xCondSitNota + ',' +''''+trim(copy(lbxSitNota.Items[i],1,2))+'''';
               end;
            if xCondSitNota = '' then
               begin
                 xCondSitNota :=
                 xCondSitNota +''''+trim(copy(lbxSitNota.Items[i],1,2))+'''';
               end;
          end;
     end;

  // Item  ----------------------------------------------------------------------
  xCondItem := '';
  if lbxItem.Count > 0 then
     begin
       for i := 0 to lbxItem.Count - 1 do
          begin
            if xCondItem <> '' then
               begin
                 xCondItem :=
                 xCondItem + ',' +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
                 {opcoesFornecedor :=
                 opcoesFornecedor +'                    '+lbxFornecedor.Items[i] + #13+#10; }
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
                { opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedores.Items[i] + #13+#10; }
               end;
          end;
     end
  else
     begin
        //opcoesFornecedor := 'Todos';
      end;

  xCondAlmoxarifado := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       xCondAlmoxarifado := '';
       opcoesAlmoxarifado := '';
       if lboxAlmSel.Count > 0 then
         begin
             for i := 0 to lboxAlmSel.Count - 1 do
              begin
                if xCondAlmoxarifado <> '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado + ',' +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +'                    '+lboxAlmSel.Items[i] + #13+#10;
                   end;
                if xCondAlmoxarifado = '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +lboxAlmSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
       begin
          opcoesAlmoxarifado := 'Todos';
       end;
    end;

  // Grupos de Itens -----------------------------------------------------------
  xCondGrupoItem := '';
  if lboxGruposSelecionados.Count > 0 then
     begin
        for i := 0 to lboxGruposSelecionados.Count - 1 do
          begin
           if xCondGrupoItem <> '' then
             begin
               xCondGrupoItem :=
               xCondGrupoItem + ',' +''''+trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
               opcoesGrupo :=
               opcoesGrupo +'                 '+lboxGruposSelecionados.Items[i] + #13+#10;
             end;
          if xCondGrupoItem = '' then
             begin
               xCondGrupoItem :=
               xCondGrupoItem +''''+ trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
               opcoesGrupo :=
               opcoesGrupo + lboxGruposSelecionados.Items[i] + #13+#10;
             end;
          end;
     end
   else
    begin
       opcoesGrupo := 'Todos';
    end;

  // Familia ----------------------------------------------------------
  xCondFamilia := '';
  if lboxFamSel.Count > 0 then
     begin
          for i := 0 to lboxFamSel.Count - 1 do
           begin
            if xCondFamilia <> '' then
               begin
                 xCondFamilia :=
                 xCondFamilia + ',' +''''+trim(copy(lboxFamSel.Items[i],1,3))+'''';
                 opcoesFamilia :=
                 opcoesFamilia  +'                    '+lboxFamSel.Items[i] + #13+#10;
               end;
            if xCondFamilia = '' then
               begin
                 xCondFamilia :=
                 xCondFamilia +''''+trim(copy(lboxFamSel.Items[i],1,3))+'''';
                 opcoesFamilia :=
                       opcoesFamilia + lboxFamSel.Items[i] + #13+#10;
               end;
           end;
     end
   else
    begin
      opcoesFamilia := 'Todos';
    end;


  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Tipo de NF................: ' + copy(cbbTipoNF.Text,3,30) + #13+#10;
   xOpcoes := xOpcoes + 'Pesquisa Por..............: ' + copy(cbbPesquisaPor.Text,3,20) + #13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado..............: ' + opcoesAlmoxarifado + #13+#10;
   xOpcoes := xOpcoes + 'Grupo de estoque..........: ' + opcoesGrupo +#13+#10;
   xOpcoes := xOpcoes + 'Familia...................: ' + opcoesFamilia + #13+#10;
   if txtNDoc.Text <> '' then
       xOpcoes := xOpcoes + 'Nº Documento..............: ' + txtNDoc.Text + #13+#10;

   xOpcoes := xOpcoes + 'Ordenação.................: ' + copy(cbbOrdenacao.Text,3,20) + #13+#10;
   if (chbExibirNotaCancelada.Checked = true) then
     begin
      xOpcoes := xOpcoes + 'Exibir Notas Canceladas...: Sim '+ #13+#10;
     end
   else
     begin
        xOpcoes := xOpcoes + 'Exibir Notas Canceladas...: Não '+ #13+#10;
     end;
end;
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
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
end;
end.
