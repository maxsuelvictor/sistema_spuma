unit EST_RN_R_GIR;

interface
uses Data.DB,System.DateUtils,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes, xCondEmpresa, xCondGrupo, xCondItem,xCondCor,xCondTam: string;

procedure ExibirRel(lbxRelatorios,lboxEmpresaDisp,lboxEmpresaSel,lbxGrupoDisp,lbxGrupoSel, lbxItens,lbxCorDisp,lbxCorSel,lbxTamDisp,lbxTamSel:TListBox; txtMes,txtAno:TEdit; EST_FR_R_GIR_GER,EST_FR_R_GIR_EMP:TfrxReport);
procedure PreencherCondicao(lbxEmpresaDisp,lbxEmpresaSel,lbxGrupoDisp,lbxGrupoSel, lbxItens,lbxCorDisp,lbxCorSel,lbxTamDisp,lbxTamSel:TListBox; txtMes,txtAno:TEdit);
function TestarCampos(txtMes,txtAno:TEdit): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc, EST_UN_R_GIR;

procedure ExibirRel(lbxRelatorios,lboxEmpresaDisp,lboxEmpresaSel,lbxGrupoDisp,lbxGrupoSel, lbxItens,lbxCorDisp,lbxCorSel,lbxTamDisp,lbxTamSel:TListBox;
                      txtMes,txtAno:TEdit;EST_FR_R_GIR_GER,EST_FR_R_GIR_EMP:TfrxReport);
var
  valor,dataInicial,dataFinal,PathImg: String;
  mesInicio,anoInicio,diaFinal:integer;
  LogoEmpresa: TfrxPictureView;
begin


   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
         exit;
      end;


   if txtMes.Text = '12' then
     begin
       mesInicio := 1;
       anoInicio := valor.ToInteger(txtAno.Text);
     end
   else
     begin
       mesInicio := (valor.ToInteger(txtMes.Text) + 1);
       anoInicio := (valor.ToInteger(txtAno.Text) - 1);
     end;

   dataInicial := '01' +'/'+ StrZero(mesInicio,2,0)+'/'+IntToStr(anoInicio);

   diaFinal := DaysInMonth(StrToDate('01/'+txtMes.Text+'/'+txtAno.Text));
   dataFinal := StrZero(diaFinal,2,0) +'/'+ txtMes.Text+'/'+txtAno.Text;


   PreencherCondicao(lboxEmpresaDisp,lboxEmpresaSel,lbxGrupoDisp,lbxGrupoSel, lbxItens,lbxCorDisp,lbxCorSel,lbxTamDisp,lbxTamSel, txtMes,txtAno);

    EST_FM_R_GIR.EST_CD_R_GIR.Close;
   EST_FM_R_GIR.EST_CD_R_GIR.Data :=
           EST_FM_R_GIR.EST_CD_R_GIR.DataRequest(
                   VarArrayOf([xCondEmpresa, xCondGrupo, xCondItem, xCondCor, xCondTam, dataInicial, dataFinal]));

   if not EST_FM_R_GIR.EST_CD_R_GIR.IsEmpty then
      begin
        EST_FM_R_GIR.EST_CD_R_GIR.IndexFieldNames := 'codigo';
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_GIR_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_GIR_GER.Name,xCodLme,xRevLme,nil);
            EST_FR_R_GIR_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_GIR_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_GIR_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_GIR_GER.PrepareReport();
            EST_FR_R_GIR_GER.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Empresa' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_GIR_EMP.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_GIR_EMP.Name,xCodLme,xRevLme,nil);
            EST_FR_R_GIR_EMP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_GIR_EMP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_GIR_EMP.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_GIR_EMP.PrepareReport();
            EST_FR_R_GIR_EMP.ShowReport();
          end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure PreencherCondicao(lbxEmpresaDisp,lbxEmpresaSel,lbxGrupoDisp,lbxGrupoSel, lbxItens,lbxCorDisp,lbxCorSel,lbxTamDisp,lbxTamSel:TListBox; txtMes,txtAno:TEdit);
Var
  i: integer;
  opcaoEmp,opcaoItem,opcaoGrupo,opcaoCor,opcaoTam: String;
