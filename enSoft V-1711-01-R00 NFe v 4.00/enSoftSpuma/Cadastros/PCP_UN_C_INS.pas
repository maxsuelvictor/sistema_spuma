unit PCP_UN_C_INS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.wwdblook, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, JvDBControls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_INS = class(TPAD_FM_X_PAD)
    lblInstrumento: TLabel;
    txtInstrumento: TDBEdit;
    lblSigla: TLabel;
    txtSigla: TDBEdit;
    lblModelo: TLabel;
    cbbModelo: TwwDBLookupCombo;
    lblMarca: TLabel;
    txtMarca: TJvDBComboEdit;
    txtMarcaDescricao: TDBText;
    lblSerie: TLabel;
    txtSerie: TDBEdit;
    lblEscala: TLabel;
    txtEscala: TDBEdit;
    lblResolucao: TLabel;
    txtResolucao: TDBEdit;
    cbbTipo: TwwDBLookupCombo;
    lblTipo: TLabel;
    chkTemGarantia: TDBCheckBox;
    lblDataCadastro: TLabel;
    dpkDataCadastro: TJvDBDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtMarcaButtonClick(Sender: TObject);
    procedure txtMarcaExit(Sender: TObject);
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbTipoEnter(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure cbbTipoExit(Sender: TObject);
    procedure cbbModeloExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_INS: TPCP_FM_C_INS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, uDmSgq;

procedure TPCP_FM_C_INS.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_INS);
  cbbTipo.SetFocus;
end;

procedure TPCP_FM_C_INS.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_INS) then
      begin
        inherited;
        cbbTipo.SetFocus;
      end;
end;

procedure TPCP_FM_C_INS.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_INS) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbTipo.SetFocus;
     end;
end;

procedure TPCP_FM_C_INS.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_INS);
end;

procedure TPCP_FM_C_INS.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_INS.FieldByName('ID_INS').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_INS);
   inherited;
   dmSgq.PCP_CD_C_INS.Close;
   dmSgq.PCP_CD_C_INS.Data :=
   dmSgq.PCP_CD_C_INS.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_INS.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_INS.Close;
    dmSgq.PCP_CD_C_INS.Data :=
    dmSgq.PCP_CD_C_INS.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_INS.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusModelo(1,'%');
  cbbModelo.DropDown;
end;

procedure TPCP_FM_C_INS.cbbModeloExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmSgq.PCP_CD_C_INS.FieldByName('ID_TIN').Text = '' then
     begin
       ShowMessage('O campo "Tipo" deve ser prenchido.');
       cbbTipo.SetFocus;
       Exit;
     end;

  dmSgq.BusTipoInst(0,dmSgq.PCP_CD_C_INS.FieldByName('ID_TIN').Text);
  if dmSgq.BUS_CD_C_TIN.IsEmpty then
     begin
       ShowMessage('Tipo não encontrado.');
       cbbTipo.SetFocus;
       Exit;
     end
  else
     begin
     dmSgq.PCP_CD_C_INS.FieldByName('INT_NOMETIN').AsString :=
            dmSgq.BUS_CD_C_TIN.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TPCP_FM_C_INS.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_INS.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusTipoInst(1,'%');
  cbbTipo.DropDown;
end;

procedure TPCP_FM_C_INS.cbbTipoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmSgq.PCP_CD_C_INS.FieldByName('ID_TIN').Text = '' then
     begin
       ShowMessage('O campo "Tipo" deve ser prenchido.');
       cbbTipo.SetFocus;
       Exit;
     end;

  dmSgq.BusTipoInst(0,dmSgq.PCP_CD_C_INS.FieldByName('ID_TIN').Text);
  if dmSgq.BUS_CD_C_TIN.IsEmpty then
     begin
       ShowMessage('Tipo não encontrado.');
       cbbTipo.SetFocus;
       Exit;
     end
  else
     begin
     dmSgq.PCP_CD_C_INS.FieldByName('INT_NOMETIN').Text :=
            dmSgq.BUS_CD_C_TIN.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TPCP_FM_C_INS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_INS.Close;
  FreeAndNil(PCP_FM_C_INS);
end;

procedure TPCP_FM_C_INS.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_INS.Close;
  dmSgq.PCP_CD_C_INS.Data := dmSgq.PCP_CD_C_INS.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_INS.Open;

  dmGeral.BusModelo(1,'%');
  dmSgq.BusTipoInst(1,'%');
end;

procedure TPCP_FM_C_INS.txtMarcaButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmSgq.PCP_CD_C_INS.FieldByName('ID_FABRICANTE').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TPCP_FM_C_INS.txtMarcaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_FOR.Close;

  dmSgq.PCP_CD_C_INS.FieldByName('INT_NOMEFAB').AsString := '';

  if dmSgq.PCP_CD_C_INS.FieldByName('ID_FABRICANTE').AsString = '' then
     begin
       ShowMessage('O campo "Marca" deve ser prenchido.');
       abort;
     end;

  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtMarca.Text]));

  dmSgq.PCP_CD_C_INS.FieldByName('INT_NOMEFAB').AsString :=
       dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_INS.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
