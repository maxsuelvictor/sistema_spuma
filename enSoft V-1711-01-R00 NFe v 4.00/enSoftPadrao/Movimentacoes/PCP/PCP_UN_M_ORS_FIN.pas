unit PCP_UN_M_ORS_FIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, vcl.Wwdbedit,
  vcl.wwdblook, Vcl.ExtCtrls, JvExMask, JvToolEdit, JvExStdCtrls, JvEdit,
  JvValidateEdit, Vcl.Buttons, vcl.wwdbigrd, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbgrid, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.ImgList;

type
  TPCP_FM_M_ORS_FIN = class(TForm)
    lblTitulo: TLabel;
    pnlDados: TPanel;
    lbTituloGrid: TLabel;
    lbRomaneio: TLabel;
    lbData: TLabel;
    lbResponsavel: TLabel;
    lbObservacao: TLabel;
    lblResponsavel: TLabel;
    lblEmissao: TLabel;
    Label53: TLabel;
    lblCod: TLabel;
    lbMotorista: TLabel;
    lbPedido: TLabel;
    lbCliente: TLabel;
    dgPrincipal: TwwDBGrid;
    txtRomaneio: TDBEdit;
    txtDataRom: TDBEdit;
    txtRespRom: TDBEdit;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnIniciar: TButton;
    btnCancelar: TButton;
    gbDados: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    dgFormaPagamento: TwwDBGrid;
    dgFormaPagamentoIButton: TwwIButton;
    txtVlrEntrada: TJvValidateEdit;
    txtFpgEntrada: TJvComboEdit;
    txtGerFpg: TJvComboEdit;
    txtQtdeParc: TEdit;
    pnTitulos: TPanel;
    lblFormaPagamento: TLabel;
    lblDias: TLabel;
    lblVencimento: TLabel;
    Label5: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    txtDias: TDBEdit;
    txtVencimento: TDBEdit;
    txtVlrTitulos: TwwDBEdit;
    btnAddFormaPagamento: TBitBtn;
    txtObservacao: TDBEdit;
    txtResponsavelNome: TDBEdit;
    txtCodRev: TDBEdit;
    txtcod: TDBEdit;
    dpkEmissao: TDBEdit;
    txtMotorista: TDBEdit;
    btnGerar: TButton;
    btnSair: TButton;
    txtPedido: TDBEdit;
    txtCliente: TDBEdit;
    dso: TwwDataSource;
    dsoTitulos: TwwDataSource;
    txtVlrBruto: TDBEdit;
    Label8: TLabel;
    txtVlrDesc: TDBEdit;
    Label9: TLabel;
    txtVlrLiq: TDBEdit;
    Label13: TLabel;
    btnImportVencto: TBitBtn;
    Label20: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    ImgPequena: TImageList;
    btnFiltro: TcxButton;
    gbCheque: TGroupBox;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    lblNCheque: TLabel;
    lblEmitente: TLabel;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    txtContaCorrente: TDBEdit;
    txtNCheque: TDBEdit;
    txtEmitenteChq: TDBEdit;
    Label14: TLabel;
    txtDescCND: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIniciarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure btnAddFormaPagamentoClick(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTitulosExit(Sender: TObject);
    procedure dgFormaPagamentoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgFormaPagamentoRowChanged(Sender: TObject);
    procedure dgFormaPagamentoIButtonClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnImportVenctoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarClick(Sender: TObject);
    procedure dgPrincipalCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtEmitenteChqExit(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirFormasPgto;
    function  VerificarCaixa: Boolean;
  public
    { Public declarations }
    var
      xCodPedAnt: integer;
  end;

var
  PCP_FM_M_ORS_FIN: TPCP_FM_M_ORS_FIN;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FPG, PCP_RN_M_ORS, enFunc;

procedure TPCP_FM_M_ORS_FIN.btnAddFormaPagamentoClick(Sender: TObject);
begin
  inherited;
  {  try
      dmgeral.PCP_CD_M_ORS.BeforePost := nil;
      cbbFormaPagamento.Enabled := true;
      dmGeral.PCP_CD_M_ORS_TIT.Insert;
      cbbFormaPagamento.SetFocus;
    finally
      dmgeral.PCP_CD_M_ORS.BeforePost := dmgeral.PCP_CD_M_ORS.BeforePost;
    end;  }

  pnTitulos.Enabled  := true;
  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;

  dmGeral.PCP_CD_M_ORS_TIT.Insert;
  //grdFpg.Enabled := False;
  //grdFpg.Color   := clSilver;
  // txtItem.ReadOnly   := false;
  // txtItem.Color      := $00F9E1DF;
  cbbFormaPagamento.SetFocus;
end;

procedure TPCP_FM_M_ORS_FIN.btnCancelarClick(Sender: TObject);
begin
  dmGeral.PCP_CD_M_ORS.Cancel;

  gbDados.Enabled     := False;
  btnCancelar.Enabled := False;
  btnGerar.Enabled    := False;

  btnIniciar.Enabled  := True;
  btnSair.Enabled     := True;
  dgPrincipal.Enabled := True;
  gbxFiltro.Enabled   := True;
end;

procedure TPCP_FM_M_ORS_FIN.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if not (txtPesquisa.Text = '') then
      begin
        if cbbPesquisa.ItemIndex = 0 then
          begin
            dmGeral.PCP_CD_M_ORS.Close;
            dmGeral.PCP_CD_M_ORS.Data :=
            dmGeral.PCP_CD_M_ORS.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
          end
        else
          begin
            dmGeral.PCP_CD_M_ORS.Close;
            dmGeral.PCP_CD_M_ORS.Data :=
            dmGeral.PCP_CD_M_ORS.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text,txtPesquisa.Text]));
          end;
      end
    else
      ShowMessage('Ao menos um caracter dever ser informado no filtro de Pesquisa');
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_ORS_FIN.btnGerarClick(Sender: TObject);
var
  codigo: String;
