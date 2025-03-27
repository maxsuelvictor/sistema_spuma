unit CAD_RN_R_CCU;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;

procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);

implementation
Uses uDmGeral,enConstantes, uProxy;
procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmGeral.CAD_CD_C_CCU.Close;
   dmGeral.CAD_CD_C_CCU.Data := dmGeral.CAD_CD_C_CCU.DataRequest(VarArrayOf([1,'%']));;

   if not dmGeral.CAD_CD_C_CCU.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Centro de Custos' then
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
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;
end.
