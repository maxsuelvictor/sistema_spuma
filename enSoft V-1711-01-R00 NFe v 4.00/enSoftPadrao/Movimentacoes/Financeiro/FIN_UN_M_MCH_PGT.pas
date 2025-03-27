unit FIN_UN_M_MCH_PGT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, vcl.wwdblook,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  JvExExtCtrls, JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask,
  vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFIN_FM_M_MCH_PGT = class(TPAD_FM_X_FRM)
    gbGeracaoTitulos: TGroupBox;
    lblFormaPagamento: TLabel;
    lblParcelas: TLabel;
    grdTitulos: TwwDBGrid;
    grdTitIButton: TwwIButton;
    txtGerFpg: TJvComboEdit;
    GroupBox1: TGroupBox;
    pnlTitulos: TPanel;
    lblFormaPag: TLabel;
    lblDias: TLabel;
    lblVencimento: TLabel;
    lblValor: TLabel;
    lblJuros: TLabel;
    lblVlrTotal: TLabel;
    cbbFormaPag: TwwDBLookupCombo;
    txtDias: TwwDBEdit;
    txtVencimento: TJvDBDateEdit;
    txtValor: TwwDBEdit;
    txtJuros: TwwDBEdit;
    txtVlrTotal: TwwDBEdit;
    txtQtdeParcelas: TEdit;
    gbCheque: TGroupBox;
    Label2: TLabel;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    lblAgencia: TLabel;
    txtContaCorrente: TDBEdit;
    Label1: TLabel;
    txtNCheque: TDBEdit;
    lblNCheque: TLabel;
    txtEmitente: TDBEdit;
    lblEmitente: TLabel;
    btnAddTitulos: TBitBtn;
    txtDescFpg: TEdit;
    lblTotJuros: TLabel;
    txtTotJuros: TDBText;
    dsoMch: TwwDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtQtdeParcelasExit(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdTitIButtonClick(Sender: TObject);
    procedure pnlTitulosExit(Sender: TObject);
    procedure cbbFormaPagEnter(Sender: TObject);
    procedure cbbFormaPagExit(Sender: TObject);
    procedure txtJurosExit(Sender: TObject);
    procedure txtEmitenteExit(Sender: TObject);
    procedure txtBancoExit(Sender: TObject);
    procedure txtAgenciaExit(Sender: TObject);
    procedure txtContaCorrenteExit(Sender: TObject);
    procedure txtNChequeExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtValorExit(Sender: TObject);
    procedure grdTitulosRowChanged(Sender: TObject);
    procedure btnAddTitulosClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure txtValorKeyPress(Sender: TObject; var Key: Char);
    procedure txtJurosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure HabilitarDesabilitarCamposCheque(Ativar:Boolean);
    var
      xTipoFormaPag:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_MCH_PGT: TFIN_FM_M_MCH_PGT;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FPG, FIN_RN_M_CHE_MOV, uProxy;


procedure TFIN_FM_M_MCH_PGT.acSairExecute(Sender: TObject);
begin
 // inherited;
   Close;
end;

procedure TFIN_FM_M_MCH_PGT.btnAddTitulosClick(Sender: TObject);
var
  id_forma_pag: string;
begin
  inherited;
  dmGeral.FIN_CD_M_MCH_TIT.cancel;

  if dmGeral.FIN_CD_M_MCH_TIT.IsEmpty then
     begin
       ShowMessage('Só é permitido manipular os vencimentos caso já exista forma de pagamento lançada no grid.'+#13+
                   'É necessário fazer a "Geração de Títulos"!');
       txtGerFpg.SetFocus;
       exit;
     end;

  pnlTitulos.Enabled  := true;

  id_forma_pag := dmGeral.FIN_CD_M_MCH_TIT.FieldByName('id_forma_pag').AsString;
  dmGeral.BusFormaPgtos2(0,id_forma_pag);


  dmGeral.FIN_CD_M_MCH_TIT.Insert;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_CONTROLE').AsInteger :=
                          dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsInteger;
  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('id_forma_pag').AsString :=
       id_forma_pag;

  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('int_nomefpg').AsString :=
                       dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString;
  dmGeral.BUS_CD_C_FPG2.close;

  dmGeral.BusFormaPgtos(2,xTipoFormaPag);
  dmGeral.BUS_CD_C_FPG.Locate('id_forma_pag',id_forma_pag,[]);

  HabilitarDesabilitarCamposCheque(true);

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
      begin
        // gbCheque.Enabled := false;
        HabilitarDesabilitarCamposCheque(false);
      end;

  // cbbformapag.Text := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  //cbbFormaPag.SetFocus;
  txtDias.SetFocus;
end;



procedure TFIN_FM_M_MCH_PGT.cbbFormaPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(2,xTipoFormaPag);
end;

procedure TFIN_FM_M_MCH_PGT.cbbFormaPagExit(Sender: TObject);
begin
  inherited;
  if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;


  if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString = '') then
    begin
      ShowMessage('O campo "Forma de Pgto" deve ser preenchido.');
      dmGeral.FIN_CD_M_MCH_TIT.FieldByName('INT_NOMEFPG').AsString := '';
      cbbFormaPag.SetFocus;
      exit;
    end;
  HabilitarDesabilitarCamposCheque(true);

  ///gbCheque.Enabled := true;
  //txtContaCorrente.Enabled := false;
  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString);
  if (not dmGeral.BUS_CD_C_FPG.IsEmpty) then
    begin
       if not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4,5,6]) then
         begin
           ShowMessage('Documento impresso tem que ser duplicata, promissória, boleto, dinheiro ou cheque.');
           cbbFormaPag.SetFocus;
           exit;
         end;

       if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
         begin
          // gbCheque.Enabled := false;
            HabilitarDesabilitarCamposCheque(false);
         end;

       // comentado por Maxsuel Victor, pois não tem sentido desabilitar este campo no caso de ser CHEQUE
      { if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) then
          begin
           if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
             begin
               txtContaCorrente.Enabled := false;
             end;
          end; }
    end;

   dmGeral.FIN_CD_M_MCH_TIT.FieldByName('INT_NOMEFPG').AsString :=
           dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
