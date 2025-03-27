unit PCP_UN_M_PSC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvDBControls, JvExMask, JvToolEdit, Vcl.Mask, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_M_PSC = class(TPAD_FM_X_PAD)
    lblCobranca: TLabel;
    txtControle: TDBEdit;
    lblDataCredito: TLabel;
    dpkDataPesquisa: TJvDBDateEdit;
    lblResponsavel: TLabel;
    txtResponsavelNome: TDBText;
    lblHistorico: TLabel;
    txtCliente: TDBMemo;
    txtCidade: TDBMemo;
    lblCidade: TLabel;
    lblEstado: TLabel;
    cbbEstado: TwwDBLookupCombo;
    lblRevisao: TLabel;
    txtRevisao: TDBMemo;
    lblTelFixo: TLabel;
    txtTelFixo: TDBMemo;
    lblTelMovel: TLabel;
    txtTelMovel: TDBMemo;
    lblEmail: TLabel;
    txtEmail: TDBMemo;
    lblObservacao: TLabel;
    txtObservacao: TDBMemo;
    lblCompraraUtilizara: TLabel;
    lblRecomendaria: TLabel;
    rgCompraraUtilizara: TDBRadioGroup;
    rgRecomendaria: TDBRadioGroup;
    lblPorqueCompraraUtilizara: TLabel;
    txtCompraraUtilizara: TDBMemo;
    txtRecomendaria: TDBMemo;
    lblPorqueRecomendaria: TLabel;
    lblHaQuantoTempo: TLabel;
    rgHaQuantoTempo: TDBRadioGroup;
    lblComparacao: TLabel;
    rgComparacao: TDBRadioGroup;
    lblSatisfacao: TLabel;
    rgSatisfacao: TDBRadioGroup;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rgCompraraUtilizaraChange(Sender: TObject);
    procedure rgRecomendariaChange(Sender: TObject);
    procedure cbbEstadoEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_PSC: TPCP_FM_M_PSC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN;

procedure TPCP_FM_M_PSC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_PSC);

  dmGeral.PCP_CD_M_PSC.FieldByName('DATA').AsDateTime := xDataSis;
  txtCliente.SetFocus;
end;

procedure TPCP_FM_M_PSC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_PSC) then
      begin
        inherited;
        txtCliente.SetFocus;
      end;
end;

procedure TPCP_FM_M_PSC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_PSC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TPCP_FM_M_PSC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_PSC);
end;

procedure TPCP_FM_M_PSC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_PSC.FieldByName('ID_PSC').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_PSC);
  inherited;
  dmGeral.PCP_CD_M_PSC.Close;
  dmGeral.PCP_CD_M_PSC.Data :=
  dmGeral.PCP_CD_M_PSC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_PSC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_PSC.Close;
    dmGeral.PCP_CD_M_PSC.Data :=
    dmGeral.PCP_CD_M_PSC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_PSC.cbbEstadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_UFS;
  cbbEstado.DropDown;
end;

procedure TPCP_FM_M_PSC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,3] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_PSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_PSC.Close;
  FreeAndNil(PCP_FM_M_PSC);
end;

procedure TPCP_FM_M_PSC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_PSC.Close;
  dmGeral.PCP_CD_M_PSC.Data := dmGeral.PCP_CD_M_PSC.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_PSC.Open;

  txtCompraraUtilizara.Enabled := False;
  txtRecomendaria.Enabled := False;
end;

procedure TPCP_FM_M_PSC.FormShow(Sender: TObject);
begin
  inherited;
  lblCompraraUtilizara.Caption := '1 - Você comprará ou utilizará o colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" novamente?';

  lblRecomendaria.Caption := '2 - Você recomendaria o colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" para outras pessoas?';

  lblHaQuantoTempo.Caption := '3 - Há quanto tempo o Sr. (a) vem utilizando o colchão de espuma da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'"?';

  lblComparacao.Caption := '4 - Em comparação com outras alternativas de colchões, a "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" é:';

  lblSatisfacao.Caption := '5 - Qual seu grau de satisfação geral com o seu colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'"?';
end;

procedure TPCP_FM_M_PSC.rgCompraraUtilizaraChange(Sender: TObject);
begin
  inherited;
  if (rgCompraraUtilizara.ItemIndex = 0) then
     begin
       txtCompraraUtilizara.Enabled := False;
     end
  else
     begin
       txtCompraraUtilizara.Enabled := True;
       if txtCompraraUtilizara.CanFocus then
          begin
            txtCompraraUtilizara.SetFocus;
          end;
     end;
end;

procedure TPCP_FM_M_PSC.rgRecomendariaChange(Sender: TObject);
begin
  inherited;
  if (rgRecomendaria.ItemIndex = 0) then
     begin
       txtRecomendaria.Enabled := False;
     end
  else
     begin
       txtRecomendaria.Enabled := True;
       if txtRecomendaria.CanFocus then
          begin
            txtRecomendaria.SetFocus;
          end;
     end;
end;

procedure TPCP_FM_M_PSC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
