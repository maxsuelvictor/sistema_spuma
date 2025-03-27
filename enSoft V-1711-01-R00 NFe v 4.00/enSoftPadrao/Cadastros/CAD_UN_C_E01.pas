unit CAD_UN_C_E01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,System.IniFiles,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.ImgList;

type
  TCAD_FM_C_E01 = class(TForm)
    pnlTop: TPanel;
    pnlDireita: TPanel;
    pnlEsquerda: TPanel;
    pnlDataGrid: TPanel;
    pnlFiltro: TPanel;
    pnlBotoes: TPanel;
    dbGrid: TwwDBGrid;
    btnIncluir: TcxButton;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    btnGrava: TcxButton;
    btnExcluir: TcxButton;
    gbFiltro: TGroupBox;
    cbbFiltro: TComboBox;
    txtFiltro: TEdit;
    btnFiltro: TcxButton;
    pnlDados: TPanel;
    lblEtiqueta: TLabel;
    lblPosicaoCampos: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    txtNomeArq: TEdit;
    cdsArquivos: TClientDataSet;
    cdsArquivosARQUIVO: TStringField;
    dsArquivos: TwwDataSource;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetasNOME_ETQ: TStringField;
    cdsEtiquetasALTURA_ETQ: TFloatField;
    cdsEtiquetasLARGURA_ETQ: TFloatField;
    cdsEtiquetasTOP_DADOS_NF: TFloatField;
    cdsEtiquetasESQ_DADOS_NF: TFloatField;
    cdsEtiquetasTOP_VOLUME_ETQ: TFloatField;
    cdsEtiquetasESQ_VOLUME_ETQ: TFloatField;
    cdsEtiquetasESQ_EMPRESA_ETQ: TFloatField;
    cdsEtiquetasTAM_FON_DADOS_NF: TFloatField;
    cdsEtiquetasTAM_FON_VOLUME: TFloatField;
    cdsEtiquetasTAM_FON_EMPRESA: TFloatField;
    dsEtiquetas: TwwDataSource;
    txtNomeEtq: TDBEdit;
    cdsEtiquetasTOP_EMPRESA_ETQ: TFloatField;
    gbTamEtq: TGroupBox;
    lblTamEtqAltura: TLabel;
    lblTamEtqLargura: TLabel;
    txtAlturaEtq: TDBEdit;
    txtLarguraEtq: TDBEdit;
    gbTamFonte: TGroupBox;
    lblTamFonteDadosNota: TLabel;
    txtTamFDadosNf: TDBEdit;
    lblTamFonteVol: TLabel;
    txtTamFVolumeNf: TDBEdit;
    lblTamFonteEmp: TLabel;
    txtTamFEmpresaNf: TDBEdit;
    gbPosTopo: TGroupBox;
    lblPosTopoDadosNota: TLabel;
    lblPosTopoVolume: TLabel;
    lblPosTopoEmpresa: TLabel;
    txtTopDadosNf: TDBEdit;
    txtTopVolume: TDBEdit;
    txtTopEmpresa: TDBEdit;
    gbPosEsquerda: TGroupBox;
    lblPosEsqDadosNota: TLabel;
    lblPosEsqVolume: TLabel;
    lblPosEsqEmpresa: TLabel;
    txtEsqDadosNf: TDBEdit;
    txtEsqVolume: TDBEdit;
    txtEsqEmpresa: TDBEdit;
    btnSair: TButton;
    imgBotoesAtivo: TImageList;
    imgBotoesAtivoAz: TImageList;
    ImgPequena: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequenaVe: TImageList;
    imgBotoesAtivoVe: TImageList;
    imgBotoesInativo: TImageList;
    lblTitulo: TLabel;
    lblCodificacaoLMestre: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGridCellChanged(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtFiltroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSair2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtNomeEtqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtLarguraEtqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtAlturaEtqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTopVolumeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTopDadosNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTopEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtEsqDadosNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtEsqVolumeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtEsqEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTamFDadosNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTamFVolumeNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTamFEmpresaNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNomeArqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregarListaArquivos(Arquivo:string);
    procedure abrirArquivo;
    procedure HabilDesabPanelEsqOuDir(direita:boolean);
    procedure AtualizaComponente;
    procedure carregaCores;
    var
      xDiretorio:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_E01: TCAD_FM_C_E01;
  xFaz_Busca_L_Mestre: Boolean      = True;
  xCorGrid:TColor                   = clWhite;
  xCorLabel:TColor                  = $00DADADA;
  xCorPanelTitulo:TColor            = $00844D08;
  xCorEdit:TColor                   = clWhite;
  xCorEditBloc:TColor               = $00DADADA;
  xCorGridTitulo:TColor             = $00DADADA;
  xCorListBox:TColor                = $00DADADA;
  xCorSistema:String                ='GRAFITE';
  xHabBtnAlterar:Boolean            = False;
  xHabBtnExcluir:Boolean            = False;

implementation

{$R *.dfm}

uses FAT_UN_M_CXA_NFE, uDmGeral, CAD_UN_R_CLI, CAD_UN_R_E01;

procedure TCAD_FM_C_E01.FormClick(Sender: TObject);
begin
  Close;
end;

procedure TCAD_FM_C_E01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //FreeAndNil(CAD_FM_C_E01);

   Action := caFree;
end;

procedure TCAD_FM_C_E01.FormCreate(Sender: TObject);
begin
   AtualizaComponente;
   WindowState := wsMaximized;
   self.FormStyle := fsMDIChild;

   btnIncluir.Enabled := true;
   btnAlterar.Enabled := true;
   btnExcluir.Enabled := true;
   btnSair.Enabled := true;
   btnCancelar.Enabled := false;
   btnGrava.Enabled := false;

   cdsArquivos.CreateDataSet;
   cdsArquivos.EmptyDataSet;

   cdsEtiquetas.CreateDataSet;
   cdsEtiquetas.EmptyDataSet;

   HabilDesabPanelEsqOuDir(false);

   btnFiltro.Focused;

   xDiretorio := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'\';

   if not DirectoryExists(xDiretorio) then
     begin
       ForceDirectories(xDiretorio);
     end;

end;

procedure TCAD_FM_C_E01.FormShow(Sender: TObject);
begin
   pnldados.top := (pnlDireita.Height div 2) - (pnldados.height div 2);
   pnldados.left := (pnlDireita.Width div 2) - (pnldados.width div 2);
end;

procedure TCAD_FM_C_E01.txtAlturaEtqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtLarguraEtq.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtEsqDadosNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
     begin
       txtEsqVolume.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtEsqEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
     begin
       txtTamFDadosNf.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtEsqVolumeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtEsqEmpresa.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtFiltroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       btnFiltroClick(Self);
     end;
end;

procedure TCAD_FM_C_E01.txtLarguraEtqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtTopDadosNf.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtNomeArqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       btnGrava.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtNomeEtqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtAlturaEtq.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTamFDadosNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
     begin
       txtTamFVolumeNf.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTamFEmpresaNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtNomeArq.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTamFVolumeNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       txtTamFEmpresaNf.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTopDadosNfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       txtTopVolume.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTopEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtEsqDadosNf.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.txtTopVolumeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_return then
     begin
       txtTopEmpresa.SetFocus;
     end;
end;

procedure TCAD_FM_C_E01.dbGridCellChanged(Sender: TObject);
begin
    abrirArquivo;
end;

procedure TCAD_FM_C_E01.AtualizaComponente;
var
  x: Integer;
begin
  carregaCores;
  for x := 0 to ComponentCount-1 do
    begin
      if (components[x] is TLabel) and ((components[x] as TLabel).tag > 0) then
        (components[x] as TLabel).caption := '';

      if Components[x] is TDBEdit then
        begin
          if (TDBEdit(Components[x]).ReadOnly=True) and (TDBEdit(Components[x]).Tag=1)   then
            TDBEdit(Components[x]).Color   := xCorEditBloc
          else if (TDBEdit(Components[x]).ReadOnly=True)   then
            TDBEdit(Components[x]).Color   := xCorEditBloc
          else
            TDBEdit(Components[x]).Color   :=  xCorEdit;
        end;

      if Components[x] is TDBComboBox then
        TDBComboBox(Components[x]).Color := $00F9E1DF;
      if Components[x] is TwwDBGrid then
        begin
          if TwwDBGrid(Components[x]).Tag<>1 then
            begin
              TwwDBGrid(Components[x]).TitleFont.Color := clBlack;
              TwwDBGrid(Components[x]).Color      := xCorGrid;
              TwwDBGrid(Components[x]).TitleColor := xCorGridTitulo;
            end;
        end;

      if Components[x] is TListBox then
        begin
          if TListBox(Components[x]).Tag<>1 then
            begin
              TListBox(Components[x]).Color := xCorListBox;
            end;
        end;

      if Components[x] is TPanel then
        begin
          if TPanel(Components[x]).Tag = 1 then
            begin
              TPanel(Components[x]).Color := xCorPanelTitulo;
            end;
        end;
    end;
end;

procedure TCAD_FM_C_E01.btnAlterarClick(Sender: TObject);
begin
  if cdsArquivos.RecordCount > 0 then
    begin
      btnIncluir.Enabled := false;
      btnAlterar.Enabled := false;
      btnExcluir.Enabled := false;
      btnSair.Enabled := false;
      btnCancelar.Enabled := true;
      btnGrava.Enabled := true;

      HabilDesabPanelEsqOuDir(true);
      txtNomeArq.Enabled := false;
      txtNomeEtq.Focused;
     end
   else
     begin
       ShowMessage('Registro não encontrado para alteração.');
     end;
end;

procedure TCAD_FM_C_E01.btnCancelarClick(Sender: TObject);
begin
  if (MessageDlg('Deseja Cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      cdsEtiquetas.EmptyDataSet;

      if cdsArquivos.RecordCount >0 then
         begin
           cdsArquivos.First;
           abrirArquivo;
         end;

      btnCancelar.Enabled := false;
      btnGrava.Enabled := false;
      btnIncluir.Enabled := true;
      btnAlterar.Enabled := true;
      btnExcluir.Enabled := true;
      btnSair.Enabled := true;

      txtNomeArq.Enabled := true;
      HabilDesabPanelEsqOuDir(false);

      dbGrid.Focused;
    end;
end;

procedure TCAD_FM_C_E01.btnExcluirClick(Sender: TObject);
begin
   if (cdsArquivos.RecordCount > 0) then
     begin
        if MessageDlg('Confirma a Exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
            if not (DeleteFile(xDiretorio+cdsArquivos.FieldByName('ARQUIVO').AsString+'.xml')) then
              begin
                ShowMessage('Erro ao exluir o modelo de etiqueta.');
                exit;
              end;

              carregarListaArquivos(trim(txtFiltro.Text)+'*');
           end;
     end
   else
     begin
       ShowMessage('Registro não encontrado para exclusão.');
     end;
end;

procedure TCAD_FM_C_E01.btnFiltroClick(Sender: TObject);
begin
   dbGrid.OnCellChanged := nil;
   carregarListaArquivos(trim(txtFiltro.Text)+'*');
   dbGrid.OnCellChanged := dbGridCellChanged;
   abrirArquivo;
end;


procedure TCAD_FM_C_E01.btnGravaClick(Sender: TObject);
var
  NomeArq: String;
begin
  inherited;
  if  (txtNomeEtq.Text = '') or
      (txtAlturaEtq.Text = '') or
      (txtLarguraEtq.Text = '') or
      (txtTopDadosNf.Text = '') or
      (txtTopVolume.Text = '') or
      (txtTopEmpresa.Text = '') or
      (txtEsqDadosNf.Text = '') or
      (txtEsqVolume.Text = '') or
      (txtEsqEmpresa.Text = '') or
      (txtTamFDadosNf.text = '') or
      (txtTamFVolumeNf.text = '') or
      (txtTamFEmpresaNf.Text = '') then
      begin
        ShowMessage('Todos os campos devem ser preenchidos.');
        txtNomeEtq.Focused;
        exit;
      end;
  if trim(txtNomeArq.text) = '' then
     begin
       ShowMessage('É preciso que digite o nome do arquivo para que os dados sejam salvos.');
       txtNomeArq.Focused;
       exit;
     end;

  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        NomeArq := xDiretorio+trim(txtNomeArq.Text)+'.xml';
        try
          cdsEtiquetas.SaveToFile(NomeArq,dfXML);
          ShowMessage('O arquivo ' + NomeArq + ' foi salvo com sucesso.');
          carregarListaArquivos(trim(txtNomeArq.Text));
          btnIncluir.Enabled := true;
          btnAlterar.Enabled := true;
          btnExcluir.Enabled := true;
          btnSair.Enabled := true;
          btnCancelar.Enabled := false;
          btnGrava.Enabled := false;

          txtNomeArq.Enabled := true;
          HabilDesabPanelEsqOuDir(false);

          dbGrid.Focused;
        except
        on e: exception do
          begin
           ShowMessage('Erro ao tentar salvar o arquivo: ' + e.Message)
          end;
        end;
      end;
end;

procedure TCAD_FM_C_E01.btnIncluirClick(Sender: TObject);
begin
     txtNomeArq.Text := '';

     cdsEtiquetas.EmptyDataSet;


    { txtNomeEtq.Text    := '';
     txtAlturaEtq.Text  := '';
     txtLarguraEtq.Text := '';
     txtTopDadosNf.Text := '';
     txtTopVolume.Text  := '';
     TxtTopEmpresa.Text := '';
     txtEsqDadosNf.Text := '';
     txtEsqVolume.Text  := '';
     txtEsqEmpresa.Text    := '';
     txtTamFDadosNf.text   := '';
     txtTamFVolumeNf.text  := '';
     txtTamFEmpresaNf.Text := '';  }


    { if cdsEtiquetas.RecordCount > 0 then
        cdsEtiquetas.Delete;

     cdsEtiquetas.Close;
     cdsEtiquetas.CreateDataSet;  }

     btnIncluir.Enabled := false;
     btnAlterar.Enabled := false;
     btnExcluir.Enabled := false;
     btnSair.Enabled := false;

     btnCancelar.Enabled := true;
     btnGrava.Enabled := true;

     txtNomeArq.Enabled := true;
     HabilDesabPanelEsqOuDir(true); //habilita panel direita
     txtNomeEtq.SetFocus;

end;

procedure TCAD_FM_C_E01.btnSair2Click(Sender: TObject);
begin
  Close;
end;

procedure TCAD_FM_C_E01.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCAD_FM_C_E01.abrirArquivo;
begin
  if cdsArquivos.RecordCount > 0 then
    begin
      if cdsEtiquetas.RecordCount > 0 then
        cdsEtiquetas.EmptyDataSet;
     // cdsEtiquetas.close;
      txtNomeArq.Text := '';
      if (not cdsArquivos.FieldByName('ARQUIVO').IsNull) and (cdsArquivos.FieldByName('ARQUIVO').AsString <> '') then
        begin
         cdsEtiquetas.LoadFromFile(xDiretorio+cdsArquivos.FieldByName('ARQUIVO').AsString+'.xml');
         txtNomeArq.Text := cdsArquivos.FieldByName('ARQUIVO').AsString;
        end;
    end;
end;

procedure TCAD_FM_C_E01.carregaCores;
var
  Rede:TInifile;
begin
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

  if xCorSistema = 'GRAFITE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00333333;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnIncluir.OptionsImage.Images     := imgBotoesAtivo;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivo;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivo;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivo;
       btnGrava.OptionsImage.Images       := imgBotoesAtivo;
       //btnImprime.OptionsImage.Images     := imgBotoesAtivo;
       //btnAtualiza.OptionsImage.Images    := imgBotoesAtivo;
       btnFiltro.OptionsImage.Images      := imgPequena;
       btnSair.Images                     := imgBotoesAtivo;
     end
  else if xCorSistema = 'AZUL' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00844D08;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnIncluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoAz;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoAz;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoAz;
       //btnImprime.OptionsImage.Images     := imgBotoesAtivoAz;
       //btnAtualiza.OptionsImage.Images    := imgBotoesAtivoAz;
       btnFiltro.OptionsImage.Images      := imgPequenaAz;
       btnSair.Images                     := imgBotoesAtivoAz;
     end
  else if xCorSistema = 'VERDE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00006305;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnIncluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoVe;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoVe;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoVe;
       //btnImprime.OptionsImage.Images     := imgBotoesAtivoVe;
       //btnAtualiza.OptionsImage.Images    := imgBotoesAtivoVe;
       btnFiltro.OptionsImage.Images      := imgPequenaVe;
       btnSair.Images                     := imgBotoesAtivoVe;
     end;
end;

procedure TCAD_FM_C_E01.carregarListaArquivos(Arquivo:string);
var
  Procurar : TSearchRec;
  Arquivos: Integer;
  Textos:string;
begin
  //Textos := ExtractFilePath(Application.ExeName) + 'Textos\*.xml';
  Textos := xDiretorio+Arquivo+'.xml';
  Arquivos := 0;
  Arquivos := Arquivos + faDirectory;
  Arquivos := Arquivos + faArchive;
  Arquivos := Arquivos + faAnyFile;
  if FindFirst(Textos, Arquivos, Procurar) = 0 then
    begin
     cdsArquivos.EmptyDataSet;
     repeat
      if (Procurar.Attr and Arquivos) = Procurar.Attr then
        begin
         cdsArquivos.Insert;
         cdsArquivos.FieldByName('ARQUIVO').AsString := copy(Procurar.Name,1,length(Procurar.Name)-4);
         cdsArquivos.Post;
        end;
         //ListBox1.Items.Add(Procurar.Name);
     until FindNext(Procurar) <> 0;
     FindClose(Procurar);
    end;
end;

procedure TCAD_FM_C_E01.HabilDesabPanelEsqOuDir(direita:boolean);
begin
  if direita = true then
    begin
      pnlDireita.Enabled := true;
      pnlDataGrid.Enabled := false;
      pnlFiltro.Enabled := false;
    end
  else
    begin
      pnlDireita.Enabled := false;
      pnlDataGrid.Enabled := true;
      pnlFiltro.Enabled := true;
    end;
end;

end.