end;

procedure TFIN_FM_M_MCH_PGT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  //FreeAndNil(FIN_FM_M_MCH_PGT);
end;

procedure TFIN_FM_M_MCH_PGT.FormCreate(Sender: TObject);
begin
//  inherited;
   dmGeral.BusCondPgto(0,dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONDICAO_PAG').AsString);
   if (not dmGeral.BUS_CD_C_CPG.IsEmpty) then
     begin
       xTipoFormaPag := dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsString;
     end;
   txtDescFpg.Text := '';
end;

procedure TFIN_FM_M_MCH_PGT.FormShow(Sender: TObject);
begin
 // inherited;

    if (dmGeral.FIN_CD_M_MCH.FieldBYName('OPERACAO').AsInteger <> 4) then
      begin
        lblTotJuros.Visible := false;
        txtTotJuros.Visible := false;
      end;

end;

procedure TFIN_FM_M_MCH_PGT.HabilitarDesabilitarCamposCheque(Ativar:Boolean);
begin
  txtBanco.Enabled := Ativar;
  txtAgencia.Enabled := Ativar;
  txtContaCorrente.Enabled := Ativar;
  txtNCheque.Enabled := Ativar;
  txtEmitente.Enabled := Ativar;
end;

procedure TFIN_FM_M_MCH_PGT.txtAgenciaExit(Sender: TObject);
begin
   if grdTitulos.Focused or btnAddTitulos.Focused then
      begin
        exit;
      end;

    if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused or txtJuros.Focused or txtBanco.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_AGENCIA').AsString = '') then
      begin
        ShowMessage('O campo "Agência" deve ser preenchido');
        txtAgencia.SetFocus;
        exit;
      end;
end;

procedure TFIN_FM_M_MCH_PGT.txtBancoExit(Sender: TObject);
begin
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

   if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused or txtJuros.Focused then
     begin
       exit;
     end;

  if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_BANCO').AsString = '') then
      begin
        ShowMessage('O campo "Banco" deve ser preenchido.');
        txtBanco.SetFocus;
        exit;
      end;
end;

procedure TFIN_FM_M_MCH_PGT.txtContaCorrenteExit(Sender: TObject);
begin
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

   if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused or txtJuros.Focused or txtBanco.Focused
      or txtAgencia.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_CONTA').AsString = '') then
      begin
        ShowMessage('O campo "Conta" deve ser preenchido.');
        txtContaCorrente.SetFocus;
        exit;
      end;
end;

procedure TFIN_FM_M_MCH_PGT.txtDiasExit(Sender: TObject);
begin
  inherited;
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

   if cbbFormaPag.Focused then
     begin
       exit;
     end;

   if dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').IsNull or
     (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').AsString = '') or
     (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').AsCurrency < 0) then
    begin
      dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').AsCurrency := 0;
    end;

  dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis +
                   dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').AsInteger;
end;

procedure TFIN_FM_M_MCH_PGT.txtEmitenteExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
   {if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;}

    if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused or txtJuros.Focused or txtBanco.Focused
      or txtAgencia.Focused or txtContaCorrente.Focused or txtNCheque.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_EMITENTE').AsString = '') then
      begin
        ShowMessage('O campo "Emitente" deve ser preenchido.');
        txtEmitente.SetFocus;
        exit;
      end;

   if dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger = 0 then
       begin
         //Busca sequencia no servidor
         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         try
           dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger :=SMPrincipal.enValorChave('FIN_TB_M_MCH_TIT');
         finally
           FreeAndNil(SMPrincipal);
         end;
       end;

  dmGeral.FIN_CD_M_MCH_TIT.Post;
end;

procedure TFIN_FM_M_MCH_PGT.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  PSQ_FM_X_FPG.btnPesquisa.Enabled := false;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, xTipoFormaPag]));
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Open;

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TFIN_FM_M_MCH_PGT.txtGerFpgExit(Sender: TObject);
begin
  inherited;
  txtDescFpg.Text := '';
  if (trim(txtGerFpg.text) <> '') or
     (txtGerFpg.Text <> '0') then
     begin
       dmGeral.BusFormaPgtos(0,txtGerFpg.Text);
       txtDescFpg.Text := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
       txtQtdeParcelas.Text := '0';
     end;
