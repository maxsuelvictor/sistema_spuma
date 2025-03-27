unit PSQ_UN_X_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_PED = class(TPAD_FM_X_PSQ)
    lblPagamentos: TLabel;
    Label1: TLabel;
    dgIte: TwwDBGrid;
    dsoIte: TwwDataSource;
    Panel1: TPanel;
    lblAberto: TLabel;
    Label5: TLabel;
    pnlAberto: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    chbEmpLogada: TCheckBox;
    btnImportarSair: TcxButton;
    pnlSelItens: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure btnImportarSairClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure dgIteFieldChanged(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_PED: TPSQ_FM_X_PED;
  FormOrigem:String  = '';

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TPSQ_FM_X_PED.btnImportarSairClick(Sender: TObject);
var
  SMPrincipal: TSMClient;
begin
  inherited;

  if dmGeral.BUS_CD_M_PED.IsEmpty then
    begin
      ShowMessage('É necessário selecionar pedido de venda.');
      exit;
    end;

  dmGeral.BusCliente(0,dmGeral.BUS_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
  if  dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      ShowMessage('Cliente não cadastrado.');
      exit;
    end;


  try
    dmGeral.BUS_CD_M_PED_ITE.Filtered := true;
    dmGeral.BUS_CD_M_PED_ITE.Filter :=  'INT_SELECAO = TRUE';
    dmGeral.PCP_CD_M_ACR.BeforePost := nil;
    if dmGeral.BUS_CD_M_PED_ITE.IsEmpty then
      begin
        ShowMessage('É necessário selecionar item.');
        dmGeral.BUS_CD_M_PED_ITE.Filtered := false;
        dmGeral.PCP_CD_M_ACR.BeforePost := dmGeral.PCP_CD_M_ACRBeforePost;
        exit;
      end;

     while (not dmGeral.PCP_CD_M_ACR_ITE.IsEmpty) do
        begin
         dmGeral.PCP_CD_M_ACR_ITE.Delete;
        end;

     dmGeral.PCP_CD_M_ACR.FieldByName('id_pedido_venda').AsString :=
             dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('NOME_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('ENDERECO_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('NRO_END_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('CNPJ_CPF_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('BAIRRO_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString;


     dmGeral.PCP_CD_M_ACR.FieldByName('INT_NOMECID').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('INT_UF').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('CEP_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('FONE_CONSUMIDOR').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;

     dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('pessoa').AsInteger;

    dmGeral.BUS_CD_M_PED_ITE.First;
    while not dmGeral.BUS_CD_M_PED_ITE.EOF do
      begin
        dmGeral.PCP_CD_M_ACR_ITE.Insert;

        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_acr_p').AsInteger :=
               SMPrincipal.enValorChave('PCP_TB_M_ACR_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_ITEM').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_DESC_PRO').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_DESC_UND').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_COR').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_TAMANHO').AsString :=
                   dmGeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString;

        dmGeral.PCP_CD_M_ACR_ITE.Post;

        dmgeral.BUS_CD_M_PED_ITE.Next;
      end;
   finally
      dmGeral.BUS_CD_M_PED_ITE.Filtered := false;
      dmGeral.PCP_CD_M_ACR.BeforePost := dmGeral.PCP_CD_M_ACRBeforePost;
   end;
   Close;
end;

procedure TPSQ_FM_X_PED.btnPesquisaClick(Sender: TObject);
var
  xIdEmp:string;
begin
  inherited;
  { Filtros do FAT_CD_M_PED:
      index 0, ID_PEDIDO
      index 1, Nome do cliente
      index 2, Nome do vendedor
      index 3, Nome da Condição de Pagamento
      index 4, Nome do Tipo de Estoque
      index 5, Data do pedido
      index 6, não tem parâmetro, e serve para buscar os pedido que tem restrinções.
   }

  if (FormOrigem = '') then
     begin
      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, edtPesquisa.Text]));
     end;
  if (FormOrigem = 'FAT_FM_M_PCA') then
     begin
      xIdEmp := '';
      if chbEmpLogada.Checked then
        begin
          xIdEmp := dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text;
        end;
      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex+93,xIdEmp,edtPesquisa.Text]));
     end;
   if (FormOrigem = 'FAT_FM_M_SEP') then
     begin
      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex+101,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,edtPesquisa.Text]));
     end;
   if (FormOrigem = 'PCP_FM_M_ACR') then
     begin
      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex+108,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,edtPesquisa.Text]));
     end;
  dbgrid.SetFocus;
end;

procedure TPSQ_FM_X_PED.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmGeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 0 then
    AFont.Color := clBlack;

  if dmGeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 1 then
    AFont.Color := clBlue;

  if dmGeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 2 then
    AFont.Color := clREd;
end;

procedure TPSQ_FM_X_PED.dgIteFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;
  if not dmGeral.BUS_CD_M_PED_ITE.IsEmpty then
    begin
      if (Field.FieldName = 'int_selecao') then
         begin
           dmGeral.BUS_CD_M_PED_ITE.Post
         end;
    end;
end;

procedure TPSQ_FM_X_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormOrigem <> 'FAT_FM_M_SEP') then
    dmgeral.BUS_CD_M_PED.Close;
end;

procedure TPSQ_FM_X_PED.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.AtualizarGridItens(dgIte,'int_nomeite',13,10);
end;

procedure TPSQ_FM_X_PED.FormShow(Sender: TObject);
begin
  inherited;


  if (FormOrigem = 'FAT_FM_M_PCA') then
    begin
      chbEmpLogada.Visible := true;
    end;

  if (FormOrigem = 'PCP_FM_M_ACR') then
    begin
      cmbParametro.ItemIndex := 0;
      pnlSelItens.Visible := true;
      pnlSelItens.Height := 24;
      PSQ_FM_X_PED.BorderIcons := [biSystemMenu];
      btnImportarSair.Visible := true;
      btnImportarSair.Left := 499;
      btnSair.Enabled := false;
    end
  else
    begin
      pnlSelItens.Height := 0;
      dgIte.RemoveField('int_selecao');
    end;

end;

procedure TPSQ_FM_X_PED.Label3Click(Sender: TObject);
begin
  inherited;

   dmGeral.BUS_CD_M_PED_ITE.First;
   while not dmGeral.BUS_CD_M_PED_ITE.eof do
     begin
       dmGeral.BUS_CD_M_PED_ITE.Edit;
       dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_SELECAO').AsBoolean := true;
       dmGeral.BUS_CD_M_PED_ITE.Next;
     end;
end;

procedure TPSQ_FM_X_PED.Label4Click(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_CD_M_PED_ITE.First;
   while not dmGeral.BUS_CD_M_PED_ITE.eof do
     begin
       dmGeral.BUS_CD_M_PED_ITE.Edit;
       dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_SELECAO').AsBoolean := false;
       dmGeral.BUS_CD_M_PED_ITE.Next;
     end;
end;

end.
