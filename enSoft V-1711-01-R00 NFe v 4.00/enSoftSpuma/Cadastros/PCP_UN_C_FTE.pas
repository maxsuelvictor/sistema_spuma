unit PCP_UN_C_FTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.Wwdbedit, Vcl.ExtDlgs, JvDBImage,
  Jpeg, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPCP_FM_C_FTE = class(TPAD_FM_X_PAD)
    txtRequisitos: TDBMemo;
    Label15: TLabel;
    lblRevisao: TLabel;
    txtRevisaoFte: TDBEdit;
    lblObservacoes: TLabel;
    txtContatos: TDBEdit;
    Label1: TLabel;
    txtRemocao: TDBEdit;
    Label2: TLabel;
    txtSAC: TDBEdit;
    gbEtiquetas: TGroupBox;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    dsoFteEtq: TwwDataSource;
    btn_Add_Itens: TBitBtn;
    pnItens: TPanel;
    Label21: TLabel;
    txtDescricao: TwwDBEdit;
    txtTextoLiv1: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtTextoLiv2: TwwDBEdit;
    btnImagemEtq: TSpeedButton;
    txtEspecificacoes: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    txtRev: TwwDBEdit;
    pnlImagem: TPanel;
    btnSelImagem: TBitBtn;
    opd_Imagem: TOpenPictureDialog;
    btnSairImg: TBitBtn;
    img_Etiqueta: TImage;
    chkEtiquetaTecnica: TDBCheckBox;
    cbbModeloImpressao: TwwDBLookupCombo;
    Label7: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnSelImagemClick(Sender: TObject);
    procedure btnSairImgClick(Sender: TObject);
    procedure pnlImagemExit(Sender: TObject);
    procedure btnImagemEtqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtTextoLiv2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkEtiquetaTecnicaClick(Sender: TObject);
    procedure cbbModeloImpressaoEnter(Sender: TObject);
  private
    { Private declarations }
    function RefreshImage(Campo : TField; Img : TImage) : Double;
  public
    { Public declarations }
  end;

var
  PCP_FM_C_FTE: TPCP_FM_C_FTE;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_FTE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_FTE);
  pnItens.Enabled := false;
  txtRequisitos.SetFocus;

end;

procedure TPCP_FM_C_FTE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDP) then
     begin
       inherited;
       pnItens.Enabled := false;
       txtRequisitos.SetFocus;
     end;
end;

procedure TPCP_FM_C_FTE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_FTE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtRequisitos.SetFocus;
     end;
end;

procedure TPCP_FM_C_FTE.acExcluirExecute(Sender: TObject);
begin
  // inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_FTE);
end;

procedure TPCP_FM_C_FTE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_FTE.FieldByName('ID_FTE').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_FTE);
   inherited;
   dmSgq.PCP_CD_C_FTE.Close;
   dmSgq.PCP_CD_C_FTE.Data :=
   dmSgq.PCP_CD_C_FTE.DataRequest(
           VarArrayOf([0, codigo]));
end;
procedure TPCP_FM_C_FTE.btnSairImgClick(Sender: TObject);
begin
  inherited;
  pnlImagem.Visible := false;
end;

procedure TPCP_FM_C_FTE.btnSelImagemClick(Sender: TObject);
begin
  inherited;
  if opd_Imagem.Execute then
     begin
       img_Etiqueta.Picture.LoadFromFile(opd_Imagem.FileName);
       dmSgq.PCP_CD_C_FTE_ETQimg_modelo.LoadFromFile(opd_Imagem.FileName);
     end;
end;

procedure TPCP_FM_C_FTE.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := True;

  dmSgq.PCP_CD_C_FTE_ETQ.Insert;

  chkEtiquetaTecnica.Checked := False;
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_FTE.cbbModeloImpressaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_FTE_MOD_ETQ;
  cbbModeloImpressao.DropDown;
end;

procedure TPCP_FM_C_FTE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  // 0-id_fte
  // 1-Requisitos

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

procedure TPCP_FM_C_FTE.chkEtiquetaTecnicaClick(Sender: TObject);
begin
  inherited;
  if chkEtiquetaTecnica.Checked = False then
     begin
        cbbModeloImpressao.Enabled := False;
        cbbModeloImpressao.Text := '';
     end
  else
     begin
        cbbModeloImpressao.Enabled := True;
        if cbbModeloImpressao.CanFocus then
           cbbModeloImpressao.SetFocus;
     end;
end;

procedure TPCP_FM_C_FTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_C_FTE);
end;

