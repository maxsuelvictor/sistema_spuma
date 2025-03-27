unit FAT_RN_R_POS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
      xOpcoes, xCondEmpresa, xCondCliente: string;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxCliente:TListBox;
                    deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxCliente:TListBox; deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit;lboxEmpresaSelecionada:TListBox): Boolean;
implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_POS;
procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxCliente:TListBox;
                    deInicial,deFinal:TJvDateEdit; Fastreport1,Fastreport2:TfrxReport);
var
  rDtaInicial, rDtaFinal, rEstoque, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;

   // Período
   rDtaInicial := deInicial.Text;
   rDtaFinal   := deFinal.Text;

   PreencherCondicao(lbxEmpresas,lbxCliente,deInicial,deFinal);
   FAT_FM_R_POS.FAT_CD_R_POS.Close;
   FAT_FM_R_POS.FAT_CD_R_POS.Data :=
          FAT_FM_R_POS.FAT_CD_R_POS.DataRequest(
                 VarArrayOf([lbxRelatorios.ItemIndex,rDtaInicial,rDtaFinal,xCondEmpresa,xCondCliente]));



   if not FAT_FM_R_POS.FAT_CD_R_POS.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Cliente' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Data' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;
procedure PreencherCondicao(lbxEmpresas,lbxCliente:TListBox; deInicial,deFinal:TJvDateEdit);
var
  i: integer;
  OpcoesEmp,OpcoesCliente: String;
begin

  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  OpcoesEmp := '';
  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp +'                 '+lbxEmpresas.Items[i]+ #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp + lbxEmpresas.Items[i]+ #13+#10;
               end;
          end;
     end;

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  OpcoesCliente := '';
  if lbxCliente.Count > 0 then
     begin
       for i := 0 to lbxCliente.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente + ',' +''''+trim(copy(lbxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                 '+lbxCliente.Items[i]+ #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lbxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +lbxCliente.Items[i]+ #13+#10;
               end;
          end;
     end
  else
     begin
        OpcoesCliente := 'Todos';
     end;

  //Opções ---------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
  xOpcoes := xOpcoes + 'Empresa........: ' + opcoesEmp + #13+#10;
  xOpcoes := xOpcoes + 'Cliente........: ' + opcoesCliente + #13+#10;
end;
function TestarCampos(deInicial,deFinal:TJvDateEdit;lboxEmpresaSelecionada:TListBox): Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
    begin
      mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
    end;
  if lboxEmpresaSelecionada.Count = 0 then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
end;

end.
