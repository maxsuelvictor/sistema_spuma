unit CAD_UN_C_GRU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Imaging.pngimage,Jpeg, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel, vcl.Wwdbedit, Datasnap.DBClient, Vcl.ExtDlgs,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.ComCtrls;

type
  TCAD_FM_C_GRU = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblTributo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    cbbTipoItem: TwwDBLookupCombo;
    Label1: TLabel;
    lblOrigemMercadoria: TLabel;
    cbbOrigemMercadoria: TwwDBLookupCombo;
    cbbTributo: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    OpenD: TOpenPictureDialog;
    dsoEmp: TwwDataSource;
    BUS_CD_C_NTR: TClientDataSet;
    pcDadosGrupo: TPageControl;
    tsDadosGerais: TTabSheet;
    tsGestaoQualidade: TTabSheet;
    lblPerMva: TLabel;
    lblPIS: TLabel;
    lblPisEntrada: TLabel;
    lblPisSaida: TLabel;
    lblCofins: TLabel;
    lblCofinsEntrada: TLabel;
    lblCofinsSaida: TLabel;
    lblIpi: TLabel;
    lblIpiEntrada: TLabel;
    lblIpiSaida: TLabel;
    lblPerIPI: TLabel;
    lblAliquotaInterna: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    txtPerMVA: TDBEdit;
    cbbCST_PIS_Entrada: TwwDBLookupCombo;
    cbbCST_PIS_Saida: TwwDBLookupCombo;
    cbbCST_COFINS_Entrada: TwwDBLookupCombo;
    cbbCST_COFINS_Saida: TwwDBLookupCombo;
    cbbCST_IPI_Entrada: TwwDBLookupCombo;
    cbbCST_IPI_Saida: TwwDBLookupCombo;
    gbPromocao: TGroupBox;
    lblPerPromocao: TLabel;
    chkAtivaPromocao: TDBCheckBox;
    txtPerPromocao: TDBEdit;
    gbDesconto: TGroupBox;
    lblPerDesconto: TLabel;
    chkAtivaDesconto: TDBCheckBox;
    txtPerDesconto: TDBEdit;
    txtPerIPI: TDBEdit;
    txtAliquotaInterna: TDBEdit;
    chkSerTerceiro: TDBCheckBox;
    chkTipoEPI: TDBCheckBox;
    chk_MsgEtiqCol: TDBCheckBox;
    sbMsqEtq: TScrollBox;
    txtMsgEtq2: TwwDBEdit;
    txtMsgEtq3: TwwDBEdit;
    txtMsgEtq4: TwwDBEdit;
    txtMsgEtq5: TwwDBEdit;
    txtMsgEtq6: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    txtMsgEtq1: TwwDBEdit;
    txtPerFCP: TDBEdit;
    txtLucSobVend: TDBEdit;
    txtOutroDV: TwwDBEdit;
    txtIRCS: TwwDBEdit;
    chbCtrLoteEnt: TDBCheckBox;
    gbCmv: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    txtCmvPerInterno: TwwDBEdit;
    txtCmvPerExterno: TwwDBEdit;
    GroupBox1: TGroupBox;
    Foto: TLabel;
    wwDBEdit2: TwwDBEdit;
    btnSelImagem: TButton;
    btnVerImagem: TButton;
    gbFatorCorrecao: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    txtFatorCorrVista: TwwDBEdit;
    txtFatorCorrPrazo: TwwDBEdit;
    txtCodNtr: TJvDBComboEdit;
    DBCheckBox2: TDBCheckBox;
    ScrollBox1: TScrollBox;
    lblCidade: TLabel;
    txtCidadeDescricao: TDBText;
    lblSeloEtq: TLabel;
    txtSeloEtqPers: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    txtDescBlcEspuma1: TDBText;
    txtEtqtec: TJvDBComboEdit;
    chk_ImpSelo: TDBCheckBox;
    chk_ImpEtqPers: TDBCheckBox;
    chbUtilizaLote: TDBCheckBox;
    txtSeloEtq: TDBEdit;
    txtNomeEtqPers: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    cbBlocoEspuma: TDBCheckBox;
    cbCalcBloco: TDBCheckBox;
    txtBlcEspuma1: TJvDBComboEdit;
    Label17: TLabel;
    txtBlcEspuma2: TJvDBComboEdit;
    txtDescBlcEspuma2: TDBText;
    Label18: TLabel;
    txtBlcEspuma3: TJvDBComboEdit;
    txtDescBlcEspuma3: TDBText;
    Label19: TLabel;
    txtBlcEspumaRevest1: TJvDBComboEdit;
    txtDescBlcEspumaRevest1: TDBText;
    Label20: TLabel;
    txtBlcEspumaRevest2: TJvDBComboEdit;
    txtDescBlcEspumaRevest2: TDBText;
    Label21: TLabel;
    chkRastEspumacao: TDBCheckBox;
    chkRastLaminacao: TDBCheckBox;
    chkBordadeira: TDBCheckBox;
    chkCorteCostura: TDBCheckBox;
    chkColagemTampAlfin: TDBCheckBox;
    chkColagemMolas: TDBCheckBox;
    chkMontagemCxaBox: TDBCheckBox;
    chkExibeImprDaOP: TDBCheckBox;
    Label22: TLabel;
    gbItens: TGroupBox;
    pnItens: TPanel;
    Label31: TLabel;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    cbbCor: TwwDBLookupCombo;
    dsoGruCor: TwwDataSource;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCodigoExit(Sender: TObject);
    procedure cbbCST_PIS_EntradaEnter(Sender: TObject);
    procedure cbbCST_IPI_EntradaEnter(Sender: TObject);
    procedure cbbCST_PIS_SaidaEnter(Sender: TObject);
    procedure cbbCST_COFINS_EntradaEnter(Sender: TObject);
    procedure cbbCST_COFINS_SaidaEnter(Sender: TObject);
    procedure cbbCST_IPI_SaidaEnter(Sender: TObject);
    procedure cbbTipoItemEnter(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbOrigemMercadoriaEnter(Sender: TObject);
    procedure chkAtivaPromocaoClick(Sender: TObject);
    procedure chkAtivaDescontoClick(Sender: TObject);
    procedure cbbTributoEnter(Sender: TObject);
    procedure cbbTipoItemBeforeDropDown(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtEtqtecButtonClick(Sender: TObject);
    procedure txtEtqtecExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbTipoItemExit(Sender: TObject);
    procedure mmMsgEtiqColchaoEnter(Sender: TObject);
    procedure mmMsgEtiqColchaoExit(Sender: TObject);
    procedure btnSelImagemClick(Sender: TObject);
    procedure btnVerImagemClick(Sender: TObject);
    procedure txtCodNtrButtonClick(Sender: TObject);
    procedure txtCodNtrExit(Sender: TObject);
    procedure txtBlcEspuma1ButtonClick(Sender: TObject);
    procedure txtBlcEspuma1Exit(Sender: TObject);
    procedure cbBlocoEspumaClick(Sender: TObject);
    procedure cbCalcBlocoClick(Sender: TObject);
    procedure txtBlcEspuma2ButtonClick(Sender: TObject);
    procedure txtBlcEspuma3ButtonClick(Sender: TObject);
    procedure txtBlcEspuma2Exit(Sender: TObject);
    procedure txtBlcEspuma3Exit(Sender: TObject);
    procedure txtBlcEspumaRevest1ButtonClick(Sender: TObject);
    procedure txtBlcEspumaRevest2ButtonClick(Sender: TObject);
    procedure txtBlcEspumaRevest1Exit(Sender: TObject);
    procedure txtBlcEspumaRevest2Exit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    function VerifNivelGru:integer;
    procedure ReplicarDados(const codigo: String);

  public
    { Public declarations }
  end;

var
  CAD_FM_C_GRU: TCAD_FM_C_GRU;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_NCM, PSQ_UN_X_TRI, PSQ_UN_X_ETQ, uDmSgq, FormImg,
  uProxy, PSQ_UN_X_NTR, PSQ_UN_X_ITE;

procedure TCAD_FM_C_GRU.AbrirBuscas;
begin
  dmGeral.BUS_PR_X_ORM;
  dmGeral.BUS_PR_X_TIP(dmGeral.BUS_CD_X_TIP);
  dmGeral.BUS_PR_X_IPI_ENT;
  dmGeral.BUS_PR_X_IPI_SAI;
  dmGeral.BUS_PR_X_COF_ENT;
  dmGeral.BUS_PR_X_COF_SAI;
  dmGeral.BUS_PR_X_PIS_ENT;
  dmGeral.BUS_PR_X_PIS_SAI;
  dmGeral.BusTributo(1,'%');
  dmGeral.BusCor(1,'%');
end;

procedure TCAD_FM_C_GRU.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRU);
  HabilDesabCampos(true,clWindow);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
  dmgeral.CAD_CD_C_GRU.FieldByName('IMPRIME_SELO_ETQ').AsBoolean := False;

  cbBlocoEspuma.checked := false;
  cbCalcBloco.checked := false;

end;

procedure TCAD_FM_C_GRU.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRU) then
      begin
        inherited;
        if VerifNivelGru = 0 then
           HabilDesabCampos(false,$00DADADA);
        txtCodigo.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_GRU.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRU) then
     begin
       inherited;
       dbGrid.SetFocus;
       pcDadosGrupo.ActivePage := tsDadosGerais;
     end
  else
     begin
       txtCodigo.Enabled := True;
     end;
