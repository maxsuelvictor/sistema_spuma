unit FAT_UN_R_COV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportXLS,
  frxClass, frxExportPDF, frxDBSet, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_COV = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    FAT_FR_R_COV_FAT: TfrxReport;
    FAT_FR_R_COV_REC: TfrxReport;
    FAT_DB_R_COV_REC: TfrxDBDataset;
    FAT_PD_R_COV: TfrxPDFExport;
    FAT_XL_R_COV: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    FAT_DB_R_COV_FAT: TfrxDBDataset;
    FAT_CD_R_COV_REC: TClientDataSet;
    FAT_CD_R_COV_FAT: TClientDataSet;
    lblPerCmv: TLabel;
    cbbTipoCmv: TComboBox;
    FAT_CD_R_COV_FAT_PED: TClientDataSet;
    FAT_FR_R_COV_FAT_PED: TfrxReport;
    FAT_DB_R_COV_FAT_PED: TfrxDBDataset;
    FAT_FR_R_COV_FAT_ITE: TfrxReport;
    FAT_CD_R_COV_FAT_ITE: TClientDataSet;
    FAT_DB_R_COV_FAT_ITE: TfrxDBDataset;
    tsFornecedor: TTabSheet;
    lboxFornecedores: TListBox;
    Label3: TLabel;
    tsItem: TTabSheet;
    lboxItens: TListBox;
    Label4: TLabel;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    pmRemoverItem: TPopupMenu;
    btnRemoverItem: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_COV: TFAT_FM_R_COV;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, PSQ_UN_X_FOR, FAT_RN_R_COV, PSQ_UN_X_ITE;

procedure TFAT_FM_R_COV.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(deInicial,deFinal,cbbTipoCmv,lboxEmpresaSelecionada) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxVendedores,lboxFornecedores,lboxItens,deInicial,deFinal,cbbTipoCmv,FAT_FR_R_COV_FAT, FAT_FR_R_COV_FAT_ITE,
                FAT_FR_R_COV_FAT_PED,FAT_FR_R_COV_REC);
    end;
end;



procedure TFAT_FM_R_COV.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
   if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_COV.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TFAT_FM_R_COV.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_COV.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;




procedure TFAT_FM_R_COV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_COV);
end;

procedure TFAT_FM_R_COV.FormCreate(Sender: TObject);
begin
  inherited;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) then
    begin
      lblTitulo.Caption := 'Comissão do Representante';
      tsVendedor.Caption := 'Representante';
      lblVendedoresDisponiveis.Caption := 'Dê um click no campo abaixo e tecle <F3> para selecionar algum Representante';
      tsFornecedor.TabVisible := false;
      tsItem.TabVisible := false;
    end
  else
    begin
      lblTitulo.Caption := 'Comissão do Vendedor';
      tsVendedor.Caption := 'Vendedor';
      lblVendedoresDisponiveis.Caption := 'Dê um click no campo abaixo e tecle <F3> para selecionar algum Vendedor';
      tsFornecedor.TabVisible := true;
      tsItem.TabVisible := true;
    end;


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) then
    begin
      lbxRelatorios.Clear;
      lbxRelatorios.AddItem('00 - Faturamento',nil);
    end;

  lbxRelatorios.ItemIndex := 0;
  lbxRelatoriosClick(self);
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


end;



procedure TFAT_FM_R_COV.FormShow(Sender: TObject);
begin
  inherited;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  if dmGeral.BUS_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then // Externo
     begin
       lboxVendedores.Items.Add(StrZero(dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                              ' - ' + dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString);
       tsVendedor.TabVisible := false;
     end;
end;

procedure TFAT_FM_R_COV.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_COV.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;





procedure TFAT_FM_R_COV.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedores,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_COV.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItens.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TFAT_FM_R_COV.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedores,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_COV.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;

  cbbTipoCmv.Clear;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex]='00 - Faturamento' then
    begin
      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) then
        begin
          cbbTipoCmv.AddItem('2 - Pedido de venda',nil);
        end
      else
        begin
          cbbTipoCmv.AddItem('0 - Grupo',nil);
          cbbTipoCmv.AddItem('1 - Item',nil);
        end;
    end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex]='01 - Recebimento' then
    begin
      cbbTipoCmv.AddItem('0 - Grupo',nil);
    end;
  cbbTipoCmv.ItemIndex:=0;

end;

procedure TFAT_FM_R_COV.menuItemEmpresasClick(Sender: TObject);
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
end.