begin

  PCP_RN_M_ORS.PcpValidaOrsFin;

  dmGeral.PCP_CD_M_ORS.FieldByName('fin_gerado').AsBoolean := true;
  codigo := dmGeral.PCP_CD_M_ORS.FieldByName('ID_ORS').AsString;

  Screen.Cursor := crHourGlass;
  try

  DmGeral.Grava(dmGeral.PCP_CD_M_ORS);
  dmGeral.PCP_CD_M_ORS.Close;
  dmGeral.PCP_CD_M_ORS.Data :=
  dmGeral.PCP_CD_M_ORS.DataRequest(
          VarArrayOf([0, codigo]));

  gbDados.Enabled     := False;
  btnCancelar.Enabled := False;
  btnGerar.Enabled    := False;

  btnIniciar.Enabled  := True;
  btnSair.Enabled     := True;
  dgPrincipal.Enabled := True;
  gbxFiltro.Enabled   := True;

  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_ORS_FIN.btnImportVenctoClick(Sender: TObject);
var
  retorno: integer;
begin

  dmGeral.PCP_CD_M_ORS_TIT.cancel;

  if not dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
        retorno := Dc_MessageDlgCheck('Existe vencimento já lançado!' + #13 + 'Deseja refazer?', mtConfirmation, [mbYes, mbNo],
                   0, mrNo, true, false,'', nil);
        if not (retorno = 7) then
           begin
             while not dmGeral.PCP_CD_M_ORS_TIT.eof do
                begin
                  dmGeral.PCP_CD_M_ORS_TIT.Delete;
                end;
           end
        else
           exit;
     end;


  dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
          dmGeral.BUS_CD_M_PED.DataRequest(
            VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ORSid_pedido.Text]));

  PcpImportarPedTitOrs;
end;

procedure TPCP_FM_M_ORS_FIN.btnIniciarClick(Sender: TObject);
begin
  if VerificarCaixa then
     begin
        if dso.DataSet.IsEmpty then
           begin
             ShowMessage('Selecione o registro que deseja alterar.');
             abort;
           end;

        if dmGeral.PCP_CD_M_ORS.FieldByName('fin_gerado').AsBoolean then
           begin
             ShowMessage('Financeiro já gerado.');
             abort;
           end;

        dmGeral.PCP_CD_M_ORS.Edit;

        dmGeral.PCP_CD_M_ORS.FieldByName('ID_ABERTURA').AsInteger :=
                dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;

        btnIniciar.Enabled  := False;
        btnSair.Enabled     := False;
        dgPrincipal.Enabled := False;
        gbxFiltro.Enabled   := False;

        btnCancelar.Enabled := True;
        btnGerar.Enabled    := True;
        gbDados.Enabled     := True;

        txtFpgEntrada.SetFocus;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPCP_FM_M_ORS_FIN.cbbFormaPagamentoEnter(Sender: TObject);