end;

procedure TCAD_FM_C_GRU.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRU);
end;

procedure TCAD_FM_C_GRU.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  //  showmessage(dmGeral.CAD_CD_C_GRU.FieldByName('id_st_pis_entrada').AsString + #13 +
  //              dmGeral.CAD_CD_C_GRU.FieldByName('id_st_pis_saida').AsString);

  codigo := dmGeral.CAD_CD_C_GRU.FieldByName('ID_GRUPO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_GRU);
  inherited;
  dmGeral.CAD_CD_C_GRU.Close;
  dmGeral.CAD_CD_C_GRU.Data :=
  dmGeral.CAD_CD_C_GRU.DataRequest(
          VarArrayOf([0, codigo]));

  pcDadosGrupo.ActivePage := tsDadosGerais;
  //AbrirBuscas;

end;

procedure TCAD_FM_C_GRU.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_GRU.Close;
    dmGeral.CAD_CD_C_GRU.Data :=
    dmGeral.CAD_CD_C_GRU.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_GRU.btnSelImagemClick(Sender: TObject);
var
 ms: TMemoryStream;
 Imagem:TBitmap;
 jpg : TJPEGImage;
 Png: TPngImage;
begin
  inherited;
  OpenD.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenD.Execute then
   begin
    try
      ms := TMemoryStream.Create;
      imagem := TBitmap.Create;
      if pos('.jpg',OpenD.FileName)>0 then
        begin
          Jpg := TJpegImage.Create;
          Jpg.LoadFromFile(OpenD.FileName);
          Imagem.Assign(JPG);
        end
      else if pos('.png',OpenD.FileName)>0 then
        begin
          Png := TPngImage.Create;
          Png.LoadFromFile(OpenD.FileName);
          Imagem.Assign(PNG);
        end
      else
        begin
          imagem.LoadFromFile(OpenD.FileName);
        end;



      dmGeral.RedimensionarImagem(imagem, 200, 200);
      imagem.SaveToStream(ms);

      FImg := TFImg.Create(Self);
      FImg.Image1.Picture.Bitmap.Assign(imagem);
      FImg.Caption := '';
      FImg.Show;
      FImg.Left := (Screen.Width DIV 3);
      FImg.Top := (Screen.Width DIV 4);

      ms.Position := 0;
      dmgeral.CAD_CD_C_GRUfoto_temp.LoadFromStream(ms);
      dmgeral.CAD_CD_C_GRU.FieldByName('mob_nome_foto').AsString :=
        stringreplace(dmGeral.CAD_CD_C_GRU.FieldByName('ID_GRUPO').AsString, '.', '',
                          [rfReplaceAll, rfIgnoreCase])+'.png';
    finally
      // ms.Free;
      // imagem.Free;
    end;
  end;

end;

procedure TCAD_FM_C_GRU.btnVerImagemClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  ms2: TMemoryStream;
  ms: TStream;
  imagem:TBitmap;
begin
  inherited;


  imagem := TBitmap.Create;

  if (dmGeral.CAD_CD_C_GRU.FieldByName('foto_temp').AsString<>'') then
    begin
      ms2 := TMemoryStream.Create;
      TBLOBField(dmGeral.CAD_CD_C_GRU.FieldByName('foto_temp')).SaveToStream(ms2);
      ms2.Position := 0;
      imagem.LoadFromStream(ms2);

      FImg := TFImg.Create(Self);
      FImg.Image1.Picture.Bitmap.Assign(imagem);
      FImg.Caption := '';
      FImg.Show;
      FImg.Left := (Screen.Width DIV 3);
      FImg.Top := (Screen.Width DIV 4);
    end
  else if (dmGeral.CAD_CD_C_GRU.FieldByName('mob_nome_foto').AsString<>'') then
    begin
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
       ms := TStream.Create;
       ms := SMPrincipal.enGetImagem('CAD_TB_C_GRU',dmGeral.CAD_CD_C_GRU.FieldByName('mob_nome_foto').AsString);
       ms.Position := 0;
       imagem.LoadFromStream(ms);
       FImg := TFImg.Create(Self);
       FImg.Image1.Picture.Bitmap.Assign(imagem);
       FImg.Caption := '';
       FImg.Show;
       FImg.Left := (Screen.Width DIV 3);
       FImg.Top := (Screen.Width DIV 4);


      finally
        FreeAndNil(SMPrincipal);
      //  ms.Free;
       // imagem.Free;
      end;
    end
  else
    ShowMessage('Imagem inexistente.');
end;

procedure TCAD_FM_C_GRU.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled := true;

  dmGeral.CAD_CD_C_GRU_COR.Insert;
  cbbCor.SetFocus;
end;

procedure TCAD_FM_C_GRU.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_GRU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_GRU.Close;
  FreeAndNil(CAD_FM_C_GRU);
end;

procedure TCAD_FM_C_GRU.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_GRU.Close;
  dmGeral.CAD_CD_C_GRU.Data := dmGeral.CAD_CD_C_GRU.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_GRU.Open;

  dmGeral.CAD_CD_C_GRU_EMP.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  if (not (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('correcao_prc_por_grupo').AsBoolean=true)) then
    begin
      gbFatorCorrecao.Visible := false;
    end;

  AbrirBuscas;
end;

procedure TCAD_FM_C_GRU.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
  txtPerPromocao.Enabled := False;
  txtPerDesconto.Enabled := False;
  tsGestaoQualidade.TabVisible := false;

  lblCidade.Visible := false;
  txtEtqtec.Visible := false;
  txtCidadeDescricao.Visible := false;

  chk_ImpSelo.Visible    := false;

  // Estes campos não tem mais necessidade, por Maxsuel Victor, 23/03/2017
  //chk_MsgEtiqCol.Visible := false;
  //sbMsqEtq.Visible := false;
  // -------------------------------------

  lblSeloEtq.Visible := false;
  txtSeloEtq.Visible := false;

  chk_ImpEtqPers.Visible := false;
  txtSeloEtqPers.Visible := false;
  txtNomeEtqPers.Visible := false;

  chbCtrLoteEnt.Visible := false;


  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True then
     begin
       chkTipoEPI.Visible := True;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
    begin
      lblCidade.Visible := true;
      txtEtqtec.Visible := true;
      txtCidadeDescricao.Visible := true;

      chk_ImpSelo.Visible := true;

      lblSeloEtq.Visible := true;
      txtSeloEtq.Visible := true;

       // Estes campos não tem mais necessidade, por Maxsuel Victor, 23/03/2017
      //chk_MsgEtiqCol.Visible   := true;

      chk_ImpEtqPers.Visible := true;
      txtSeloEtqPers.Visible := true;
      txtNomeEtqPers.Visible := true;

      tsGestaoQualidade.TabVisible := true;
      // Descontinuado 06/12/2015
      //sbMsqEtq.Visible := true;
    end;

  chkSerTerceiro.Visible := false;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True)) then
    begin
      chkSerTerceiro.Visible := true;
    end;



  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
    begin
       chbCtrLoteEnt.Visible := true;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean=true) then
     chbUtilizaLote.Visible := true
  else
     chbUtilizaLote.Visible := false;

