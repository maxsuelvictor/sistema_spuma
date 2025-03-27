unit FAT_UN_M_PNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Datasnap.DBClient,
  vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, Vcl.DBCGrids, System.Math,
  Vcl.DBCtrls, vcl.wwdblook, dxGDIPlusClasses, Vcl.DBGrids, JvExStdCtrls,
  JvEdit, JvValidateEdit, Vcl.Buttons, Vcl.Menus, frxClass, frxExportPDF,
  frxDBSet, JvExMask, JvToolEdit, frxExportXLS;

type
  TFAT_FM_M_PNF = class(TForm)
    pnlPrincipal: TPanel;
    dso: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtCodBarra: TwwDBEdit;
    Label1: TLabel;
    txtTotalGeral: TwwDBEdit;
    imgLogo: TImage;
    Label7: TLabel;
    lblTitulo: TLabel;
    Label9: TLabel;
    lblF2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dsoIte: TDataSource;
    dsoTit: TDataSource;
    grdCupom: TDBCtrlGrid;
    Panel1: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    txtDesc: TDBText;
    txtQdt: TDBText;
    txtUnid: TDBText;
    txtVlUnd: TDBText;
    txtVlItem: TDBText;
    Label23: TLabel;
    pnlDesconto: TPanel;
    Label24: TLabel;
    txtMensagem: TEdit;
    pnlPagamento: TPanel;
    Label6: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    grdFpg: TwwDBGrid;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    txtTotalPag: TDBText;
    txtDescont: TDBText;
    txtBarra: TDBText;
    Label31: TLabel;
    pnlItem: TPanel;
    Label33: TLabel;
    btnExcluirItem: TButton;
    Label34: TLabel;
    wwDBEdit1: TwwDBEdit;
    pnlQtde: TPanel;
    Label35: TLabel;
    txtSaldo: TJvValidateEdit;
    pnTitulos: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    txtQtd: TEdit;
    Label32: TLabel;
    grdFpgIButton: TwwIButton;
    Label8: TLabel;
    txtTroco: TJvValidateEdit;
    txtValorTit: TJvValidateEdit;
    cbbFormaPagamento: TComboBox;
    txtPago: TJvValidateEdit;
    txtQtde: TJvValidateEdit;
    txtVlrUnit: TJvValidateEdit;
    txtTotal: TJvValidateEdit;
    txtDescricaoItem: TLabel;
    txtItem: TDBText;
    txtQtdeItem: TJvValidateEdit;
    pmApoio: TPopupMenu;
    Imprimirdocumentos1: TMenuItem;
    FAT_FD_M_PED: TfrxDBDataset;
    CAD_FD_C_PAR: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    FAT_FD_M_PED_ITE: TfrxDBDataset;
    BUS_FD_C_CLI: TfrxDBDataset;
    FAT_FD_M_PED_TIT: TfrxDBDataset;
    FAT_FR_M_PED: TfrxReport;
    txtItemExc: TEdit;
    Label10: TLabel;
    txtDescontoPed: TwwDBEdit;
    Label36: TLabel;
    pnlCliente: TPanel;
    Label37: TLabel;
    txtCliente: TJvComboEdit;
    lblCliente: TLabel;
    txtDesconto: TJvValidateEdit;
    pnlCheque: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    txtBanco: TEdit;
    txtAgencia: TEdit;
    txtContaCorr: TEdit;
    txtNroChq: TEdit;
    txtEmitenteChq: TEdit;
    btnOk: TButton;
    txtVencimento: TJvDateEdit;
    Label43: TLabel;
    txtTotalBruto: TwwDBEdit;
    Label44: TLabel;
    FAT_DB_M_NFE_DUP: TfrxDBDataset;
    FAT_DB_M_NFE_CLI_DUP: TfrxDBDataset;
    FAT_PD_M_NFE_DUP: TfrxPDFExport;
    FAT_XL_M_NFE_DUP: TfrxXLSExport;
    FAT_FR_M_NFE_DUP: TfrxReport;
    FAT_FR_M_NFE_PRO: TfrxReport;
    FAT_FR_M_PED_40C: TfrxReport;
    Label45: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure txtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtCodBarraExit(Sender: TObject);
    procedure txtVlrUnitsExit(Sender: TObject);
    procedure txtCodBarraEnter(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure txtValorTitExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure txtQtdExit(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure pnlItemExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtQtdesExit(Sender: TObject);
    procedure txtQtdesEnter(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure grdFpgIButtonClick(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure txtQtdeItemExit(Sender: TObject);
    procedure Imprimirdocumentos1Click(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtItemExcKeyPress(Sender: TObject; var Key: Char);
    procedure txtDescontoEnter(Sender: TObject);
    procedure txtDescontoExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtItemExcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlChequeExit(Sender: TObject);
    procedure txtQtdeItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GerarFormaPagto(id_forma_pagto: string; qtde: integer; valor: Currency; cds: TClientDataSet );
    procedure GravarItem;
    procedure PreencherFormaPgt;
    procedure NovoRegTit;
    function  ValidDadosGrav: Boolean;
    procedure AtualTotaisPagamento;
    procedure ExibirTroco(VlrDinheiro: Currency);
    procedure AtualizarSeqItem;
    procedure AtualizarSeqTit;
    procedure LimparPedido;
    { Private declarations }
  public
    { Public declarations }
    xSeqItem: integer;
    procedure ImprimirDocumentos;
  end;

var
  FAT_FM_M_PNF: TFAT_FM_M_PNF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, FAT_RN_M_PED, FAT_RN_M_NFE, FAT_RN_M_CXA, enFunc,
  FAT_UN_M_PNF_IMP,uProxy, PSQ_UN_X_CLI, Unit1, FIN_RN_M_CXA;

procedure TFAT_FM_M_PNF.AtualizarSeqItem;
var
  SMPrincipal : TSMClient;
  i: integer;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_ITE',dmGeral.FAT_CD_M_PED_ITE.RecordCount);
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_PED_ITE.cancel;
  dmGeral.FAT_CD_M_PED_ITE.First;
  while not dmGeral.FAT_CD_M_PED_ITE.eof do
     begin
        dmGeral.FAT_CD_M_PED_ITE.edit;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger := i ;
        dmGeral.FAT_CD_M_PED_ITE.Post;
        inc(i);
        dmGeral.FAT_CD_M_PED_ITE.Next;
     end;
end;

procedure TFAT_FM_M_PNF.AtualizarSeqTit;
var
  SMPrincipal : TSMClient;
  i: integer;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_TIT',dmGeral.FAT_CD_M_PED_TIT.RecordCount);
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_PED_TIT.cancel;
  dmGeral.FAT_CD_M_PED_TIT.First;
  while not dmGeral.FAT_CD_M_PED_TIT.eof do
     begin

        dmGeral.FAT_CD_M_PED_TIT.edit;
        dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger := i ;
        //showmessage(dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_maquineta').AsString);
        dmGeral.FAT_CD_M_PED_TIT.Post;
        inc(i);
        dmGeral.FAT_CD_M_PED_TIT.Next;
     end;
end;

procedure TFAT_FM_M_PNF.AtualTotaisPagamento;
var
  pago: Currency;
begin
  pago := 0;
  dmGeral.FAT_CD_M_PED_TIT.First;
  while not dmGeral.FAT_CD_M_PED_TIT.eof do
     begin
       pago := pago + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
       dmGeral.FAT_CD_M_PED_TIT.Next;
     end;
  dmGeral.FAT_CD_M_PED_TIT.First;
  txtPago.value  := pago;
  txtSaldo.Value := dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency - txtPago.Value;
end;

procedure TFAT_FM_M_PNF.btnCancelarClick(Sender: TObject);
begin
  dmGeral.FAT_CD_M_PED_TIT.First;
  while not dmGeral.FAT_CD_M_PED_TIT.Eof do
    begin
      dmGeral.FAT_CD_M_PED_TIT.Delete;
    end;
  pnlPagamento.visible := False;
  txtCodBarra.SetFocus;
end;

procedure TFAT_FM_M_PNF.btnConfirmarClick(Sender: TObject);
var
retorno,codigo : integer;
begin
     { dmGeral.FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency :=
        dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency -
           dmGeral.FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency;

      dmGeral.FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency :=
        dmGeral.FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency /
          dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency * 100; }
   if not FAT_CD_M_PED_TesCampos then
      begin
        exit;
      end;

   if FatExisteTitAprazo  then
      begin
        if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text =  dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cliente').Text then
           begin
              txtCliente.Text := '';
              lblCliente.Caption := '';
              pnlCliente.Visible  := true;
              txtCliente.SetFocus;
              exit;
           end
        else
           begin
             dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);
             if Dc_MessageDlgCheck('Cliente: ' + dmGeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString + '-'+
                                                 copy(dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString,1,30)+
                                    #13 + 'Deseja trocar o cliente?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', nil) <> 7 then
                begin
                  txtCliente.Text     := '';
                  lblCliente.Caption  := '';
                  pnlCliente.Visible  := true;
                  txtCliente.SetFocus;
                  dmGeral.BUS_CD_C_CLI.close;
                  exit;
                end;
           end;
      end;

   if MessageDlg('Deseja encerrar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          Screen.Cursor := crHourGlass;
          try

          NovoRegTit;
          dmGeral.FAT_CD_M_PED_TIT.cancel;
          if not FAT_RN_M_PED.FatValidaTitPNF then
             begin
               ShowMessage('Total de formas de pagamento ultrapassou o valor do pedido de venda.');
               abort;
             end;

          AtualizarSeqItem;
          AtualizarSeqTit;

          codigo :=  dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;

          if dmGeral.FAT_CD_M_PED.ApplyUpdates(0) = 0 then
             begin
               {dmGeral.BUS_CD_M_NFE_CXA.Close;
               dmGeral.BUS_CD_M_NFE_CXA.Data :=
                 dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                    VarArrayOf([9,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, 'S', codigo]));

               dmGeral.BUS_CD_M_NFE_CXA.Edit;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString        := 'X';
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger     := 0;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean    := true;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ABERTURA').AsInteger :=
                       dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger  :=
                       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger;

               FAT_RN_M_NFE.FatGravarNumParcNfe(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_TIT_CXA);

               try
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                     begin
                       ShowMessage('Gravado com sucesso.');
                     end;

               except
                  on e: Exception do
                      begin
                        ShowMessage('Erro ao tentar encerrar a nota fiscal: ' + e.Message);
                        dmGeral.FAT_CD_M_PED.Close;
                        dmGeral.FAT_CD_M_PED.Data :=
                          dmGeral.FAT_CD_M_PED.DataRequest(
                            VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));
                        if not dmGeral.FAT_CD_M_PED.IsEmpty then
                           begin
                             dmGeral.FAT_CD_M_PED.delete;
                           end;
                      end;
               end;   }
               ShowMessage('Gravado com sucesso.');
               FAT_RN_M_CXA.FatAtuDadosTelaCxa;
               frmNFCe := TfrmNFCe.Create(Self);
               frmNFCe.ShowModal;
               frmNFCe.Free;

             end;
          finally
             Screen.Cursor := crDefault;
          end;

          pnlPagamento.visible := False;
          pnlPrincipal.Enabled := False;

          dmGeral.FAT_CD_M_PED.Close;
          dmGeral.FAT_CD_M_PED.Data :=
             dmGeral.FAT_CD_M_PED.DataRequest(
                            VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));


          if not dmGeral.FAT_CD_M_PED.IsEmpty then
             begin
               dmGeral.BUS_CD_M_NFE_CXA.Close;
               dmGeral.BUS_CD_M_NFE_CXA.Data :=
                 dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                    VarArrayOf([9,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, 'S', codigo]));

               ImprimirDocumentos;

               txtMensagem.Text := 'Pedido encerrado com sucesso!';

               txtDescricaoItem.Caption := '';
               txtQtde.value    := 0;
               txtVlrUnit.value := 0;
               txtTotal.value := 0;

               LimparPedido;

             end
          else
             begin
               txtMensagem.Text := 'ATENÇÃO: Pedido não encontrado!';
             end;
      end
   else
      begin
         pnTitulos.Enabled := true;
         dmGeral.FAT_CD_M_PED_TIT.Append;
         NovoRegTit;
         cbbFormaPagamento.SetFocus;
      end;
end;

procedure TFAT_FM_M_PNF.btnExcluirItemClick(Sender: TObject);
begin

  if txtItemExc.text = '' then
     begin
       ShowMessage('Deve-se preencher cód. da sequencia do item.');
       exit;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.Locate('int_seqitem',txtItemExc.Text,[]) then
    begin
      txtItemExc.Text := '';
      dmGeral.FAT_CD_M_PED_ITE.Delete;
      dmGeral.FAT_CD_M_PED_ITE.cancel;
      pnlItem.visible:= False;


     { inc(xSeqItem);
      dmGeral.FAT_CD_M_PED_ITE.Append;
      dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_seqitem').AsInteger      := xSeqItem; }

      txtDescricaoItem.Caption := '';
      txtQtde.value    := 1;
      txtVlrUnit.value := 0;
      txtTotal.value   := 0;
      txtCodBarra.SetFocus;
    end
  else
     begin
       showMessage('Item não encontrado!');
       pnlItem.visible:= False;
       txtCodBarra.SetFocus;
     end;
end;

procedure TFAT_FM_M_PNF.btnOkClick(Sender: TObject);
var
   mens: String;
begin
  mens := '';

  if (trim(txtVencimento.text) = '')  then
      mens := mens + 'Vencimento' + #13;
  if (trim(txtBanco.Text)     = '') then
      mens := mens + 'Banco' + #13;
  if (trim(txtAgencia.Text)   = '') then
      mens := mens + 'Agência' + #13;
  if (trim(txtContaCorr.Text) = '')  then
      mens := mens + 'Conta corrente' + #13;
  if (trim(txtNroChq.Text) = '') or (txtNroChq.Text = '0')   then
      mens := mens + 'Número' + #13;
  if (trim(txtEmitenteChq.Text) = '')  then
      mens := mens + 'Emitente' + #13;

  if trim(mens) <> '' then
     begin
       ShowMessage('Campos obrigatórios: ' + #13 + mens);
       abort;
     end;

  pnlCheque.visible := False;
  pnTitulos.Enabled := true;
  txtValorTit.SetFocus;
end;

procedure TFAT_FM_M_PNF.cbbFormaPagamentoEnter(Sender: TObject);
begin
  PreencherFormaPgt;
end;

procedure TFAT_FM_M_PNF.cbbFormaPagamentoExit(Sender: TObject);
var
  IdFormaPag: String;
begin
  if btnConfirmar.Focused or btnCancelar.Focused then
     exit;

  if (grdFpg.Focused) or
     (not ((txtValorTit.Focused)))  then
     begin
       exit;
     end;

  if trim(cbbFormaPagamento.Text) = '' then
     begin
       dmGeral.FAT_CD_M_PED_TIT.Cancel;
       btnConfirmar.SetFocus;
       abort;
     end;

  txtQtd.text    := '0';
  txtQtd.enabled := true;
  txtQtd.Color   := clWhite;
  //IdFormaPag  := trim(copy(cbbFormaPagamento.Text,1,pos(' - ',cbbFormaPagamento.Text)-1));
  //showmessage(trim(copy(cbbFormaPagamento.Text,pos(' - ',cbbFormaPagamento.Text)+3,3)));

  IdFormaPag  := trim(copy(cbbFormaPagamento.Text,pos(' - ',cbbFormaPagamento.Text)+3,3));
  dmGeral.BusFormaPgtos(0,IdFormaPag);
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,6,8] then
     begin
       txtQtd.text    := '1';
       txtQtd.enabled := false;
       txtQtd.Color   := $00DADADA;

       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
          begin
            txtVencimento.text  := '';
            txtBanco.Text       := '';
            txtAgencia.Text     := '';
            txtContaCorr.Text   := '';
            txtNroChq.Text      := '';
            txtEmitenteChq.Text := '';
            pnlCheque.Visible := true;
            txtVencimento.SetFocus;
          end;
     end;
end;

procedure TFAT_FM_M_PNF.ExibirTroco(VlrDinheiro: Currency);
Var
  TotalGeral,TotFpgApr, TotFpgDinheiro: Currency;
begin
  TotFpgApr := 0;
  TotFpgDinheiro := 0;
  TotalGeral := 0;

  dmGeral.FAT_CD_M_PED_TIT.cancel;


  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString);
            if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger <> 5 then
               begin
                 TotFpgApr := TotFpgApr + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
               end
            else
               begin
                 TotFpgDinheiro := TotFpgDinheiro + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
               end;
            TotalGeral := TotalGeral + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;
     end;
  txtTroco.value := 0;
  if TotFpgApr = 0 then
     begin
        if VlrDinheiro > 0 then
           begin
             if VlrDinheiro > dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
                begin
                  txtTroco.value :=  VlrDinheiro - dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency;
                end;
           end;
     end
  else
     begin
       if (TotFpgApr + VlrDinheiro) > dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             txtTroco.value :=  VlrDinheiro - (dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency - TotFpgApr);
           end;
     end;
end;

procedure TFAT_FM_M_PNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  dmGeral.FAT_CD_M_PED_ITE.OnNewRecord := dmGeral.FAT_CD_M_PED_ITENewRecord;
  dmGeral.FAT_CD_M_PED_TIT.OnNewRecord := dmGeral.FAT_CD_M_PED_TITNewRecord;

  dmGeral.FAT_CD_M_PED_TIT.BeforePost := dmGeral.FAT_CD_M_PED_TITBeforePost;

  dmGeral.FAT_CD_M_PED.Close;
  FreeAndNil(FAT_FM_M_PNF);
end;

procedure TFAT_FM_M_PNF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) then
     begin
       ShowMessage('Você deve Cancelar ou Gravar a operação.');
       canClose := false;
     end;
end;

procedure TFAT_FM_M_PNF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cliente').AsString = '') then
    begin
      if key = vk_f2 then
        begin
          if not (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) then
            begin
              pnlPrincipal.Enabled :=  True;
              dmGeral.FAT_CD_M_PED.Insert;
              dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text :=
                      dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cliente').Text;
              dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);
              dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEEST').Text :=
                      dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
              dmGeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger  := 2;
              dmGeral.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
              dmGeral.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger   := xFuncionario;
              dmGeral.FAT_CD_M_PED.FieldByName('id_vendedor').AsInteger    := xFuncionario;
              dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger     :=
                      dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
              dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime    := xDataSis;
              dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger   :=
                      dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ecf_id_tipo_mov_estoque').AsInteger;
              dmGeral.FAT_CD_M_PED.FieldByName('id_condicao_pag').AsInteger :=
                      dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ecf_id_condicao_pag').AsInteger;

              dmGeral.BusCondPgto(0,dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ecf_id_condicao_pag').AsString); // Busca as condições de pagamento que constam na tabela

               // parametrizar
              dmGeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger           := 0;  // Em aberto
              dmGeral.FAT_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger := 1;  // Aprovado

              dmGeral.FAT_CD_M_PED.FieldByName('id_abertura').AsInteger           :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;

              dmGeral.FAT_CD_M_PED_ITE.Append;
              xSeqItem := 1;
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_seqitem').AsInteger      := xSeqItem;
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
              //dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsInteger             := 1;

              txtDescricaoItem.Caption := '';
              txtVlrUnit.value := 0;
              txtTotal.value := 0;
              txtCodBarra.SetFocus;
              txtMensagem.Text := ' Pedido aberto!'
            end
          else
            begin
              ShowMessage('Existe pedido em aberto!');
            end;
        end;

      if key = vk_f4 then
        begin
          if (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) then
            begin
              pnlDesconto.visible := true;
              txtDesconto.Value := dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;
              txtDesconto.SetFocus;
            end;
        end;

      if key = vk_f5 then
        begin
          if (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) and
            (dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsString <> '') then
            begin
              pnTitulos.Enabled := true;
              pnlPagamento.Visible := True;
              dmGeral.FAT_CD_M_PED_TIT.Insert;
              txtSaldo.value := dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;
              txtPago.Value  := 0;
              txtTroco.Value := 0;
              AtualTotaisPagamento;
              NovoRegTit;
              cbbFormaPagamento.SetFocus;
            end;
        end;

      if key = vk_f7 then
        begin
          if (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) then
            begin
              if MessageDlg('Deseja cancelar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                  pnlPrincipal.Enabled := False;
                  dmGeral.FAT_CD_M_PED.Cancel;
                  LimparPedido;
                  txtDescricaoItem.Caption := '';
                  txtQtde.value := 1;
                  txtVlrUnit.value := 0;
                  txtTotal.value := 0;
                  txtMensagem.Text := 'Pedido cancelado!'
                end;
            end;
        end;

      if key = vk_f9 then
         begin
            if (dmGeral.FAT_CD_M_PED.State in [dsBrowse]) and
               (dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsString <> '') then
                begin
                  frmNFCe := TfrmNFCe.Create(Self);
                  frmNFCe.ShowModal;
                  frmNFCe.Free;
                end;
         end;

      if key = vk_f6 then
        begin
          dmGeral.FAT_CD_M_PED_ITE.Cancel;
          pnlItem.Visible := true;
          txtItemExc.text := '';
          txtItemExc.SetFocus;
        end;

      if key = vk_f11 then
         begin
           if pnlPagamento.Visible = true then
              begin
                pnlCheque.Visible := false;
                pnTitulos.Enabled := true;
                dmGeral.FAT_CD_M_PED_TIT.Append;
                NovoRegTit;
                cbbFormaPagamento.SetFocus;
              end;
         end;
    end
  else
    begin
      ShowMessage('Parâmetro do consumidor final não especificado!');
    end;
end;

procedure TFAT_FM_M_PNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       if pnlCheque.Visible then
          begin
            pnlCheque.Visible := false;
            pnTitulos.Enabled := true;
            cbbFormaPagamento.SetFocus;
            exit;
          end
       else
           if pnlDesconto.Visible or pnlPagamento.Visible or pnlItem.Visible or pnlCliente.Visible then
              begin
                pnlDesconto.Visible := false;
                pnlPagamento.Visible := false;
                pnlItem.Visible := false;
                pnlCliente.Visible := false;
                if txtCodBarra.CanFocus then
                   txtCodBarra.SetFocus;

              end
           else
              begin
                if (dmGeral.FAT_CD_M_PED.State in [dsInsert, dsEdit]) then
                    begin
                      if MessageDlg('Deseja cancelar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
                          pnlPrincipal.Enabled := False;
                          dmGeral.FAT_CD_M_PED.Cancel;
                          LimparPedido;
                          txtDescricaoItem.Caption := '';
                          txtQtde.Value := 0;
                          txtVlrUnit.value := 0;
                          txtTotal.value := 0;
                          txtMensagem.Text := 'Pedido cancelado!'
                        end;
                    end
                else
                   begin
                     Close;
                   end;
              end;

     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TFAT_FM_M_PNF.FormShow(Sender: TObject);
begin

  FAT_FM_M_PNF.Width := 875;

  txtDescricaoItem.Caption := '';

  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
    dmGeral.FAT_CD_M_PED.DataRequest(
      VarArrayOf([0, '']));

  pnldesconto.Left := Round((pnlPrincipal.Width - pnldesconto.Width)/2);
  pnldesconto.Top := Round((pnlPrincipal.Height - pnldesconto.Height)/2);

  pnlPagamento.Left := Round((pnlPrincipal.Width - pnlPagamento.Width)/2);
  pnlPagamento.Top := Round((pnlPrincipal.Height - pnlPagamento.Height)/2);

  pnlItem.Left := Round((pnlPrincipal.Width - pnlItem.Width)/2);
  pnlItem.Top := Round((pnlPrincipal.Height - pnlItem.Height)/2);

  pnlQtde.Left := Round((pnlPrincipal.Width - pnlQtde.Width)/2);
  pnlQtde.Top := Round((pnlPrincipal.Height - pnlQtde.Height)/2);

  pnlCliente.Left := Round((pnlPrincipal.Width - pnlCliente.Width)/2);
  pnlCliente.Top := Round((pnlPrincipal.Height - pnlCliente.Height)/2);

  pnlCheque.Left := Round((pnlPrincipal.Width - pnlCheque.Width)/2);
  pnlCheque.Top := Round((pnlPrincipal.Height - pnlCheque.Height)/2);


  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));
  if dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
       ShowMessage('Caixa fechado.');
       dmGeral.FIN_CD_M_CXA.Close;
       FAT_FM_M_PNF.OnKeyDown := nil;
       lblF2.Font.Color := clRed;
     end
  else
     begin
       if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <> xDataSis then
          begin
            ShowMessage('É preciso que abra o caixa com a data do dia!' + #13 +
                        'A data do caixa aberto está diferente da data de hoje!');
            dmGeral.FIN_CD_M_CXA.Close;
            FAT_FM_M_PNF.OnKeyDown := nil;
            lblF2.Font.Color := clRed;
          end;
     end;

  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cliente').AsString = '' then
     begin
        ShowMessage('Parâmetro do consumidor final não especificado!');
        FAT_FM_M_PNF.OnKeyDown := nil;
        lblF2.Font.Color := clRed;
     end;
  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ecf_id_tipo_mov_estoque').AsString = '' then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado nos parâmetros!');
       FAT_FM_M_PNF.OnKeyDown := nil;
       lblF2.Font.Color := clRed;
     end;
  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ecf_id_condicao_pag').AsString = '' then
     begin
       ShowMessage('Condição de pagamento não encontrado nos parâmetros!');
       FAT_FM_M_PNF.OnKeyDown := nil;
       lblF2.Font.Color := clRed;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
     begin
       if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsString) = '' then
          begin
            ShowMessage('O sistema está configurado para trabalhar com apenas 1 maquineta, mas não foi encontrado o ' +
                        'código da máquina padrão.');
            FAT_FM_M_PNF.OnKeyDown := nil;
            lblF2.Font.Color := clRed;
          end;
     end;

  dmGeral.FAT_CD_M_PED_ITE.OnNewRecord := nil;
  dmGeral.FAT_CD_M_PED_TIT.OnNewRecord := nil;
  dmGeral.FAT_CD_M_PED_TIT.BeforePost :=  nil;

