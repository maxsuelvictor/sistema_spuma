unit CAD_UN_R_CLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet,Vcl.Mask, JvExMask, JvToolEdit;

type
  TCAD_FM_R_CLI = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsPerfil: TTabSheet;
    lblPerfilDisp: TLabel;
    lblPerfilSel: TLabel;
    lboxPerfilDisp: TListBox;
    lboxPerfilSel: TListBox;
    tsTipo: TTabSheet;
    lblTipoDisp: TLabel;
    lblTipoSel: TLabel;
    lboxTipoSel: TListBox;
    lboxTipoDisp: TListBox;
    tsSituacao: TTabSheet;
    lblSituacaoDisp: TLabel;
    lblSituacaoSel: TLabel;
    lboxSituacaoSel: TListBox;
    lboxSituacaoDisp: TListBox;
    tsCidade: TTabSheet;
    lblCidadeSel: TLabel;
    lboxCidadeSel: TListBox;
    Label5: TLabel;
    cbbClasse: TComboBox;
    Label4: TLabel;
    cbbAtivo: TComboBox;
    pmSelPerfil: TPopupMenu;
    btnSelTodosPerfil: TMenuItem;
    pmRemoverTodosPerfis: TPopupMenu;
    btnRemoverTodosPerfis: TMenuItem;
    pmSelTipo: TPopupMenu;
    btnSelTodosTipos: TMenuItem;
    pmSelSituacao: TPopupMenu;
    btnSelTodasSituacao: TMenuItem;
    pmRemoverTodosTipos: TPopupMenu;
    btnRemoverTodosTipos: TMenuItem;
    pmRemoverTodosSituacao: TPopupMenu;
    btnRemoverTodasSituacoes: TMenuItem;
    pmRemoverCidades: TPopupMenu;
    btnRemoverCidade: TMenuItem;
    CAD_FR_R_CLI_GER: TfrxReport;
    CAD_DB_R_CLI: TfrxDBDataset;
    CAD_PD_R_CLI: TfrxPDFExport;
    CAD_XL_R_CLI: TfrxXLSExport;
    CAD_FR_R_CLI_SIT: TfrxReport;
    CAD_FR_R_CLI_ROT: TfrxReport;
    btnRemoverTodasCidades: TMenuItem;
    CAD_FR_R_CLI_VND_DSN: TfrxReport;
    tsCliente: TTabSheet;
    lboxClienteSel: TListBox;
    Label1: TLabel;
    pmRemoverClientes: TPopupMenu;
    btnRemoverCliente: TMenuItem;
    btnRemoverTodosClientes: TMenuItem;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    CAD_FR_R_CLI_BAI: TfrxReport;
    CAD_FR_R_CLI_VND: TfrxReport;
    dtaFinal: TJvDateEdit;
    dtaInicial: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    tsEstado: TTabSheet;
    lboxUFDisp: TListBox;
    lboxUFSel: TListBox;
    Label6: TLabel;
    Label7: TLabel;
    pmSelUF: TPopupMenu;
    btnSelUF: TMenuItem;
    pmRemoverUF: TPopupMenu;
    btnRemoverUF: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxPerfilDispDblClick(Sender: TObject);
    procedure lboxPerfilSelDblClick(Sender: TObject);
    procedure btnSelTodosPerfilClick(Sender: TObject);
    procedure btnRemoverTodosPerfisClick(Sender: TObject);
    procedure btnSelTodosTiposClick(Sender: TObject);
    procedure btnSelTodasSituacaoClick(Sender: TObject);
    procedure btnRemoverTodosTiposClick(Sender: TObject);
    procedure btnRemoverTodasSituacoesClick(Sender: TObject);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxTipoDispDblClick(Sender: TObject);
    procedure lboxTipoSelDblClick(Sender: TObject);
    procedure lboxSituacaoDispDblClick(Sender: TObject);
    procedure lboxSituacaoSelDblClick(Sender: TObject);
    procedure lboxCidadeSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverTodasCidadesClick(Sender: TObject);
    procedure lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverClienteClick(Sender: TObject);
    procedure btnRemoverTodosClientesClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure lboxUFDispDblClick(Sender: TObject);
    procedure lboxUFSelDblClick(Sender: TObject);
    procedure btnSelUFClick(Sender: TObject);
    procedure btnRemoverUFClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    var
      xOpcoes, xCondPerfil, xCondTipo, xCondSituacao,
      xCondCidade,xCondCliente,xCondVendedor,xCondUF: string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CLI: TCAD_FM_R_CLI;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CID, enConstantes, PSQ_UN_X_CLI, PSQ_UN_X_FUN;

