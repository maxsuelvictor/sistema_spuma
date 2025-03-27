unit FAT_UN_R_VIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Data.DB, Datasnap.DBClient, Vcl.Menus;

type
  TFAT_FM_R_VIS = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    txtAno: TEdit;
    txtSemana: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbbSituacao: TComboBox;
    pcFiltros: TPageControl;
    tsEmpresa: TTabSheet;
    lblPerfilDisp: TLabel;
    lblPerfilSel: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    Label5: TLabel;
    FAT_FR_R_VIS_GER: TfrxReport;
    FAT_DB_R_VIS: TfrxDBDataset;
    FAT_XL_R_VIS: TfrxXLSExport;
    FAT_PD_R_VIS: TfrxPDFExport;
    FAT_FR_R_VIS_VND: TfrxReport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    FAT_CD_R_VIS: TClientDataSet;
    FAT_CD_R_VISid_vis: TIntegerField;
    FAT_CD_R_VISsemana: TIntegerField;
    FAT_CD_R_VISid_vendedor: TIntegerField;
    FAT_CD_R_VISfechada: TBooleanField;
    FAT_CD_R_VISid_empresa: TIntegerField;
    FAT_CD_R_VISano: TIntegerField;
    FAT_CD_R_VISdta_criacao: TDateField;
    FAT_CD_R_VISint_nomeven: TWideStringField;
    FAT_CD_R_VISint_nomecli: TWideStringField;
    FAT_CD_R_VISdoc_cnpj_cpf: TWideStringField;
    FAT_CD_R_VISdta_visita: TDateField;
    FAT_CD_R_VISid_cliente: TIntegerField;
    FAT_CD_R_VISid_vis_cli: TIntegerField;
    rgBuscaDados: TRadioGroup;
    FAT_CD_R_VISint_id_vis_cli: TIntegerField;
    FAT_CD_R_VIS_RES_VEN: TClientDataSet;
    FAT_CD_R_VIS_RES_VEN_CLI: TClientDataSet;
    FAT_CD_R_VIS_RES_VEN_CLI_PRO: TClientDataSet;
    FAT_CD_R_VIS_RES_VEN_CLI_EXT: TClientDataSet;
    DB_VIS_RES_VEN: TfrxDBDataset;
    DB_VIS_RES_VEN_CLI: TfrxDBDataset;
    DB_VIS_RES_VEN_CLI_PRO: TfrxDBDataset;
    DB_VIS_RES_VEN_CLI_EXT: TfrxDBDataset;
    txtDataBase: TJvDateEdit;
    Label6: TLabel;
    cbbDensv: TComboBox;
    Label7: TLabel;
    FAT_FR_R_VIS_RES: TfrxReport;
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgBuscaDadosClick(Sender: TObject);
    procedure DB_VIS_RES_VENCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure lbxRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;

    var
      xOpcoes, xCondEmpresa, xCondVendedor: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_VIS: TFAT_FM_R_VIS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, enFunc, enConstantes;

procedure TFAT_FM_R_VIS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFAT_FM_R_VIS.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_VIS.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_VIS.DB_VIS_RES_VENCheckEOF(Sender: TObject;
  var Eof: Boolean);
var
  rDtaIni, rDtaFin, xCondVendedor: String;
begin
  inherited;

  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  xCondVendedor :=  FAT_CD_R_VIS_RES_VEN.FieldByName('id_funcionario').AsString;


   FAT_CD_R_VIS_RES_VEN_CLI.Close;
        FAT_CD_R_VIS_RES_VEN_CLI.Data :=
          FAT_CD_R_VIS_RES_VEN_CLI.DataRequest(
            VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,txtSemana.Text,txtAno.Text,
              cbbSituacao.ItemIndex,xCondVendedor,1,IntToStr(cbbDensv.ItemIndex),txtDataBase.Text]));

    FAT_CD_R_VIS_RES_VEN_CLI_PRO.Close;
        FAT_CD_R_VIS_RES_VEN_CLI_PRO.Data :=
          FAT_CD_R_VIS_RES_VEN_CLI_PRO.DataRequest(
            VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,txtSemana.Text,txtAno.Text,
              cbbSituacao.ItemIndex,xCondVendedor,1,IntToStr(cbbDensv.ItemIndex),txtDataBase.Text]));

    FAT_CD_R_VIS_RES_VEN_CLI_EXT.Close;
        FAT_CD_R_VIS_RES_VEN_CLI_EXT.Data :=
          FAT_CD_R_VIS_RES_VEN_CLI_EXT.DataRequest(
            VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,txtSemana.Text,txtAno.Text,
              cbbSituacao.ItemIndex,xCondVendedor,1,IntToStr(cbbDensv.ItemIndex),txtDataBase.Text]))
end;

