unit CAD_RN_C_MCT;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);
implementation
Uses uDmGeral, enConstantes, uProxy;
procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relat�rio foi selecionado.');

   dmGeral.CAD_CD_C_MCT.Close;
   dmGeral.CAD_CD_C_MCT.Data := dmGeral.CAD_CD_C_MCT.DataRequest(VarArrayOf([1,'%']));

   if not dmGeral.CAD_CD_C_MCT.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Maquineta de Cart�o de Cr�dito' then
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
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;
end.
