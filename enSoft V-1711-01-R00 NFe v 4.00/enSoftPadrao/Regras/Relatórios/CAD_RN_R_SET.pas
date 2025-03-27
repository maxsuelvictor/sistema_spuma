unit CAD_RN_R_SET;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes: String;
procedure ExibirRel(lbxRelatorios:TListBox;ckboxExibirDefSet:TCheckBox;Fastreport1:TfrxReport);
implementation
Uses uDmGeral,enConstantes, uProxy;
procedure ExibirRel(lbxRelatorios:TListBox;ckboxExibirDefSet:TCheckBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   if (ckboxExibirDefSet.Checked) then
     begin
      xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
      xOpcoes := xOpcoes + 'Exibir tipos de defeitos dos setores..........: Sim' + #13+#10;
      FastReport1.Variables['exibirTDS'] := QuotedStr('true');
     end
   else
     begin
      xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
      xOpcoes := xOpcoes + 'Exibir tipos de defeitos dos setores..........: Não' + #13+#10;
      FastReport1.Variables['exibirTDS'] := QuotedStr('false');
     end;


   dmGeral.CAD_CD_C_SET.Close;
   dmGeral.CAD_CD_C_SET.Data := dmGeral.CAD_CD_C_SET.DataRequest(VarArrayOf([1,'%']));;

   if not dmGeral.CAD_CD_C_SET.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Setores' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FastReport1.Name,xCodLme,xRevLme,nil);
            FastReport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
