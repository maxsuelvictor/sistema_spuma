unit FAT_UN_M_CXA_NFE_FPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids,
  vcl.wwdbgrid, Vcl.StdCtrls, Vcl.DBCtrls, vcl.wwdblook, JvExStdCtrls, JvEdit,
  JvValidateEdit, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, vcl.Wwdbedit, JvDBControls;

type
  TFAT_FM_M_CXA_NFE_FPG = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    gbGerTitulos: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    txtFpgEntrada: TJvComboEdit;
    txtVlrEntrada: TJvValidateEdit;
    txtGerFpg: TJvComboEdit;
    txtQtdeParc: TEdit;
    gbFormasPgt: TGroupBox;
    pnTitulos: TPanel;
    lbl6: TLabel;
    lb2: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    txtFormaPgto: TwwDBLookupCombo;
    txtDias: TDBEdit;
    txtVencimento: TDBEdit;
    txtVlrTitulo: TDBEdit;
    btn_Add_Fpg: TBitBtn;
    grdFpg: TwwDBGrid;
    grdFpgIButton: TwwIButton;
    btnSair: TBitBtn;
    BUS_DS_M_NFE_TIT_CXA: TwwDataSource;
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
    gbDadosNf: TGroupBox;
    Label2: TLabel;
    txtNroNF: TDBEdit;
    txtEmitente: TDBEdit;
    lblUsuario: TLabel;
    BUS_DS_M_NFE_CXA: TwwDataSource;
    txtValorLiq: TDBEdit;
    Label1: TLabel;
    Label5: TLabel;
    txtCondicaoPag: TDBEdit;
    btnSalvarDados: TBitBtn;
    lblPlanoContas: TLabel;
    txtPlanoContas: TJvDBComboEdit;
    txtPctDescricao: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure txtFormaPgtoEnter(Sender: TObject);
    procedure txtFormaPgtoExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarDadosClick(Sender: TObject);
    procedure grdFpgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure btn_Add_FpgClick(Sender: TObject);
    procedure txtEmitenteChqExit(Sender: TObject);
    procedure txtPlanoContasButtonClick(Sender: TObject);
    procedure txtPlanoContasExit(Sender: TObject);
    procedure grdFpgIButtonClick(Sender: TObject);
    procedure grdFpgRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirFormasPgto;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_CXA_NFE_FPG: TFAT_FM_M_CXA_NFE_FPG;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FPG, PSQ_UN_X_PCT, uProxy, FAT_RN_M_NFE, enConstantes;

