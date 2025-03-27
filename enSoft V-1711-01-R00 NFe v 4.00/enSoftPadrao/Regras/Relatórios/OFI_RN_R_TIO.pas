unit OFI_RN_R_TIO;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);
implementation
Uses uDmGeral,enConstantes, uProxy, OFI_UN_R_TIO;
procedure ExibirRel(lbxRelatorios:TListBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   OFI_FM_R_TIO.OFI_CD_R_TIO.Close;
   OFI_FM_R_TIO.OFI_CD_R_TIO.Data :=
   OFI_FM_R_TIO.OFI_CD_R_TIO.DataRequest(
           VarArrayOf([1,'%']));

   if not OFI_FM_R_TIO.OFI_CD_R_TIO.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem Simples' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