end;

procedure TFAT_FM_M_PNF.GerarFormaPagto(id_forma_pagto: string; qtde: integer; valor: Currency; cds: TClientDataSet);
  var
  I: integer;
  Saldo_Rest,Soma: Currency;
  vlrTitulo: Currency;

begin
  Soma := 0;
  vlrTitulo := 0;

  Saldo_Rest := txtSaldo.Value;
  if Saldo_Rest = 0 then
    begin
      ShowMessage('Quitado!');
      abort;
    end;


  for i := 1 to qtde do
      begin
        cds.Insert;

        // O id_titulo é gerado no OnNewRecord do cds.

        cds.FieldByName('ID_FORMA_PAG').AsInteger    := strtoint(id_forma_pagto);

        dmGeral.BusFormaPgtos(0,cds.FieldByName('ID_FORMA_PAG').text);
        cds.FieldByName('int_nomefpg').AsString      := dmgeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

        if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,8] then
          cds.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis
        else
          if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6 then
             cds.FieldByName('DTA_VENCIMENTO').AsDateTime := (xDataSis + (i * 30));

        if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6 then
           begin
              cds.FieldByName('DIAS').AsInteger            :=  i * 30;
              cds.FieldByName('CHE_BANCO').text            := '';
              cds.FieldByName('CHE_AGENCIA').text          := '';
              cds.FieldByName('CHE_CONTA').AsString        := '';
              cds.FieldByName('CHE_NUMERO').AsInteger      :=  0;
              cds.FieldByName('CHE_EMITENTE').text         := '';
           end
        else
           begin
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := txtVencimento.Date;
             cds.FieldByName('DIAS').AsFloat :=  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime  -
                                                 dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').text        := txtBanco.Text;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').text      := txtAgencia.Text;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsString    := txtContaCorr.Text;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').text       := txtNroChq.Text;
             dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').text     := txtEmitenteChq.Text;
           end;

        if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 3 then    // Cartão
           begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
                begin
                  cds.FieldByName('ID_MAQUINETA').AsInteger :=
                          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                end;
           end;

        if (dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 5) and
           (dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 8) then
           begin
              if i < qtde then
                 begin
                   vlrTitulo := RoundTo(Valor / qtde,-2);
                   soma := soma + RoundTo(Valor / qtde,-2);
                 end
              else
                 begin
                   vlrTitulo := Valor - Soma;
                 end;
           end
        else
           begin
             if Valor > txtSaldo.value then
                begin
                  vlrTitulo := txtSaldo.value;
                end
             else
                begin
                  vlrTitulo := valor;
                end;
           end;

        cds.FieldByName('VLR_TITULO').AsCurrency     := vlrTitulo;

        cds.Post;

        txtVencimento.text  := '';
        txtBanco.Text       := '';
        txtAgencia.Text     := '';
        txtContaCorr.Text   := '';
        txtNroChq.Text      := '';
        txtEmitenteChq.Text := '';
      end;

  txtPago.Value := 0;
  cds.First;
  while not cds.eof do
     begin
       txtPago.Value := txtPago.Value + cds.FieldByName('VLR_TITULO').AsCurrency;
       cds.Next;
     end;
  cds.First;
