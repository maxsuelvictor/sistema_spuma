unit CAD_UN_R_CRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList, enFunc,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_CRG = class(TPAD_FM_X_REL)
    pcSetor: TPageControl;
    tsSetor: TTabSheet;
    lboxSetorDisp: TListBox;
    lboxSetorSel: TListBox;
    lblSetorDisp: TLabel;
    lblSetorSel: TLabel;
    PCP_PD_R_CRG: TfrxPDFExport;
    PCP_XL_R_CRG: TfrxXLSExport;
    PCP_FR_R_CRG_GER: TfrxReport;
    PCP_DB_R_CRG: TfrxDBDataset;
    cbbTipo: TComboBox;
    lblTipo: TLabel;
    lblOrdenacao: TLabel;
    cbbOrdenacao: TComboBox;
    pmSelecionarTodosSetor: TPopupMenu;
    btnSelecionarTodosSetor: TMenuItem;
    PCP_FR_R_CRG_SET: TfrxReport;
    PCP_CD_R_CRG: TClientDataSet;
    procedure btnSelecionarTodosSetorClick(Sender: TObject);
    procedure lboxSetorDispDblClick(Sender: TObject);
    procedure lboxSetorSelDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CRG: TCAD_FM_R_CRG;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_CRG;

procedure TCAD_FM_R_CRG.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,lboxSetorSel,cbbTipo,cbbOrdenacao,PCP_FR_R_CRG_GER,PCP_FR_R_CRG_SET);
end;

procedure TCAD_FM_R_CRG.btnSelecionarTodosSetorClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxSetorDisp.ClearSelection;

  if lboxSetorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSetorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSetorDisp.Items.Count - 1 do
           begin
             lboxSetorSel.Items.Add(lboxSetorDisp.Items[i]);
             lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
           end;
       lboxSetorDisp.Items.Clear;
     end;

end;

procedure TCAD_FM_R_CRG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CRG);
end;

procedure TCAD_FM_R_CRG.FormShow(Sender: TObject);
begin
  inherited;
  pcSetor.Visible := false;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) then
    begin
      pcSetor.Visible := true;
      lbxRelatorios.AddItem('Listagem de Cargos - por Setores',nil);
    end;
  lbxRelatorios.ItemIndex := 0;

  dmGeral.BUS_PR_X_CT1;
  dmGeral.BUS_CD_X_CT1.Open;

  if not dmGeral.BUS_CD_X_CT1.IsEmpty then
    begin
      dmGeral.BUS_CD_X_CT1.First;
        while not dmGeral.BUS_CD_X_CT1.eof do
           begin

             cbbTipo.AddItem(dmgeral.BUS_CD_X_CT1.FieldByName('CODIGO').AsString+' - '+dmgeral.BUS_CD_X_CT1.FieldByName('DESCRICAO').AsString,nil);
             dmGeral.BUS_CD_X_CT1.Next;
            end;
      cbbTipo.AddItem('Todos',nil);
      cbbTipo.ItemIndex := 3;
    end;
    dmGeral.BUS_CD_X_CT1.Close;

    dmGeral.BUS_CD_C_SET.Close;
    dmGeral.BUS_CD_C_SET.Data := dmGeral.BUS_CD_C_SET.DataRequest(VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_SET.IsEmpty then
      begin
        dmGeral.BUS_CD_C_SET.First;
        while not dmGeral.BUS_CD_C_SET.eof do
          begin
            lboxSetorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_SET.FieldByName('ID_SETOR').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_SET.Next;
          end;
        end;
    dmGeral.BUS_CD_C_SET.Close;
end;

procedure TCAD_FM_R_CRG.lboxSetorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorDisp.ItemIndex > -1 then
     begin
       lboxSetorSel.Items.Add(lboxSetorDisp.Items[lboxSetorDisp.ItemIndex]);
       lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CRG.lboxSetorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorSel.ItemIndex > -1 then
     begin
       lboxSetorDisp.Items.Add(lboxSetorSel.Items[lboxSetorSel.ItemIndex]);
       lboxSetorSel.Items.Delete(lboxSetorSel.ItemIndex);
     end;
end;
end.
