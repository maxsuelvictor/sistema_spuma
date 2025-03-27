unit FAT_UN_M_CXA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,frxClass,JvExDBGrids, JvDBGrid, Data.DB,
  vcl.wwdatsrc, vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Menus, frxDBSet, frxExportPDF, frxExportXLS, RDprint;

type
  TFAT_FM_M_CXA = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    pnlPrincipal: TPanel;
    dso: TwwDataSource;
    pnlCentral: TPanel;
    pnlEsquerda: TPanel;
    pnlDados: TPanel;
    tbtTotalVista: TLabel;
    lblTotalPrazo: TLabel;
    lblTotalFaturado: TLabel;
    dbgrdNfe: TwwDBGrid;
    pnlDireita: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dso_rec_dia: TwwDataSource;
    dso_pag_dia: TwwDataSource;
    GroupBox1: TGroupBox;
    lblInformacoes: TLabel;
    lblUsuario: TLabel;
    lblDataCaixa: TLabel;
    lblECFAtual: TLabel;
    pnlBotoes: TPanel;
    btnAbreCaixa: TButton;
    btnContasReceber: TButton;
    btnFaturamento: TButton;
    btnDespesas: TButton;
    dsoCaixa: TwwDataSource;
    txtUsuario: TEdit;
    txtDataCaixa: TEdit;
    txtECF: TEdit;
    btnAtuDados: TButton;
    btnFechaOS: TButton;
    btnSair: TButton;
    txtTotalVista: TEdit;
    txtTotalPrazo: TEdit;
    txtTotalFaturado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblAberto: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlAberto: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label9: TLabel;
    timeAtuDados: TTimer;
    btnSupriSangr: TButton;
    Button1: TButton;
    pmReabreCaixa: TPopupMenu;
    btnReabreCaixa: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFaturamentoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnAbreCaixaClick(Sender: TObject);
    procedure btnDespesasClick(Sender: TObject);
    procedure dbgrdNfeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnAtuDadosClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure timeAtuDadosTimer(Sender: TObject);
    procedure btnSupriSangrClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnReabreCaixaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure AbrirAbertCaixa;
    procedure AbrirSupriSangr;
    procedure AbrirPeqDesp;

    procedure MostraCaixa;
    procedure AtuDadosTela;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_CXA: TFAT_FM_M_CXA;

implementation

{$R *.dfm}

uses uDmGeral, FAT_UN_M_CXA_NFE, FIN_UN_M_CTA_ABE, enFunc,
  FIN_UN_M_PDE, FAT_RN_M_CXA, FIN_UN_M_RBX, FAT_UN_M_CXA_MPS, Unit1,
  FAT_UN_M_CXA_RBX, FIN_UN_M_CTA_REA;

procedure TFAT_FM_M_CXA.AbrirAbertCaixa;
var
   mens: String;
begin
   mens := '';

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_suprim').text) = '' then
      begin
        mens := '.Plano de contas do suprimento não encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_TIF_SUPRIM').text) = '' then
      begin
        mens := '.Tipo financeiro do suprimento não encontrado nos parâmetros' + #13;
      end;

   if mens <> '' then
      begin
        ShowMessage(mens);
        exit;
      end;

   FIN_FM_M_CTA_ABE := TFIN_FM_M_CTA_ABE.Create(Self);
   FIN_FM_M_CTA_ABE.ShowModal;
   FIN_FM_M_CTA_ABE.Free;

   MostraCaixa;

   AtuDadosTela;
end;

procedure TFAT_FM_M_CXA.AbrirPeqDesp;
var
   mens: String;
begin
   mens := '';

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_fornecedor').text) = '' then
      begin
        mens := '.Fornecedor para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_local_titulo').text) = '' then
      begin
        mens := '.Local do título para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_forma_pag').text) = '' then
      begin
        mens := '.Forma de pagamento para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_ccusto').text) = '' then
      begin
        mens := '.Centro de Custo para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_tipo_financeiro').text) = '' then
      begin
        mens := '.Tipo financeiro para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if mens <> '' then
      begin
        ShowMessage(mens);
        exit;
      end;

  FIN_FM_M_PDE := TFIN_FM_M_PDE.Create(Self);
  FIN_FM_M_PDE.ShowModal;
  FIN_FM_M_PDE.Free;

  MostraCaixa;

  AtuDadosTela;
end;

procedure TFAT_FM_M_CXA.AbrirSupriSangr;
var
   mens: String;
