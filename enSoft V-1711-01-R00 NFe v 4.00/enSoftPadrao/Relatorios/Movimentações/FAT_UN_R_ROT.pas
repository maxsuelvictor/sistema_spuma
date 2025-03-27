unit FAT_UN_R_ROT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, Vcl.ComCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, frxExportXLS, frxExportPDF, frxDBSet, Data.DB,
  Datasnap.DBClient, Vcl.Menus;

type
  TFAT_FM_R_ROT = class(TPAD_FM_X_REL)
    FAT_FR_R_ROT: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    tsRegiao: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    lboxRotDisp: TListBox;
    lboxRotSel: TListBox;
    FAT_CD_R_ROT: TClientDataSet;
    FAT_DB_R_ROT: TfrxDBDataset;
    FAT_PD_R_ROT: TfrxPDFExport;
    FAT_XL_R_ROT: TfrxXLSExport;
    FAT_CD_R_NOT_ROT: TClientDataSet;
    FAT_DB_R_NOT_ROT: TfrxDBDataset;
    FAT_CD_R_ROTid_emitente: TIntegerField;
    FAT_CD_R_ROTnumero: TIntegerField;
    FAT_CD_R_ROTint_cliente: TWideStringField;
    FAT_CD_R_ROTint_vendedor: TWideStringField;
    FAT_CD_R_ROTid_pedido_venda: TIntegerField;
    FAT_CD_R_ROTid_rota: TIntegerField;
    FAT_CD_R_ROTint_rota: TWideStringField;
    FAT_CD_R_ROTdta_emissao: TDateField;
    FAT_CD_R_ROTvlr_liquido: TFloatField;
    FAT_CD_R_ROTvlr_desconto: TFMTBCDField;
    FAT_CD_R_ROTqtde: TFloatField;
    FAT_CD_R_ROTqtde_dev: TFloatField;
    FAT_CD_R_NOT_ROTid_cliente: TIntegerField;
    FAT_CD_R_NOT_ROTint_cliente: TWideStringField;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    pmSelRota: TPopupMenu;
    MenuItem1: TMenuItem;
    pmRemoverRota: TPopupMenu;
    MenuItem2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxRotDispClick(Sender: TObject);
    procedure lboxRotSelClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes,xCondEmpresa,xCondVendedor,xCondRota: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_ROT: TFAT_FM_R_ROT;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc, PSQ_UN_X_FUN;

procedure TFAT_FM_R_ROT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFAT_FM_R_ROT.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_ROT.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_ROT.ExibirRel;
var
  rDtaIni, rDtaFin,PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  FAT_CD_R_ROT.Close;
  FAT_CD_R_ROT.Data :=
    FAT_CD_R_ROT.DataRequest(
      VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondRota, xCondVendedor]));

  FAT_CD_R_NOT_ROT.Close;
  FAT_CD_R_NOT_ROT.Data :=
    FAT_CD_R_NOT_ROT.DataRequest(
      VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondRota, xCondVendedor]));

  if not FAT_CD_R_ROT.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
         begin
            LogoEmpresa := TfrxPictureView(FAT_FR_R_ROT.FindObject('imgEmpresa1'));
            if Assigned(LogoEmpresa) then
               LogoEmpresa.Picture.LoadFromFile(PathImg);
         end;

      dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_ROT.Name,xCodLme,xRevLme,nil);

      FAT_FR_R_ROT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      FAT_FR_R_ROT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      FAT_FR_R_ROT.Variables['Opcoes'] := QuotedStr(xOpcoes);
      FAT_FR_R_ROT.PrepareReport();
      FAT_FR_R_ROT.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum registro encontrado.');
    end;
end;

procedure TFAT_FM_R_ROT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_ROT);
end;

procedure TFAT_FM_R_ROT.FormShow(Sender: TObject);
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

  // Rota ----------------------------------------------------------------------
  dmGeral.BUS_CD_C_ROT.Close;
  dmGeral.BUS_CD_C_ROT.Data :=
  dmGeral.BUS_CD_C_ROT.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_ROT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ROT.First;

       while not dmGeral.BUS_CD_C_ROT.eof do
          begin
            lboxRotDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ROT.FieldByName('ID_ROTA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ROT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ROT.Next;
          end;
     end;
  dmGeral.BUS_CD_C_ROT.Close;
end;

procedure TFAT_FM_R_ROT.lboxEmpresasClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ROT.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ROT.lboxRotDispClick(Sender: TObject);
begin
  inherited;
  if lboxRotDisp.ItemIndex > - 1 then
     begin
       lboxRotSel.Items.Add(lboxRotDisp.Items[lboxRotDisp.ItemIndex]);
       lboxRotDisp.Items.Delete(lboxRotDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ROT.lboxRotSelClick(Sender: TObject);
begin
  inherited;
  if lboxRotSel.ItemIndex > -1 then
     begin
       lboxRotDisp.Items.Add(lboxRotSel.Items[lboxRotSel.ItemIndex]);
       lboxRotSel.Items.Delete(lboxRotSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ROT.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_R_ROT.MenuItem1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxRotDisp.ClearSelection;

  if lboxRotDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRotDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxRotDisp.Items.Count - 1 do
           begin
             lboxRotSel.Items.Add(lboxRotDisp.Items[i]);
             lboxRotDisp.Items.Delete(lboxRotDisp.ItemIndex);
           end;
       lboxRotDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_ROT.MenuItem2Click(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxRotSel.ClearSelection;

  if lboxRotSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRotSel.Items.Count > 0 then
     begin
       for i := 0 to lboxRotSel.Items.Count - 1 do
           begin
             lboxRotDisp.Items.Add(lboxRotSel.Items[i]);
             lboxRotSel.Items.Delete(lboxRotSel.ItemIndex);
           end;
       lboxRotSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_ROT.menuItemEmpresasClick(Sender: TObject);
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

procedure TFAT_FM_R_ROT.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesVendedor, opcoesRota:string;
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

  // Rota ----------------------------------------------------------
  xCondRota := '';
  if lboxRotSel.Count > 0 then
    begin
      if lboxRotDisp.Count > 0 then
        begin
          for i := 0 to lboxRotSel.Count - 1 do
            begin
              if xCondRota <> '' then
                begin
                  xCondRota :=
                  xCondRota + ',' +''''+trim(copy(lboxRotSel.Items[i],1,3))+'''';
                  opcoesRota :=
                  opcoesRota +'                             '+lboxRotSel.Items[i] + #13+#10;
                end;
              if xCondRota = '' then
                begin
                  xCondRota :=
                  xCondRota +''''+trim(copy(lboxRotSel.Items[i],1,3))+'''';
                  opcoesRota :=
                  opcoesRota +lboxRotSel.Items[i] + #13+#10;
                end;
            end;
        end
      else
        begin
          opcoesRota := 'Todos';
        end;
    end
  else
    begin
      opcoesRota := 'Todos';
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor...................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Rota.......................: ' + opcoesRota+#13+#10;
end;

function TFAT_FM_R_ROT.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end
  else
      begin
        if (deInicial.Date >  deFinal.Date) then
            begin
              mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
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