procedure TCAD_FM_R_CLI.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_CLI.btnRemoverCidadeClick(Sender: TObject);
begin
  inherited;
  if lboxCidadeSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  lboxCidadeSel.DeleteSelected;
end;

procedure TCAD_FM_R_CLI.btnRemoverClienteClick(Sender: TObject);
begin
  inherited;
  if lboxClienteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  lboxClienteSel.DeleteSelected;
end;

procedure TCAD_FM_R_CLI.btnRemoverTodasCidadesClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCidadeSel.ClearSelection;

  if lboxCidadeSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCidadeSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCidadeSel.Items.Count - 1 do
           begin
             lboxCidadeSel.Items.Delete(lboxCidadeSel.ItemIndex);
           end;
       lboxCidadeSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverTodasSituacoesClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxSituacaoSel.ClearSelection;

   if lboxSituacaoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoSel.Items.Count - 1 do
           begin
             lboxSituacaoDisp.Items.Add(lboxSituacaoSel.Items[i]);
             lboxSituacaoSel.Items.Delete(lboxSituacaoSel.ItemIndex);
           end;
       lboxSituacaoSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverTodosClientesClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxClienteSel.ClearSelection;

  if lboxClienteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxClienteSel.Items.Count > 0 then
     begin
       for i := 0 to lboxClienteSel.Items.Count - 1 do
           begin
             lboxClienteSel.Items.Delete(lboxClienteSel.ItemIndex);
           end;
       lboxClienteSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverTodosPerfisClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPerfilSel.ClearSelection;

  if lboxPerfilSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilSel.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilSel.Items.Count - 1 do
           begin
             lboxPerfilDisp.Items.Add(lboxPerfilSel.Items[i]);
             lboxPerfilSel.Items.Delete(lboxPerfilSel.ItemIndex);
           end;
       lboxPerfilSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverTodosTiposClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTipoSel.ClearSelection;

  if lboxTipoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoSel.Items.Count - 1 do
           begin
             lboxTipoDisp.Items.Add(lboxTipoSel.Items[i]);
             lboxTipoSel.Items.Delete(lboxTipoSel.ItemIndex);
           end;
       lboxTipoSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverUFClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxUFSel.ClearSelection;

   if lboxUFSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxUFSel.Items.Count > 0 then
     begin
       for i := 0 to lboxUFSel.Items.Count - 1 do
           begin
             lboxUFDisp.Items.Add(lboxUFSel.Items[i]);
             lboxUFSel.Items.Delete(lboxUFSel.ItemIndex);
           end;
       lboxUFSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TCAD_FM_R_CLI.ExibirRel;