end;

procedure TCAD_FM_C_GRU.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.CAD_CD_C_GRU_COR.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_GRU_COR.Delete;
      if not dmGeral.CAD_CD_C_GRU_COR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_GRU_COR.Edit;
         end;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_GRU.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  cbbTipoItem.Enabled := estado;
  cbbTipoItem.Color   := cor;

  cbbOrigemMercadoria.Enabled := estado;
  cbbOrigemMercadoria.Color   := cor;

  cbbTributo.Enabled := estado;
  cbbTributo.Color   := cor;

  txtPerIPI.Enabled := estado;
  txtPerIPI.Color   := cor;

  txtPerMVA.Enabled := estado;
  txtPerMVA.Color := cor;

  txtPerFCP.Enabled := estado;
  txtPerFCP.Color := cor;

  txtAliquotaInterna.Enabled := estado;
  txtAliquotaInterna.Color   := cor;

  cbbCST_PIS_Entrada.Enabled := estado;
  cbbCST_PIS_Entrada.Color   := cor;

  cbbCST_PIS_Saida.Enabled   := estado;
  cbbCST_PIS_Saida.Color     := cor;

  cbbCST_COFINS_Entrada.Enabled := estado;
  cbbCST_COFINS_Entrada.Color   := cor;

  cbbCST_COFINS_Saida.Enabled := estado;
  cbbCST_COFINS_Saida.Color   := cor;

  cbbCST_IPI_Entrada.Enabled := estado;
  cbbCST_IPI_Entrada.Color   := cor;

  cbbCST_IPI_Saida.Enabled := estado;
  cbbCST_IPI_Saida.Color   := cor;

  gbPromocao.Enabled := estado;
  gbDesconto.Enabled := estado;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma1ButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := CAD_FM_C_GRU.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma').AsString = '' then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').AsString := '';
     end
  else
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').AsString := '';

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBlcEspuma1.Text]));

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').AsString :=
           dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             ShowMessage('Item não cadastrado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;

       if dmGeral.BUS_CD_C_ITE.FieldByName('int_sgqblocoespuma').AsBoolean = false  then
          begin
             ShowMessage('Só é permitido item que seja de grupo de estoque com o campo tipo de bloco de espuma marcado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma2ButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := CAD_FM_C_GRU.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_2').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_2').AsString = '' then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').AsString := '';
     end
  else
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').AsString := '';

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBlcEspuma2.Text]));

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').AsString :=
           dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             ShowMessage('Item não cadastrado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_2').AsString := '';
             txtBlcEspuma2.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;

       if dmGeral.BUS_CD_C_ITE.FieldByName('int_sgqblocoespuma').AsBoolean = false  then
          begin
             ShowMessage('Só é permitido item que seja de grupo de estoque com o campo tipo de bloco de espuma marcado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_2').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_2').AsString := '';
             txtBlcEspuma2.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma3ButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := CAD_FM_C_GRU.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_3').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_GRU.txtBlcEspuma3Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_3').AsString = '' then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').AsString := '';
     end
  else
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').AsString := '';

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBlcEspuma3.Text]));

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').AsString :=
           dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             ShowMessage('Item não cadastrado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_3').AsString := '';
             txtBlcEspuma3.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;

       if dmGeral.BUS_CD_C_ITE.FieldByName('int_sgqblocoespuma').AsBoolean = false  then
          begin
             ShowMessage('Só é permitido item que seja de grupo de estoque com o campo tipo de bloco de espuma marcado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_3').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_3').AsString := '';
             txtBlcEspuma3.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TCAD_FM_C_GRU.txtBlcEspumaRevest1ButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := CAD_FM_C_GRU.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_1').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_GRU.txtBlcEspumaRevest1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_1').AsString = '' then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').AsString := '';
     end
  else
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').AsString := '';

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBlcEspumaRevest1.Text]));

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').AsString :=
           dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             ShowMessage('Item não cadastrado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_1').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;

       if dmGeral.BUS_CD_C_ITE.FieldByName('int_sgqblocoespuma').AsBoolean = false  then
          begin
             ShowMessage('Só é permitido item que seja de grupo de estoque com o campo tipo de bloco de espuma marcado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_1').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_1').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TCAD_FM_C_GRU.txtBlcEspumaRevest2ButtonClick(Sender: TObject);
