unit FIN_UN_M_CHE_MOV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.DBGrids, JvExMask, JvToolEdit, JvDBControls,
  Vcl.DBCtrls, Vcl.Mask, vcl.wwdblook;

type
  TFIN_FM_M_CHE_MOV = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    lblHistorico: TLabel;
    lblObservacoes: TLabel;
    txtObservacoes: TDBMemo;
    lblContaCorrente: TLabel;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    dso_che: TwwDataSource;
    dbgCheque: TwwDBGrid;
    cbbContaCorrente: TwwDBLookupCombo;
    txthistorico: TDBMemo;
    txtControle: TDBEdit;
    txtEmpresa: TJvDBComboEdit;
    lblEmpresa: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtEmpresaButtonClick(Sender: TObject);
    procedure txtEmpresaExit(Sender: TObject);
  private
    procedure ExibirDadosTit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CHE_MOV: TFIN_FM_M_CHE_MOV;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_REC_CHE;
var
test:integer;

procedure TFIN_FM_M_CHE_MOV.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
  txthistorico.SetFocus;
  dpkData.Date := xDataSis;
end;

procedure TFIN_FM_M_CHE_MOV.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
  txthistorico.SetFocus;
end;

procedure TFIN_FM_M_CHE_MOV.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txthistorico.SetFocus;
     end;
end;

procedure TFIN_FM_M_CHE_MOV.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_MCH);
end;

procedure TFIN_FM_M_CHE_MOV.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  codigo := dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString;
  DmGeral.Grava(dmGeral.FIN_CD_M_MCH);

  dmGeral.FIN_CD_M_MCH.Close;
  dmGeral.FIN_CD_M_MCH.Data :=
  dmGeral.FIN_CD_M_MCH.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TFIN_FM_M_CHE_MOV.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.FIN_CD_M_MCH.Close;
    dmGeral.FIN_CD_M_MCH.Data :=
    dmGeral.FIN_CD_M_MCH.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
     btnImprime.Enabled := True;
  end;
end;

procedure TFIN_FM_M_CHE_MOV.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusContaCorr(2,'%');
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_CHE_MOV.cbbPesquisaChange(Sender: TObject);
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

procedure TFIN_FM_M_CHE_MOV.ExibirDadosTit;
  begin
  dmGeral.FIN_CD_M_MCH_CHE.Insert;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('id_titulo').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('id_titulo').AsString;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_banco').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('che_banco').AsString;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_agencia').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('che_agencia').AsString;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_conta').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('che_conta').AsString;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_cheque').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('che_cheque').AsString;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_vencimento').AsDateTime :=
           dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_vlr_cheque').AsCurrency :=
           dmGeral.BUS_CD_M_REC.FieldByName('vlr_original').AsCurrency;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_vlr_saldo').AsCurrency :=
           dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency;

  dmGeral.FIN_CD_M_MCH_CHE.FieldByName('int_emitente').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('che_emitente').AsString;

  dmgeral.FIN_CD_M_MCH_CHE.post;

 end;

procedure TFIN_FM_M_CHE_MOV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   dmGeral.FIN_CD_M_MCH.Close;
   dmGeral.FIN_CD_M_MCH_CHE.Close;
   FreeAndNil(FIN_FM_M_CHE_MOV);
end;

procedure TFIN_FM_M_CHE_MOV.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_MCH.Close;
  dmGeral.FIN_CD_M_MCH.Data := dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_MCH.Open;

  dmGeral.FIN_CD_M_MCH_CHE.Close;
  dmGeral.FIN_CD_M_MCH_CHE.Data := dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_MCH_CHE.Open;

  dmGeral.BusContaCorr(2,'%');
 end;

procedure TFIN_FM_M_CHE_MOV.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
end;

procedure TFIN_FM_M_CHE_MOV.txtEmpresaButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_REC_CHE := TPSQ_FM_X_REC_CHE.Create(Self);
   PSQ_FM_X_REC_CHE.ShowModal;
      if not dmGeral.BUS_CD_M_REC.IsEmpty then
         begin
          dmGeral.FIN_CD_M_MCH.FieldByName('ID_EMPRESA').AsString :=
                dmgeral.BUS_CD_M_REC.FieldByName('ID_EMPRESA').AsString;

        test:= 1;
         end;
   PSQ_FM_X_REC_CHE.Free;
end;

procedure TFIN_FM_M_CHE_MOV.txtEmpresaExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

   if (trim(txtEmpresa.Text) <> '') and (test = 1) then
    begin
      if not dmgeral.FIN_CD_M_MCH_CHE.Locate('id_titulo',dmgeral.BUS_CD_M_RECid_titulo.AsInteger,[loCaseInsensitive]) then
        begin
          ExibirDadosTit;
        end
        else
        ShowMessage('Titulo já cadastrado!');
    end;
 test:=0;
end;

procedure TFIN_FM_M_CHE_MOV.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
