unit CAD_UN_C_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls;

type
  TCAD_FM_C_ETQ = class(TPAD_FM_X_PAD)
    dsEtiquetas: TwwDataSource;
    dsArquivos: TwwDataSource;
    cdsArquivos: TClientDataSet;
    cdsArquivosARQUIVO: TStringField;
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
    cdsEtiquetasTOP_EMPRESA_ETQ: TFloatField;
    lblEtiqueta: TLabel;
    lblPosicaoCampos: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    txtNomeArq: TEdit;
    txtNomeEtq: TDBEdit;
    gbTamEtq: TGroupBox;
    lblTamEtqAltura: TLabel;
    lblTamEtqLargura: TLabel;
    txtAlturaEtq: TDBEdit;
    txtLarguraEtq: TDBEdit;
    gbTamFonte: TGroupBox;
    lblTamFonteDadosNota: TLabel;
    lblTamFonteVol: TLabel;
    lblTamFonteEmp: TLabel;
    txtTamFDadosNf: TDBEdit;
    txtTamFVolumeNf: TDBEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure carregarListaArquivos(Arquivo:string);
    procedure abrirArquivo;
    procedure HabilDesabPanelEsqOuDir(direita:boolean);
    var
      xDiretorio:string;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_ETQ: TCAD_FM_C_ETQ;

implementation

{$R *.dfm}

uses FAT_UN_M_CXA_NFE, uDmGeral, CAD_UN_R_CLI;

{ TCAD_FM_C_ETQ }

procedure TCAD_FM_C_ETQ.abrirArquivo;
begin

end;

procedure TCAD_FM_C_ETQ.carregarListaArquivos(Arquivo: string);
begin

end;

procedure TCAD_FM_C_ETQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_ETQ);
end;

procedure TCAD_FM_C_ETQ.FormCreate(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled := true;
  btnAlterar.Enabled := true;
  btnExcluir.Enabled := true;
  btnSair.Enabled := true;
  btnCancelar.Enabled := false;
  btnGravar.Enabled := false;

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

procedure TCAD_FM_C_ETQ.HabilDesabPanelEsqOuDir(direita: boolean);
begin

end;

end.