end;

procedure TFIN_FM_M_MCH_PGT.txtJurosExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  { if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;}

  if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused then
     begin
       exit;
     end;

  if txtBanco.CanFocus then
    begin
      txtBanco.SetFocus;
    end
  else
    begin
     if dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger = 0 then
       begin
         //Busca sequencia no servidor
         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         try
           dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_TITULO').AsInteger :=SMPrincipal.enValorChave('FIN_TB_M_MCH_TIT');
         finally
           FreeAndNil(SMPrincipal);
         end;
       end;
     dmGeral.FIN_CD_M_MCH_TIT.Post;
    end;
end;

procedure TFIN_FM_M_MCH_PGT.txtJurosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if pos(',',txtJuros.Text)>0 then
    begin
      if (Length(copy(txtJuros.Text,pos(',',txtJuros.Text)))>2) then
        begin
           if not ( Key = #8) then
            Key := #0;
        end;
    end;
end;

procedure TFIN_FM_M_MCH_PGT.txtNChequeExit(Sender: TObject);
begin
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

   if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused or txtValor.Focused or txtJuros.Focused or txtBanco.Focused
      or txtAgencia.Focused or txtContaCorrente.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_MCH_TIT.FieldByName('CHE_NUMERO').AsString = '') then
      begin
        ShowMessage('O campo "Nº Cheque" deve ser preenchido.');
        txtNCheque.SetFocus;
        exit;
      end;
end;