begin
  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('int_id_condicao_pag').AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('int_id_condicao_pag').AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(4,'''1'',''2'',''3'',''4'',''5'',''7''');
      end;
  cbbFormaPagamento.DropDown;
end;

procedure TPCP_FM_M_ORS_FIN.cbbFormaPagamentoExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if (btnAddFormaPagamento.Focused or dgFormaPagamento.Focused) or
     (not ( (txtDias.Focused) or (txtVencimento.Focused) or (txtVlrTitulos.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;


  dmGeral.BusFormaPgtos(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin
       ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5] then
     begin
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
       txtDias.ReadOnly := true;
       txtVencimento.ReadOnly := true;
     end;

  gbCheque.Enabled := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       gbCheque.Enabled := true;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.cbbPesquisaChange(Sender: TObject);
begin
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

procedure TPCP_FM_M_ORS_FIN.dgFormaPagamentoIButtonClick(Sender: TObject);
begin
  try
     dgFormaPagamentoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_ORS_TIT.Delete;
     dmGeral.PCP_CD_M_ORS_TIT.Edit;
  finally
    dgFormaPagamentoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ORS_FIN.dgFormaPagamentoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {  dmGeral.PCP_CD_M_ORS_TIT.Cancel;

  if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
       cbbFormaPagamento.Enabled := True;
       dmGeral.PCP_CD_M_ORS_TIT.Append;
       cbbFormaPagamento.SetFocus;
     end
  else
    begin
     cbbFormaPagamento.Enabled := False;
     dmGeral.PCP_CD_M_ORS_TIT.Edit;
     cbbFormaPagamento.SetFocus;
    end;   }
  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;

  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.PCP_CD_M_ORS_TIT.cancel;

  if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
       //txtFormaPgto.Enabled := true;
       dmGeral.PCP_CD_M_ORS_TIT.Append;
       pnTitulos.Enabled := true;
       cbbFormaPagamento.SetFocus;
     end
  else
    begin
      dmGeral.PCP_CD_M_ORS_TIT.Edit;

      ExibirFormasPgto;
      if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5] then
         begin
           txtDias.ReadOnly := true;
           txtVencimento.ReadOnly := true;
         end;

      pnTitulos.Enabled := true;

      try
      dmGeral.BUS_CD_C_FPG2.Close;
      dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').Text]));

      finally
         dmGeral.BUS_CD_C_FPG2.close;
      end;

      if txtDias.CanFocus then
         txtDias.SetFocus
      else
         txtVlrTitulos.SetFocus;
    end;
end;

procedure TPCP_FM_M_ORS_FIN.dgFormaPagamentoRowChanged(Sender: TObject);
begin
  if dmGeral.PCP_CD_M_ORS.State in [dsInsert,dsEdit] then
     ExibirFormasPgto;
end;

procedure TPCP_FM_M_ORS_FIN.dgPrincipalCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if dmgeral.PCP_CD_M_ORSFin_gerado.AsBoolean then
     begin
       aFont.Color := clGreen;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.PCP_CD_M_ORS.FieldByName('int_id_condicao_pag').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
        dmGeral.BusFormaPgtos(1,'%');
      end;
end;

procedure TPCP_FM_M_ORS_FIN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dso.DataSet <> nil then
     begin
       if (dso.DataSet.State in [dsEdit,dsInsert]) Then
          Begin
            ShowMessage('Você deve Cancelar ou Gravar a operação.');
            Abort;
          end;
     end;
  dmGeral.PCP_CD_M_ORS.Close;
  FreeAndNil(PCP_FM_M_ORS_FIN);
end;

procedure TPCP_FM_M_ORS_FIN.FormCreate(Sender: TObject);
begin
  dmGeral.PCP_CD_M_ORS.Close;
  dmGeral.PCP_CD_M_ORS.Data := dmGeral.PCP_CD_M_ORS.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_ORS.Open;
end;

procedure TPCP_FM_M_ORS_FIN.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_ORS_FIN.FormShow(Sender: TObject);
begin
  //dmGeral.BusFormaPgtos(4,'''1'',''2'',''3'',''4'',''5'',''7''');
  dmGeral.BusFormaPgtos(1,'%');
  txtPesquisa.SetFocus;
end;

procedure TPCP_FM_M_ORS_FIN.txtDiasExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if btnAddFormaPagamento.Focused or cbbFormaPagamento.Focused or dgFormaPagamento.Focused then
     begin
       abort;
     end;


  if not (dmGeral.TesValDias(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  if dmGeral.PCP_CD_M_ORS_TIT.State in [dsInsert,dsEdit] then
     begin
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').AsInteger;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.txtEmitenteChqExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;


    if cbbFormaPagamento.Focused  then
       begin
         abort;
       end;

    if txtDias.Focused then
       begin
         abort;
       end;

    if txtVencimento.Focused then
       begin
         abort;
       end;

  if txtBanco.Focused or
     txtAgencia.Focused or
     txtContaCorrente.Focused or
     txtNCheque.Focused then
     abort;

  dmGeral.PCP_CD_M_ORS_TIT.Post;
  pnTitulos.Enabled := false;

  btnAddFormaPagamento.SetFocus;

end;

procedure TPCP_FM_M_ORS_FIN.txtFpgEntradaButtonClick(Sender: TObject);
begin
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  // Busca as formas de pagamento a vista
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, 0]));
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Open; // Precisa do Open


  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtFpgEntrada.SetFocus;
       txtFpgEntrada.Text :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TPCP_FM_M_ORS_FIN.txtFpgEntradaExit(Sender: TObject);
begin
  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtFpgEntrada.text) <> '') or
     (txtFpgEntrada.Text <> '0') then
     begin
        dmGeral.BusFormaPgtos(0,txtFpgEntrada.Text);

     end
  else
     begin
       txtVlrEntrada.Text := '';
     end; }

  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
      // ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
     //  txtPedido.SetFocus;
       exit;
     end;



  if (trim(txtFpgEntrada.text) <> '') and
     (txtFpgEntrada.Text <> '0') then
     begin
       try
          dmGeral.BUS_CD_C_FPG2.Close;
          dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtFpgEntrada.Text]));
          if dmGeral.BUS_CD_C_FPG2.IsEmpty then
             begin
               ShowMessage('Forma de pagamento não encontrada.');
               txtFpgEntrada.Text := '';
               txtFpgEntrada.SetFocus;
               abort;
             end
          else
             begin
               if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                  begin
                    ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                    txtFpgEntrada.Text := '';
                    txtFpgEntrada.SetFocus;
                    abort;
                  end;
             end;
        finally
          dmGeral.BUS_CD_C_FPG2.Close;
        end;
     end
  else
     begin
       txtVlrEntrada.Text := '';
     end;
