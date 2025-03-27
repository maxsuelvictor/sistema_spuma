unit EST_RN_R_FIC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms,Datasnap.DBClient;
var
      xOpcoes,xCondEmp,xCondItem,xCondAlm,xCondTipoEstoque,xImprimirCodigo,xDataIni,xDataFin,xCondCor,xCondTam: string;

procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxItem,lbxEstoque:TListBox; deInicial,deFinal:TJvDateEdit;
                    cdsTempFIC:TClientDataSet;cbbImprimirCodigo:TComboBox; Fastreport1,Fastreport2:TfrxReport);
procedure PreencherCondicao(lbxEmpresas,lbxItem,lbxEstoque:TListBox;cbbImprimirCodigo:TComboBox;deInicial,deFinal:TJvDateEdit);
function TestarCampos(deInicial,deFinal:TJvDateEdit): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, EST_UN_R_FIC;

procedure ExibirRel(lbxRelatorios,lbxEmpresas,lbxItem,lbxEstoque:TListBox; deInicial,deFinal:TJvDateEdit;
                    cdsTempFIC:TClientDataSet;cbbImprimirCodigo:TComboBox; Fastreport1,Fastreport2:TfrxReport);

var
  PathImg: String;
  codCor,codTam,codAlmoxarifado,codItem,codEmp:integer;
  saldo_anterior,qtde_estoque_atual:double;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmGeral.BUS_CD_M_EST_SLD_ANT.Close;
   dmGeral.BUS_CD_M_EST_SLD_ANT.Data :=
           dmGeral.BUS_CD_M_EST_SLD_ANT.DataRequest(
                VarArrayOf([xCondEmp, xCondTipoEstoque, xDataIni, xCondItem,
                               xCondAlm, xCondCor, xCondTam]));

   EST_FM_R_FIC.EST_CD_R_FIC.Active:= False;
   EST_FM_R_FIC.EST_CD_R_FIC.Close;
   EST_FM_R_FIC.EST_CD_R_FIC.Data :=
           EST_FM_R_FIC.EST_CD_R_FIC.DataRequest(
                VarArrayOf([xCondEmp, xCondTipoEstoque, xDataIni,xDataFin, xCondItem,
                               xCondAlm, xCondCor, xCondTam]));

   if not EST_FM_R_FIC.EST_CD_R_FIC.IsEmpty then
     begin
         cdsTempFIC.Close;
         cdstempFIC.CreateDataSet;
         cdsTempFIC.Open;
         cdsTempFIC.EmptyDataSet;
         saldo_anterior := 0;
         codAlmoxarifado := 0;
         codCor := 0;
         codTam := 0;
         codItem := 0;
         codEmp := 0;
         qtde_estoque_atual := 0;
         EST_FM_R_FIC.EST_CD_R_FIC.First;
       while not EST_FM_R_FIC.EST_CD_R_FIC.Eof do
        begin
          cdsTempFIC.Insert;
          if  (codEmp <> EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger) OR
              (codItem <> EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger) then
            begin
              saldo_anterior := 0;
              qtde_estoque_atual := 0;
              codItem := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger;
              codEmp :=  EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger;

              if dmGeral.BUS_CD_M_EST_SLD_ANT.Locate('ID_EMPRESA;ID_ITEM;ID_ALMOXARIFADO;ID_COR;ID_TAMANHO',
                                             VarArrayOf([EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_EMPRESA').TEXT,
                                             EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_ITEM').Text,
                                             EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').Text,
                                             EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_COR').Text,
                                             EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_TAMANHO').Text]),[]) then
                begin
                  saldo_anterior := dmGeral.BUS_CD_M_EST_SLD_ANT.FieldByName('SALDO_ANTERIOR').AsFloat;
                  qtde_estoque_atual := qtde_estoque_atual + saldo_anterior;
                end;
            end;

            if EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then
              begin
                qtde_estoque_atual := qtde_estoque_atual + EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('qtde').AsFloat;
              end
            else
              if EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then
                begin
                   qtde_estoque_atual := qtde_estoque_atual - EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('qtde').AsFloat;
                end;

            cdsTempFIC.FieldByName('ID_EMPRESA').AsInteger := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger;
            cdsTempFIC.FieldByName('ID_ITEM').AsInteger := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger;
            cdsTempFIC.FieldByName('TIPO_MOVIMENTO').AsInteger := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger;
            cdsTempFIC.FieldByName('INT_ORIGEM').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_ORIGEM').AsString;
            cdsTempFIC.FieldByName('INT_NOMEITE').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_NOMEITE').AsString;
            cdsTempFIC.FieldByName('INT_TIPOMOV').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_TIPOMOV').AsString;
            cdsTempFIC.FieldByName('INT_NOMETME').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_NOMETME').AsString;
            cdsTempFIC.FieldByName('ID_UND_COMPRA').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_UND_COMPRA').AsString;
            cdsTempFIC.FieldByName('QTDE').AsFloat := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('QTDE').AsFloat;

            cdsTempFIC.FieldByName('INT_NOMERAZ').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_NOMERAZ').AsString;
            cdsTempFIC.FieldByName('INT_NOMEFAN').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('INT_NOMEFAN').AsString;
            cdsTempFIC.FieldByName('DOCUMENTO').AsInteger := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('DOCUMENTO').AsInteger;
            cdsTempFIC.FieldByName('DATA').AsDateTime := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('DATA').AsDateTime;

            cdsTempFIC.FieldByName('COD_FABRICA').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('COD_FABRICA').AsString;
            cdsTempFIC.FieldByName('COD_BARRA').AsString := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('COD_BARRA').AsString;
            cdsTempFIC.FieldByName('ID_FEA').AsInteger := EST_FM_R_FIC.EST_CD_R_FIC.FieldByName('ID_FEA').AsInteger;
            cdsTempFIC.FieldByName('SALDO_ATUAL').AsFloat := qtde_estoque_atual;
            cdsTempFIC.FieldByName('SALDO_ANTERIOR').AsFloat := saldo_anterior;
            EST_FM_R_FIC.EST_CD_R_FIC.Next;
        end;
        EST_FM_R_FIC.EST_CD_R_FIC.Close;

        cdsTempFIC.IndexFieldNames := 'ID_EMPRESA;ID_ITEM;ID_ALMOXARIFADO;ID_TAMANHO;ID_COR;DATA;ID_FEA';
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Empresa' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            FastReport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FastReport1.PrepareReport();
            FastReport1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Almoxarifado' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FastReport2.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

             FastReport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
             FastReport2.PrepareReport();
             FastReport2.ShowReport();
           end;
   end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure PreencherCondicao(lbxEmpresas,lbxItem,lbxEstoque:TListBox;cbbImprimirCodigo:TComboBox;deInicial,deFinal:TJvDateEdit);
var
  i: integer;
begin
  // Período
  xDataIni := deInicial.Text;
  xDataFin := deFinal.Text;

  // Código Interno
  xImprimirCodigo := copy(cbbImprimirCodigo.Text,1,1);

  // Empresas ------------------------------------------------------------------
  xCondEmp := '';
  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lbxEmpresas.Items[i],1,3))+'''';
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Itens ---------------------------------------------------------------------
  xCondItem := '';
  if lbxItem.Count > 0 then
     begin
       for i := 0 to lbxItem.Count - 1 do
          begin
            if xCondItem <> '' then
               begin
                 xCondItem :=
                 xCondItem + ',' +''''+trim(copy(lbxItem.Items[i],1,6))+'''';
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem + ''''+trim(copy(lbxItem.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lbxEstoque.Count > 0 then
     begin
       for i := 0 to lbxEstoque.Count - 1 do
          begin
            if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Período..............: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
  xOpcoes := xOpcoes + 'Imprimir Código......: ' + cbbImprimirCodigo.Text + #13+#10;
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
