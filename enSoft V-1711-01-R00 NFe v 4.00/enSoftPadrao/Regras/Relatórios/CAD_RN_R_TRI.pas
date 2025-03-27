unit CAD_RN_R_TRI;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xCondEmp,xCondTri:string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxTributacao:TListBox;Fastreport1:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxTributacao:TListBox);
implementation
Uses uDmGeral,enConstantes, uProxy, CAD_UN_R_TRI;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxTributacao:TListBox;Fastreport1:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao(lbxEmpresas,lbxTributacao);

   CAD_FM_R_TRI.CAD_CD_R_TRI_REG.Close;
   CAD_FM_R_TRI.CAD_CD_R_TRI_REG.Data :=
   CAD_FM_R_TRI.CAD_CD_R_TRI_REG.DataRequest(
                     VarArrayOf([xCondEmp,xCondTri]));


   if not CAD_FM_R_TRI.CAD_CD_R_TRI_REG.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Tributações' then
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
procedure PreencherCondicao(lbxEmpresas,lbxTributacao:TListBox);
var
i: integer;
begin
  xCondEmp := '';

  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+copy(lbxEmpresas.Items[i],1,3)+'''';
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+copy(lbxEmpresas.Items[i],1,3)+'''';
               end;
          end;
     end;

    xCondTri := '';
   if lbxTributacao.Count > 0 then
     begin
       for i := 0 to lbxTributacao.Count - 1 do
          begin
            if xCondTri <> '' then
               begin
                 xCondTri :=
                 xCondTri + ',' +''''+copy(lbxTributacao.Items[i],1,3)+'''';
               end;
            if xCondTri = '' then
               begin
                 xCondTri :=
                 xCondTri +''''+copy(lbxTributacao.Items[i],1,3)+'''';
               end;
          end;
     end;

end;
end.