end;

procedure TPCP_FM_M_ORS_FIN.txtGerFpgButtonClick(Sender: TObject);
begin
  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;


  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
           dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.PCP_CD_M_ORS.FieldByName('int_id_condicao_pag').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
     begin
         // Busca as formas de pagamento a vista
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
             VarArrayOf([2, 0]));
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Open;
     end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
         // Busca as formas de pagamento a prazo
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
             VarArrayOf([2, 1]));
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Open;
     end;

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TPCP_FM_M_ORS_FIN.txtGerFpgExit(Sender: TObject);
begin
  {  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') or
     (txtGerFpg.Text <> '0') then
     begin
        dmGeral.BusFormaPgtos(0,txtGerFpg.Text);

     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;}

  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
     //  txtPedido.SetFocus;
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0') then
     begin
        try
        dmGeral.BUS_CD_C_FPG2.Close;
        dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
        if dmGeral.BUS_CD_C_FPG2.IsEmpty then
           begin
             ShowMessage('Forma de pagamento não encontrada.');
             txtGerFpg.Text := '';
             txtGerFpg.SetFocus;
             abort;
           end
        else
           begin
             dmGeral.BUS_CD_C_CPG.Close;
             dmGeral.BUS_CD_C_CPG.Data :=
                       dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.PCP_CD_M_ORS.FieldByName('int_id_condicao_pag').AsString]));

             if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
                begin
                   if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                      begin
                        ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                        txtGerFpg.Text := '';
                        txtGerFpg.SetFocus;
                        abort;
                      end;
                end;
           end;
        finally
          dmGeral.BUS_CD_C_FPG2.close;
          dmGeral.BUS_CD_C_CPG.Close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TPCP_FM_M_ORS_FIN.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.txtQtdeParcExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
    //   txtPedido.SetFocus;
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency <= 0 then
     begin
       ShowMessage('Ordem de faturamento sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;
  try
    dmGeral.PCP_CD_M_ORS_TIT.BeforePost := nil;

    Screen.Cursor := crHourGlass;

    dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency, dmGeral.PCP_CD_M_ORS_TIT,2);

  finally
    dmGeral.PCP_CD_M_ORS_TIT.BeforePost := dmGeral.PCP_CD_M_ORS_TITBeforePost;
    Screen.Cursor := crDefault;
  end;

  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';
  //btnGrava.SetFocus;