begin
   mens := '';

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_suprim').text) = '' then
      begin
        mens := '.Plano de contas do suprimento não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_TIF_SUPRIM').text) = '' then
      begin
        mens := '.Tipo financeiro do suprimento não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_PLANO_SANGRIA').text) = '' then
      begin
        mens := '.Plano de contas de sangria não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_TIF_SANGRIA').text) = '' then
      begin
        mens := '.Tipo financeiro de sangria não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_PLANO_SANGRIA').text) = '' then
      begin
        mens := '.Plano de contas para a conta destino da sangria não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_TIF_SANGRIA').text) = '' then
      begin
        mens := '.Tipo financeiro para a conta destino da sangria não foi encontrado nos parâmetros' + #13;
      end;

   if mens <> '' then
      begin
        ShowMessage(mens);
        exit;
      end;

   FAT_FM_M_CXA_MPS := TFAT_FM_M_CXA_MPS.Create(Self);
   FAT_FM_M_CXA_MPS.ShowModal;
   FAT_FM_M_CXA_MPS.Free;

   MostraCaixa;

   AtuDadosTela;
end;

procedure TFAT_FM_M_CXA.AtuDadosTela;
var
   TotalVista,TotalPrazo,TotalFaturado: String;
begin

  txtTotalVista.Text    := '0,00';
  txtTotalPrazo.Text    := '0,00';
  txtTotalFaturado.Text := '0,00';

  if not dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
       FAT_RN_M_CXA.FatAtuDadosTelaCxa;

       FAT_RN_M_CXA.FatTotaisVendasCxa(TotalVista,TotalPrazo,TotalFaturado);

       txtTotalVista.Text    := TotalVista;
       txtTotalPrazo.Text    := TotalPrazo;
       txtTotalFaturado.Text := TotalFaturado;
     end;

end;

procedure TFAT_FM_M_CXA.btnAbreCaixaClick(Sender: TObject);
begin
   AbrirAbertCaixa;
end;

procedure TFAT_FM_M_CXA.btnAtuDadosClick(Sender: TObject);
begin
  AtuDadosTela;
end;

procedure TFAT_FM_M_CXA.btnContasReceberClick(Sender: TObject);
begin

 { if FIN_FM_M_RBX <> nil then
     begin
       Showmessage('A tela de baixa do contas a receber já está aberta.' + #13 +
                   'Acesse a tela de baixa pelo menu Financeiro para poder fechá-la.' );
       exit;
     end;

  FIN_FM_M_RBX := TFIN_FM_M_RBX.Create(nil);
  FIN_FM_M_RBX.xIdAbertura := dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
  FIN_FM_M_RBX.xIdConta    := dmGeral.FIN_CD_M_CXA.FieldByName('id_conta').AsInteger;
  xOriChamada := 1;
  FIN_FM_M_RBX.Show;


  dmGeral.FIN_CD_M_RBX.Close;
  dmGeral.FIN_CD_M_RBX.Data :=
          dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.FIN_CD_M_CXA.FieldByName('id_empresa').AsInteger,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger,
                                                          xFuncionario]));
  dmGeral.FIN_CD_M_RBX.Open;

  timeAtuDados.Enabled := true; }

   if FAT_FM_M_CXA_RBX <> nil then
     begin
       Showmessage('A tela de baixa do contas a receber já está aberta.' + #13 +
                   'Acesse a tela de baixa pelo menu Financeiro para poder fechá-la.' );
       exit;
     end;

  FAT_FM_M_CXA_RBX := TFAT_FM_M_CXA_RBX.Create(nil);
  FAT_FM_M_CXA_RBX.xIdAbertura := dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
  FAT_FM_M_CXA_RBX.xIdConta    := dmGeral.FIN_CD_M_CXA.FieldByName('id_conta').AsInteger;

  FAT_FM_M_CXA_RBX.Show;


  dmGeral.FIN_CD_M_RBX.Close;
  dmGeral.FIN_CD_M_RBX.Data :=
          dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.FIN_CD_M_CXA.FieldByName('id_empresa').AsInteger,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger,
                                                          xFuncionario]));
  dmGeral.FIN_CD_M_RBX.Open;

  timeAtuDados.Enabled := true;
end;

procedure TFAT_FM_M_CXA.btnDespesasClick(Sender: TObject);
begin
  AbrirPeqDesp;
end;

procedure TFAT_FM_M_CXA.btnFaturamentoClick(Sender: TObject);
begin

   AtuDadosTela;

   // Comentado por Maxsuel Victor, em 12/11/2016 a pedido da tarefa 661
   {if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
      begin
        ShowMessage('Não existe nota fiscal.');
        exit;
      end;}

   FAT_FM_M_CXA_NFE := TFAT_FM_M_CXA_NFE.Create(Self);
   FAT_FM_M_CXA_NFE.ShowModal;
   FAT_FM_M_CXA_NFE.Free;
end;


