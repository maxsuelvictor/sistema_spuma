unit CTC_UN_M_SLM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvDBControls, vcl.wwdblook, JvExMask, JvToolEdit, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Buttons, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Datasnap.DBClient, frxClass, frxDBSet, frxExportPDF, frxExportXLS;

type
  TCTC_FM_M_SLM = class(TPAD_FM_X_PAD)
    dsoIte: TwwDataSource;
    txtcodigo: TwwDBEdit;
    lblcodigo: TLabel;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    lblObra: TLabel;
    cbbObra: TwwDBLookupCombo;
    lblfornecedor: TLabel;
    txtResponsavel: TJvDBComboEdit;
    txtobservacao: TwwDBEdit;
    Label1: TLabel;
    dbveiculo: TGroupBox;
    pnlItem: TPanel;
    lblveiculo: TLabel;
    lbldescricao: TLabel;
    lblunitario: TLabel;
    lblqtde: TLabel;
    txtItem: TJvDBComboEdit;
    txtObservacaoItem: TwwDBEdit;
    txtQtde: TwwDBEdit;
    btnaddItem: TBitBtn;
    dgItem: TwwDBGrid;
    dgItemIButton: TwwIButton;
    txtdescricaoresponsavel: TDBText;
    txtDescricao: TDBText;
    btnImprimir: TBitBtn;
    CTC_FR_M_SLM: TfrxReport;
    CTC_XL_M_SLM: TfrxXLSExport;
    CTC_PD_M_SLM: TfrxPDFExport;
    CTC_DB_M_SLM: TfrxDBDataset;
    CTC_DP_M_SLM_ITE: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbObraEnter(Sender: TObject);
    procedure cbbObraExit(Sender: TObject);
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure btnaddItemClick(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure txtObservacaoItemExit(Sender: TObject);
    procedure dgItemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgItemIButtonClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_SLM: TCTC_FM_M_SLM;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc, PSQ_UN_X_FUN, PSQ_UN_X_ITE, enConstantes;

procedure TCTC_FM_M_SLM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_SLM);
  pnlItem.Enabled  := False;
  cbbObra.SetFocus;
end;

procedure TCTC_FM_M_SLM.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_SLM) then
      begin
        inherited;
        pnlItem.Enabled  := False;
        cbbObra.SetFocus;
      end;
end;

procedure TCTC_FM_M_SLM.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_SLM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbObra.SetFocus;
     end;
end;

procedure TCTC_FM_M_SLM.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_SLM);
end;

procedure TCTC_FM_M_SLM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_SLM.FieldByName('ID_CONTROLE').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_SLM);
  inherited;
  dmCtc.CTC_CD_M_SLM.Close;
  dmCtc.CTC_CD_M_SLM.Data :=
  dmCtc.CTC_CD_M_SLM.DataRequest(
          VarArrayOf([0, dmgeral.CAD_CD_C_PARid_empresa.Text , codigo]));
end;

procedure TCTC_FM_M_SLM.btnaddItemClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_SLM_ITE.Insert;
  pnlItem.Enabled  := True;
  txtItem.SetFocus;
end;