end;

procedure TPCP_FM_M_ORS_FIN.txtVencimentoExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if btnAddFormaPagamento.Focused or cbbFormaPagamento.Focused or
     txtDias.Focused or dgFormaPagamento.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

   if dmGeral.PCP_CD_M_ORS_TIT.State in [dsInsert,dsEdit] then
     begin
       if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
         begin
           dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').Value :=
              dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                      dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsVariant;
         end;
     end;
end;

procedure TPCP_FM_M_ORS_FIN.txtVlrEntradaExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
     //  txtPedido.SetFocus;
       exit;
     end;

  if ((trim(txtFpgEntrada.text) = '') or
     (txtFpgEntrada.Text = '0')) and
     ((trim(txtVlrEntrada.text) <> '') and
      (txtVlrEntrada.Value <> 0)) then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;


  if (trim(txtVlrEntrada.text) = '') or
     (txtVlrEntrada.value = 0) then
     begin
       txtFpgEntrada.Text := '';
       exit;
     end;

    if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;

    if dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency <= 0 then
     begin
       ShowMessage('Ordem de faturamento sem valor.');
       exit;
     end;

  dmGeral.GerarFPG_Entrada(3,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.PCP_CD_M_ORS_TIT);

  //txtFpgEntrada.text := '';
  //txtVlrEntrada.Text := '0';

  ExibirFormasPgto;

 // txtObservacao.SetFocus;
 // txtGerFpg.SetFocus;
  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
end;

procedure TPCP_FM_M_ORS_FIN.txtVlrTitulosExit(Sender: TObject);
var
id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGerar.Focused  then
     begin
       exit;
     end;


  if cbbFormaPagamento.Focused  then
     begin
       abort;
     end;

    if txtDias.Focused then
       begin
         abort;
       end;

    if txtVencimento.Focused then
       begin
         abort;
       end;

    if not (gbCheque.Enabled) then
       begin
          if not (dmGeral.TesValVlr(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
             begin
               txtVlrTitulos.SetFocus;
               abort;
             end;

          id_titulo := dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_ORS_TIT').AsString;
          dmGeral.PCP_CD_M_ORS_TIT.Post;
          pnTitulos.Enabled := false;

          btnAddFormaPagamento.SetFocus;
       end;
end;

function TPCP_FM_M_ORS_FIN.VerificarCaixa: Boolean;
begin
  result := true;

  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));
  if dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
       ShowMessage('Caixa está fechado!');
       ShowMessage('Não será permitido manipular a ordem de faturamento!');
       dmGeral.FIN_CD_M_CXA.Close;
       result := false;
       abort;
     end
  else
     begin
       if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <> xDataSis then
          begin
            ShowMessage('É preciso que abra o caixa com a data do dia!' + #13 +
                        'A data do caixa aberto está diferente da data de hoje!');
            ShowMessage('Não será permitido manipular a ordem de faturamento!');
            dmGeral.FIN_CD_M_CXA.Close;
            result := false;
            abort;
          end;
     end;
end;

end.
