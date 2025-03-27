unit PCP_UN_C_MTA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel,
  vcl.Wwdbedit, Vcl.ComCtrls, Datasnap.DBClient;

type
  TPCP_FM_C_MTA = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lblCelular: TLabel;
    lblEndereco: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    lblCEP: TLabel;
    lblEstado: TLabel;
    lblPlaca: TLabel;
    lblObservacao: TLabel;
    lblNumero: TLabel;
    txtCodigo: TDBEdit;
    txtNome: TDBEdit;
    txtTelefone: TDBEdit;
    txtCelular: TDBEdit;
    txtEndereco: TDBEdit;
    txtCidade: TDBEdit;
    txtBairro: TDBEdit;
    txtCEP: TDBEdit;
    txtEmail: TDBEdit;
    txtPlaca: TDBEdit;
    txtObservacao: TDBEdit;
    txtNumero: TDBEdit;
    cbbEstado: TwwDBLookupCombo;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    txtCPF: TDBEdit;
    lblCPFCNPJ: TLabel;
    PageControl1: TPageControl;
    tsMobile: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtLogin: TwwDBEdit;
    txtSenha: TwwDBEdit;
    cbbEmpresa: TwwDBLookupCombo;
    Label4: TLabel;
    txtNomeMae: TwwDBEdit;
    Label5: TLabel;
    txtCNH: TwwDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    txtNomeContato: TwwDBEdit;
    Label7: TLabel;
    txtFoneContato: TDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbEstadoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure txtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure txtCPFExit(Sender: TObject);
    procedure cbbEmpresaEnter(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  PCP_FM_C_MTA: TPCP_FM_C_MTA;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_MTA.AbrirBuscas;
begin
  inherited;
   dmgeral.BusEmpresa(1,'%');
end;



procedure TPCP_FM_C_MTA.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MTA);
  txtPlaca.SetFocus;
end;

procedure TPCP_FM_C_MTA.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MTA) then
      begin
        inherited;
        txtNome.SetFocus;
      end;
end;

procedure TPCP_FM_C_MTA.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MTA) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtNome.SetFocus;
     end;
end;

procedure TPCP_FM_C_MTA.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MTA);
end;

procedure TPCP_FM_C_MTA.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_MTA.FieldByName('ID_MOTORISTA').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_MTA);
   inherited;
   dmSgq.PCP_CD_C_MTA.Close;
   dmSgq.PCP_CD_C_MTA.Data :=
   dmSgq.PCP_CD_C_MTA.DataRequest(
           VarArrayOf([0, codigo]));
   AbrirBuscas;
end;

procedure TPCP_FM_C_MTA.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_MTA.Close;
    dmSgq.PCP_CD_C_MTA.Data :=
    dmSgq.PCP_CD_C_MTA.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_MTA.cbbEmpresaEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusEmpresa(1,'%');
  cbbEmpresa.DropDown;
end;

procedure TPCP_FM_C_MTA.cbbEstadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_UFS;
  cbbEstado.DropDown;
end;

procedure TPCP_FM_C_MTA.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_MTA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_MTA.Close;
  FreeAndNil(PCP_FM_C_MTA);
end;

procedure TPCP_FM_C_MTA.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirBuscas;
  dmSgq.PCP_CD_C_MTA.Close;
  dmSgq.PCP_CD_C_MTA.Data := dmSgq.PCP_CD_C_MTA.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_MTA.Open;
end;

procedure TPCP_FM_C_MTA.txtCPFExit(Sender: TObject);
begin
  inherited;
  {dmGeral.BUS_CD_C_MTA.Close;
  dmGeral.BUS_CD_C_MTA.Close;
  dmGeral.BUS_CD_C_MTA.Data := dmGeral.BUS_CD_C_MTA.DataRequest
      (VarArrayOf([]));

   if not dmGeral.BUS_CD_C_MTA.IsEmpty then
    begin
      ShowMessage('CPF já Cadastrado.');
      dmGeral.BUS_CD_C_MTAdoc_cpf.Text := '';
      txtcpf.SetFocus;
    end;}
end;

procedure TPCP_FM_C_MTA.txtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TPCP_FM_C_MTA.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