procedure TCTC_FM_M_SLM.btnFiltroClick(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_SLM.Close;
    dmCtc.CTC_CD_M_SLM.Data :=
    dmCtc.CTC_CD_M_SLM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text , txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_SLM.btnImprimirClick(Sender: TObject);
var
  PathImg,codigo: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;

  if not dmCtc.CTC_CD_M_SLM.IsEmpty then
    begin
       codigo := dmCtc.CTC_CD_M_SLM.FieldByName('id_controle').AsString;

       dmCtc.CTC_CD_M_SLM.Close;
       dmCtc.CTC_CD_M_SLM.Data :=
       dmCtc.CTC_CD_M_SLM.DataRequest(
            VarArrayOf([0, dmgeral.CAD_CD_C_PARid_empresa.Text ,codigo]));


      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CTC_FR_M_SLM.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
       CTC_FR_M_SLM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
       CTC_FR_M_SLM.PrepareReport();
       CTC_FR_M_SLM.ShowReport();
    end
  else
    begin
       ShowMessage('Nenhum registro encontrado!');
       exit;
    end;
end;

procedure TCTC_FM_M_SLM.cbbObraEnter(Sender: TObject);
begin
  inherited;
  dmCtc.BusObra(1,'%');
  cbbobra.DropDown;
end;

procedure TCTC_FM_M_SLM.cbbObraExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_SLM.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmCtc.CTC_CD_M_SLM.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_SLM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_SLM.dgItemIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgItemIButton.Enabled := false;
     if dmCtc.CTC_CD_M_SLM_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_SLM_ITE.Delete;
     dmCtc.CTC_CD_M_SLM_ITE.Edit;
  finally
    dgItemIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_M_SLM.dgItemMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItem.Enabled = false then
     pnlItem.Enabled := true;

  dmCtc.CTC_CD_M_SLM_ITE.cancel;

  if dmCtc.CTC_CD_M_SLM_ITE.IsEmpty then
     begin
       dmCtc.CTC_CD_M_SLM_ITE.Append;
       pnlItem.Enabled := true;
       txtItem.SetFocus;
     end
  else
     begin
       dmCtc.CTC_CD_M_SLM_ITE.Edit;
       pnlItem.Enabled := true;
       txtItem.SetFocus;
     end;
end;

procedure TCTC_FM_M_SLM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_SLM.Close;
  FreeAndNil(CTC_FM_M_SLM);
end;

procedure TCTC_FM_M_SLM.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_SLM.Close;
  dmCtc.CTC_CD_M_SLM.Data := dmCtc.CTC_CD_M_SLM.DataRequest(VarArrayOf([4, dmgeral.CAD_CD_C_PARid_empresa.AsInteger , '']));
  dmCtc.CTC_CD_M_SLM.Open;

  dmCtc.BusObra(1,'%');
end;

procedure TCTC_FM_M_SLM.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;

      if not dmCtc.CTC_CD_M_SLM_ITE.IsEmpty then
         begin
           dmCtc.CTC_CD_M_SLM_ITE.FieldByName('ID_ITEM').AsInteger:=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

            dmCtc.CTC_CD_M_SLM_ITE.FieldByName('INT_NOMEITE').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_M_SLM.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_SLM_ITE.FieldByName('id_item').Text) = '' then
     begin
       ShowMessage('O campo "Item" não foi preenchido.');
       exit;
     end;

  dmGeral.BusItens(0,dmCtc.CTC_CD_M_SLM_ITE.FieldByName('id_item').Text);
  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Item não Cadastrado.');
       dmCtc.CTC_CD_M_SLM_ITE.FieldByName('id_item').Text := '';
     end
  else
    begin
      dmCtc.CTC_CD_M_SLM_ITE.FieldByName('INT_NOMEITE').AsString:=
        dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TCTC_FM_M_SLM.txtObservacaoItemExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtItem.Focused or txtQtde.Focused then
     begin
       Exit;
     end;

  dmCtc.CTC_CD_M_SLM_ITE.Post;

  pnlItem.Enabled := False;
  btnAddItem.SetFocus;
end;

procedure TCTC_FM_M_SLM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCTC_FM_M_SLM.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;

      if not dmCtc.CTC_CD_M_SLM.IsEmpty then
         begin
           dmCtc.CTC_CD_M_SLM.FieldByName('ID_RESPONSAVEL').AsInteger:=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

           dmCtc.CTC_CD_M_SLM.FieldByName('INT_NOMERESP').AsString:=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TCTC_FM_M_SLM.txtResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_SLM.FieldByName('id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Responsavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_SLM.FieldByName('id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end
  else
    begin
      dmCtc.CTC_CD_M_SLM.FieldByName('INT_NOMERESP').AsString:=
        dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
    end;
end;

end.
