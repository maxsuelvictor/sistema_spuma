unit CAD_UN_R_CFO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,enFunc,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_CFO = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsClasse: TTabSheet;
    lboxClasse: TListBox;
    lblClasseDisp: TLabel;
    lblClasseSel: TLabel;
    lboxClasseSel: TListBox;
    CAD_PD_R_CFO: TfrxPDFExport;
    CAD_XL_R_CFO: TfrxXLSExport;
    CAD_FR_R_CFO_GER: TfrxReport;
    CAD_DB_R_CFO: TfrxDBDataset;
    CAD_FR_R_CFO_CLA: TfrxReport;
    pmSelTodasCla: TPopupMenu;
    btnSelTodasClasses: TMenuItem;
    CAD_CD_R_CFO: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSelTodasClassesClick(Sender: TObject);
    procedure lboxClasseDblClick(Sender: TObject);
    procedure lboxClasseSelDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CAD_FR_R_CFO_GERBeforePrint(Sender: TfrxReportComponent);
    procedure CAD_FR_R_CFO_CLABeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    var
      xCondCla:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CFO: TCAD_FM_R_CFO;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_CFO;

procedure TCAD_FM_R_CFO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CFO);
end;

procedure TCAD_FM_R_CFO.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  dmGeral.CAD_CD_C_NAT.Close;
  dmGeral.CAD_CD_C_NAT.Data := dmGeral.CAD_CD_C_NAT.DataRequest(VarArrayOf([1, '%']));

  if not dmGeral.CAD_CD_C_NAT.IsEmpty then
    begin
     dmGeral.CAD_CD_C_NAT.First;
     while not dmGeral.CAD_CD_C_NAT.eof do
       begin
         lboxClasse.Items.Add(dmGeral.CAD_CD_C_NAT.FieldByName('ID_CLASSE').AsString +
                                    ' - ' + dmGeral.CAD_CD_C_NAT.FieldByName('DESCRICAO').AsString);
         dmGeral.CAD_CD_C_NAT.Next;
       end;
     end;
   dmGeral.CAD_CD_C_NAT.Close;
end;

procedure TCAD_FM_R_CFO.lboxClasseDblClick(Sender: TObject);
begin
  inherited;
   if lboxClasse.ItemIndex > -1 then
     begin
       lboxClasseSel.Items.Add(lboxClasse.Items[lboxClasse.ItemIndex]);
       lboxClasse.Items.Delete(lboxClasse.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CFO.lboxClasseSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxClasseSel.ItemIndex > -1 then
     begin
       lboxClasse.Items.Add(lboxClasseSel.Items[lboxClasseSel.ItemIndex]);
       lboxClasseSel.Items.Delete(lboxClasseSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_CFO.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,lboxClasseSel,CAD_FR_R_CFO_GER,CAD_FR_R_CFO_CLA);
end;

procedure TCAD_FM_R_CFO.btnSelTodasClassesClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxClasse.ClearSelection;

  if lboxClasse.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxClasse.Items.Count > 0 then
     begin
       for i := 0 to lboxClasse.Items.Count - 1 do
           begin
             lboxClasseSel.Items.Add(lboxClasse.Items[i]);
             lboxClasse.Items.Delete(lboxClasse.ItemIndex);
           end;
       lboxClasse.Items.Clear;
     end;
end;

procedure TCAD_FM_R_CFO.CAD_FR_R_CFO_CLABeforePrint(
  Sender: TfrxReportComponent);
var
  classe:string;
begin
  inherited;
  classe := CAD_CD_R_CFO.FieldByName('id_classe').AsString+' - '+
             CAD_CD_R_CFO.FieldByName('int_nomenat').AsString;
  CAD_FR_R_CFO_CLA.Variables['ft_classe'] := QuotedStr(classe);
end;

procedure TCAD_FM_R_CFO.CAD_FR_R_CFO_GERBeforePrint(
  Sender: TfrxReportComponent);
var
  classe:string;
begin
  inherited;
  classe := CAD_CD_R_CFO.FieldByName('id_classe').AsString+' - '+
            CAD_CD_R_CFO.FieldByName('int_nomenat').AsString;
  CAD_FR_R_CFO_GER.Variables['ft_classe'] := QuotedStr(classe);
end;
end.