var
  rClasse, rAtivo,rDtaInicial,rDtaFinal, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
      rClasse :=  IntToStr(cbbClasse.ItemIndex);

      rAtivo := '';
      if (cbbAtivo.Items[cbbAtivo.ItemIndex] = 'Ativos') then
        begin
          rAtivo := 'True';
        end;
      if (cbbAtivo.Items[cbbAtivo.ItemIndex] = 'Inativos') then
        begin
          rAtivo := 'False';
        end;

      rDtaInicial := '';
      rDtaFinal := '';
      if (dtainicial.Text <>'  /  /    ') and (dtaFinal.Text <>'  /  /    ') then
        begin
          rDtaInicial := dtaInicial.Text;
          rDtaFinal := dtaFinal.Text;
        end;


      PreencherCondicao;

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      dmGeral.CAD_CD_R_CLI.Active:= False;
      dmGeral.CAD_CD_R_CLI.Close;
      dmGeral.CAD_CD_R_CLI.Data :=
              dmGeral.CAD_CD_R_CLI.DataRequest(
                      VarArrayOf([lbxRelatorios.ItemIndex,rAtivo,xCondPerfil,xCondTipo,xCondSituacao,xCondCidade,rClasse,xCondCliente,xCondVendedor,rDtaInicial,rDtaFinal,xCondUF]));


      if not dmGeral.CAD_CD_R_CLI.IsEmpty then
        begin
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem Geral' then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_GER.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_GER.Name,xCodLme,xRevLme,nil);
               CAD_FR_R_CLI_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               CAD_FR_R_CLI_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               CAD_FR_R_CLI_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
               CAD_FR_R_CLI_GER.PrepareReport();
               CAD_FR_R_CLI_GER.ShowReport();
            end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Listagem por Situação') then
            begin
             if FileExists(PathImg) then
               begin
                LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_SIT.FindObject('imgEmpresa2'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_SIT.Name,xCodLme,xRevLme,nil);
               CAD_FR_R_CLI_SIT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               CAD_FR_R_CLI_SIT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               CAD_FR_R_CLI_SIT.Variables['Opcoes'] := QuotedStr(xOpcoes);
               CAD_FR_R_CLI_SIT.PrepareReport();
               CAD_FR_R_CLI_SIT.ShowReport();
            end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Listagem por Rota') then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_ROT.FindObject('imgEmpresa3'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_ROT.Name,xCodLme,xRevLme,nil);
             CAD_FR_R_CLI_ROT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             CAD_FR_R_CLI_ROT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             CAD_FR_R_CLI_ROT.Variables['Opcoes'] := QuotedStr(xOpcoes);
             CAD_FR_R_CLI_ROT.PrepareReport();
             CAD_FR_R_CLI_ROT.ShowReport();
            end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Listagem por Vendedor') then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_VND.FindObject('imgEmpresa4'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_VND.Name,xCodLme,xRevLme,nil);
             CAD_FR_R_CLI_VND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             CAD_FR_R_CLI_VND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             CAD_FR_R_CLI_VND.Variables['Opcoes'] := QuotedStr(xOpcoes);
             CAD_FR_R_CLI_VND.PrepareReport();
             CAD_FR_R_CLI_VND.ShowReport();
            end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Listagem por Bairro') then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_BAI.FindObject('imgEmpresa4'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_BAI.Name,xCodLme,xRevLme,nil);
             CAD_FR_R_CLI_BAI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             CAD_FR_R_CLI_BAI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             CAD_FR_R_CLI_BAI.Variables['Opcoes'] := QuotedStr(xOpcoes);
             CAD_FR_R_CLI_BAI.PrepareReport();
             CAD_FR_R_CLI_BAI.ShowReport();
            end;

           if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Listagem por Vendedor/Desenvolvimento') then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_VND_DSN.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_VND_DSN.Name,xCodLme,xRevLme,nil);
             CAD_FR_R_CLI_VND_DSN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             CAD_FR_R_CLI_VND_DSN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             CAD_FR_R_CLI_VND_DSN.Variables['Opcoes'] := QuotedStr(xOpcoes);
             CAD_FR_R_CLI_VND_DSN.PrepareReport();
             CAD_FR_R_CLI_VND_DSN.ShowReport();
            end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Ficha Cadastral') then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(dmGeral.CAD_FR_R_CLI_FIC.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             //dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_CLI_FIC.Name,xCodLme,xRevLme,nil);
             //CAD_FR_R_CLI_FIC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             dmGeral.CAD_FR_R_CLI_FIC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             //CAD_FR_R_CLI_FIC.Variables['Opcoes'] := QuotedStr(xOpcoes);
             dmGeral.CAD_FR_R_CLI_FIC.PrepareReport();
             dmGeral.CAD_FR_R_CLI_FIC.ShowReport();
            end;
        end
        else
         begin
           ShowMessage('Nenhum registro foi encontrado');
         end;
    end;
end;

procedure TCAD_FM_R_CLI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CLI);
end;

