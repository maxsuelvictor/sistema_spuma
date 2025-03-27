unit CAD_UN_R_PES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS,enFunc, Vcl.Menus, Data.DB,
  Datasnap.DBClient;

type
  TCAD_FM_R_PES = class(TPAD_FM_X_REL)
    CAD_FR_R_PES: TfrxReport;
    CAD_XL_R_PES: TfrxXLSExport;
    CAD_PD_R_PES: TfrxPDFExport;
    CAD_DB_R_PES: TfrxDBDataset;
    CAD_DB_R_PES_MOD: TfrxDBDataset;
    PageControl1: TPageControl;
    tsPerfilSeguranca: TTabSheet;
    lboxPerfilDisp: TListBox;
    lboxPerfilSel: TListBox;
    lblPerfilDisp: TLabel;
    lblPerfilSel: TLabel;
    pmSelTodosPerfil: TPopupMenu;
    pmRemoverTodosPerfil: TPopupMenu;
    btnRemoverTodosPerfis: TMenuItem;
    btnSelTodosPerfis: TMenuItem;
    CAD_CD_R_PES: TClientDataSet;
    CAD_CD_R_PESid_perfil_seg: TIntegerField;
    CAD_CD_R_PESdescricao: TWideStringField;
    CAD_CD_R_PEScod_lme: TWideStringField;
    CAD_CD_R_PESrev_lme: TWideStringField;
    CAD_CD_R_PESCAD_SQ_R_PES_MOD: TDataSetField;
    CAD_CD_R_PES_MOD: TClientDataSet;
    CAD_CD_R_PES_MODid_perfil_seg: TIntegerField;
    CAD_CD_R_PES_MODformulario: TWideStringField;
    CAD_CD_R_PES_MODativo: TBooleanField;
    CAD_CD_R_PES_MODchave: TWideStringField;
    CAD_CD_R_PES_MODdescricao: TWideStringField;
    CAD_CD_R_PES_MODmenu: TWideStringField;
    CAD_CD_R_PES_MODmodulo: TWideStringField;
    CAD_CD_R_PES_MODmodulo_desc: TWideStringField;
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxPerfilDispDblClick(Sender: TObject);
    procedure lboxPerfilSelDblClick(Sender: TObject);
    procedure btnRemoverTodosPerfisClick(Sender: TObject);
    procedure btnSelTodosPerfisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
      xCondPerfil,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_PES: TCAD_FM_R_PES;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_PES.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_PES.btnRemoverTodosPerfisClick(Sender: TObject);
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

procedure TCAD_FM_R_PES.btnSelTodosPerfisClick(Sender: TObject);
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

procedure TCAD_FM_R_PES.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
      PreencherCondicao;

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      CAD_CD_R_PES.Active:= False;
      CAD_CD_R_PES.Close;
      CAD_CD_R_PES.Data :=
        CAD_CD_R_PES.DataRequest(
          VarArrayOf([xCondPerfil]));

      if (not CAD_CD_R_PES.IsEmpty) and (not CAD_CD_R_PES_MOD.IsEmpty) then
        begin
         // dmgeral.CAD_CD_R_PES_MOD.Filtered := True;
         // dmGeral.CAD_CD_R_PES_MOD.Filter := ' ativo = true ';
         // if not dmGeral.CAD_CD_R_PES_MOD.IsEmpty then
          //  begin
              if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem de Perfil de Segurança' then
                begin
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_PES.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;
                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_PES.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_PES.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_PES.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_PES.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  CAD_FR_R_PES.PrepareReport();
                  CAD_FR_R_PES.ShowReport();
                end;
          //  end
          // else
          //   begin
          //     ShowMessage('Nenhum registro foi encontrado1.');
           //  end;
          // dmgeral.CAD_CD_R_PES_MOD.Filtered := False;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;

    end;
end;

procedure TCAD_FM_R_PES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_PES);
end;

procedure TCAD_FM_R_PES.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusPerfilSeg(1,'');
  if not dmGeral.BUS_CD_C_PES.IsEmpty then
    begin
      dmGeral.BUS_CD_C_PES.First;
      while not dmGeral.BUS_CD_C_PES.Eof do
        begin
          lboxPerfilDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PES.FieldByName('ID_PERFIL_SEG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PES.FieldByName('DESCRICAO').AsString);
          dmGeral.BUS_CD_C_PES.Next;
        end;
    end;
end;

procedure TCAD_FM_R_PES.lboxPerfilDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxPerfilDisp.ItemIndex > -1 then
     begin
       lboxPerfilSel.Items.Add(lboxPerfilDisp.Items[lboxPerfilDisp.ItemIndex]);
       lboxPerfilDisp.Items.Delete(lboxPerfilDisp.ItemIndex);
     end;
end;

procedure TCAD_FM_R_PES.lboxPerfilSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxPerfilSel.ItemIndex > -1 then
     begin
       lboxPerfilDisp.Items.Add(lboxPerfilSel.Items[lboxPerfilSel.ItemIndex]);
       lboxPerfilSel.Items.Delete(lboxPerfilSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_PES.PreencherCondicao;
var
  i: integer;
  opcoesPerfil:string;
begin
  xCondPerfil := '';
  opcoesPerfil := '';
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
          opcoesPerfil := 'Todos' + #13+#10;
        End;
    end
   else
     begin
       opcoesPerfil := 'Todos' + #13+#10;
     end;

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Perfil............: ' + opcoesPerfil + #13+#10;
end;
end.
