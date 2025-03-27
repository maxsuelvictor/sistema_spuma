unit CAD_RN_R_TIF;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondNat: string;
procedure ExibirRel(lbxRelatorios:TListBox;cboxNatureza:TcomboBox;Fastreport1:TfrxReport);
procedure PreencherCondicao(lbxClasse:TListBox;cboxNatureza:TcomboBox);
implementation
Uses uDmGeral,enConstantes, uProxy;
procedure ExibirRel(lbxRelatorios:TListBox;cboxNatureza:TcomboBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao(lbxRelatorios,cboxNatureza);

   dmGeral.CAD_CD_C_TIF.Close;
   dmGeral.CAD_CD_C_TIF.Data := dmGeral.CAD_CD_C_TIF.DataRequest(VarArrayOf([2,xCondNat]));;

   if not dmGeral.CAD_CD_C_TIF.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Tipo Financeiro' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,FastReport1.Name,xCodLme,xRevLme,nil);
            FastReport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FastReport1.Variables['Opcoes'] := xOpcoes;
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;
procedure PreencherCondicao(lbxClasse:TListBox;cboxNatureza:TcomboBox);
begin

  xCondNat := '';
  if cboxNatureza.Text <> 'Todos' then
   begin
    xCondNat := copy(cboxNatureza.Text,1,1);
   end;
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Natureza..........: ' + cboxNatureza.Text + #13+#10;
end;
end.