procedure TFAT_FM_M_CXA.btnReabreCaixaClick(Sender: TObject);
begin
   FIN_FM_M_CTA_REA := TFIN_FM_M_CTA_REA.Create(Self);
   FIN_FM_M_CTA_REA.ShowModal;
   FIN_FM_M_CTA_REA.Free;
   MostraCaixa;
   AtuDadosTela;
end;

procedure TFAT_FM_M_CXA.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_CXA.btnSupriSangrClick(Sender: TObject);
begin
  AbrirSupriSangr;
end;

procedure TFAT_FM_M_CXA.Button1Click(Sender: TObject);
begin
frmNFCe := TfrmNFCe.Create(Self);
  frmNFCe.ShowModal;
  frmNFCe.Free;
end;

procedure TFAT_FM_M_CXA.dbgrdNfeCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Field.FieldName = 'legenda' then
     begin

       {  *** ATENÇÃO ****

          Caso este código abaixo seja alterado , você deverá alterar o código
          do Grid de Notas Fiscais da tela FAT_FM_M_CXA_NFE e da tela NFCe também para que os
          códigos fiquem iguais.

          Maxsuel Victor
        }


       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

        // Situação de NFe FATURADA normnal. Cor Verde
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          // foi retirado o NFE_RECBIDO e colocado NFE_PROTOCOLO , devido nota técnica SICRÓNO nfce , 10-10-2021
          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString <> '')  or
            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 0) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3)
            ) then
          begin
            Abrush.Color := clGreen;
          end;


       // Situação de NFe Inutilizada. Cor Marrom  -
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
          begin
            Abrush.Color := clMaroon;
          end;

       // Situação de NFe CANCELADA. Cor Vermelho
       if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
          begin
            Abrush.Color := clRed;
          end;
        // Situação de NFe DENEGADA. Cor Roxa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
          begin
            Abrush.Color := clPurple;
          end;

       // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            Abrush.Color := $00B56AFF;
          end;
     end;
end;

procedure TFAT_FM_M_CXA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FAT_FM_M_CXA);
end;

procedure TFAT_FM_M_CXA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
    btnAbreCaixaClick(Self);

  if key = vk_f5 then
    btnSupriSangrClick(Self);

  if key = vk_f7 then
    btnFaturamentoClick(Self);

  if key = vk_f8 then
    btnDespesasClick(Self);

  if key = vk_f9 then
    btnContasReceberClick(Self);

  if key = vk_f10 then
    btnAtuDadosClick(Self);

  if key = vk_f11 then
    btnSairClick(Self);
end;

procedure TFAT_FM_M_CXA.FormResize(Sender: TObject);
begin
 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);

 pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
 pnlCentral.left := (pnlPRincipal.Width div 2) - (pnlCentral.width div 2);
end;

procedure TFAT_FM_M_CXA.FormShow(Sender: TObject);
begin

  pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);

  MostraCaixa;
  AtuDadosTela;

 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OQP').AsBoolean= false) and
   (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OTA').AsBoolean= false) and
   (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OME').AsBoolean= false) then
    begin
       dbgrdNfe.ColumnByName('id_ordem').Visible := false;
       dbgrdNfe.ColumnByName('int_nomeemi').DisplayWidth := 37;
    end;

  btnFechaOS.Visible       := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean or
     dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean then
     begin
       btnFechaOS.Visible       := true;
     end;

end;


procedure TFAT_FM_M_CXA.MostraCaixa;
begin

  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));

  btnFaturamento.Enabled   := false;
  btnDespesas.Enabled      := false;
  btnContasReceber.Enabled := false;
  btnFechaOS.Enabled       := false;
  btnSupriSangr.Enabled    := false;

  if not dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
      txtUsuario.text   := dmGeral.FIN_CD_M_CXA.FieldByName('int_nomefun').AsString;
      txtDataCaixa.Text := dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString;
      txtECF.Text       := dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString;

      btnFaturamento.Enabled  :=true;
      btnSupriSangr.Enabled   :=true;
      btnDespesas.Enabled     :=true;
      btnContasReceber.Enabled:=true;
      btnFechaOS.Enabled      := true;

      btnAbreCaixa.PopupMenu := nil;
     end
  else
     begin
      txtUsuario.text   :='Cxa.Fechado';
      txtDataCaixa.Text := '';
      txtECF.Text       := '';
      btnAbreCaixa.PopupMenu := pmReabreCaixa;
     end;
end;
procedure TFAT_FM_M_CXA.timeAtuDadosTimer(Sender: TObject);
begin
  if FIN_FM_M_RBX = nil then
     begin
       AtuDadosTela;
       timeAtuDados.Enabled := false;
     end;
end;

end.
