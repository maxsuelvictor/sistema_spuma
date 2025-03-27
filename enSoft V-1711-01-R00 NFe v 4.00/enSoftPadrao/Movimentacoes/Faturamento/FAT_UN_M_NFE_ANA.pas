unit FAT_UN_M_NFE_ANA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, vcl.wwdblook, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Data.DB, vcl.wwdatsrc, vcl.Wwdbedit;

type
  TFAT_FM_M_NFE_ANA = class(TForm)
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
    txtProdutoDescricao: TDBMemo;
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
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    dsoNfeAna: TwwDataSource;
    imgBotoesAtivo: TImageList;
    ImgPequena: TImageList;
    imgBotoesInativo: TImageList;
    pnlBotoes: TPanel;
    btnCancelar: TcxButton;
    btnGrava: TcxButton;
    txtFornecedor: TDBEdit;
    txtNotaFiscal: TDBEdit;
    txtEntrada: TDBEdit;
    txtFornecedorDescricao: TDBMemo;
    cbContatos: TComboBox;
    txtNomeRespForn: TwwDBEdit;
    Label1: TLabel;
    txtCargoRespForn: TwwDBEdit;
    Label2: TLabel;
    txtIdResp: TDBMemo;
    DBMemo2: TDBMemo;
    cbbAcTomada: TwwDBLookupCombo;
    txtQtdeDevolvida: TwwDBEdit;
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
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_NFE_ANA: TFAT_FM_M_NFE_ANA;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_NFE, FAT_UN_M_IQM,uProxy,UApplayClassProxy;

procedure TFAT_FM_M_NFE_ANA.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusSetor(1,'%');
  dmGeral.BUS_PR_X_AXF;
  dmGeral.BUS_PR_X_SXN;

  dmGeral.BUS_CD_C_REP.Close;
  dmGeral.BUS_CD_C_REP.Data :=
          dmGeral.BUS_CD_C_REP.DataRequest(
                  VarArrayOf([0, dmGeral.FAT_CD_M_NFEid_emitente.Text]));

  if not dmGeral.BUS_CD_C_REP.IsEmpty then
     begin
        while not dmGeral.BUS_CD_C_REP.Eof do
            begin
              cbContatos.AddItem(dmGeral.BUS_CD_C_REPnome.Text + ' - ' + dmGeral.BUS_CD_C_REPtel_1.Text,self);
            end;
     end;
end;

procedure TFAT_FM_M_NFE_ANA.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja Cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
        dmGeral.FAT_CD_M_IQM_ITE_ANA.Cancel;
        close;
     end;
end;

procedure TFAT_FM_M_NFE_ANA.btnGravaClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo : string;
begin
  if FAT_CD_M_NFE_ANA_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
              //Busca sequencia no servidor
              if trim(dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('NUM_PLANO_ACAO').text) = '' then
                 begin
                   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                   try
                     dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('NUM_PLANO_ACAO').AsInteger :=
                          SMPrincipal.enValorChave('FAT_TB_M_NFE_ANA');
                   finally
                     FreeAndNil(SMPrincipal);
                   end;
                 end;
              DmGeral.Grava(dmGeral.FAT_CD_M_IQM_ITE_ANA);
              close;
           end
        else
           begin
             if dpkEmissao.CanFocus then
                dpkEmissao.SetFocus;
           end;
     end
  else
     begin
       if dpkEmissao.CanFocus then
          dpkEmissao.SetFocus;
     end;
end;

procedure TFAT_FM_M_NFE_ANA.cbbAcaoTomadaEnter(Sender: TObject);
begin

  cbbAcTomada.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.cbbAnalisadoPorEnter(Sender: TObject);
begin
  dmGeral.BusFuncionario2(1,'%');
  cbbAnalisadoPor.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.cbbAnalisadoPorExit(Sender: TObject);
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

procedure TFAT_FM_M_NFE_ANA.cbbNaoConformidadeEnter(Sender: TObject);
begin
 // cbbNaoConformidade.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.cbbRequeNovaAcaoEnter(Sender: TObject);
begin

 // cbbRequeNovaAcao.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.cbbSetorEnter(Sender: TObject);
begin
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.cbbSetorExit(Sender: TObject);
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
end;

procedure TFAT_FM_M_NFE_ANA.cbbSituacaoDoPlanoEnter(Sender: TObject);
begin
  dmGeral.BUS_PR_X_AXF;
  cbbSituacaoDoPlano.DropDown;
end;

procedure TFAT_FM_M_NFE_ANA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.FAT_CD_M_IQM_ITE_ANA.Cancel;
end;

procedure TFAT_FM_M_NFE_ANA.FormCreate(Sender: TObject);
begin
  AbrirBuscas;
end;

procedure TFAT_FM_M_NFE_ANA.FormShow(Sender: TObject);
begin


//  showmessage(dmGeral.FAT_CD_M_NFE_ITE_IQM_ANAacao_tomada_analise.text + ' - ' + #13 +
//              inttostr(length(dmGeral.FAT_CD_M_NFE_ITE_IQM_ANAacao_tomada_analise.text)));

end;

end.