procedure TFAT_FM_R_VIS.ExibirRel;
var
  rDtaIni, rDtaFin, rSituacao, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  // Período
  if (deInicial.Text <> '  /  /    ') and (deFinal.Text <> '  /  /    ') then
    begin
      rDtaIni := deInicial.Text;
      rDtaFin := deFinal.Text;
    end
  else
    begin
      rDtaIni := '';
      rDtaFin := '';
    end;

  PreencherCondicao;


  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Programação de Visita - Por Vendedor' then
     begin

        FAT_CD_R_VIS.Close;
        FAT_CD_R_VIS.Data :=
          FAT_CD_R_VIS.DataRequest(
            VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,txtSemana.Text,txtAno.Text,
              cbbSituacao.ItemIndex,xCondVendedor,1]));

        //Showmessage('Visita: ' + FAT_CD_R_VISid_vis.Text);

        if not FAT_CD_R_VIS.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(FAT_FR_R_VIS_VND.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_VIS_VND.Name,xCodLme,xRevLme,nil);
            FAT_FR_R_VIS_VND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FAT_FR_R_VIS_VND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_R_VIS_VND.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FAT_FR_R_VIS_VND.PrepareReport();
            FAT_FR_R_VIS_VND.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro foi encontrado.');
          end;
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Resultado das visitas x programação' then
     begin

        FAT_CD_R_VIS_RES_VEN.Close;
        FAT_CD_R_VIS_RES_VEN.Data :=
          FAT_CD_R_VIS_RES_VEN.DataRequest(
            VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,txtSemana.Text,txtAno.Text,
              cbbSituacao.ItemIndex,xCondVendedor,1]));

        //Showmessage('Visita: ' + FAT_CD_R_VISid_vis.Text);

        if not FAT_CD_R_VIS_RES_VEN.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(FAT_FR_R_VIS_RES.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_VIS_RES.Name,xCodLme,xRevLme,nil);
            FAT_FR_R_VIS_RES.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FAT_FR_R_VIS_RES.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_R_VIS_RES.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FAT_FR_R_VIS_RES.PrepareReport();
            FAT_FR_R_VIS_RES.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro foi encontrado.');
          end;
     end;

end;

procedure TFAT_FM_R_VIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_VIS);
end;

procedure TFAT_FM_R_VIS.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  rgBuscaDadosClick(self);


end;

procedure TFAT_FM_R_VIS.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_VIS.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_VIS.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedores,3,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_VIS.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex = 0 then
     begin
       cbbSituacao.Enabled := true;
     end
  else
     begin
       cbbSituacao.Enabled := false;
       cbbSituacao.itemindex := 0;
     end;
end;

procedure TFAT_FM_R_VIS.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;

procedure TFAT_FM_R_VIS.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesVendedor:string;
begin
  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                             '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;

  // Vendedores ----------------------------------------------------------------
  xCondVendedor := '';
  if lboxVendedores.Count > 0 then
     begin
       for i := 0 to lboxVendedores.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lboxVendedores.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                             '+lboxVendedores.Items[i]+ #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lboxVendedores.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedores.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor:= 'Todos';
    end;

  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

  if ((deInicial.Text <> '  /  /    ') and (deFinal.Text <> '  /  /    ')) then
    begin
      xOpcoes := xOpcoes + 'Período....................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
    end
  else
    begin
      xOpcoes := xOpcoes + 'Semana/Ano.................: ' + txtSemana.Text + ' / ' + txtAno.Text + #13+#10;
    end;

      xOpcoes := xOpcoes + 'Situação...................: ' + cbbSituacao.Text+#13+#10;
      xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmpresa;
      xOpcoes := xOpcoes + 'Vendedor...................: ' + opcoesVendedor+#13+#10;
end;

procedure TFAT_FM_R_VIS.rgBuscaDadosClick(Sender: TObject);
begin
  inherited;
  if rgBuscaDados.ItemIndex = 0 then
     begin
       deInicial.Enabled  := true;
       deFinal.Enabled    := true;
       txtAno.Enabled     := false;
       txtAno.text        := '';
       txtSemana.Enabled  := false;
       txtSemana.text     := '';
     end
  else
     begin
       deInicial.Enabled  := false;
       deFinal.Enabled    := false;
       deInicial.text     := '';
       deFinal.text       := '';
       txtAno.Enabled     := true;
       txtSemana.Enabled  := true;
     end;
end;

function TFAT_FM_R_VIS.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (txtDataBase.Text = '  /  /    ')  then
    begin
      mens := mens +  '.Data base deve ser preenchido.' + #13;
    end;

  if ((deInicial.Text <> '  /  /    ') or (deFinal.Text <> '  /  /    ')) then
    begin
      if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
        begin
          mens := mens +  '.Periodo deve ser preenchido.' + #13;
        end
      else if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end
  else
    begin
      if (txtSemana.Text = '') or (txtAno.Text = '') then
        begin
          mens := mens +  '.Semana/Ano ou Periodo deve ser preenchido.' + #13;
        end;
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