begin
  inherited;
 PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := CAD_FM_C_GRU.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_2').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_GRU.txtBlcEspumaRevest2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_2').AsString = '' then
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').AsString := '';
     end
  else
     begin
       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').AsString := '';

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBlcEspumaRevest1.Text]));

       dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').AsString :=
           dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

       if dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             ShowMessage('Item não cadastrado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_2').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;

       if dmGeral.BUS_CD_C_ITE.FieldByName('int_sgqblocoespuma').AsBoolean = false  then
          begin
             ShowMessage('Só é permitido item que seja de grupo de estoque com o campo tipo de bloco de espuma marcado.');
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeite_espuma_revest_2').AsString := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('id_item_bloco_espuma_revest_2').AsString := '';
             txtBlcEspuma1.SetFocus;
             dmGeral.BUS_CD_C_ITE.close;
             abort;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TCAD_FM_C_GRU.mmMsgEtiqColchaoEnter(Sender: TObject);
begin
  inherited;
  CAD_FM_C_GRU.KeyPreview := false;
end;

procedure TCAD_FM_C_GRU.mmMsgEtiqColchaoExit(Sender: TObject);
begin
  inherited;
  CAD_FM_C_GRU.KeyPreview := true;
end;

procedure TCAD_FM_C_GRU.pnItensExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_GRU_COR.Cancel;
        dmGeral.CAD_CD_C_GRU_COR.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TCAD_FM_C_GRU.ReplicarDados(const codigo: String);