procedure TFAT_FM_M_CXA_NFE_FPG.btnSairClick(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_CXA.Cancel;
  close;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.btnSalvarDadosClick(Sender: TObject);
var
  mensVlrDif: String;
begin

  FAT_RN_M_NFE.FatValidaNfeTitCxa(1,dmGeral.BUS_CD_M_NFE_TIT_CXA);
  if FAT_CD_M_NFE_TesTotFpgXTotNfe(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_TIT_CXA,mensVlrDif) then
     begin
        raise Exception.Create(enConstantes.MensErro + #13 + 'Valor dos vencimentos diferente do total da nota fiscal.' + #13 + 'Diferença: ' + mensVlrDif);
        abort;
     end;

  if MessageDlg('Confirma gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if dmGeral.BUS_CD_M_NFE_TIT_CXA.State in [dsInsert,dsEdit] then
           dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;

        dmGeral.BUS_CD_M_NFE_TIT_CXA.ApplyUpdates(0);
        close;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.btn_Add_FpgClick(Sender: TObject);
begin
  pnTitulos.Enabled  := true;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.Insert;
  txtFormaPgto.SetFocus;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CONDICAO_PAG').AsString]));

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

procedure TFAT_FM_M_CXA_NFE_FPG.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_NFE_FPG.FormShow(Sender: TObject);
begin
  dmGeral.BusFormaPgtos(1,'%');
  txtFpgEntrada.text := '';
  txtGerFpg.Text     := '';
  gbCheque.Enabled   := true;
  txtFpgEntrada.SetFocus;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.grdFpgIButtonClick(Sender: TObject);
begin
  try
     grdFpgIButton.Enabled := false;
     if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.BUS_CD_M_NFE_TIT_CXA.Delete;
     dmGeral.BUS_CD_M_NFE_TIT_CXA.Edit;
  finally
     grdFpgIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.grdFpgMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.cancel;

  if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
     begin
       dmGeral.BUS_CD_M_NFE_TIT_CXA.Append;
       pnTitulos.Enabled := true;
       txtFormaPgto.SetFocus;
     end
  else
    begin
      dmGeral.BUS_CD_M_NFE_TIT_CXA.Edit;

      ExibirFormasPgto;

      pnTitulos.Enabled := true;
      try
      dmGeral.BUS_CD_C_FPG2.Close;
      dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').Text]));

      gbCheque.Enabled   := false;
      if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
         begin
           gbCheque.Enabled   := true;
         end;
      finally
         dmGeral.BUS_CD_C_FPG2.close;
      end;

      txtDias.SetFocus;
    end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.grdFpgRowChanged(Sender: TObject);
begin
  ExibirFormasPgto
end;

procedure TFAT_FM_M_CXA_NFE_FPG.pnTitulosExit(Sender: TObject);
begin
   if (btn_Add_Fpg.Focused) or (grdFpg.Focused) or
     (not grdFpgIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnSalvarDados.Focused then
             begin
               btnSalvarDadosClick(self);
               exit;
             end;
          if btnSair.Focused  then
             begin
                btnSairClick(self);
                exit;
             end;

        dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
        dmGeral.BUS_CD_M_NFE_TIT_CXA.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtDiasExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or txtFormaPgto.Focused or grdFpg.Focused or txtPlanoContas.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValDias(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DIAS').AsInteger;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtEmitenteChqExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgto.Focused or txtPlanoContas.Focused or
      txtDias.Focused or txtVencimento.Focused or
      grdFpg.Focused or txtVlrTitulo.focused) or
      ( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )  then
      begin
        abort;
      end;

  if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_NFE_TIT').text = '' then
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.BUS_CD_M_NFE_TIT_CXAid_nfe_tit.AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
  pnTitulos.Enabled := false;

  grdFpg.SetFocus;
  //btn_Add_Fpg.SetFocus;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtFormaPgtoEnter(Sender: TObject);
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CONDICAO_PAG').AsString]));

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
   txtFormaPgto.DropDown;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtFormaPgtoExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if (btn_Add_Fpg.Focused or grdFpg.Focused) or
     (not ( (txtDias.Focused) or (txtVencimento.Focused) or (txtVlrTitulo.Focused) or (txtPlanoContas.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       txtFormaPgto.SetFocus;
       abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end
  else
    begin
      dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').Text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;

      if dmGeral.BUS_CD_C_FPG.FieldByName('VEN_ID_PLANO').Text <>'' then
         begin
           dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').Text  :=
               dmGeral.BUS_CD_C_FPG.FieldByName('VEN_ID_PLANO').Text;

           dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_CCUSTO').AsString :=
               dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').AsString;

           dmGeral.BusPlanoCta(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').Text);
               dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
         end;

    end;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
    7 - crédito
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin
       ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  gbCheque.Enabled := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       gbCheque.Enabled := true;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtFpgEntradaButtonClick(Sender: TObject);
begin
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  // Busca as formas de pagamento a vista
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, 0]));
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Open; // Precisa do Open

  PSQ_FM_X_FPG.xOrigemPsqFpg := '1';

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtFpgEntrada.SetFocus;
       txtFpgEntrada.Text :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtFpgEntradaExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
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

procedure TFAT_FM_M_CXA_NFE_FPG.txtGerFpgButtonClick(Sender: TObject);
begin
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
           dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
     begin
         // Busca as formas de pagamento a vista
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
              PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                   VarArrayOf([2, 0]));
         PSQ_FM_X_FPG.xOrigemPsqFpg := '1';
     end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
         // Busca as formas de pagamento a prazo
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                  VarArrayOf([2, 1]));
         PSQ_FM_X_FPG.xOrigemPsqFpg := '2';
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

procedure TFAT_FM_M_CXA_NFE_FPG.txtGerFpgExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') or
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
                       dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CONDICAO_PAG').AsString]));

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

        gbCheque.Enabled   := false;
        if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
           begin
             gbCheque.Enabled   := true;
           end;

        finally
          dmGeral.BUS_CD_C_FPG2.close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtPlanoContasButtonClick(Sender: TObject);
begin
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEPCT').AsString := PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
           dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtPlanoContasExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or grdFpg.Focused or
     txtFormaPgto.Focused  then
     begin
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').text = '') or
     (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       txtFormaPgto.SetFocus;
       abort;
     end;

  if (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEPCT').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

  dmGeral.BUS_CD_C_PCT.close;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtQtdeParcExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '')    or
     (txtGerFpg.Text = '0'))         and
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

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Nota fiscal sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_C_FPG2.Close;
  dmGeral.BUS_CD_C_FPG2.Data :=
          dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));

  dmGeral.GerarFPG_Doc(txtGerFpg.Text,dmGeral.BUS_CD_C_FPG2.FieldByName('VEN_ID_PLANO').Text,
                       '', strtoint(txtQtdeParc.text), dmGeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.BUS_CD_M_NFE_TIT_CXA,3);

  ExibirFormasPgto;

  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';
  //btn_Add_Fpg.SetFocus;
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtVencimentoExit(Sender: TObject);
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or txtFormaPgto.Focused or txtPlanoContas.Focused or
     txtDias.Focused or grdFpg.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

  if (abs(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
     begin
        txtVencimento.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data de emissão.');
        abort;
     end;

   if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DIAS').Value :=
          dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsVariant;
     end;

end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtVlrEntradaExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
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

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Nota fiscal sem valor.');
       exit;
     end;

  if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_C_FPG2.Close;
  dmGeral.BUS_CD_C_FPG2.Data :=
          dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtFpgEntrada.Text]));

  dmGeral.GerarFPG_Entrada(2,txtFpgEntrada.Text,dmGeral.BUS_CD_C_FPG2.FieldByName('VEN_ID_PLANO').Text,txtVlrEntrada.Value,
                            dmGeral.BUS_CD_M_NFE_TIT_CXA);

  ExibirFormasPgto;

  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
end;

procedure TFAT_FM_M_CXA_NFE_FPG.txtVlrTituloExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  if btnSair.Focused  then
     begin
       exit;
     end;

  if txtFormaPgto.Focused or   txtPlanoContas.Focused or
     txtDias.Focused or grdFpg.Focused or txtVencimento.Focused  then
     begin
        abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTitulo.SetFocus;
       abort;
     end;

  if not (gbCheque.Enabled) then
     begin
      if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_NFE_TIT').text = '' then
         begin
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
              dmGeral.BUS_CD_M_NFE_TIT_CXAid_nfe_tit.AsInteger :=
                   SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
            finally
              FreeAndNil(SMPrincipal);
            end;
         end;

       dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
       pnTitulos.Enabled := false;

       grdFpg.SetFocus;
       //btn_Add_Fpg.SetFocus;
     end;
end;
end.
