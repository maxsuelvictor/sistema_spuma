unit FIN_UN_R_ANV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_ANV = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsCliente: TTabSheet;
    tsSituacao: TTabSheet;
    lblMes: TLabel;
    cbbMes: TComboBox;
    lblClienteDisponiveis: TLabel;
    lboxCliente: TListBox;
    tsPerfilCliente: TTabSheet;
    lblPerfilClienteDisponiveis: TLabel;
    lboxPerfilClienteDisponiveis: TListBox;
    lboxPerfilClienteSelecionado: TListBox;
    lblPerfilClienteSelecionado: TLabel;
    pmRemoverCliente: TPopupMenu;
    btnRemoverCliente: TMenuItem;
    lboxSituacao: TListBox;
    lboxSituacaoSelecionada: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    pmSelPerfilCliente: TPopupMenu;
    btnSelPerfilCliente: TMenuItem;
    pmRemoverPerfilCliente: TPopupMenu;
    btnRemoverPerfilCliente: TMenuItem;
    pmSelSituacao: TPopupMenu;
    MenuItemSituacoes: TMenuItem;
    pmRemoverSituacao: TPopupMenu;
    btnRemoverSituacao: TMenuItem;
    Label3: TLabel;
    cbbAtivo: TComboBox;
    FIN_CD_R_ANV: TClientDataSet;
    FIN_FR_R_ANV: TfrxReport;
    FIN_DB_R_ANV: TfrxDBDataset;
    FIN_PD_R_ANV: TfrxPDFExport;
    FIN_XL_R_ANV: TfrxXLSExport;
    FIN_FR_R_ANV_PEF: TfrxReport;
    FIN_CD_R_ANVsubstr: TWideMemoField;
    FIN_CD_R_ANVint_mes_aniver: TWideMemoField;
    FIN_CD_R_ANVint_ordem_aniver: TIntegerField;
    FIN_CD_R_ANVid_cliente: TIntegerField;
    FIN_CD_R_ANVnome: TWideStringField;
    FIN_CD_R_ANVtel_fixo: TWideStringField;
    FIN_CD_R_ANVint_celular: TWideStringField;
    FIN_CD_R_ANVemail: TWideStringField;
    FIN_CD_R_ANVdta_nascimento: TDateField;
    FIN_CD_R_ANVid_perfil_cli: TIntegerField;
    FIN_CD_R_ANVint_nomepec: TWideStringField;
    procedure lboxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxPerfilClienteDisponiveisDblClick(Sender: TObject);
    procedure lboxPerfilClienteSelecionadoDblClick(Sender: TObject);
    procedure btnRemoverClienteClick(Sender: TObject);
    procedure MenuItemSituacoesClick(Sender: TObject);
    procedure btnRemoverSituacaoClick(Sender: TObject);
    procedure btnSelPerfilClienteClick(Sender: TObject);
    procedure btnRemoverPerfilClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxSituacaoSelecionadaDblClick(Sender: TObject);
    procedure lboxSituacaoDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;

    var
      xOpcoes, xCondSituacao, xCondCliente, xCondPerfil: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_ANV: TFIN_FM_R_ANV;

implementation

{$R *.dfm}

uses PSQ_UN_X_CLI, enFunc, uDmGeral, enConstantes;

procedure TFIN_FM_R_ANV.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TFIN_FM_R_ANV.btnRemoverClienteClick(Sender: TObject);
begin
  inherited;
  if lboxCliente.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxCliente.DeleteSelected;
end;

procedure TFIN_FM_R_ANV.btnRemoverPerfilClienteClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPerfilClienteSelecionado.ClearSelection;

  if lboxPerfilClienteSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilClienteSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilClienteSelecionado.Items.Count - 1 do
           begin
             lboxPerfilClienteDisponiveis.Items.Add(lboxPerfilClienteSelecionado.Items[i]);
             lboxPerfilClienteSelecionado.Items.Delete(lboxPerfilClienteSelecionado.ItemIndex);
           end;
       lboxPerfilClienteSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_ANV.btnRemoverSituacaoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxSituacaoSelecionada.ClearSelection;

  if lboxSituacaoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
           begin
             lboxSituacao.Items.Add(lboxSituacaoSelecionada.Items[i]);
             lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
           end;
       lboxSituacaoSelecionada.Items.Clear;
     end;
end;

procedure TFIN_FM_R_ANV.btnSelPerfilClienteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPerfilClienteDisponiveis.ClearSelection;
  if lboxPerfilClienteDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilClienteDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilClienteDisponiveis.Items.Count - 1 do
           begin
             lboxPerfilClienteSelecionado.Items.Add(lboxPerfilClienteDisponiveis.Items[i]);
             lboxPerfilClienteDisponiveis.Items.Delete(lboxPerfilClienteDisponiveis.ItemIndex);
           end;
       lboxPerfilClienteDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_ANV.ExibirRel;
var
  rMes, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    Showmessage('Nenhum relatório foi selecionado.');

  rMes := copy(cbbMes.Text,1,2);

  PreencherCondicao;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  FIN_CD_R_ANV.Close;
  FIN_CD_R_ANV.Data :=
    FIN_CD_R_ANV.DataRequest(
      VarArrayOf([rMes,xCondCliente,xCondSituacao,xCondPerfil,cbbAtivo.ItemIndex,lbxRelatorios.ItemIndex]));

  if not FIN_CD_R_ANV.IsEmpty then
    begin
      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Cliente' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_ANV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
         dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_ANV.Name,xCodLme,xRevLme,nil);
         FIN_FR_R_ANV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
         FIN_FR_R_ANV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
         FIN_FR_R_ANV.Variables['Opcoes'] := QuotedStr(xOpcoes);
         FIN_FR_R_ANV.PrepareReport();
         FIN_FR_R_ANV.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Perfil' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_ANV_PEF.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_ANV_PEF.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_ANV_PEF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_ANV_PEF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_ANV_PEF.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_ANV_PEF.PrepareReport();
          FIN_FR_R_ANV_PEF.ShowReport();
        end;
    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

