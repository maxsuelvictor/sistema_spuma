unit CAD_UN_R_TRI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet, enFunc,
  frxExportXLS, frxExportPDF, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB,
  Datasnap.DBClient;

type
  TCAD_FM_R_TRI = class(TPAD_FM_X_REL)
    CAD_PD_R_TRI: TfrxPDFExport;
    CAD_XL_R_TRI: TfrxXLSExport;
    CAD_FR_R_TRI: TfrxReport;
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    lboxEmpresaDisp: TListBox;
    lboxEmpresaSel: TListBox;
    lblEmpresaDisp: TLabel;
    lblEmpresaSel: TLabel;
    CAD_DB_R_TRI_REG: TfrxDBDataset;
    tsTributacao: TTabSheet;
    lboxTributacaoDisp: TListBox;
    lboxTributacaoSel: TListBox;
    lblTributacaoDisp: TLabel;
    lblTributacaoSel: TLabel;
    pmSelTodasEmp: TPopupMenu;
    btnSelecionarTodosEmp: TMenuItem;
    pmSelTodasTributacao: TPopupMenu;
    btnSelecionarTodasTributacao: TMenuItem;
    CAD_CD_R_TRI_REG: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSelecionarTodosEmpClick(Sender: TObject);
    procedure btnSelecionarTodasTributacaoClick(Sender: TObject);
    procedure lboxEmpresaDispDblClick(Sender: TObject);
    procedure lboxTributacaoDispDblClick(Sender: TObject);
    procedure lboxEmpresaSelDblClick(Sender: TObject);
    procedure lboxTributacaoSelDblClick(Sender: TObject);
    procedure CAD_FR_R_TRIBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_TRI: TCAD_FM_R_TRI;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_TRI;

procedure TCAD_FM_R_TRI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_TRI);
end;

procedure TCAD_FM_R_TRI.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
   dmGeral.BUS_CD_C_PAR.Close;
         dmGeral.BUS_CD_C_PAR.Data := dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_PAR.IsEmpty then
          begin
            dmGeral.BUS_CD_C_PAR.First;
            while not dmGeral.BUS_CD_C_PAR.eof do
              begin
                lboxEmpresaDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
                dmGeral.BUS_CD_C_PAR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_PAR.Close;


     dmGeral.BUS_CD_C_TRI.Close;
         dmGeral.BUS_CD_C_TRI.Data := dmGeral.BUS_CD_C_TRI.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_TRI.IsEmpty then
          begin
            dmGeral.BUS_CD_C_TRI.First;
            while not dmGeral.BUS_CD_C_TRI.eof do
              begin
                lboxTributacaoDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TRI.FieldByName('ID_TRIBUTO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TRI.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_TRI.Next;
            end;
          end;
          dmGeral.BUS_CD_C_TRI.Close;

end;


procedure TCAD_FM_R_TRI.lboxEmpresaDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaDisp.ItemIndex > -1 then
     begin
       lboxEmpresaSel.Items.Add(lboxEmpresaDisp.Items[lboxEmpresaDisp.ItemIndex]);
       lboxEmpresaDisp.Items.Delete(lboxEmpresaDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_TRI.lboxEmpresaSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSel.ItemIndex > -1 then
     begin
       lboxEmpresaDisp.Items.Add(lboxEmpresaSel.Items[lboxEmpresaSel.ItemIndex]);
       lboxEmpresaSel.Items.Delete(lboxEmpresaSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_TRI.lboxTributacaoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTributacaoDisp.ItemIndex > -1 then
     begin
       lboxTributacaoSel.Items.Add(lboxTributacaoDisp.Items[lboxTributacaoDisp.ItemIndex]);
       lboxTributacaoDisp.Items.Delete(lboxTributacaoDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_TRI.lboxTributacaoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTributacaoSel.ItemIndex > -1 then
     begin
       lboxTributacaoDisp.Items.Add(lboxTributacaoSel.Items[lboxTributacaoSel.ItemIndex]);
       lboxTributacaoSel.Items.Delete(lboxTributacaoSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_TRI.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,lboxEmpresaSel,lboxTributacaoSel,CAD_FR_R_TRI);
end;

procedure TCAD_FM_R_TRI.btnSelecionarTodasTributacaoClick(Sender: TObject);
  var
  i: integer;
begin
  inherited;

  lboxTributacaoDisp.ClearSelection;

  if lboxTributacaoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTributacaoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTributacaoDisp.Items.Count - 1 do
           begin
             lboxTributacaoSel.Items.Add(lboxTributacaoDisp.Items[i]);
             lboxTributacaoDisp.Items.Delete(lboxTributacaoDisp.ItemIndex);
           end;
       lboxTributacaoDisp.Items.Clear;
     end;

end;

procedure TCAD_FM_R_TRI.btnSelecionarTodosEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpresaDisp.ClearSelection;

  if lboxEmpresaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaDisp.Items.Count - 1 do
           begin
             lboxEmpresaSel.Items.Add(lboxEmpresaDisp.Items[i]);
             lboxEmpresaDisp.Items.Delete(lboxEmpresaDisp.ItemIndex);
           end;
       lboxEmpresaDisp.Items.Clear;
     end;

end;

procedure TCAD_FM_R_TRI.CAD_FR_R_TRIBeforePrint(Sender: TfrxReportComponent);
var
 fiscal,estoque,tributacao,empresa:string;
begin
  inherited;
  empresa := CAD_CD_R_TRI_REG.FieldByName('id_empresa').AsString+' - '+
             CAD_CD_R_TRI_REG.FieldByName('int_nomefan').AsString;
  CAD_FR_R_TRI.Variables['ft_empresa'] := QuotedStr(empresa);

  tributacao := CAD_CD_R_TRI_REG.FieldByName('id_tributo').AsString+' - '+
             CAD_CD_R_TRI_REG.FieldByName('int_nometri').AsString;
  CAD_FR_R_TRI.Variables['ft_tributacao'] := QuotedStr(tributacao);

  estoque := CAD_CD_R_TRI_REG.FieldByName('id_tipo_mov_estoque').AsString+' - '+
             CAD_CD_R_TRI_REG.FieldByName('int_nometme').AsString;
  CAD_FR_R_TRI.Variables['ft_estoque'] := QuotedStr(estoque);

  fiscal := CAD_CD_R_TRI_REG.FieldByName('id_inf').AsString+' - '+
             CAD_CD_R_TRI_REG.FieldByName('int_nomeinf').AsString;
  CAD_FR_R_TRI.Variables['ft_fiscal'] := QuotedStr(fiscal);

end;
end.