procedure TFIN_FM_M_MCH_PGT.txtQtdeParcelasExit(Sender: TObject);
begin
  inherited;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParcelas.text) <> '') and
      (txtQtdeParcelas.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser preenchido.');
       abort;
     end;

  if (trim(txtQtdeParcelas.text) = '') or
     (txtQtdeParcelas.Text = '0') then
     begin
       txtGerFpg.Text := '';
       txtDescFpg.Text := '';
       exit;
     end;

  if dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency = 0 then
     begin
       ShowMessage('Movimentação de cheque sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParcelas.text) < 0 then
     begin
       ShowMessage('O campo "Qtde Parcelas" não pode ser menor que 0.');
       txtQtdeParcelas.text := '0';
       txtQtdeParcelas.SetFocus;
       abort;
     end;

  dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParcelas.text), dmGeral.FIN_CD_M_MCH.FieldByName('VLR_MOVIMENTO').AsCurrency, dmGeral.FIN_CD_M_MCH_TIT,1);

  txtGerFpg.text        := '';
  txtQtdeParcelas.text  := '0';
  txtDescFpg.Text       := '';
  btnAddTitulos.SetFocus;
end;

procedure TFIN_FM_M_MCH_PGT.txtValorExit(Sender: TObject);
begin
  inherited;
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

    if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused then
     begin
       exit;
     end;

    if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_MCH_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtValor.SetFocus;
       abort;
     end;
end;

procedure TFIN_FM_M_MCH_PGT.txtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if pos(',',txtValor.Text)>0 then
    begin
      if (Length(copy(txtValor.Text,pos(',',txtValor.Text)))>2) then
        begin
           if not ( Key = #8) then
            Key := #0;
        end;
    end;
end;

procedure TFIN_FM_M_MCH_PGT.txtVencimentoExit(Sender: TObject);
begin
  inherited;
   if grdTitulos.Focused or btnAddTitulos.Focused then
    begin
      exit;
    end;

   if cbbFormaPag.Focused or txtDias.Focused or
      txtVencimento.Focused then
     begin
       exit;
     end;

   if not (dmGeral.TesValVencto(xDataSis,dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

    dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DIAS').Value :=
          dmGeral.FIN_CD_M_MCH_TIT.FieldByName('DTA_VENCIMENTO').AsVariant - xDataSis;

end;

procedure TFIN_FM_M_MCH_PGT.grdTitIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdTitIButton.Enabled := false;
     if dmGeral.FIN_CD_M_MCH_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_MCH_TIT.Delete;
     dmGeral.FIN_CD_M_MCH_TIT.Edit;
  finally
    grdTitIButton.Enabled := true;
  end;
end;

procedure TFIN_FM_M_MCH_PGT.grdTitulosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlTitulos.Enabled = false then
     pnlTitulos.Enabled := true;

  dmGeral.FIN_CD_M_MCH_TIT.cancel;

  if dmGeral.FIN_CD_M_MCH_TIT.IsEmpty then
     begin
       dmGeral.FIN_CD_M_MCH_TIT.Append;
       pnlTitulos.Enabled := true;
       btnAddTitulos.SetFocus;
     end
  else
    begin
      dmGeral.FIN_CD_M_MCH_TIT.Edit;
      pnlTitulos.Enabled := true;
      //cbbFormaPag.SetFocus;

      HabilitarDesabilitarCamposCheque(true);

      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
          begin
            // gbCheque.Enabled := false;
            HabilitarDesabilitarCamposCheque(false);
          end;

      txtDias.SetFocus;
    end;
end;

procedure TFIN_FM_M_MCH_PGT.grdTitulosRowChanged(Sender: TObject);
begin
  inherited;
  if (dmGeral.FIN_CD_M_MCH_TIT.RecordCount > 0) then
    begin
      dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_MCH_TIT.FieldByName('ID_FORMA_PAG').AsString);
      if (not dmGeral.BUS_CD_C_FPG.IsEmpty) then
        begin
          HabilitarDesabilitarCamposCheque(true);
          if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
            begin
              HabilitarDesabilitarCamposCheque(false);
            end;

          if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) then
            begin
             if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
               begin
                 txtContaCorrente.Enabled := false;
               end;
            end;
        end;
    end;
end;

procedure TFIN_FM_M_MCH_PGT.pnlTitulosExit(Sender: TObject);
begin
  inherited;
  begin
     try
       dmGeral.FIN_CD_M_MCH_TIT.Cancel;
       dmGeral.FIN_CD_M_MCH_TIT.edit;
     finally
       pnlTitulos.Enabled := false;
     end;
  end;
end;

end.
