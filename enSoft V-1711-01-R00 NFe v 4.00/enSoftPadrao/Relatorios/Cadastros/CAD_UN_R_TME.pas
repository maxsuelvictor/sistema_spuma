unit CAD_UN_R_TME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS,enFunc, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_TME = class(TPAD_FM_X_REL)
    CAD_XL_R_TME: TfrxXLSExport;
    CAD_FR_R_TME: TfrxReport;
    CAD_PD_R_TME: TfrxPDFExport;
    CAD_DB_R_TME: TfrxDBDataset;
    cbbTipoMovimento: TComboBox;
    cbbIndicador: TComboBox;
    lblTipoMovimento: TLabel;
    lblIndicador: TLabel;
    lblSituacao: TLabel;
    cbbSituacao: TComboBox;
    CAD_CD_R_TME: TClientDataSet;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
      xOpcoes:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_TME: TCAD_FM_R_TME;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_TME.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_TME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_TME);
end;

procedure TCAD_FM_R_TME.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_EXS;
  dmGeral.BUS_PR_X_IND;

  cbbTipoMovimento.AddItem('Todos',nil);
  if not dmGeral.BUS_CD_X_EXS.IsEmpty then
    begin
       dmGeral.BUS_CD_X_EXS.First;

       while not dmGeral.BUS_CD_X_EXS.eof do
          begin
            cbbTipoMovimento.AddItem(trim(dmGeral.BUS_CD_X_EXS.FieldByName('CODIGO').AsString) +
                                    ' - ' + trim(dmGeral.BUS_CD_X_EXS.FieldByName('DESCRICAO').AsString),nil);
            dmGeral.BUS_CD_X_EXS.Next;
          end;
    end;
  cbbTipoMovimento.ItemIndex := 0;

  cbbIndicador.AddItem('Todos',nil);
  if not dmGeral.BUS_CD_X_IND.IsEmpty then
    begin
       dmGeral.BUS_CD_X_IND.First;
       while not dmGeral.BUS_CD_X_IND.eof do
          begin
            cbbIndicador.AddItem(trim(dmGeral.BUS_CD_X_IND.FieldByName('CODIGO').AsString) +
                                    ' - ' + trim(dmGeral.BUS_CD_X_IND.FieldByName('DESCRICAO').AsString),nil);
            dmGeral.BUS_CD_X_IND.Next;
          end;
    end;
   cbbIndicador.ItemIndex := 0;
end;

procedure TCAD_FM_R_TME.PreencherCondicao;
begin
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Movimento.....: ' + cbbTipoMovimento.Items[cbbTipoMovimento.ItemIndex]+#13+#10;
   xOpcoes := xOpcoes + 'Indicador.............: ' + cbbIndicador.Items[cbbIndicador.ItemIndex]+#13+#10;
   xOpcoes := xOpcoes + 'Situação..............: ' + cbbSituacao.Items[cbbSituacao.ItemIndex]+#13+#10;
end;

procedure TCAD_FM_R_TME.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  rTipoMovEst,rIndicador,rSituacao:string;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
       rTipoMovEst := '';
       rIndicador := '';
       rSituacao := '';
       if cbbTipoMovimento.Items[cbbTipoMovimento.ItemIndex] <> 'Todos' then
         begin
          rTipoMovEst := copy(cbbTipoMovimento.Items[cbbTipoMovimento.ItemIndex],1,pos(' - ',cbbTipoMovimento.Items[cbbTipoMovimento.ItemIndex])-1);
         end;

       if cbbIndicador.Items[cbbIndicador.ItemIndex] <> 'Todos' then
         begin
          rIndicador := copy(cbbIndicador.Items[cbbIndicador.ItemIndex],1,pos(' - ',cbbIndicador.Items[cbbIndicador.ItemIndex])-1);
         end;

       if cbbSituacao.Items[cbbSituacao.ItemIndex] = 'Ativos' then
         begin
           rSituacao := 'True';
         end;
       if cbbSituacao.Items[cbbSituacao.ItemIndex] = 'Inativos' then
         begin
           rSituacao := 'False';
         end;

      PreencherCondicao;

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      CAD_CD_R_TME.Active:= False;
      CAD_CD_R_TME.Close;
      CAD_CD_R_TME.Data :=
              CAD_CD_R_TME.DataRequest(
                      VarArrayOf([rTipoMovEst,rIndicador,rSituacao]));

      if (not CAD_CD_R_TME.IsEmpty) then
        begin

              if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem de Tipo de Movimento de Estoque' then
                begin
                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(CAD_FR_R_TME.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;
                  dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_TME.Name,xCodLme,xRevLme,nil);
                  CAD_FR_R_TME.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  CAD_FR_R_TME.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  CAD_FR_R_TME.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  CAD_FR_R_TME.PrepareReport();
                  CAD_FR_R_TME.ShowReport();
                end;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;

    end;
end;

end.