end;

procedure TFAT_FM_M_PNF.GravarItem;
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
  i: integer;
begin
   if (grdCupom.Focused) or (pnlPrincipal.Enabled = False) or
      (pnlPagamento.Visible) or (pnldesconto.Visible) or (pnlItem.Visible) then
       exit;

   dmGeral.BUS_CD_C_ITE.Close;
   if (trim(txtCodBarra.Text) = '') or (trim(txtCodBarra.Text) = '0')  then
      begin
        ShowMessage('O campo "Código de barra" deve ser preenchido!');
        {if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert, dsEdit]) then
            dmGeral.FAT_CD_M_PED_ITE.Insert;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := ''; }
        txtCodBarra.SetFocus;
        abort;
      end;

 //  dmGeral.BUS_CD_C_ITE.Data :=
   //   dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtCodBarra.Text]));
    // Por código do item
    dmGeral.BUS_CD_C_ITE.Data :=
      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtCodBarra.Text]));

   if dmGeral.BUS_CD_C_ITE.IsEmpty then
      begin
        ShowMessage('Item não encontrado!');
        {if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert, dsEdit]) then
            dmGeral.FAT_CD_M_PED_ITE.Insert;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := ''; }
        txtCodBarra.text := '';
        txtCodBarra.SetFocus;
        abort;
      end;

   //dmGeral.BUS_CD_M_FES.DataRequest(
   //   VarArrayOf([90,dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').Text]));

   if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert, dsEdit]) then
      begin
        dmGeral.FAT_CD_M_PED_ITE.Insert;
        inc(xSeqItem);
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_seqitem').AsInteger      := xSeqItem;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := txtCodBarra.Text;
      end;


   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString       :=
      dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
      dmGeral.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text       :=
           dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
      dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency := txtQtde.value;


   if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                          dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text,
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                          dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').Text,
                                          'V') then
      begin
        Showmessage('A tributação do item não foi encontrada');
        txtCodBarra.SetFocus;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text          := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text      := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text    := '';
        dmGeral.FAT_CD_M_PED_ITE.Cancel;
        abort;
      end;




   if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
      begin
        if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                             saldo_fisico) then
           begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                begin
                   Showmessage('O registro de saldo não foi encontrado');
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.Cancel;
                   txtCodBarra.SetFocus;
                   abort;
                end
             else
               // txtSaldo.Text := '0';
           end
        else
           begin
             //txtSaldo.Text := saldo_fisico;
           end;
      end;


  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency = 0 then
     dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency  := 1;

  {if not (dmGeral.TesValVlrUnitPed(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnit.SetFocus;
       abort;
     end;}
  txtDescricaoItem.Caption :=
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString + ' - ' +
                    dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
  txtQtde.value    := dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
  txtVlrUnit.value := dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency;
  txtTotal.value   := dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;;

  dmGeral.FAT_CD_M_PED_ITE.Post;

  //i := dmGeral.FAT_CD_M_PED_ITE.RecordCount;

  {inc(xSeqItem);
  dmGeral.FAT_CD_M_PED_ITE.Append;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_seqitem').AsInteger      := xSeqItem;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0; }

  txtCodBarra.text := '';
  txtQtde.value := 1;
  txtCodBarra.SetFocus;
end;



procedure TFAT_FM_M_PNF.pnlChequeExit(Sender: TObject);
begin
  if pnlPagamento.Focused then
   begin
     pnlCheque.Visible := false;
     exit;
   end;
end;

procedure TFAT_FM_M_PNF.pnlItemExit(Sender: TObject);
begin
  pnlItem.Visible := False;
end;

procedure TFAT_FM_M_PNF.pnTitulosExit(Sender: TObject);
begin
  if (grdFpg.Focused) or
     (not grdFpgIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             btnCancelarClick(sender);
             exit;
           end;

        if btnConfirmar.Focused  then
           begin
              btnConfirmarClick(sender);
              exit;
           end;

        dmGeral.FAT_CD_M_PED_TIT.Cancel;
        dmGeral.FAT_CD_M_PED_TIT.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_PNF.PreencherFormaPgt;
begin
  // Operador ------------------------------------------------------------------
  dmGeral.BusFormaPgtos(1,'%');
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FPG.IndexFieldNames := 'DESCRICAO';
       dmGeral.BUS_CD_C_FPG.First;
       while not dmGeral.BUS_CD_C_FPG.eof do
          begin
            cbbFormaPagamento.Items.Add(dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString+' - ' +
                                        StrZero(dmGeral.BUS_CD_C_FPG.FieldByName('id_forma_pag').AsFloat,3,0));
            dmGeral.BUS_CD_C_FPG.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FPG.Close;

end;

procedure TFAT_FM_M_PNF.txtClienteButtonClick(Sender: TObject);
begin
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtCliente.Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

           dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_PNF.txtClienteExit(Sender: TObject);
begin

  lblCliente.Caption := '';

  if (trim(txtCliente.Text) = '') or (trim(txtCliente.Text) = '0') then
     begin
       ShowMessage('Cliente deverá ser informado devido existir forma de pagamento a prazo.');
       pnlCliente.Visible := false;
       pnTitulos.Enabled := true;
       dmGeral.FAT_CD_M_PED_TIT.Append;
       NovoRegTit;
       cbbFormaPagamento.SetFocus;
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       txtCliente.SetFocus;
       exit;
     end;
  lblCliente.Caption :=  dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString := txtCliente.Text;

  pnlCliente.Visible := false;

  btnConfirmarClick(sender);

end;

procedure TFAT_FM_M_PNF.txtCodBarraEnter(Sender: TObject);
begin
  txtCodBarra.Text := '';
end;

procedure TFAT_FM_M_PNF.txtCodBarraExit(Sender: TObject);
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin



 {  if (grdCupom.Focused) or (pnlPrincipal.Enabled = False) or
      (pnlPagamento.Visible) or (pnldesconto.Visible) or (pnlItem.Visible) then
       exit;

   dmGeral.BUS_CD_C_ITE.Close;
   if (trim(txtCodBarra.Text) = '') or (trim(txtCodBarra.Text) = '0')  then
      begin
        ShowMessage('O campo "Código de barra" deve ser preenchido!');
        txtCodBarra.SetFocus;
        abort;
      end;

   dmGeral.BUS_CD_C_ITE.Data :=
      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtCodBarra.Text]));

   if dmGeral.BUS_CD_C_ITE.IsEmpty then
      begin
        ShowMessage('Item não encontrado!');
        txtCodBarra.SetFocus;
        abort;
      end;

   //dmGeral.BUS_CD_M_FES.DataRequest(
   //   VarArrayOf([90,dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').Text]));

   if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert, dsEdit]) then
      begin
        dmGeral.FAT_CD_M_PED_ITE.Insert;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := txtCodBarra.Text;
      end;


   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString       :=
      dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
      dmGeral.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text       :=
           dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
      dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;


   if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                          dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text,
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                          dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').Text,
                                          'V') then
      begin
        Showmessage('A tributação do item não foi encontrada');
        txtCodBarra.SetFocus;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text          := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text      := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text := '';
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text    := '';
        abort;
      end;




   if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
      begin
        if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                             saldo_fisico) then
           begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                begin
                   Showmessage('O registro de saldo não foi encontrado');
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString := '';
                   txtCodBarra.SetFocus;
                   abort;
                end
             else
               // txtSaldo.Text := '0';
           end
        else
           begin
             //txtSaldo.Text := saldo_fisico;
           end;
      end;

  if not (dmGeral.TesValVlrUnitPed(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnit.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_PED_ITE.Post;
  dmGeral.FAT_CD_M_PED_ITE.Append;
  txtCodBarra.SetFocus;   }
end;

procedure TFAT_FM_M_PNF.txtCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if  key = vk_f3 then
      begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
          begin
            {if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert, dsEdit]) then
              begin
                dmGeral.FAT_CD_M_PED_ITE.Insert;
              end; }

            txtCodBarra.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;

            {dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;


            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;}
          end;
        PSQ_FM_X_ITE.Free;
      end;

  if key = vk_f8 then
     begin
        pnlQtde.Visible := true;
        txtQtdeItem.Value := txtQtde.Value;
        txtQtdeItem.SetFocus;
        {FAT_FM_M_PNF_QTD := TFAT_FM_M_PNF_QTD.Create(Self);
        FAT_FM_M_PNF_QTD.ShowModal;
        FreeAndNil(FAT_FM_M_PNF_QTD);
        txtCodBarra.SetFocus;}
     end;

  if ord(key) = vk_return then
     begin
       GravarItem;
     end;
