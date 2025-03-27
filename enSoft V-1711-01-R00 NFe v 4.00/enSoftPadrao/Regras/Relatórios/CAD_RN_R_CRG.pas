unit CAD_RN_R_CRG;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondTipo,xCondSetor,xOrd:string;
procedure ExibirRel(lbxRelatorios,lbxSetor:TListBox;cbbTipo,cbbOrdenacao:TComboBox; Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxSetor:TListBox;cbbTipo,cbbOrdenacao:TComboBox);
implementation
Uses uDmGeral,enConstantes, uProxy, CAD_UN_R_CRG;
procedure ExibirRel(lbxRelatorios,lbxSetor:TListBox;cbbTipo,cbbOrdenacao:TComboBox; Fastreport1,Fastreport2:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
    if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao(lbxSetor,cbbTipo,cbbOrdenacao);

   CAD_FM_R_CRG.PCP_CD_R_CRG.Close;

   CAD_FM_R_CRG.PCP_CD_R_CRG.Data :=
   CAD_FM_R_CRG.PCP_CD_R_CRG.DataRequest(
                     VarArrayOf([xCondTipo,xCondSetor,lbxRelatorios.ItemIndex,xOrd]));


   if not CAD_FM_R_CRG.PCP_CD_R_CRG.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Cargos - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FastReport1.Name,xCodLme,xRevLme,nil);
            FastReport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['ft_SGQ_CTC'] := False;
            if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) then
              begin
                FastReport1.Variables['ft_SGQ_CTC'] := True;
              end;

            FastReport1.Variables['ft_SGQ_CTC_REV_OME'] := False;
            if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True) or
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) or
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True)) then
              begin
                FastReport1.Variables['ft_SGQ_CTC_REV_OME'] := True;
              end;

            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Cargos - por Setores' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport2.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FastReport2.Name,xCodLme,xRevLme,nil);
            FastReport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport2.PrepareReport();
            FastReport2.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;
procedure PreencherCondicao(lbxSetor:TListBox;cbbTipo,cbbOrdenacao:TComboBox);
var
 i:integer;
begin
  xCondTipo := '';
  if cbbTipo.Text <> 'Todos' then
    begin
      xCondTipo := copy(cbbTipo.text,1,1);
    end;

  xCondSetor := '';
   if lbxSetor.Count > 0 then
     begin
       for i := 0 to lbxSetor.Count - 1 do
          begin
            if xCondSetor <> '' then
               begin
                 xCondSetor :=
                 xCondSetor + ',' +''''+copy(lbxSetor.Items[i],1,3)+'''';
               end;
            if xCondSetor = '' then
               begin
                 xCondSetor :=
                 xCondSetor +''''+copy(lbxSetor.Items[i],1,3)+'''';
               end;
          end;
      end;

   xOrd := copy(cbbOrdenacao.Text,1,1);

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Tipo...............: ' + cbbTipo.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação..........: ' + cbbOrdenacao.Text + #13+#10;
end;
end.