var
  a,b,c: String;
begin
  a := copy(codigo,1,1);
  b := copy(codigo,3,2);
  c := copy(codigo,6,3);

  dmGeral.BusGrupoEst(0,a+'.'+b+'.'+'000');
  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
      dmGeral.CAD_CD_C_GRU.FieldByName('origem_mercadoria').AsString :=
              dmGeral.BUS_CD_C_GRUorigem_mercadoria.AsString;
      //dmGeral.CAD_CD_C_GRU.FieldByName('tipo').AsString := dmGeral.BUS_CD_C_GRUtipo.AsString;
      //dmGeral.CAD_CD_C_GRU.FieldByName('nivel').AsString := dmGeral.BUS_CD_C_GRUnivel.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('tipo_item').AsString :=
              dmGeral.BUS_CD_C_GRUtipo_item.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_tributo').AsString :=
              dmGeral.BUS_CD_C_GRUid_tributo.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('mva').AsString :=
              dmGeral.BUS_CD_C_GRUmva.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('promo_ativa').AsString :=
              dmGeral.BUS_CD_C_GRUpromo_ativa.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('promo_perc').AsString :=
              dmGeral.BUS_CD_C_GRUpromo_perc.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('ali_interna_icms').AsString :=
              dmGeral.BUS_CD_C_GRUali_interna_icms.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_pis_entrada').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_pis_entrada.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_cof_entrada').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_cof_entrada.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_ipi_entrada').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_ipi_entrada.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_pis_saida').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_pis_saida.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_cof_saida').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_cof_saida.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_st_ipi_saida').AsString :=
              dmGeral.BUS_CD_C_GRUid_st_ipi_saida.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('desc_ativa').AsString :=
              dmGeral.BUS_CD_C_GRUdesc_ativa.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('desc_perc').AsString :=
              dmGeral.BUS_CD_C_GRUdesc_perc.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('per_ipi').AsString :=
              dmGeral.BUS_CD_C_GRUper_ipi.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('id_fte_etq').AsString :=
              dmGeral.BUS_CD_C_GRUid_fte_etq.AsString;
      dmGeral.CAD_CD_C_GRU.FieldByName('imprime_selo_etq').AsString :=
              dmGeral.BUS_CD_C_GRUimprime_selo_etq.AsString;
      //dmGeral.CAD_CD_C_GRU.FieldByName('ser_terceiro').AsString :=
      //        dmGeral.BUS_CD_C_GRU.FieldByName('ser_terceiro').AsString;
     end
  else
    begin
      dmGeral.BUS_CD_C_GRU.close;

      Showmessage('Codigo de Sequêcia do grupo incompativel!');
      txtcodigo.SetFocus;
      abort;
    end;
  dmGeral.BUS_CD_C_GRU.close;
