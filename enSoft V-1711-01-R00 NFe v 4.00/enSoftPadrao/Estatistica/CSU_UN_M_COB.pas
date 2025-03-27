unit CSU_UN_M_COB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, Vcl.Buttons,System.IniFiles;

type
  TCSU_FM_M_COB = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    dgTit: TwwDBGrid;
    Label1: TLabel;
    dgCob: TwwDBGrid;
    lblPagamentos: TLabel;
    dsoCob: TwwDataSource;
    dsoRec: TwwDataSource;
    btnSair: TSpeedButton;
    txtObs: TDBText;
    lblObs: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    var
      id_titulo:string;
      xCorSistema:string;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_COB: TCSU_FM_M_COB;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_M_COB.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TCSU_FM_M_COB.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlCima.Color := codCor;
    pnlBaixo.Color := codCor;
end;

procedure TCSU_FM_M_COB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dmGeral.BUS_CD_M_REC.RecordCount>0 then
     begin
       try
         dmGeral.BUS_CD_M_REC.Filtered := false;
         dmGeral.BUS_CD_M_REC.locate('ID_TITULO',id_titulo,[]);
       finally

       end;
     end;
end;

procedure TCSU_FM_M_COB.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TCSU_FM_M_COB.FormShow(Sender: TObject);
begin
  {dmGeral.AtualizarGridItens(dgIte,'int_desc_item',12,8);
  dgCob.SetFocus;}
   if dmGeral.BUS_CD_M_REC.RecordCount>0 then
     begin
       id_titulo := dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;
       try
        dmGeral.BUS_CD_M_REC.Filtered := true;
        dmGeral.BUS_CD_M_REC.Filter := 'ID_TITULO='+id_titulo;
       finally

       end;
     end;
end;

end.
