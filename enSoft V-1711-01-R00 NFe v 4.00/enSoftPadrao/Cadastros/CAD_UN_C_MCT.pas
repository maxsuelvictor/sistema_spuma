unit CAD_UN_C_MCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCAD_FM_C_MCT = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    Label53: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtCodRev: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_MCT: TCAD_FM_C_MCT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_MCT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MCT);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_MCT.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MCT);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_MCT.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MCT) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
end;

procedure TCAD_FM_C_MCT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MCT);
end;

procedure TCAD_FM_C_MCT.acGravarExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       DmGeral.Grava(dmGeral.CAD_CD_C_MCT);
       inherited;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_MCT.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_MCT.Close;
  dmGeral.CAD_CD_C_MCT.Data :=
  dmGeral.CAD_CD_C_MCT.DataRequest(
     VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
end;

procedure TCAD_FM_C_MCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_MCT.Close;
  FreeAndNil(CAD_FM_C_MCT);
end;

procedure TCAD_FM_C_MCT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_MCT.Close;
  dmGeral.CAD_CD_C_MCT.Data :=
    dmGeral.CAD_CD_C_MCT.DataRequest(VarArrayOf([1, '']));
end;

procedure TCAD_FM_C_MCT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
end.