end;

procedure TFAT_FM_M_PNF.txtDescontoEnter(Sender: TObject);
begin
//   txtDesconto.value := 0;
end;

procedure TFAT_FM_M_PNF.txtDescontoExit(Sender: TObject);
begin

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency := StrToCurr(txtDesconto.Text);

  FAT_RN_M_PED.FAT_CD_M_PEDvlr_descontoChange;

  dmGeral.FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency := dmGeral.FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency -
    dmGeral.FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency;
  pnldesconto.visible := False;
end;

procedure TFAT_FM_M_PNF.txtItemExcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = vk_return then
     begin
       ActiveControl := nil;
       PostMessage(btnExcluirItem.Handle, WM_SETFOCUS, 0, 0);
       pnlItem.Visible := true;
       btnExcluirItemClick(self);
     end;
end;

procedure TFAT_FM_M_PNF.txtItemExcKeyPress(Sender: TObject; var Key: Char);
begin
 { if ord(key) = vk_return then
     begin
       btnExcluirItemClick(self);
     end;}
end;

procedure TFAT_FM_M_PNF.txtQtdesEnter(Sender: TObject);
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
  {   if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
      begin
        if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                             saldo_fisico) then
           begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                begin
                   Showmessage('O registro de saldo não foi encontrado');
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString := '';
                   txtCodBarra.SetFocus;
                   abort;
                end
             else
               // txtSaldo.Text := '0';
           end
        else
           begin
             //txtSaldo.Text := saldo_fisico;
           end;
      end;  }
