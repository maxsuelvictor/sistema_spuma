unit CSU_UN_M_ROM_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, Vcl.Buttons;

type
  TCSU_FM_M_ROM_PED = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    dgTit: TwwDBGrid;
    Label2: TLabel;
    dgIte: TwwDBGrid;
    Label1: TLabel;
    dgPed: TwwDBGrid;
    lblPagamentos: TLabel;
    dsoPed: TwwDataSource;
    dsoIte: TwwDataSource;
    dsoTit: TwwDataSource;
    btnSair: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_ROM_PED: TCSU_FM_M_ROM_PED;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_M_ROM_PED.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TCSU_FM_M_ROM_PED.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TCSU_FM_M_ROM_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PED.Close;
  //FreeAndNil(CSU_FM_M_PED);
end;

procedure TCSU_FM_M_ROM_PED.FormCreate(Sender: TObject);
begin
  dmgeral.BUS_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Data :=
  dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([92, dmgeral.CAD_CD_C_PARid_empresa.Text,3]));
end;

procedure TCSU_FM_M_ROM_PED.FormShow(Sender: TObject);
begin
  dmGeral.AtualizarGridItens(dgIte,'int_nomeite',13,10);
  dgPed.SetFocus;
end;

end.
