unit FIN_UN_M_CHE_LAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, JvExMask;

type
  TFIN_FM_M_CHE_LAN = class(TPAD_FM_X_PAD)
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblEmitente: TLabel;
    txtEmitente: TDBEdit;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    lblAgencia: TLabel;
    txtAgencia: TDBEdit;
    Label1: TLabel;
    txtContaCorrente: TDBEdit;
    lblNCheque: TLabel;
    txtNCheque: TDBEdit;
    lblVencimento: TLabel;
    dpkVencimento: TJvDBDateEdit;
    lblVlrCheque: TLabel;
    txtVlrCheque: TDBEdit;
    cbbPlanoContas: TwwDBLookupCombo;
    lblPerfil: TLabel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    lblLocalTitulo: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbLocalTituloEnter(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CHE_LAN: TFIN_FM_M_CHE_LAN;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI;

procedure TFIN_FM_M_CHE_LAN.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC);
  txtCliente.SetFocus;
end;

procedure TFIN_FM_M_CHE_LAN.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC) then
      begin
        inherited;
        txtCliente.SetFocus;
      end;
end;

procedure TFIN_FM_M_CHE_LAN.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TFIN_FM_M_CHE_LAN.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC);
end;

procedure TFIN_FM_M_CHE_LAN.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.FIN_CD_M_REC.FieldByName('ID_FISCAL').AsString;
  DmGeral.Grava(dmGeral.FIN_CD_M_REC);

  inherited;

  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data :=
  dmGeral.FIN_CD_M_REC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TFIN_FM_M_CHE_LAN.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.FIN_CD_M_REC.Close;
    dmGeral.FIN_CD_M_REC.Data :=
    dmGeral.FIN_CD_M_REC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_CHE_LAN.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_CHE_LAN.cbbLocalTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTitulo.DropDown;
end;

procedure TFIN_FM_M_CHE_LAN.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFIN_FM_M_CHE_LAN.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(1,'%');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_CHE_LAN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_REC.Close;
  FreeAndNil(FIN_FM_M_CHE_LAN);
end;

procedure TFIN_FM_M_CHE_LAN.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data := dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_REC.Open;

  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusLocalTit(1,'%');
  dmGeral.BusLocalTit(1,'%');
end;

procedure TFIN_FM_M_CHE_LAN.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

           dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_CHE_LAN.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text := '';

    dmGeral.FIN_CD_M_REC.Close;
    dmGeral.FIN_CD_M_REC.Data :=
    dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([0, txtCliente.Text]));

    dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
end;

procedure TFIN_FM_M_CHE_LAN.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