end;

procedure TFAT_FM_M_PNF.txtQtdesExit(Sender: TObject);
begin
{  if (grdCupom.Focused) or (pnlPrincipal.Enabled = False) or (pnlItem.Visible) or (pnlDesconto.Visible) then
      exit;

  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end   }
end;

procedure TFAT_FM_M_PNF.txtQtdeItemExit(Sender: TObject);
begin
  //dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsString := txtQtde.Text;
  if not (dmGeral.TesValQtde(txtQtdeItem.value)) then
     begin
       txtQtdeItem.SetFocus;
       abort;
     end;

 { if not (dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert,dsEdit]) then
     begin
       dmGeral.FAT_CD_M_PED_ITE.Edit;
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency := txtQtdeItem.value; }
  txtQtde.value := RoundTo(txtQtdeItem.value,-4) ;
  txtDescricaoItem.Caption := '';
  txtVlrUnit.value := 0;
  txtTotal.value := 0;
  txtCodBarra.SetFocus;
  pnlQtde.Visible := false;
end;

procedure TFAT_FM_M_PNF.txtQtdeItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {


  }
end;

procedure TFAT_FM_M_PNF.txtQtdExit(Sender: TObject);
var
  VlrDinheiro : Currency;
  IdFormaPag  : String;