end;

procedure TCAD_FM_C_GRU.txtCodigoExit(Sender: TObject);
var
  edmask: TMaskEdit;
  a,b,c: String;
begin
  inherited;
//  edmask := TMaskEdit(edmask);
  try
    if btnCancelar.focused then
       begin
         exit;
       end
  finally
    begin
      if btnCancelar.focused then
         begin
           txtDescricao.Text := '';
           acCancelarExecute(self);
         end;
    end;
  end;
  if txtCodigo.Text = '' Then
     begin
       ShowMessage('Código é obrigatório.');
       txtCodigo.SetFocus;
       Abort;
     end;

  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0,Trim(txtCodigo.Text)]));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       ShowMessage('Grupo de Estoque já cadastrado.');
       txtCodigo.SetFocus;
       Abort;
     end;

  a := copy(txtCodigo.Text,1,1);
  b := copy(txtCodigo.Text,3,2);
  c := copy(txtCodigo.Text,6,3);

  if length(trim(a+b+c)) = 1 then
     begin
       if strtoint(a) > 0 then
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 1;

       if (length(trim(b)) <> 2) or (length(trim(c)) <> 3 )  then
          begin
            ShowMessage('Código de grupo inválido.');
            txtCodigo.SetFocus;
            Abort;
          end;
     end;

  if length(trim(a+b+c)) = 3 then
     begin
       if (length(trim(b)) <> 2) or (length(trim(c)) <> 3 )  then
          begin
            ShowMessage('Código de grupo inválido.');
            txtCodigo.SetFocus;
            Abort;
          end;
       if strtoint(b) > 0 then
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 2
       else
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 1;
     end;

  if length(trim(a+b+c)) = 6 then
     begin
       if (length(trim(b)) <> 2) or (length(trim(c)) <> 3 )  then
          begin
            ShowMessage('Código de grupo inválido.');
            txtCodigo.SetFocus;
            Abort;
          end;
       if strtoint(c) > 0 then
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 3
       else if strtoint(b) > 0 then
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 2
       else
          dmGeral.CAD_CD_C_GRUnivel.Asinteger := 1;
     end;

  HabilDesabCampos(true,clWindow);
  if dmGeral.CAD_CD_C_GRUnivel.Asinteger = 1 then
    begin
     HabilDesabCampos(false,$00DADADA);
     dmGeral.CAD_CD_C_GRU.FieldByName('tipo').AsString := '1';
    end;

  if dmGeral.CAD_CD_C_GRUnivel.Asinteger = 2 then
    begin
      dmGeral.BusGrupoEst(0,a+'.00.000');
      if dmGeral.BUS_CD_C_GRU.IsEmpty then
        begin
          dmGeral.BUS_CD_C_GRU.close;

          Showmessage('Codigo de Sequência do grupo incompativel!');
          txtcodigo.SetFocus;
          abort;
        end
      else
        begin
          dmGeral.CAD_CD_C_GRU.FieldByName('tipo').AsString := '1';
          dmGeral.BUS_CD_C_GRU.close;
        end;
    end;

  if dmGeral.CAD_CD_C_GRUnivel.Asinteger = 3 then
     ReplicarDados(dmGeral.CAD_CD_C_GRU.FieldByName('id_grupo').AsString);

  ActiveControl := nil;
  PostMessage(txtDescricao.Handle, WM_SETFOCUS, 0, 0);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_GRU.txtCodNtrButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_NTR := TPSQ_FM_X_NTR.Create(Self);
   PSQ_FM_X_NTR.ShowModal;
      if not PSQ_FM_X_NTR.BUS_CD_C_NTR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_GRU.FieldByName('COD_NTR').AsString :=
                PSQ_FM_X_NTR.BUS_CD_C_NTR.FieldByName('CODIGO').AsString;
         end;
   PSQ_FM_X_NTR.Free;