procedure TCAD_FM_R_CLI.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  tsCliente.TabVisible := false;
  // Perfil --------------------------------------------------------------------
  dmGeral.BUS_CD_C_PEC.Close;
  dmGeral.BUS_CD_C_PEC.Data :=
  dmGeral.BUS_CD_C_PEC.DataRequest(
          VarArrayOf([1, '']));

 if not dmGeral.BUS_CD_C_PEC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PEC.First;

       while not dmGeral.BUS_CD_C_PEC.eof do
          begin
            lboxPerfilDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PEC.Next;
          end;
     end;
 dmGeral.BUS_CD_C_PEC.Close;

 // Tipo do Cliente ---------------------------------------------------------
  dmGeral.BUS_PR_X_TCN;
  if not dmGeral.BUS_CD_X_TCN.IsEmpty then
    begin
      dmGeral.BUS_CD_X_TCN.First;
      while not dmGeral.BUS_CD_X_TCN.EOF do
        begin
          lboxTipoDisp.Items.Add(StrZero(dmGeral.BUS_CD_X_TCN.FieldByName('CODIGO').AsFloat,3,0)+' - '+dmGeral.BUS_CD_X_TCN.FieldByName('DESCRICAO').AsString);
          dmGeral.BUS_CD_X_TCN.Next;
        end;
    end;
 // Situação -------------------------------------------------------------------
  dmGeral.BUS_PR_X_STC;
  if not dmGeral.BUS_CD_X_STC.IsEmpty then
    begin
      dmGeral.BUS_CD_X_STC.First;
      while not dmGeral.BUS_CD_X_STC.EOF do
        begin
          lboxSituacaoDisp.Items.Add(StrZero(dmGeral.BUS_CD_X_STC.FieldByName('CODIGO').AsFloat,3,0)+' - '+dmGeral.BUS_CD_X_STC.FieldByName('DESCRICAO').AsString);
          dmGeral.BUS_CD_X_STC.Next;
        end;
    end;


  dmGeral.BUS_PR_X_UFS;
  if not dmGeral.BUS_CD_X_UFS.IsEmpty then
     begin
       dmGeral.BUS_CD_X_UFS.First;

       while not dmGeral.BUS_CD_X_UFS.eof do
          begin
            lboxUFDisp.Items.Add(dmGeral.BUS_CD_X_UFS.FieldByName('CODIGO').AsString +
                                    ' - ' + dmGeral.BUS_CD_X_UFS.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_UFS.Next;
          end;
     end;
 dmGeral.BUS_CD_X_UFS.Close;



 // Cidade ---------------------------------------------------------------------
 { dmGeral.CAD_CD_C_CID.Close;
  dmGeral.CAD_CD_C_CID.Data :=
  dmGeral.CAD_CD_C_CID.DataRequest(
          VarArrayOf([1, '']));

 if not dmGeral.CAD_CD_C_CID.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CID.First;

       while not dmGeral.CAD_CD_C_CID.eof do
          begin
            lboxCidadeDisp.Items.Add(StrZero(dmGeral.CAD_CD_C_CID.FieldByName('ID_CIDADE').AsFloat,7,0) +
                                    ' - ' + dmGeral.CAD_CD_C_CID.FieldByName('NOME').AsString);
            dmGeral.CAD_CD_C_CID.Next;
          end;
     end;
 dmGeral.CAD_CD_C_CID.Close; }

end;



procedure TCAD_FM_R_CLI.lboxCidadeSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
        PSQ_FM_X_CID.ShowModal;
        if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCidadeSel,Length(trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString))+2,trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString)+' -') then
                begin
                  lboxCidadeSel.Items.Add(trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString) +
                                             ' - ' + PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString+'-'+
                                                     PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString);
                end;
           end;
         PSQ_FM_X_CID.Free;
     end;
end;