begin

  if btnConfirmar.Focused or btnCancelar.Focused or
     txtValorTit.Focused or cbbFormaPagamento.Focused then
     exit;

  if trim(cbbFormaPagamento.text) = '' then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser preenchido.');
       abort;
     end;

  if (txtValorTit.value = 0)  then
      begin
        ShowMessage('O campo "Valor" deve ser preenchido.');
        abort;
      end;

  if (txtQtd.text = '') or (txtQtd.text = '0') then
      begin
        ShowMessage('O campo "Qtde" deve ser preenchido.');
        abort;
      end;

  if (txtSaldo.value = 0) then
      begin
        ShowMessage('Não há mais saldo para poder inserir forma de pagamento.');
        dmGeral.FAT_CD_M_PED_TIT.cancel;
        cbbFormaPagamento.SetFocus;
        abort;
      end;

  VlrDinheiro := 0;

  //IdFormaPag  := trim(copy(cbbFormaPagamento.Text,1,pos(' - ',cbbFormaPagamento.Text)-1));
  IdFormaPag  := trim(copy(cbbFormaPagamento.Text,pos(' - ',cbbFormaPagamento.Text)+3,3));
  dmGeral.BusFormaPgtos(0,IdFormaPag);
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 5 then
     begin
       VlrDinheiro := txtValorTit.value;
     end;

  GerarFormaPagto(IdFormaPag,StrToInt(txtQtd.Text),txtValorTit.Value,dmGeral.FAT_CD_M_PED_TIT);
  //dmGeral.GerarFPG_Doc(IdFormaPag,'','',strtoint(txtQtd.text), dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_PED_TIT,5);

  AtualTotaisPagamento;
  dmGeral.FAT_CD_M_PED_TIT.append;
  cbbFormaPagamento.SetFocus;

  NovoRegTit;

  {GerarFormaPagto(cbbFormaPagamento.Text,StrToInt(txtqtd.Text),StrToCurr(txtvalortit.Text),dmGeral.FAT_CD_M_PED_TIT);

  dmGeral.FAT_CD_M_PED_TIT.First;
  while not dmGeral.FAT_CD_M_PED_TIT.Eof do
    begin
      Pago := Pago + dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency;
      dmGeral.FAT_CD_M_PED_TIT.Next;
    end;
  txtPago.Caption := CurrToStr(Pago); }