begin
  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lbxEmpresaSel.Count > 0 then
    begin
      if lbxEmpresaDisp.Count <> 0 then
         begin
           for i := 0 to lbxEmpresaSel.Count - 1 do
              begin
                if xCondEmpresa <> '' then
                   begin
                     xCondEmpresa :=
                     xCondEmpresa + ',' +''''+trim(copy(lbxEmpresaSel.Items[i],1,3))+'''';
                     opcaoEmp :=
                     opcaoEmp +'                        '+lbxEmpresaSel.Items[i] + #13+#10;
                   end;
                if xCondEmpresa = '' then
                   begin
                     xCondEmpresa :=
                     xCondEmpresa +''''+ trim(copy(lbxEmpresaSel.Items[i],1,3))+'''';
                     opcaoEmp :=
                     opcaoEmp + lbxEmpresaSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
         begin
           opcaoEmp := 'Todos';
         end;
    end
    else
      begin
         opcaoEmp := 'Todos';
      end;

  // Grupo ---------------------------------------------------------------------
  xCondGrupo := '';
  if lbxGrupoSel.Count > 0 then
  begin
    if lbxGrupoDisp.Count <> 0 then
     begin
       for i := 0 to lbxGrupoSel.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +trim(copy(lbxGrupoSel.Items[i],1,11));
                 opcaoGrupo :=
                 opcaoGrupo +'                        '+lbxGrupoSel.Items[i] + #13+#10;
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +trim(copy(lbxGrupoSel.Items[i],1,11));
                 opcaoGrupo :=
                 opcaoGrupo + lbxGrupoSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcaoGrupo := 'Todos';
        End;
  end
   else
     begin
      opcaoGrupo := 'Todos';
     end;

  // Items --------------------------------------------------------------
  xCondItem := '';
  if lbxItens.Count > 0 then
     begin
       for i := 0 to lbxItens.Count - 1 do
          begin
            if xCondItem <> '' then
               begin
                 xCondItem :=
                 xCondItem + ',' +''''+trim(copy(lbxItens.Items[i],1,7))+'''';
                 opcaoItem :=
                 opcaoItem +'                        '+lbxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem +''''+trim(copy(lbxItens.Items[i],1,7))+'''';
                 opcaoItem :=
                 opcaoItem + lbxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcaoItem := 'Todos';
     end;

  // Cor --------------------------------------------------------------
  xCondCor := '0';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True) then
    begin
      xCondCor := '';
      if lbxCorSel.Count > 0 then
      begin
        if lbxCorDisp.Count <> 0 then
         begin
           for i := 0 to lbxCorSel.Count - 1 do
              begin
                if xCondCor <> '' then
                   begin
                     xCondCor :=
                     xCondCor + ',' +''''+trim(copy(lbxCorSel.Items[i],1,3))+'''';
                     opcaoCor :=
                     opcaoCor +'                        '+lbxCorSel.Items[i] + #13+#10;
                   end;
                if xCondCor = '' then
                   begin
                     xCondCor :=
                     xCondCor +''''+trim(copy(lbxCorSel.Items[i],1,3))+'''';
                     opcaoCor :=
                     opcaoCor + lbxCorSel.Items[i] + #13+#10;
                   end;
              end;
         end
          else
            begin
              opcaoCor := 'Todos';
            End;
      end
       else
         begin
          opcaoCor := 'Todos';
         end;
    end;

  // Tamanho --------------------------------------------------------------
  xCondTam := '0';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True) then
    begin
       xCondTam := '';
      if lbxTamSel.Count > 0 then
      begin
        if lbxTamDisp.Count <> 0 then
         begin
           for i := 0 to lbxTamSel.Count - 1 do
              begin
                if xCondTam <> '' then
                   begin
                     xCondTam :=
                     xCondTam + ',' +''''+trim(copy(lbxTamSel.Items[i],1,3))+'''';
                     opcaoTam :=
                     opcaoTam +'                        '+lbxTamSel.Items[i] + #13+#10;
                   end;
                if xCondTam = '' then
                   begin
                     xCondTam :=
                     xCondTam +''''+trim(copy(lbxTamSel.Items[i],1,3))+'''';
                     opcaoTam :=
                     opcaoTam + lbxTamSel.Items[i] + #13+#10;
                   end;
              end;
         end
          else
            begin
              opcaoTam := 'Todos';
            End;
      end
       else
         begin
          opcaoTam := 'Todos';
         end;
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Último Mês/Ano........: ' + txtMes.Text+'/'+txtAno.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...............: ' + opcaoEmp + #13+#10;
   xOpcoes := xOpcoes + 'Grupo.................: ' + opcaoGrupo + #13+#10;
   xOpcoes := xOpcoes + 'Item..................: ' + opcaoItem + #13+#10;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True) then
    begin
       xOpcoes := xOpcoes + 'Cor...................: ' + opcaoCor + #13+#10;
    end;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True) then
    begin
       xOpcoes := xOpcoes + 'Tamanho...............: ' + opcaoTam + #13+#10;
    end;
end;

function TestarCampos(txtMes,txtAno:TEdit): Boolean;
var
  mes,ano,mens: String;
begin
  result := True;
  mes := txtMes.Text;
  ano := txtAno.Text;

  mens := '';

  if (txtMes.Text = '') or (txtAno.Text = '') then
    begin
       mens := mens +  '.Os campos Mês e Ano devem ser preenchidos.' + #13;
    end
  else
    begin
      if ((ano.Length <> 4) or (mes.Length <>2))  then
        begin
           mens := mens +  '.Os campos Mês e Ano devem ser estar no formato MM/AAAA.' + #13;
        end
      else
        if (mes.ToInteger(mes)<1) or  (mes.ToInteger(mes)>12) then
          begin
            mens := mens +  '.Mês inválido.' + #13;
          end;
        if ano.ToInteger(ano)<1900 then
          begin
            mens := mens +  '.Ano inválido.' + #13;
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