procedure TCAD_FM_R_CLI.lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
              if not dmGeral.ExisteRegNoListBox(lboxClienteSel,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxClienteSel.Items.Add(StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TCAD_FM_R_CLI.lboxPerfilDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxPerfilDisp.ItemIndex > -1 then
     begin
       lboxPerfilSel.Items.Add(lboxPerfilDisp.Items[lboxPerfilDisp.ItemIndex]);
       lboxPerfilDisp.Items.Delete(lboxPerfilDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxPerfilSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxPerfilSel.ItemIndex > -1 then
     begin
       lboxPerfilDisp.Items.Add(lboxPerfilSel.Items[lboxPerfilSel.ItemIndex]);
       lboxPerfilSel.Items.Delete(lboxPerfilSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxSituacaoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoDisp.ItemIndex > -1 then
     begin
       lboxSituacaoSel.Items.Add(lboxSituacaoDisp.Items[lboxSituacaoDisp.ItemIndex]);
       lboxSituacaoDisp.Items.Delete(lboxSituacaoDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxSituacaoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoSel.ItemIndex > -1 then
     begin
       lboxSituacaoDisp.Items.Add(lboxSituacaoSel.Items[lboxSituacaoSel.ItemIndex]);
       lboxSituacaoSel.Items.Delete(lboxSituacaoSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxTipoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoDisp.ItemIndex > -1 then
     begin
       lboxTipoSel.Items.Add(lboxTipoDisp.Items[lboxTipoDisp.ItemIndex]);
       lboxTipoDisp.Items.Delete(lboxTipoDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxTipoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoSel.ItemIndex > -1 then
     begin
       lboxTipoDisp.Items.Add(lboxTipoSel.Items[lboxTipoSel.ItemIndex]);
       lboxTipoSel.Items.Delete(lboxTipoSel.ItemIndex);
     end;
end;



procedure TCAD_FM_R_CLI.lboxUFDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxUFDisp.ItemIndex > -1 then
     begin
       lboxUFSel.Items.Add(lboxUFDisp.Items[lboxUFDisp.ItemIndex]);
       lboxUFDisp.Items.Delete(lboxUFDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxUFSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxUFSel.ItemIndex > -1 then
     begin
       lboxUFDisp.Items.Add(lboxUFSel.Items[lboxUFSel.ItemIndex]);
       lboxUFSel.Items.Delete(lboxUFSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CLI.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
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
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TCAD_FM_R_CLI.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Ficha Cadastral' then
    begin
      tsCliente.TabVisible := true;
    end
  else
    begin
      tsCliente.TabVisible := false;
    end;
end;

procedure TCAD_FM_R_CLI.btnSelTodosPerfilClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPerfilDisp.ClearSelection;
  if lboxPerfilDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilDisp.Items.Count - 1 do
           begin
             lboxPerfilSel.Items.Add(lboxPerfilDisp.Items[i]);
             lboxPerfilDisp.Items.Delete(lboxPerfilDisp.ItemIndex);
           end;
       lboxPerfilDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnSelTodasSituacaoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxSituacaoDisp.ClearSelection;
  if lboxSituacaoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoDisp.Items.Count - 1 do
           begin
             lboxSituacaoSel.Items.Add(lboxSituacaoDisp.Items[i]);
             lboxSituacaoDisp.Items.Delete(lboxSituacaoDisp.ItemIndex);
           end;
       lboxSituacaoDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnSelTodosTiposClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoDisp.ClearSelection;

  if lboxTipoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoDisp.Items.Count - 1 do
           begin
             lboxTipoSel.Items.Add(lboxTipoDisp.Items[i]);
             lboxTipoDisp.Items.Delete(lboxTipoDisp.ItemIndex);
           end;
       lboxTipoDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.btnSelUFClick(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  lboxUFDisp.ClearSelection;
  if lboxUFDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxUFDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxUFDisp.Items.Count - 1 do
           begin
             lboxUFSel.Items.Add(lboxUFDisp.Items[i]);
             lboxUFDisp.Items.Delete(lboxUFDisp.ItemIndex);
           end;
       lboxUFDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CLI.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesPerfil,opcoesTipo,opcoesSituacao,opcoesCidade,opcoesVendedor,opcoesUF:string;
begin
  // Perfil ----------------------------------------------------------------
  xCondPerfil := '';
  if lboxPerfilSel.Count > 0 then
     begin
      if lboxPerfilDisp.Count > 0 then
        begin
         for i := 0 to lboxPerfilSel.Count - 1 do
          begin
            if xCondPerfil <> '' then
               begin
                 xCondPerfil :=
                 xCondPerfil + ',' +''''+trim(copy(lboxPerfilSel.Items[i],1,3))+'''';
                 opcoesPerfil :=
                 opcoesPerfil +'                    '+lboxPerfilSel.Items[i] + #13+#10;
               end;
            if xCondPerfil = '' then
               begin
                 xCondPerfil :=
                 xCondPerfil +''''+trim(copy(lboxPerfilSel.Items[i],1,3))+'''';
                 opcoesPerfil :=
                 opcoesPerfil + lboxPerfilSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesPerfil:= 'Todos';
        End;
    end
   else
     begin
       opcoesPerfil:= 'Todos';
     end;

  // Tipo ----------------------------------------------------------------
  xCondTipo := '';
  if lboxTipoSel.Count > 0 then
     begin
      if lboxTipoDisp.Count > 0 then
        begin
         for i := 0 to lboxTipoSel.Count - 1 do
          begin
            if xCondTipo <> '' then
               begin
                 xCondTipo :=
                 xCondTipo + ',' +''''+trim(copy(lboxTipoSel.Items[i],1,3))+'''';
                 opcoesTipo :=
                 opcoesTipo +'                    '+lboxTipoSel.Items[i] + #13+#10;
               end;
            if xCondTipo = '' then
               begin
                 xCondTipo :=
                 xCondTipo +''''+trim(copy(lboxTipoSel.Items[i],1,3))+'''';
                 opcoesTipo :=
                 opcoesTipo + lboxTipoSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesTipo:= 'Todos';
        End;
    end
   else
     begin
       opcoesTipo:= 'Todos';
     end;

  // Situação ----------------------------------------------------------------
  xCondSituacao := '';
  if lboxSituacaoSel.Count > 0 then
     begin
      if lboxSituacaoDisp.Count > 0 then
        begin
         for i := 0 to lboxSituacaoSel.Count - 1 do
          begin
            if xCondSituacao <> '' then
               begin
                 xCondSituacao :=
                 xCondSituacao + ',' +''''+trim(copy(lboxSituacaoSel.Items[i],1,3))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +'                    '+lboxSituacaoSel.Items[i] + #13+#10;
               end;
            if xCondSituacao = '' then
               begin
                 xCondSituacao :=
                 xCondSituacao +''''+trim(copy(lboxSituacaoSel.Items[i],1,3))+'''';
                 opcoesSituacao :=
                 opcoesSituacao + lboxSituacaoSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesSituacao:= 'Todos';
        End;
    end
   else
     begin
       opcoesSituacao:= 'Todos';
     end;

  // Cidade ----------------------------------------------------------------
  xCondCidade := '';
  if lboxCidadeSel.Count > 0 then
    begin
      for i := 0 to lboxCidadeSel.Count - 1 do
        begin
          if xCondCidade <> '' then
            begin
              xCondCidade :=
              xCondCidade + ',' +''''+trim(copy(lboxCidadeSel.Items[i],1,pos(' - ',lboxCidadeSel.Items[i])-1))+'''';
              opcoesCidade :=
              opcoesCidade +'                    '+lboxCidadeSel.Items[i] + #13+#10;
            end;
          if xCondCidade = '' then
            begin
              xCondCidade :=
              xCondCidade +''''+trim(copy(lboxCidadeSel.Items[i],1,pos(' - ',lboxCidadeSel.Items[i])-1))+'''';
              opcoesCidade :=
              opcoesCidade + lboxCidadeSel.Items[i] + #13+#10;
            end;
        end;
    end
  else
    begin
      opcoesCidade:= 'Todos';
    end;


 // Estado ----------------------------------------------------------------
  xCondUF := '';
  if lboxUFSel.Count > 0 then
     begin
      if lboxUFDisp.Count > 0 then
        begin
         for i := 0 to lboxUFSel.Count - 1 do
          begin
            if xCondUF <> '' then
               begin
                 xCondUF :=
                 xCondUF + ',' +''''+trim(copy(lboxUFSel.Items[i],1,2))+'''';
                 opcoesUF :=
                 opcoesUF +','+trim(copy(lboxUFSel.Items[i],1,2));
               end;
            if xCondUF = '' then
               begin
                 xCondUF :=
                 xCondUF +''''+trim(copy(lboxUFSel.Items[i],1,2))+'''';
                 opcoesUF :=
                 opcoesUF + trim(copy(lboxUFSel.Items[i],1,2));
               end;
          end;
     end
     else
        begin
          opcoesUF:= 'Todos';
        End;
    end
   else
     begin
       opcoesUF:= 'Todos';
     end;


  // Cliente ----------------------------------------------------------------
  xCondCliente := '';
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Ficha Cadastral' then
     begin
      if lboxClienteSel.Count > 0 then
        begin
          for i := 0 to lboxClienteSel.Count - 1 do
            begin
              if xCondCliente <> '' then
                begin
                  xCondCliente :=
                  xCondCliente + ',' +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
                end;
              if xCondCliente = '' then
                begin
                  xCondCliente :=
                  xCondCliente +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
                end;
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
                 xCondVendedor + ',' +''''+trim(copy(lboxVendedores.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + '                         '+lboxVendedores.Items[i] + #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lboxVendedores.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedores.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor := 'Todos';
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Classificar por...: ' + cbbClasse.Items[cbbClasse.ItemIndex]+#13+#10;
   if (dtaFinal.Text <> '  /  /    ') and (dtaInicial.Text <> '  /  /    ') then
      xOpcoes := xOpcoes + 'Período...........: ' + dtaInicial.Text +' à '+dtaFinal.Text+#13+#10;
   xOpcoes := xOpcoes + 'Ativo.............: ' + cbbAtivo.Items[cbbAtivo.ItemIndex]+#13+#10;
   xOpcoes := xOpcoes + 'Perfil............: ' + opcoesPerfil+#13+#10;
   xOpcoes := xOpcoes + 'Tipo..............: ' + opcoesTipo+#13+#10;
   xOpcoes := xOpcoes + 'Situação..........: ' + opcoesSituacao+#13+#10;
   xOpcoes := xOpcoes + 'Cidade............: ' + opcoesCidade+#13+#10;
   xOpcoes := xOpcoes + 'Estado............: ' + opcoesUF+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor+#13+#10;
end;

end.
