unit CTC_UN_M_CFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.Wwdbedit, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  vcl.wwdblook, Vcl.DBCtrls, Vcl.Buttons, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  Datasnap.DBClient;

type
  TCTC_FM_M_CFE = class(TPAD_FM_X_PAD)
    cbbfuncionario: TwwDBLookupCombo;
    lblfuncionario: TLabel;
    lbldata: TLabel;
    lblControle: TLabel;
    gbItem: TGroupBox;
    dgItens: TwwDBGrid;
    dsoItem: TwwDataSource;
    dgItensIButton: TwwIButton;
    lblFerramenta: TLabel;
    txtFerramenta: TJvDBComboEdit;
    txtFerramentaDescricao: TDBText;
    txtQtde: TwwDBEdit;
    lblQtde: TLabel;
    lblVlrUnit: TLabel;
    txtTotal: TwwDBEdit;
    dpkdevolucao: TJvDBDateEdit;
    lblDevolucao: TLabel;
    lblVlrTotal: TLabel;
    txtUnitario: TwwDBEdit;
    pnlItens: TPanel;
    txtControle: TwwDBEdit;
    dpkData: TJvDBDateEdit;
    btnaddIten: TBitBtn;
    CTC_FR_M_CFE: TfrxReport;
    CTC_XL_M_CFE: TfrxXLSExport;
    CTC_PD_M_CFE: TfrxPDFExport;
    CTC_DB_M_CFE: TfrxDBDataset;
    CTC_DB_M_CFE_FER: TfrxDBDataset;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnaddItenClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbfuncionarioEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure txtTotalExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtFerramentaButtonClick(Sender: TObject);
    procedure txtFerramentaExit(Sender: TObject);
    procedure cbbfuncionarioExit(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dpkdevolucaoExit(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_CFE: TCTC_FM_M_CFE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_MEQ, uDmCtc, PSQ_UN_X_ITE;

procedure TCTC_FM_M_CFE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE);
  pnlItens.Enabled  := False;
  cbbfuncionario.SetFocus;
end;

procedure TCTC_FM_M_CFE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE) then
      begin
        inherited;
        pnlItens.Enabled  := False;
        cbbfuncionario.SetFocus;
      end;
end;

procedure TCTC_FM_M_CFE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbfuncionario.SetFocus;
     end;
end;

procedure TCTC_FM_M_CFE.acExcluirExecute(Sender: TObject);
begin
 Inherited;
 Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE);
end;

procedure TCTC_FM_M_CFE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_CFE.FieldByName('ID_CFE').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_CFE);
  inherited;
  dmCtc.CTC_CD_M_CFE.Close;
  dmCtc.CTC_CD_M_CFE.Data :=
  dmCtc.CTC_CD_M_CFE.DataRequest(
          VarArrayOf([0, codigo]));
   dmGeral.BusFuncionario(1,'%');
end;
procedure TCTC_FM_M_CFE.btnaddItenClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_CFE_FER.Insert;
  pnlItens.Enabled  := True;
  txtFerramenta.SetFocus;
end;

procedure TCTC_FM_M_CFE.btnFiltroClick(Sender: TObject);
begin
  inherited;
 Inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_CFE.Close;
    dmCtc.CTC_CD_M_CFE.Data :=
    dmCtc.CTC_CD_M_CFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_CFE.btnImprimeClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmCtc.CTC_CD_M_CFE.IsEmpty then
      begin
        codigo := dmCtc.ctc_cd_m_cfeid_cfe.text;

        dmCtc.CTC_CD_M_CFE.Close;
        dmCtc.CTC_CD_M_CFE.Data :=
        dmCtc.CTC_CD_M_CFE.DataRequest(VarArrayOf([0, codigo]));

        if not dmCtc.CTC_CD_M_CFE.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(CTC_FR_M_CFE.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      begin
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                end;

             CTC_FR_M_CFE.PrepareReport();
             CTC_FR_M_CFE.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TCTC_FM_M_CFE.cbbfuncionarioEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbfuncionario.DropDown;
end;

procedure TCTC_FM_M_CFE.cbbfuncionarioExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_CFE.FieldByName('id_funcionario').Text) = '' then
     begin
       ShowMessage('O campo "Funcionário" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_CFE.FieldByName('id_funcionario').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Funcionário não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_CFE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_CFE.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
 try
     dgItensIButton.Enabled := false;
     if dmCtc.CTC_CD_M_CFE_FER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_CFE_FER.Delete;
     dmCtc.CTC_CD_M_CFE_FER.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_M_CFE.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = false then
     pnlItens.Enabled := true;

  dmCtc.CTC_CD_M_CFE_FER.cancel;

  if dmCtc.CTC_CD_M_CFE_FER.IsEmpty then
     begin
       dmCtc.CTC_CD_M_CFE_FER.Append;
       pnlItens.Enabled := true;
       txtFerramenta.SetFocus;
     end
  else
     begin
       dmCtc.CTC_CD_M_CFE_FER.Edit;
       pnlItens.Enabled := true;
       txtFerramenta.SetFocus;
     end;
end;

procedure TCTC_FM_M_CFE.dpkdevolucaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtFerramenta.Focused or txtQtde.Focused or txtUnitario.Focused
     or txtTotal.Focused then
     begin
       Exit;
     end;

  dmCtc.CTC_CD_M_CFE_FER.Post;

  pnlItens.Enabled := False;
  btnAddIten.SetFocus;
end;

procedure TCTC_FM_M_CFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_CFE.Close;
  FreeAndNil(CTC_FM_M_CFE);
end;

procedure TCTC_FM_M_CFE.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_CFE.Close;
  dmCtc.CTC_CD_M_CFE.Data := dmCtc.CTC_CD_M_CFE.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_CFE.Open;

  dmGeral.BusFuncionario(1,'%');
end;

procedure TCTC_FM_M_CFE.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnaddIten.Focused) or (dgItens.Focused) or
     (not dgItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             Exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              Exit;
           end;

        dmCtc.CTC_CD_M_CFE_FER.Cancel;
        dmCtc.CTC_CD_M_CFE_FER.edit;

        finally
           pnlItens.Enabled := False;
        end;
      end;
end;

procedure TCTC_FM_M_CFE.txtFerramentaButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;

      if not dmCtc.CTC_CD_M_CFE_FER.IsEmpty then
         begin
           dmCtc.CTC_CD_M_CFE_FER.FieldByName('ID_MEQ').AsInteger:=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmCtc.CTC_CD_M_CFE_FER.FieldByName('INT_NOMEMEQ').AssTRING:=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AssTRING;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_M_CFE.txtFerramentaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_CFE_FER.FieldByName('id_meq').Text) = '' then
     begin
       ShowMessage('O campo "Ferramenta" não foi preenchido.');
       exit;
     end;

  dmGeral.BusItens(0,dmCtc.CTC_CD_M_CFE_FER.FieldByName('id_meq').Text);
  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Ferramenta não Cadastrado.');
     end;
  dmCtc.CTC_CD_M_CFE_FER.FieldByName('INT_NOMEMEQ').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TCTC_FM_M_CFE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_M_CFE.txtTotalExit(Sender: TObject);
begin
  inherited;
if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFerramenta.Focused or txtQtde.Focused or txtUnitario.Focused or
     txtTotal.Focused or dpkdevolucao.Focused or
   dgItens.Focused then
     begin
       exit;
     end;

  dmCtc.CTC_CD_M_CFE_FER.Post;

  pnlItens.Enabled := false;
  btnaddIten.SetFocus;
end;

end.
