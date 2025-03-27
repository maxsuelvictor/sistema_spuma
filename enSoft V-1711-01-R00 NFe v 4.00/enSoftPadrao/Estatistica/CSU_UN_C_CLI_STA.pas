unit CSU_UN_C_CLI_STA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  Vcl.Buttons, Datasnap.DBClient,JvPanel;

type
  TCSU_FM_C_CLI_STA = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    pnlDados: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    wwDBGrid2: TwwDBGrid;
    dsoMPA: TwwDataSource;
    dsoVNP: TwwDataSource;
    btnSair: TSpeedButton;
    wwDBGrid3: TwwDBGrid;
    dsoSHR: TwwDataSource;
    Label3: TLabel;
    CSU_CD_C_CLI_EST_MPA: TClientDataSet;
    CSU_CD_C_CLI_EST_VNP: TClientDataSet;
    CSU_CD_C_CLI_EST_SHR: TClientDataSet;
    CSU_CD_C_CLI_EST_MPAid_empresa: TIntegerField;
    CSU_CD_C_CLI_EST_MPAint_nomeemp: TWideStringField;
    CSU_CD_C_CLI_EST_MPAid_tipo_mov_estoque: TIntegerField;
    CSU_CD_C_CLI_EST_MPAint_nometme: TWideStringField;
    CSU_CD_C_CLI_EST_MPAano: TFloatField;
    CSU_CD_C_CLI_EST_MPAvalor: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_01: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_02: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_03: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_04: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_05: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_06: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_07: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_08: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_09: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_10: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_11: TFMTBCDField;
    CSU_CD_C_CLI_EST_MPAmes_12: TFMTBCDField;
    CSU_CD_C_CLI_EST_SHRid_empresa: TIntegerField;
    CSU_CD_C_CLI_EST_SHRint_nomeemp: TWideStringField;
    CSU_CD_C_CLI_EST_SHRano: TFloatField;
    CSU_CD_C_CLI_EST_SHRvalor: TFloatField;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CSU_CD_C_CLI_EST_MPABeforeOpen(DataSet: TDataSet);
    procedure CSU_CD_C_CLI_EST_SHRBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure carregaCores;
    var
     xCorSistema:String;
  public
    var
     CodCliente:String;
    { Public declarations }
  end;

var
  CSU_FM_C_CLI_STA: TCSU_FM_C_CLI_STA;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCSU_FM_C_CLI_STA.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure  TCSU_FM_C_CLI_STA.carregaCores;
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
    pnlTop.Color := codCor;
end;



procedure TCSU_FM_C_CLI_STA.CSU_CD_C_CLI_EST_MPABeforeOpen(DataSet: TDataSet);
begin
 CSU_CD_C_CLI_EST_MPAvalor.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_01.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_02.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_03.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_04.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_05.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_06.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_07.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_08.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_09.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_10.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_11.DisplayFormat      := CMascaraValor;
 CSU_CD_C_CLI_EST_MPAmes_12.DisplayFormat      := CMascaraValor;

end;

procedure TCSU_FM_C_CLI_STA.CSU_CD_C_CLI_EST_SHRBeforeOpen(DataSet: TDataSet);
begin
  CSU_CD_C_CLI_EST_SHRvalor.DisplayFormat  := CMascaraValor;
end;

procedure TCSU_FM_C_CLI_STA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CSU_CD_C_CLI_EST_MPA.Close;
  CSU_CD_C_CLI_EST_VNP.Close;
  CSU_CD_C_CLI_EST_SHR.Close;
end;

procedure TCSU_FM_C_CLI_STA.FormCreate(Sender: TObject);
var
  x: integer;
begin
  carregaCores;

end;

procedure TCSU_FM_C_CLI_STA.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


     CSU_CD_C_CLI_EST_MPA.Close;
     CSU_CD_C_CLI_EST_MPA.Data :=
             CSU_CD_C_CLI_EST_MPA.DataRequest(
                  VarArrayOf([codCliente]));

     CSU_CD_C_CLI_EST_VNP.Close;
     CSU_CD_C_CLI_EST_VNP.Data :=
             CSU_CD_C_CLI_EST_VNP.DataRequest(
                  VarArrayOf([codCliente]));

     CSU_CD_C_CLI_EST_SHR.Close;
     CSU_CD_C_CLI_EST_SHR.Data :=
             CSU_CD_C_CLI_EST_SHR.DataRequest(
                  VarArrayOf([codCliente]));

end;

end.
