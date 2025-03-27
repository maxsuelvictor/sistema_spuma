unit EST_RN_R_CTE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xCondGrupo,xCondRua,xCondCor,xCondTam,xCondAlm,xOpcoes,rExibirLista,rDtaIni,rDtaFin,xCondEmp,xCondSaldo: String;

procedure ExibirRel(lbxRelatorios,lbxGrupo,lbxRua:TListBox; deInicial,deFinal:TJvDateEdit;
                    ckboxExibirItens,ckboxExibirSaldo:TCheckBox;cboxSituacao:TComboBox;Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxGrupo,lbxRua:TListBox; deInicial,deFinal:TJvDateEdit;
                    ckboxExibirItens,ckboxExibirSaldo:TCheckBox;cboxSituacao:TComboBox);
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, EST_UN_R_CTE;

procedure ExibirRel(lbxRelatorios,lbxGrupo,lbxRua:TListBox; deInicial,deFinal:TJvDateEdit;
                    ckboxExibirItens,ckboxExibirSaldo:TCheckBox;cboxSituacao:TComboBox;Fastreport1,Fastreport2:TfrxReport);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao(lbxGrupo,lbxRua,deInicial,deFinal,ckboxExibirItens,ckboxExibirSaldo,cboxSituacao);

   EST_FM_R_CTE.EST_CD_R_CTE.Close;
   EST_FM_R_CTE.EST_CD_R_CTE.Data :=
   EST_FM_R_CTE.EST_CD_R_CTE.DataRequest(
                     VarArrayOf([rExibirLista,rDtaIni,rDtaFin,xCondGrupo,xCondRua,xCondAlm,
                                 xCondSaldo,lbxRelatorios.ItemIndex,xCondCor,xCondTam]));


   if not EST_FM_R_CTE.EST_CD_R_CTE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Contagem por Rua' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport1.Name,xCodLme,xRevLme,nil);
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Contagem por Grupo' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport2.Name,xCodLme,xRevLme,nil);
            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure PreencherCondicao(lbxGrupo,lbxRua:TListBox; deInicial,deFinal:TJvDateEdit;
                    ckboxExibirItens,ckboxExibirSaldo:TCheckBox;cboxSituacao:TComboBox);
var
i: integer;
exibirMovPeriodo,exibirSaldo: string;
begin

  rDtaIni :='';
  rDtaFin :='';

  rExibirLista := '0';
  if ckboxExibirItens.Checked then
    begin
      rExibirLista := '1';
      rDtaIni := deInicial.Text;
      rDtaFin := deFinal.Text;
    end;

  xCondEmp := dmGeral.CAD_CD_C_PARid_empresa.AsString;

  xCondSaldo := '';
  if cboxSituacao.Text <> 'Todos' then
    begin
      xCondSaldo := copy(cboxSituacao.Text,1,1);
    end;

  xCondGrupo := '';
  if lbxGrupo.Count > 0 then
     begin
       for i := 0 to lbxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +''''+trim(copy(lbxGrupo.Items[i],1,8))+'''';
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +''''+trim(copy(lbxGrupo.Items[i],1,8))+'''';
               end;
          end;
   end;

  xCondRua := '';
  if lbxRua.Count > 0 then
     begin
       for i := 0 to lbxRua.Count - 1 do
          begin
            if xCondRua <> '' then
               begin
                 xCondRua :=
                 xCondRua + ',' +''''+lbxRua.Items[i]+'''';
               end;
            if xCondRua = '' then
               begin
                 xCondRua :=
                 xCondRua +''''+lbxRua.Items[i]+'''';
               end;
          end;
   end;

   exibirMovPeriodo := 'Não';
   if (ckboxExibirItens.Checked) then
      exibirMovPeriodo := 'Sim';

   exibirSaldo := 'Não';
   if (ckboxExibirSaldo.Checked) then
      exibirSaldo := 'Sim';

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Exibir itens movimentado no período..: ' + exibirMovPeriodo + #13+#10;
   xOpcoes := xOpcoes + 'Exibir saldo do produto..............: ' + exibirSaldo + #13+#10;

   if ckboxExibirItens.Checked then
     begin
       xOpcoes := xOpcoes + 'Período..............................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
     end;
   xOpcoes := xOpcoes + 'Situação.............................: ' + cboxSituacao.Text + #13+#10;
end;

function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;
end;
end.
