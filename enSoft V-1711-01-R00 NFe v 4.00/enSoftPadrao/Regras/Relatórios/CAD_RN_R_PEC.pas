unit CAD_RN_R_PEC;

interface
uses Data.DB,System.SysUtils,System.Variants, Datasnap.DBClient,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
procedure ExibirRel(CAD_CD_R_PEC:TClientDataSet;lbxRelatorios:TListBox;Fastreport1:TfrxReport);
implementation
Uses uDmGeral,enConstantes, uProxy;
procedure ExibirRel(CAD_CD_R_PEC:TClientDataSet;lbxRelatorios:TListBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   CAD_CD_R_PEC.Close;
   CAD_CD_R_PEC.Data := CAD_CD_R_PEC.DataRequest(VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));;

   if not CAD_CD_R_PEC.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Perfil de Cliente' then
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