procedure TFIN_FM_R_ANV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_ANV);
end;

procedure TFIN_FM_R_ANV.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;

  // Perfil do Cliente ---------------------------------------------------------
  dmGeral.BUS_CD_C_PEC.Close;
  dmGeral.BUS_CD_C_PEC.Data :=
  dmGeral.BUS_CD_C_PEC.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PEC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PEC.First;

       while not dmGeral.BUS_CD_C_PEC.eof do
          begin
            lboxPerfilClienteDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PEC.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PEC.Close;

end;

procedure TFIN_FM_R_ANV.lboxClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_ClI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCliente,6,StrZero(PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxCliente.Items.Add(StrZero(PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TFIN_FM_R_ANV.lboxPerfilClienteDisponiveisDblClick(Sender: TObject);
begin
  inherited;
    if lboxPerfilClienteDisponiveis.ItemIndex > - 1 then
     begin
       lboxPerfilClienteSelecionado.Items.Add(lboxPerfilClienteDisponiveis.Items[lboxPerfilClienteDisponiveis.ItemIndex]);
       lboxPerfilClienteDisponiveis.Items.Delete(lboxPerfilClienteDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_ANV.lboxPerfilClienteSelecionadoDblClick(Sender: TObject);
begin
  inherited;
   if lboxPerfilClienteSelecionado.ItemIndex > -1 then
     begin
       lboxPerfilClienteDisponiveis.Items.Add(lboxPerfilClienteSelecionado.Items[lboxPerfilClienteSelecionado.ItemIndex]);
       lboxPerfilClienteSelecionado.Items.Delete(lboxPerfilClienteSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_ANV.lboxSituacaoDblClick(Sender: TObject);
begin
  inherited;
   if lboxSituacao.ItemIndex > - 1 then
     begin
       lboxSituacaoSelecionada.Items.Add(lboxSituacao.Items[lboxSituacao.ItemIndex]);
       lboxSituacao.Items.Delete(lboxSituacao.ItemIndex);
     end;
end;

procedure TFIN_FM_R_ANV.lboxSituacaoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoSelecionada.ItemIndex > -1 then
     begin
       lboxSituacao.Items.Add(lboxSituacaoSelecionada.Items[lboxSituacaoSelecionada.ItemIndex]);
       lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_ANV.MenuItemSituacoesClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxSituacao.ClearSelection;

  if lboxSituacao.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacao.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacao.Items.Count - 1 do
           begin
             lboxSituacaoSelecionada.Items.Add(lboxSituacao.Items[i]);
             lboxSituacao.Items.Delete(lboxSituacao.ItemIndex);
           end;
       lboxSituacao.Items.Clear;
     end;
end;

procedure TFIN_FM_R_ANV.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesCliente,opcoesSituacao,opcoesPerfil:string;
begin
  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxCliente.Count > 0 then
     begin
       for i := 0 to lboxCliente.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente+ ',' +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'             '+lboxCliente.Items[i] + #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxCliente.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCliente := 'Todos'+ #13+#10;
    end;

  // Situação ------------------------------------------------------------------
  xCondSituacao := '';
  if lboxSituacaoSelecionada.Count > 0 then
     begin
    if lboxSituacao.Count > 0 then
      begin
       for i := 0 to lboxSituacaoSelecionada.Count - 1 do
          begin
            if xCondSituacao <> '' then
               begin
                 xCondSituacao :=
                 xCondSituacao + ',' +''''+trim(copy(lboxSituacaoSelecionada.Items[i],1,1))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +'             '+lboxSituacaoSelecionada.Items[i] + #13+#10;
               end;
            if xCondSituacao = '' then
               begin
                 xCondSituacao :=
                 xCondSituacao +''''+trim(copy(lboxSituacaoSelecionada.Items[i],1,1))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +lboxSituacaoSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesSituacao :='Todos'+ #13+#10;
     end;
     end
  else
     begin
       opcoesSituacao :='Todos'+ #13+#10;
     end;

  // Perfil --------------------------------------------------------------------
  xCondPerfil := '';
  if lboxPerfilClienteSelecionado.Count > 0 then
     begin
    if lboxPerfilClienteDisponiveis.Count > 0 then
      begin
       for i := 0 to lboxPerfilClienteSelecionado.Count - 1 do
          begin
            if xCondPerfil <> '' then
               begin
                 xCondPerfil :=
                 xCondPerfil + ',' +''''+trim(copy(lboxPerfilClienteSelecionado.Items[i],1,3))+'''';
                 opcoesPerfil :=
                 opcoesPerfil +'             '+lboxPerfilClienteSelecionado.Items[i] + #13+#10;
               end;
            if xCondPerfil = '' then
               begin
                 xCondPerfil :=
                 xCondPerfil +''''+trim(copy(lboxPerfilClienteSelecionado.Items[i],1,3))+'''';
                 opcoesPerfil :=
                 opcoesPerfil +lboxPerfilClienteSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesPerfil :='Todos'+ #13+#10;
     end;
     end
  else
     begin
       opcoesPerfil :='Todos'+ #13+#10;
     end;

  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Cliente....: ' + opcoesCliente;
  xOpcoes := xOpcoes + 'Situação...: ' + opcoesSituacao;
  xOpcoes := xOpcoes + 'Perfil.....: ' + opcoesPerfil;
  xOpcoes := xOpcoes + 'Status.....: ' + cbbAtivo.Text;
end;

end.