end;

procedure TFAT_FM_M_PNF.txtValorTitExit(Sender: TObject);
var
  VlrDinheiro: Currency;
  IdFormaPag: String;
begin

  if btnConfirmar.Focused or btnCancelar.Focused then
     exit;

  if (grdFpg.Focused) or (cbbFormaPagamento.Focused)   then
     begin
       exit;
     end;

  if not (dmGeral.TesValVlr(txtValorTit.Value)) then
     begin
       txtValorTit.SetFocus;
       abort;
     end;

  if (txtSaldo.value = 0) then
      begin
        ShowMessage('Não há mais saldo para poder inserir forma de pagamento.');
        txtValorTit.value := 0;
        cbbFormaPagamento.text :='';
        cbbFormaPagamento.SetFocus;
        dmGeral.FAT_CD_M_PED_TIT.cancel;
        exit;
      end;

  VlrDinheiro := 0;
  //IdFormaPag  := trim(copy(cbbFormaPagamento.Text,1,pos(' - ',cbbFormaPagamento.Text)-1));
  IdFormaPag  := trim(copy(cbbFormaPagamento.Text,pos(' - ',cbbFormaPagamento.Text)+3,3));
  dmGeral.BusFormaPgtos(0,IdFormaPag);
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,8] then // Dinheiro, pix
     begin
       if not ValidDadosGrav then
          begin
            txtValorTit.SetFocus;
          end;

       VlrDinheiro := txtValorTit.Value;

       GerarFormaPagto(IdFormaPag,StrToInt(txtQtd.Text),txtValorTit.Value,dmGeral.FAT_CD_M_PED_TIT);
       //dmGeral.GerarFPG_Doc(IdFormaPag,'','',
       //                     strtoint(txtQtd.text), dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_PED_TIT,5);

       ExibirTroco(VlrDinheiro);


       AtualTotaisPagamento;
       dmGeral.FAT_CD_M_PED_TIT.append;
       cbbFormaPagamento.SetFocus;

       NovoRegTit;

     end;

   if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then // Cheque
     begin
       if not ValidDadosGrav then
          begin
            txtValorTit.SetFocus;
            exit;
          end;

       GerarFormaPagto(IdFormaPag,StrToInt(txtQtd.Text),txtValorTit.Value,dmGeral.FAT_CD_M_PED_TIT);
       //dmGeral.GerarFPG_Doc(IdFormaPag,'','',
       //                     strtoint(txtQtd.text), dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_PED_TIT,5);

       AtualTotaisPagamento;
       dmGeral.FAT_CD_M_PED_TIT.append;
       cbbFormaPagamento.SetFocus;

       NovoRegTit;

     end;

  if not ValidDadosGrav then
     begin
       txtValorTit.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_PNF.txtVencimentoExit(Sender: TObject);
