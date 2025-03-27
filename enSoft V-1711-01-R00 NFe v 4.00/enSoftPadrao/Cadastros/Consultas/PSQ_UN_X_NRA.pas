unit PSQ_UN_X_NRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.DBCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, cxButtons;

type
  TPSQ_FM_X_NRA = class(TPAD_FM_X_PSQ)
    BUS_CD_M_NFI_RAA: TClientDataSet;
    BUS_CD_M_NFI_RAAnumero: TIntegerField;
    BUS_CD_M_NFI_RAAserie: TWideStringField;
    BUS_CD_M_NFI_RAAmodelo: TWideStringField;
    BUS_CD_M_NFI_RAAdta_emissao: TDateField;
    BUS_CD_M_NFI_RAAdta_entrada: TDateField;
    BUS_CD_M_NFI_RAAnum_lote: TWideStringField;
    BUS_CD_M_NFI_RAAcod_fabrica: TWideStringField;
    BUS_CD_M_NFI_RAAid_sequencia: TIntegerField;
    BUS_CD_M_NFI_RAAid_item: TIntegerField;
    BUS_CD_M_NFI_RAAint_nomeite: TWideStringField;
    BUS_CD_M_NFI_RAAid_cor: TIntegerField;
    BUS_CD_M_NFI_RAAid_tamanho: TIntegerField;
    BUS_CD_M_NFI_RAAint_nomecor: TWideStringField;
    BUS_CD_M_NFI_RAAint_nometam: TWideStringField;
    txtCodFabrica: TDBText;
    txtNroLote: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    BUS_CD_M_NFI_RAAid_emitente: TIntegerField;
    BUS_CD_M_NFI_RAAint_nomefor: TWideStringField;
    BUS_CD_M_NFI_RAAid_grupo: TWideStringField;
    BUS_CD_M_NFI_RAAint_nomegru: TWideStringField;
    BUS_CD_M_NFI_RAAqtde: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_NRA: TPSQ_FM_X_NRA;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_NRA.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_M_NFI_RAA.Close;
  BUS_CD_M_NFI_RAA.Data :=
  BUS_CD_M_NFI_RAA.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, dmGeral.CAD_CD_C_PARid_empresa.Text, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_NRA.cmbParametroChange(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';

  if cmbParametro.ItemIndex in [0,1] then
     begin
       edtPesquisa.NumbersOnly := True;
     end
  else
     begin
       edtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPSQ_FM_X_NRA.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.AtualizarGridItens(dbGrid,'int_nomeite',16,12);
end;

procedure TPSQ_FM_X_NRA.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_M_NFI_RAA.Close;

end;

end.
