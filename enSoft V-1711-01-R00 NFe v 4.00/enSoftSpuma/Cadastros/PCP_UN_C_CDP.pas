unit PCP_UN_C_CDP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_C_CDP = class(TPAD_FM_X_PAD)
    lblItem: TLabel;
    lblData: TLabel;
    lblMedidasComprimento: TLabel;
    lblMedidasLargura: TLabel;
    lblMedidasAltura: TLabel;
    lblCalculoComprimento: TLabel;
    lblCalculoLargura: TLabel;
    lblCalculoAltura: TLabel;
    txtC01: TDBEdit;
    txtC02: TDBEdit;
    txtC03: TDBEdit;
    txtC04: TDBEdit;
    txtL01: TDBEdit;
    txtL02: TDBEdit;
    txtL03: TDBEdit;
    txtL04: TDBEdit;
    txtA01: TDBEdit;
    txtA02: TDBEdit;
    txtA03: TDBEdit;
    txtA04: TDBEdit;
    lblC01: TLabel;
    lblC02: TLabel;
    lblC03: TLabel;
    lblCMedia: TLabel;
    lblL01: TLabel;
    lblL02: TLabel;
    lblL03: TLabel;
    lblLMedia: TLabel;
    lblA01: TLabel;
    lblA02: TLabel;
    lblA03: TLabel;
    lblAMedia: TLabel;
    chkAprovado: TDBCheckBox;
    lblAprovado: TLabel;
    txtItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    dpkData: TJvDBDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CDP: TPCP_FM_C_CDP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, uProxy, uDmSgq;

procedure TPCP_FM_C_CDP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDP);

  dmSgq.PCP_CD_C_CDP.FieldByName('DTA_LANCAMENTO').AsDateTime := xDataSis;
  dmSgq.PCP_CD_C_CDP.FieldByName('SITUACAO').AsBoolean := False;
  txtItem.SetFocus;
end;

procedure TPCP_FM_C_CDP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDP) then
     begin
       inherited;
       txtItem.SetFocus;
     end;
end;

procedure TPCP_FM_C_CDP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtItem.SetFocus;
     end;
end;

procedure TPCP_FM_C_CDP.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDP);
end;

procedure TPCP_FM_C_CDP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_CDP.FieldByName('ID_ITEM').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_CDP);
   inherited;
   dmSgq.PCP_CD_C_CDP.Close;
   dmSgq.PCP_CD_C_CDP.Data :=
   dmSgq.PCP_CD_C_CDP.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CDP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_CDP.Close;
    dmSgq.PCP_CD_C_CDP.Data :=
    dmSgq.PCP_CD_C_CDP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CDP.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_CDP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_CDP.Close;
  FreeAndNil(PCP_FM_C_CDP);
end;

procedure TPCP_FM_C_CDP.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CDP.Close;
  dmSgq.PCP_CD_C_CDP.Data := dmSgq.PCP_CD_C_CDP.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_CDP.Open;
end;

procedure TPCP_FM_C_CDP.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmSgq.PCP_CD_C_CDP.FieldByName('ID_ITEM').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmSgq.PCP_CD_C_CDP.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_CDP.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_CDP.FieldByName('INT_NOMEITE').Text := '';

    dmGeral.BUS_CD_C_ITE.Close;
    dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

    dmSgq.PCP_CD_C_CDP.FieldByName('INT_NOMEITE').Text :=
         dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_CDP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
