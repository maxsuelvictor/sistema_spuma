unit CAD_UN_R_ECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_ECF = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEcf: TTabSheet;
    lblClasseDisp: TLabel;
    lblClasseSel: TLabel;
    lboxEcfDisp: TListBox;
    lboxEcfSel: TListBox;
    pmSelEcf: TPopupMenu;
    MenuItemEcf: TMenuItem;
    pmRemoverTodosEcf: TPopupMenu;
    btnRemoverTodosEcf: TMenuItem;
    CAD_FR_R_ECF: TfrxReport;
    CAD_DB_R_ECF: TfrxDBDataset;
    CAD_PD_R_ECF: TfrxPDFExport;
    CAD_XL_R_ECF: TfrxXLSExport;
    CAD_CD_R_ECF_FPG: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEcfSelDblClick(Sender: TObject);
    procedure btnRemoverTodosEcfClick(Sender: TObject);
    procedure MenuItemEcfClick(Sender: TObject);
    procedure lboxEcfDispDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
 var
      xOpcoes,xCondEcf:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_ECF: TCAD_FM_R_ECF;

implementation

{$R *.dfm}

uses uDmGeral, enFunc;

procedure TCAD_FM_R_ECF.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_ECF.btnRemoverTodosEcfClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxEcfSel.ClearSelection;

  if lboxEcfSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEcfSel.Items.Count > 0 then
     begin
       for i := 0 to lboxEcfSel.Items.Count - 1 do
           begin
             lboxEcfDisp.Items.Add(lboxEcfSel.Items[i]);
             lboxEcfSel.Items.Delete(lboxEcfSel.ItemIndex);
           end;
       lboxEcfSel.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ECF.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  PreencherCondicao;

  CAD_CD_R_ECF_FPG.Close;
  CAD_CD_R_ECF_FPG.Data :=
  CAD_CD_R_ECF_FPG.DataRequest(
          VarArrayOf([xcondEcf]));

  if not CAD_CD_R_ECF_FPG.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CAD_FR_R_ECF.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_ECF.Name,xCodLme,xRevLme,nil);
      CAD_FR_R_ECF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

      CAD_FR_R_ECF.Variables['Opcoes'] := QuotedStr(xOpcoes);
      CAD_FR_R_ECF.PrepareReport();
      CAD_FR_R_ECF.ShowReport();
    end
  else
  begin
    ShowMessage('Nenhum registro foi encontrado.');
  end;
end;

procedure TCAD_FM_R_ECF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_ECF);
end;

procedure TCAD_FM_R_ECF.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // ECF -----------------------------------------------------------------------
  dmGeral.BUS_CD_C_ECF.Close;
  dmGeral.BUS_CD_C_ECF.Data :=
  dmGeral.BUS_CD_C_ECF.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_ECF.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ECF.First;

       while not dmGeral.BUS_CD_C_ECF.eof do
          begin
            lboxEcfDisp.Items.Add(dmGeral.BUS_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString{ +
                                    ' - ' + dmGeral.BUS_CD_C_ECF.FieldByName('ECF_MARCA_IMPRESSORA').AsString});
            dmGeral.BUS_CD_C_ECF.Next;
          end;
     end;
  dmGeral.BUS_CD_C_ECF.Close;

end;

procedure TCAD_FM_R_ECF.lboxEcfDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEcfDisp.ItemIndex > - 1 then
     begin
       lboxEcfSel.Items.Add(lboxEcfDisp.Items[lboxEcfDisp.ItemIndex]);
       lboxEcfDisp.Items.Delete(lboxEcfDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ECF.lboxEcfSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEcfSel.ItemIndex > -1 then
     begin
       lboxEcfDisp.Items.Add(lboxEcfSel.Items[lboxEcfSel.ItemIndex]);
       lboxEcfSel.Items.Delete(lboxEcfSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_ECF.MenuItemEcfClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEcfDisp.ClearSelection;
  if lboxEcfDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEcfDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEcfDisp.Items.Count - 1 do
           begin
             lboxEcfSel.Items.Add(lboxEcfDisp.Items[i]);
             lboxEcfDisp.Items.Delete(lboxEcfDisp.ItemIndex);
           end;
       lboxEcfDisp.Items.Clear;
     end;
end;

procedure TCAD_FM_R_ECF.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEcf :string;
begin
  // ECF -----------------------------------------------------------------------
  xCondEcf := '';
  if lboxEcfSel.Count > 0 then
     begin
      if lboxEcfDisp.Count > 0 then
        begin
         for i := 0 to lboxEcfSel.Count - 1 do
          begin
            if xCondEcf <> '' then
               begin
                 xCondEcf :=
                 xCondEcf + ',' +''''+trim(copy(lboxEcfSel.Items[i],1,20))+'''';
                 opcoesEcf :=
                 opcoesEcf +'                    '+lboxEcfSel.Items[i] + #13+#10;
               end;
            if xCondEcf = '' then
               begin
                 xCondEcf :=
                 xCondEcf +''''+trim(copy(lboxEcfSel.Items[i],1,20))+'''';
                 opcoesEcf :=
                 opcoesEcf + lboxEcfSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesEcf:= 'Todos';
        End;
    end
   else
     begin
       opcoesEcf:= 'Todos';
     end;

   // Opções -------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor........: ' + opcoesEcf+#13+#10;

end;

end.
