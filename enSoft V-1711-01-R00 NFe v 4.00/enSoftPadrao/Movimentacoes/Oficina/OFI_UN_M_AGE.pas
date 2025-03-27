unit OFI_UN_M_AGE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, JvMaskEdit, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TOFI_FM_M_AGE = class(TPAD_FM_X_PAD)
    lblPlaca: TLabel;
    lblCliente: TLabel;
    txtHora: TwwDBEdit;
    lblData: TLabel;
    lblHora: TLabel;
    txtObservacao: TwwDBEdit;
    lblObservacao: TLabel;
    dpkData: TJvDBDateEdit;
    txtCliente: TJvDBComboEdit;
    txtPlaca: TJvDBMaskEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_AGE: TOFI_FM_M_AGE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI;

procedure TOFI_FM_M_AGE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_AGE);

  if txtPlaca.Enabled = False then
     txtPlaca.Enabled := True;

  txtPlaca.SetFocus;
end;

procedure TOFI_FM_M_AGE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_AGE) then
     begin
       inherited;
       txtPlaca.Enabled := False;
       txtCliente.SetFocus;
     end
  else
     begin
       txtPlaca.Enabled := True;
     end;
end;

procedure TOFI_FM_M_AGE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_AGE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtPlaca.SetFocus;
     end;
end;

procedure TOFI_FM_M_AGE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_AGE);
end;

procedure TOFI_FM_M_AGE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.OFI_CD_M_AGE.FieldByName('ID_AGENDA').AsString;
  DmGeral.Grava(dmGeral.OFI_CD_M_AGE);
  inherited;
  dmGeral.OFI_CD_M_AGE.Close;
  dmGeral.OFI_CD_M_AGE.Data :=
          dmGeral.OFI_CD_M_AGE.DataRequest(VarArrayOf([0, codigo]));
end;

procedure TOFI_FM_M_AGE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.OFI_CD_M_AGE.Close;
    dmGeral.OFI_CD_M_AGE.Data :=
    dmGeral.OFI_CD_M_AGE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_AGE.cbbPesquisaChange(Sender: TObject);
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

procedure TOFI_FM_M_AGE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_AGE.Close;
  FreeAndNil(OFI_FM_M_AGE);
end;

procedure TOFI_FM_M_AGE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_AGE.Close;
  dmGeral.OFI_CD_M_AGE.Data := dmGeral.OFI_CD_M_AGE.DataRequest(VarArrayOf([0, '']));
  dmGeral.OFI_CD_M_AGE.Open;
end;

procedure TOFI_FM_M_AGE.txtClienteButtonClick(Sender: TObject);
begin
 inherited;
 PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.OFI_CD_M_AGE.FieldByName('nome_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TOFI_FM_M_AGE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_AGE.txtPlacaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;
  {showmessage(txtPlaca.EditMask + #13 +
              txtPlaca.EditText + #13 +
              txtPlaca.EditText);  }

  if dmGeral.OFI_CD_M_AGE.FieldByName('placa').Text = '' then
     begin
       ShowMessage('O campo "Placa" deve ser prenchido.');
       txtPlaca.SetFocus;
     end;

end;

end.