procedure TPCP_FM_C_FTE.FormShow(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_FTE.Close;
  dmSgq.PCP_CD_C_FTE.Data :=
  dmSgq.PCP_CD_C_FTE.DataRequest(
            VarArrayOf([0, '']));

  cbbPesquisaChange(self);
  dmGeral.BUS_PR_X_FTE_MOD_ETQ;
end;

procedure TPCP_FM_C_FTE.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmSgq.PCP_CD_C_FTE_ETQ.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmSgq.PCP_CD_C_FTE_ETQ.Delete;
     dmSgq.PCP_CD_C_FTE_ETQ.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_C_FTE.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmSgq.PCP_CD_C_FTE_ETQ.cancel;

  if dmSgq.PCP_CD_C_FTE_ETQ.IsEmpty then
     begin
       dmSgq.PCP_CD_C_FTE_ETQ.Append;
       pnItens.Enabled := true;
       txtDescricao.SetFocus;
     end
  else
    begin
      dmSgq.PCP_CD_C_FTE_ETQ.Edit;
      pnItens.Enabled := true;
      txtDescricao.SetFocus;
    end;
end;

procedure TPCP_FM_C_FTE.pnItensExit(Sender: TObject);
begin
  inherited;

   if (btn_Add_Itens.Focused) or (grdItens.Focused) or (pnlImagem.Focused) or
      (btnSairImg.Focused) or (btnSelImagem.Focused) or (not grdItensIButton.Enabled) then
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

        dmSgq.PCP_CD_C_FTE_ETQ.Cancel;
        dmSgq.PCP_CD_C_FTE_ETQ.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;

end;

procedure TPCP_FM_C_FTE.pnlImagemExit(Sender: TObject);
begin
  inherited;
  pnlImagem.Visible := false;
end;

procedure TPCP_FM_C_FTE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_C_FTE.txtTextoLiv2Exit(Sender: TObject);
var
  codigo: string;
  sequencia: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtDescricao.Focused    or txtRev.Focused  or
     txtEspecificacoes.Focused or txtTextoLiv1.Focused then
     begin
       abort;
     end;

  codigo := inttostr(dmSgq.PCP_CD_C_FTE_ETQ.RecordCount + 1);
  if length(codigo) = 1 then
     codigo := '0'+codigo;

  if trim(dmSgq.PCP_CD_C_FTE_ETQcod_int_etq.AsString) = '' then
     begin
       dmSgq.PCP_CD_C_FTE_ETQcod_int_etq.AsString := dmGeral.CAD_CD_C_PAR_CTRpcp_cod_int_fte_etq.AsString + ' - ' + codigo;
     end;

  sequencia := dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('ID_FTE_ETQ').AsString;

  if chkEtiquetaTecnica.Checked = True then
     begin
       if dmSgq.PCP_CD_C_FTE_ETQ.FieldByName('MODELO_ETQ').AsString = '' then
          begin
             ShowMessage('O campo "Modelo de Impressão" deve ser prenchido.');
             cbbModeloImpressao.SetFocus;
             Exit;
          end;
     end;

  dmSgq.PCP_CD_C_FTE_ETQ.Post;

  pnItens.Enabled := false;

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;

  dmSgq.PCP_CD_C_FTE_ETQ.locate('ID_FTE_ETQ',sequencia,[]);
end;

procedure TPCP_FM_C_FTE.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
  { Filtros do PCP_CD_C_FTE:
      index 0, ID_FTE
      index 1, Requisitos
   }
  dmSgq.PCP_CD_C_FTE.Close;
  dmSgq.PCP_CD_C_FTE.Data :=
  dmSgq.PCP_CD_C_FTE.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_FTE.btnImagemEtqClick(Sender: TObject);
begin
  inherited;
  pnlImagem.Top   := 38;
  pnlImagem.left  := 69;
  pnlImagem.width := 525;
  pnlImagem.Visible := true;
  img_Etiqueta.Picture := nil;
  RefreshImage(dmSgq.PCP_CD_C_FTE_ETQimg_modelo,img_Etiqueta);
end;


function TPCP_FM_C_FTE.RefreshImage(Campo : TField; Img : TImage) : Double;
var
  vJpeg   : TJPEGImage;
  vStream : TMemoryStream;
begin
  Result := 0;

  { Verifica se o campo está vázio .}
  if not (Campo.IsNull) then
  begin

    { Cria objeto do tipo TJPEG e objeto do tipo MemoryStream .}
    vJpeg   := TJPEGImage.Create;
    vStream := TMemoryStream.Create;

    { Trata o campo como do tipo BLOB e salva o seu conteúdo na memória }
    TBlobField(Campo).SaveToStream(vStream);

    { Ajusta a posicao inicial de leitura da memória. }
    vStream.Position := 0;

    { Carrega da memória os dados, para uma variável do tipo TJPEG
      (A partir da posicao 0)}
    vJpeg.LoadFromStream(vStream);

    { Retorna o tamanho usado na memória, consequentemente o tamanho do JPEG,
      E Exibe o jpg no Timage }
    Result := (vStream.Size / 1024);
    Img.Picture.Assign( vJpeg);

    { Libera a memória utilizada pelos componentes de conversão o. }
    vJpeg.Free;
    vStream.Free;
  end;
end;


end.
