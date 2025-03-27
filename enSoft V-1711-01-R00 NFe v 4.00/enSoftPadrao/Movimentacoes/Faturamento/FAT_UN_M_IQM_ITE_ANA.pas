unit FAT_UN_M_IQM_ITE_ANA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, vcl.wwdblook, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Data.DB, vcl.wwdatsrc, vcl.Wwdbedit;

type
  TFAT_FM_M_IQM_ITE_ANA = class(TForm)
    pnlDireita: TPanel;
    pnlDados: TPanel;
    lblCodificacao: TLabel;
    lblFornecedor: TLabel;
    lblNotaFiscal: TLabel;
    lblEntrada: TLabel;
    lblContrato: TLabel;
    lblProduto: TLabel;
    lblEmissao: TLabel;
    lblSetor: TLabel;
    lblQtdeNC: TLabel;
    lblTotalLote: TLabel;
    lblQtdeDevolvida: TLabel;
    lblPerNC: TLabel;
    lblObservacoes: TLabel;
    lblEspecificacao: TLabel;
    lblEncontrado: TLabel;
    txtControle: TDBMemo;
    txtProduto: TDBMemo;
    dpkEmissao: TJvDBDateEdit;
    cbbSetor: TwwDBLookupCombo;
    txtEspecificacao: TDBMemo;
    txtEncontrado: TDBMemo;
    txtQtdeNC: TDBMemo;
    txtTotalLote: TDBMemo;
    txtPerNC: TDBMemo;
    txtObservacoes: TDBMemo;
    pcDados: TPageControl;
    tabFornecedor: TTabSheet;
    lblCausa: TLabel;
    lblBairroCobranca: TLabel;
    lblResolucao: TLabel;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    txtCausa: TDBMemo;
    txtResolucao: TDBMemo;
    tabAnalise: TTabSheet;
    lblAcaoTomada: TLabel;
    lblNaoConformidade: TLabel;
    lblComentarios: TLabel;
    lblRequeNovaAcao: TLabel;
    lblAnalisadoPor: TLabel;
    lblSituacaoDoPlano: TLabel;
    lblAnalisadoEm: TLabel;
    cbbNaoConformidade: TwwDBLookupCombo;
    txtComentarios: TDBMemo;
    cbbRequeNovaAcao: TwwDBLookupCombo;
    cbbAnalisadoPor: TwwDBLookupCombo;
    cbbSituacaoDoPlano: TwwDBLookupCombo;
    dpkAnalisadoEm: TJvDBDateEdit;
    dsoIqmIteAna: TwwDataSource;
    imgBotoesAtivo: TImageList;
    ImgPequena: TImageList;
    imgBotoesInativo: TImageList;
    txtFornecedor: TDBEdit;
    txtNotaFiscal: TDBEdit;
    txtEntrada: TDBEdit;
    txtFornecedorDescricao: TDBMemo;
    txtNomeRespForn: TwwDBEdit;
    Label1: TLabel;
    txtCargoRespForn: TwwDBEdit;
    Label2: TLabel;
    txtIdResp: TDBMemo;
    cbbAcTomada: TwwDBLookupCombo;
    txtQtdeDevolvida: TwwDBEdit;
    pnlBotoes: TPanel;
    btnCancelar: TcxButton;
    btnGrava: TcxButton;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    cbbContatos: TwwDBLookupCombo;
    txtItemDescricao: TDBText;
    txtResponsavelDescricao: TDBText;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbAnalisadoPorEnter(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbAnalisadoPorExit(Sender: TObject);
    procedure cbbAcaoTomadaEnter(Sender: TObject);
    procedure cbbNaoConformidadeEnter(Sender: TObject);
    procedure cbbRequeNovaAcaoEnter(Sender: TObject);
    procedure cbbSituacaoDoPlanoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbContatosEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbbContatosExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_IQM_ITE_ANA: TFAT_FM_M_IQM_ITE_ANA;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_NFE, FAT_UN_M_IQM,uProxy,UApplayClassProxy;

procedure TFAT_FM_M_IQM_ITE_ANA.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusRepresentante(dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsString);
  dmGeral.BusSetor(1,'%');
  dmGeral.BUS_PR_X_AXF;
  dmGeral.BUS_PR_X_SXN;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja Cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
        dmGeral.FAT_CD_M_IQM_ITE_ANA.Cancel;
        close;
     end;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.btnGravaClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo : string;
begin
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        dmGeral.FAT_CD_M_IQM_ITE_ANA.Post;
        dmGeral.FAT_CD_M_IQM_ITE.Post;
        dmGeral.FAT_CD_M_IQM_ITE.Edit;
        close;
     end
  else
     begin
       if dpkEmissao.CanFocus then
          dpkEmissao.SetFocus;
     end;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbAcaoTomadaEnter(Sender: TObject);
begin

  cbbAcTomada.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbAnalisadoPorEnter(Sender: TObject);
begin
  dmGeral.BusFuncionario2(1,'%');
  cbbAnalisadoPor.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbAnalisadoPorExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('id_resp_analise').Text = '' then
     begin
       ShowMessage('O campo "Analisado por" deve ser prenchido.');
       cbbAnalisadoPor.SetFocus;
       exit;
     end;

  dmGeral.BusFuncionario2(0,dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('id_resp_analise').Text);
  if not dmgeral.CAD_CD_C_FUN_TesValObrigatorio(dmGeral.BUS_CD_C_FU2) then
     begin
       cbbAnalisadoPor.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbContatosEnter(Sender: TObject);
begin
  dmGeral.BusRepresentante(dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsString);
  cbbContatos.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbContatosExit(Sender: TObject);
begin
  if dmGeral.FAT_CD_M_IQM_ITE_ANAid_for_rp.Text <> ''  then
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANAint_nomerep.Text := dmGeral.BUS_CD_C_REPnome.Text;
     end;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbNaoConformidadeEnter(Sender: TObject);
begin
 // cbbNaoConformidade.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbRequeNovaAcaoEnter(Sender: TObject);
begin

 // cbbRequeNovaAcao.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbSetorEnter(Sender: TObject);
begin
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbSetorExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_SETOR').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser prenchido.');
       cbbSetor.SetFocus;
       exit;
     end;

  dmGeral.BusSetor(0,dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('INT_NOMESET').Text :=  dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.cbbSituacaoDoPlanoEnter(Sender: TObject);
begin
  dmGeral.BUS_PR_X_AXF;
  cbbSituacaoDoPlano.DropDown;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.FAT_CD_M_IQM_ITE_ANA.Cancel;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.FormCreate(Sender: TObject);
begin
  AbrirBuscas;
end;

procedure TFAT_FM_M_IQM_ITE_ANA.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

end.
