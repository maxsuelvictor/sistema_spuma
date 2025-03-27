unit FAT_UN_M_FAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  TFAT_FM_M_FAT = class(TForm)
    pnlPrincipal: TPanel;
    pnlDireita: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    gbxOpcoes: TGroupBox;
    Panel1: TPanel;
    gbxNotaFiscalCupom: TGroupBox;
    gbxTitulosNotaFiscalCupom: TGroupBox;
    gbxItensNotaFiscalCupom: TGroupBox;
    btnVerificarServico: TButton;
    btnConsultaCadastro: TButton;
    btnGeraBoleto: TButton;
    btnEnviarSefaz: TButton;
    btnCartaCorrecao: TButton;
    btnImprimeTitulo: TButton;
    btnInutilizar: TButton;
    btnGeraNotaCupomFiscal: TButton;
    btnImprimeTermo: TButton;
    btnImprimeNfe: TButton;
    btnConsultaNfe: TButton;
    btnCancelaNfe: TButton;
    dgrdNotaFiscalCupom: TJvDBGrid;
    dgrdItensNotaFiscalCupom: TJvDBGrid;
    dgrdTitulosNotaFiscalCupom: TJvDBGrid;
    lblIdentificacao: TLabel;
    txtIdentificacao: TDBEdit;
    lblNPedido: TLabel;
    txtNPedido: TDBEdit;
    lblNProtocolo: TLabel;
    txtNProtocolo: TDBEdit;
    lblChave: TLabel;
    txtChave: TDBEdit;
    btnVoltar: TButton;
    btnGerarNota: TButton;
    btnGerarCupom: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_FAT: TFAT_FM_M_FAT;

implementation

{$R *.dfm}

end.