end;

procedure TCAD_FM_C_GRU.txtCodNtrExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if trim(txtCodNtr.text) <> '' then
     begin
        BUS_CD_C_NTR.Close;
        BUS_CD_C_NTR.Data :=
          BUS_CD_C_NTR.DataRequest(VarArrayOf([0, dmGeral.CAD_CD_C_GRU.FieldByName('cod_ntr').Text]));

         if BUS_CD_C_NTR.IsEmpty then
           begin
             ShowMessage('Natureza da receita não encontrada.');
             dmGeral.CAD_CD_C_GRU.FieldByName('cod_ntr').Text := '';
             txtCodNtr.SetFocus;
             Exit;
           end;
     end;

   BUS_CD_C_NTR.Close;
end;

procedure TCAD_FM_C_GRU.txtEtqtecButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ETQ := TPSQ_FM_X_ETQ.Create(Self);
   PSQ_FM_X_ETQ.ShowModal;
      if not PSQ_FM_X_ETQ.BUS_CD_M_FTE_ETQ.IsEmpty then
         begin
           dmGeral.CAD_CD_C_GRU.FieldByName('ID_FTE_ETQ').AsString :=
                PSQ_FM_X_ETQ.BUS_CD_M_FTE_ETQ.FieldByName('ID_FTE_ETQ').AsString;
         end;
   PSQ_FM_X_ETQ.Free;
end;

procedure TCAD_FM_C_GRU.txtEtqtecExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeetq').Text := '';

  if trim(dmGeral.CAD_CD_C_GRU.FieldByName('id_fte_etq').Text) <> '' then
     begin
       dmSgq.BUS_CD_M_FTE_ETQ.Close;
       dmSgq.BUS_CD_M_FTE_ETQ.Data :=
          dmSgq.BUS_CD_M_FTE_ETQ.DataRequest(VarArrayOf([0, dmGeral.CAD_CD_C_GRU.FieldByName('id_fte_etq').Text]));

        if dmSgq.BUS_CD_M_FTE_ETQ.IsEmpty then
           begin
             ShowMessage('Etiqueta técnica não encontrada.');
             dmGeral.CAD_CD_C_GRU.FieldByName('id_fte_etq').Text := '';
             dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeetq').Text := '';
             txtEtqtec.SetFocus;
             Exit;
           end;

        dmGeral.CAD_CD_C_GRU.FieldByName('int_nomeetq').AsString :=
           dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('descricao').AsString;
        dmSgq.BUS_CD_M_FTE_ETQ.Close;
     end;
end;

procedure TCAD_FM_C_GRU.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

function TCAD_FM_C_GRU.VerifNivelGru: integer;
var
  a,b,c:String;

begin

  a := copy(dmGeral.CAD_CD_C_GRUid_grupo.Text,1,1);
  b := copy(dmGeral.CAD_CD_C_GRUid_grupo.Text,3,2);
  c := copy(dmGeral.CAD_CD_C_GRUid_grupo.Text,6,3);

  if length(trim(a+b+c)) = 1 then
     begin
       if strtoint(a) > 0 then
          result := 0;
     end;

  if length(trim(a+b+c)) = 3 then
     begin
       if strtoint(b) > 0 then
          result := 1
       else
          result := 0;
     end;

  if length(trim(a+b+c)) = 6 then
     begin
       if strtoint(c) > 0 then
          result := 2
       else if strtoint(b) > 0 then
          result := 1
       else
          result := 0;
     end;
end;

procedure TCAD_FM_C_GRU.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdItens.Focused  then
     begin
       exit;
     end;

  dmGeral.CAD_CD_C_GRU_CORint_nomecor.AsString :=
    dmGeral.BUS_CD_C_CORdescricao.AsString;

  dmGeral.CAD_CD_C_GRU_COR.Post;

  pnItens.Enabled := false;

  // ActiveControl := nil;
  // PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TCAD_FM_C_GRU.cbbCST_COFINS_EntradaEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BUS_PR_X_PIS_ENT;
  dmGeral.BUS_PR_X_COF_ENT;
  cbbCST_COFINS_Entrada.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCST_COFINS_SaidaEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BUS_PR_X_PIS_SAI(dmGeral.BUS_CD_X_COF_SAI);
  dmGeral.BUS_PR_X_COF_SAI;
  cbbCST_COFINS_Saida.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCST_IPI_EntradaEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BUS_PR_X_IPI(dmGeral.BUS_CD_X_IPI_ENT);
  cbbCST_IPI_Entrada.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCST_IPI_SaidaEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BUS_PR_X_IPI(dmGeral.BUS_CD_X_IPI_SAI);
  cbbCST_IPI_Saida.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCST_PIS_EntradaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_PIS_ENT;
  cbbCST_PIS_Entrada.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbCST_PIS_SaidaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_PIS_SAI;//Removi comentario
  cbbCST_PIS_Saida.DropDown;