begin
  if txtVencimento.Text <> '  /  /    ' then
     begin
       if txtVencimento.Date < dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime then
          begin
            ShowMessage('Data de vencimento do cheque não pode ser menor que a data do pedido de venda.');
            txtVencimento.SetFocus;
            abort;
          end;
     end;
end;

procedure TFAT_FM_M_PNF.txtVlrUnitsExit(Sender: TObject);
begin
{  if (grdCupom.Focused) or (pnlPrincipal.Enabled = False) or (txtQtde.Focused) or (pnlItem.visible) or (pnldesconto.visible) then
     exit;


  if not (dmGeral.TesValVlrUnitPed(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnit.SetFocus;
       abort;
     end;


  dmGeral.FAT_CD_M_PED_ITE.Post;

  dmGeral.FAT_CD_M_PED_ITE.Append;

  txtCodBarra.SetFocus;       }

end;

function TFAT_FM_M_PNF.ValidDadosGrav: boolean;
var
  IdFormaPag: String;
begin
  //IdFormaPag  := trim(copy(cbbFormaPagamento.Text,1,pos(' - ',cbbFormaPagamento.Text)-1));
  IdFormaPag  := trim(copy(cbbFormaPagamento.Text,pos(' - ',cbbFormaPagamento.Text)+3,3));
  dmGeral.BusFormaPgtos(0,IdFormaPag);

  result := true;

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then // Se não for dinheiro
     begin
       if txtValorTit.Value > txtSaldo.Value then
          begin
            ShowMessage('O "valor" não pode ser maior que o "Saldo restante".');
            //ActiveControl := nil;
            //PostMessage(txtValorTit.Handle, WM_SETFOCUS, 0, 0);
            txtValorTit.SetFocus;
            result := false;
          end;
     end;
end;

procedure TFAT_FM_M_PNF.grdFpgIButtonClick(Sender: TObject);
begin
try
   grdFpgIButton.Enabled := false;
   if dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
      begin
        ShowMessage('Não há registro para excluir.');
        abort;
      end;
   dmGeral.FAT_CD_M_PED_TIT.Delete;
   dmGeral.FAT_CD_M_PED_TIT.Edit;
   txtTroco.Value := 0;
   AtualTotaisPagamento;
  finally
    grdFpgIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PNF.ImprimirDocumentos;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
begin
  inherited;

  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
        empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
        codigo  := dmGeral.FAT_CD_M_PEDid_pedido.text;

        dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

        if not dmGeral.FAT_CD_M_PED.IsEmpty then
           begin

             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CUPOM_IMP').AsInteger = 1 then
                begin
                  FAT_FR_M_PED.PrepareReport();
                  FAT_FR_M_PED.ShowReport();
                end;

             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CUPOM_IMP').AsInteger = 2 then
                begin
                  FAT_FR_M_PED_40C.PrepareReport();
                  FAT_FR_M_PED_40C.ShowReport();
                end;

             // Imprime nota promissória
             try
                dmGeral.BUS_CD_M_REC.Close;
                dmGeral.BUS_CD_M_REC.Data :=
                    dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([101,dmGeral.BUS_CD_M_NFE_CXAid_fiscal.Text]));


                if not DmGeral.BUS_CD_M_REC.IsEmpty then
                   begin
                     FAT_FR_M_NFE_PRO.PrepareReport();
                     FAT_FR_M_NFE_PRO.ShowReport();
                   end;
              // --------------------------

              // Imprime Duplicata
              try
                dmGeral.BUS_CD_M_REC.Close;
                dmGeral.BUS_CD_M_REC.Data :=
                    dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([97,dmGeral.BUS_CD_M_NFE_CXAid_fiscal.Text]));


                if not DmGeral.BUS_CD_M_REC.IsEmpty then
                   begin
                     //ShowMessage('Não existe forma de pagamento tipo "Duplicata" nesta nota fiscal.');
                     //exit;
                     PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                     if FileExists(PathImg) then
                         begin
                            LogoEmpresa := TfrxPictureView(FAT_FR_M_NFE_DUP.FindObject('Picture1'));
                            if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                         end;

                     FAT_FR_M_NFE_DUP.PrepareReport();
                     FAT_FR_M_NFE_DUP.ShowReport();
                   end;

                finally
                  dmGeral.BUS_CD_M_REC.Close;
                  dmGeral.BUS_CD_C_CLI.Close;
                end;
              // --------------------------

              finally
                dmGeral.BUS_CD_M_REC.Close;
                dmGeral.BUS_CD_C_CLI.Close;
              end;
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;


procedure TFAT_FM_M_PNF.Imprimirdocumentos1Click(Sender: TObject);
begin

  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
     dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([7, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, DateToStr(xDataSis),DateToStr(xDataSis)]));


  FAT_FM_M_PNF_IMP := TFAT_FM_M_PNF_IMP.Create(Self);
  FAT_FM_M_PNF_IMP.ShowModal;
  FreeAndNil(FAT_FM_M_PNF_IMP);

  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
     dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([0, '']));

end;

procedure TFAT_FM_M_PNF.LimparPedido;
begin
   dmGeral.FAT_CD_M_PED.Close;
   dmGeral.FAT_CD_M_PED.Data :=
     dmGeral.FAT_CD_M_PED.DataRequest(
              VarArrayOf([0,'']));

end;

procedure TFAT_FM_M_PNF.NovoRegTit;
begin
  cbbFormaPagamento.text := '';
  cbbFormaPagamento.itemindex := -1;
  txtValorTit.value := 0;
  txtQtd.text    := '0';
  txtQtd.enabled := true;
  txtQtd.Color   := clWhite;
end;

end.


