unit CAD_RN_R_CFO;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
 xCondCla : string;
procedure ExibirRel(lbxRelatorios,lbxClasse:TListBox; Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxClasse:TListBox);
implementation
Uses uDmGeral,enConstantes, uProxy, CAD_UN_R_CFO;
procedure ExibirRel(lbxRelatorios,lbxClasse:TListBox; Fastreport1,Fastreport2:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao(lbxClasse);

   CAD_FM_R_CFO.CAD_CD_R_CFO.Close;
   CAD_FM_R_CFO.CAD_CD_R_CFO.Data :=
   CAD_FM_R_CFO.CAD_CD_R_CFO.DataRequest(
                     VarArrayOf([lbxRelatorios.ItemIndex,xCondCla]));


   if not CAD_FM_R_CFO.CAD_CD_R_CFO.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem - Geral' then
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

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem - por Classe' then
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
            FastReport2.PrepareReport();
            FastReport2.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure PreencherCondicao(lbxClasse:TListBox);
var
i: integer;
begin
  xCondCla := '';

   if lbxClasse.Count > 0 then
     begin
       for i := 0 to lbxClasse.Count - 1 do
          begin
            if xCondCla <> '' then
               begin
                 xCondCla :=
                 xCondCla + ',' +''''+copy(lbxClasse.Items[i],1,4)+'''';
               end;
            if xCondCla = '' then
               begin
                 xCondCla :=
                 xCondCla +''''+copy(lbxClasse.Items[i],1,4)+'''';
               end;
          end;
     end;
end;

end.