end;

procedure TCAD_FM_C_GRU.cbBlocoEspumaClick(Sender: TObject);
begin
  inherited;
  if cbBlocoEspuma.Checked then
     begin
       cbCalcBloco.Checked := false;
       cbCalcBloco.Enabled := false;
     end
  else
     begin
       cbCalcBloco.Enabled := true;
     end;
end;

procedure TCAD_FM_C_GRU.cbbOrigemMercadoriaEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BUS_PR_X_ORM;
  cbbOrigemMercadoria.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbTipoItemBeforeDropDown(Sender: TObject);
begin
  inherited;
//  cbbTipoItem.Selected.IndexOf('1');
end;

procedure TCAD_FM_C_GRU.cbbTipoItemEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_TIP(dmGeral.BUS_CD_X_TIP);
  cbbTipoItem.DropDown;
end;

procedure TCAD_FM_C_GRU.cbbTipoItemExit(Sender: TObject);
begin
  inherited;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True)) then
    begin
      dmGeral.CAD_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean := False;
      chkSerTerceiro.Visible := false;
      if (dmGeral.CAD_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
        begin
         chkSerTerceiro.Visible := true;
        end;
    end;
end;

procedure TCAD_FM_C_GRU.cbbTributoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTributo(1,'%');
  cbbTributo.DropDown;
end;

procedure TCAD_FM_C_GRU.cbCalcBlocoClick(Sender: TObject);
begin
  inherited;

  if cbCalcBloco.Checked then
     begin
       txtBlcEspuma1.Enabled := true;
       txtBlcEspuma1.color   := clWhite;

       txtBlcEspuma2.Enabled := true;
       txtBlcEspuma2.color   := clWhite;

       txtBlcEspuma3.Enabled := true;
       txtBlcEspuma3.color   := clWhite;

       txtBlcEspumaRevest1.Enabled := true;
       txtBlcEspumaRevest1.color   := clWhite;

       txtBlcEspumaRevest2.Enabled := true;
       txtBlcEspumaRevest2.color   := clWhite;
     end
  else
     begin
       txtBlcEspuma1.Enabled := false;
       txtBlcEspuma1.text    := '';
       txtDescBlcEspuma1.Caption := '';
       txtBlcEspuma1.color   := $00DADADA;

       txtBlcEspuma2.Enabled := false;
       txtBlcEspuma2.text    := '';
       txtDescBlcEspuma2.Caption := '';
       txtBlcEspuma2.color   := $00DADADA;

       txtBlcEspuma3.Enabled := false;
       txtBlcEspuma3.text    := '';
       txtDescBlcEspuma3.Caption := '';
       txtBlcEspuma3.color   := $00DADADA;


       txtBlcEspumaRevest1.Enabled := false;
       txtBlcEspumaRevest1.text    := '';
       txtDescBlcEspumaRevest1.Caption := '';
       txtBlcEspumaRevest1.color   := $00DADADA;

       txtBlcEspumaRevest2.Enabled := false;
       txtBlcEspumaRevest2.text    := '';
       txtDescBlcEspumaRevest2.Caption := '';
       txtBlcEspumaRevest2.color   := $00DADADA;
     end;

end;

procedure TCAD_FM_C_GRU.chkAtivaDescontoClick(Sender: TObject);
begin
  inherited;
  if chkAtivaDesconto.Checked = True then
     begin
       txtPerDesconto.Enabled := True;

       if txtPerDesconto.CanFocus then
          txtPerDesconto.SetFocus;
     end
  else
     begin
       txtPerDesconto.Enabled := False;
       txtPerDesconto.Text := '';
     end;
end;

procedure TCAD_FM_C_GRU.chkAtivaPromocaoClick(Sender: TObject);
begin
  inherited;
  if chkAtivaPromocao.Checked = True then
     begin
       txtPerPromocao.Enabled := True;

       if txtPerPromocao.CanFocus then
          txtPerPromocao.SetFocus;
     end
  else
     begin
       txtPerPromocao.Enabled := False;
       txtPerPromocao.Text := '';
     end;
end;

procedure TCAD_FM_C_GRU.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if COPY(dmGeral.CAD_CD_C_GRU.FieldByName('ID_GRUPO').AsString,6,3)='000' then
    begin
      //aFont.Color := clBlue; //Vermelho
      afont.Style := [fsBold];
    end;
end;

procedure TCAD_FM_C_GRU.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) OR
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True)) then
    begin
      chkSerTerceiro.Visible := false;
      if (dmGeral.CAD_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
        begin
         chkSerTerceiro.Visible := true;
        end;
    end;
end;

end.
