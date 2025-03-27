unit CAD_UN_C_RAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, Vcl.DBCtrls, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_RAM = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblRegimeTributario: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    cbbRegimeTributario: TwwDBLookupCombo;
    txtCNAEDescricao: TDBText;
    txtCNAE: TJvDBComboEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure cbbRegimeTributarioEnter(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtCNAEButtonClick(Sender: TObject);
    procedure txtCNAEExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_RAM: TCAD_FM_C_RAM;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CNE;

procedure TCAD_FM_C_RAM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_RAM);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_RAM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_RAM) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_RAM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_RAM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_RAM.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_RAM);
end;

procedure TCAD_FM_C_RAM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_RAM.FieldByName('ID_RAMO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_RAM);
  inherited;
  dmGeral.CAD_CD_C_RAM.Close;
  dmGeral.CAD_CD_C_RAM.Data :=
  dmGeral.CAD_CD_C_RAM.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_RAM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_RAM.Close;
    dmGeral.CAD_CD_C_RAM.Data :=
    dmGeral.CAD_CD_C_RAM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_RAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_RAM.Close;
  FreeAndNil(CAD_FM_C_RAM);
end;

procedure TCAD_FM_C_RAM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_RAM.Close;
  dmGeral.CAD_CD_C_RAM.Data := dmGeral.CAD_CD_C_RAM.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_RAM.Open;
end;

procedure TCAD_FM_C_RAM.txtCNAEButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CNE := TPSQ_FM_X_CNE.Create(Self);
   PSQ_FM_X_CNE.ShowModal;
      if not PSQ_FM_X_CNE.BUS_CD_C_CNE.IsEmpty then
         begin
           dmGeral.CAD_CD_C_RAM.FieldByName('ID_CNAE').AsString :=
              PSQ_FM_X_CNE.BUS_CD_C_CNE.FieldByName('ID_CNAE').AsString;

           dmGeral.CAD_CD_C_RAM.FieldByName('INT_NOMECNE').Text :=
              PSQ_FM_X_CNE.BUS_CD_C_CNE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_CNE.Free;
end;

procedure TCAD_FM_C_RAM.txtCNAEExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_RAM.FieldByName('INT_NOMECNE').Text := '';

    if dmGeral.CAD_CD_C_RAM.FieldByName('ID_CNAE').Text = '' then
       begin
         ShowMessage('O campo "CNAE" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_CNE.Close;
    dmGeral.BUS_CD_C_CNE.Data :=
    dmGeral.BUS_CD_C_CNE.DataRequest(VarArrayOf([0, txtCNAE.Text]));

    dmGeral.CAD_CD_C_RAM.FieldByName('INT_NOMECNE').Text :=
         dmGeral.BUS_CD_C_CNE.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_RAM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_RAM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
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

procedure TCAD_FM_C_RAM.cbbRegimeTributarioEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_RET;
  cbbRegimeTributario.DropDown;
end;

end.
