unit CTC_UN_C_OBR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvToolEdit,
  JvDBControls, Vcl.DBCtrls, JvExMask, Vcl.Mask, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExButtons, JvBitBtn, Vcl.ComCtrls, Datasnap.DBClient, vcl.Wwdbedit;

type
  TCTC_FM_C_OBR = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    chkAtivo: TDBCheckBox;
    lblCidade: TLabel;
    txtCidade: TJvDBComboEdit;
    txtCidadeDescricao: TDBText;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    lblEndereco: TLabel;
    txtEndereco: TDBEdit;
    lblCEP: TLabel;
    txtCEP: TDBEdit;
    lblTelefone: TLabel;
    txtTelefone: TDBEdit;
    lblFax: TLabel;
    txtFax: TDBEdit;
    lblAniversario: TLabel;
    dpkDtaEntrega: TJvDBDateEdit;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteDescricao: TDBText;
    Label1: TLabel;
    txtObs: TDBEdit;
    txtEstado: TDBText;
    pcDados: TPageControl;
    tsEquipamento: TTabSheet;
    tsFuncCargo: TTabSheet;
    gbEquip: TGroupBox;
    pnEquip: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    txtCodEqp: TJvDBComboEdit;
    txtValor: TwwDBEdit;
    grdEqp: TwwDBGrid;
    grdEqpIButton: TwwIButton;
    btn_Add_Eqp: TBitBtn;
    txtDescEquip: TDBText;
    dsObrEqp: TDataSource;
    dsObrCrg: TDataSource;
    gbCrg: TGroupBox;
    pnCargo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    txtDescCrg: TDBText;
    txtCodigoCrg: TJvDBComboEdit;
    txtValorCrg: TwwDBEdit;
    grdCargo: TwwDBGrid;
    grdCargoIButton: TwwIButton;
    btn_Add_Crg: TBitBtn;
    Label4: TLabel;
    txtQtdeFunc: TwwDBEdit;
    Label5: TLabel;
    TabSheet1: TTabSheet;
    gbItens: TGroupBox;
    pnItens: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    txtNomeItem: TDBText;
    Label10: TLabel;
    txtCodItem: TJvDBComboEdit;
    txtValorIte: TwwDBEdit;
    grdItens: TwwDBGrid;
    grdIteIButton: TwwIButton;
    btn_Add_Ite: TBitBtn;
    dsObrIte: TDataSource;
    txtDtaIniCtrIte: TJvDBDateEdit;
    txtDtaFimCtrIte: TJvDBDateEdit;
    Label8: TLabel;
    txtObsItem: TwwDBEdit;
    Label11: TLabel;
    txtUnd: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    txtDtaIniCtrCrg: TJvDBDateEdit;
    txtDtaFimCtrCrg: TJvDBDateEdit;
    Label14: TLabel;
    txtObsCrg: TwwDBEdit;
    Label15: TLabel;
    txtObsEqp: TwwDBEdit;
    txtDtaIniCtrEqp: TJvDBDateEdit;
    Label16: TLabel;
    txtDtaFimCtrEqp: TJvDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure btn_Add_EqpClick(Sender: TObject);
    procedure pnEquipExit(Sender: TObject);
    procedure pnCargoExit(Sender: TObject);
    procedure txtCodEqpExit(Sender: TObject);
    procedure txtCodEqpButtonClick(Sender: TObject);
    procedure txtValorExit(Sender: TObject);
    procedure grdEqpIButtonClick(Sender: TObject);
    procedure btn_Add_CrgClick(Sender: TObject);
    procedure txtCodigoCrgExit(Sender: TObject);
    procedure grdEqpMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdCargoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtCodigoCrgButtonClick(Sender: TObject);
    procedure txtValorCrgExit(Sender: TObject);
    procedure grdCargoIButtonClick(Sender: TObject);
    procedure txtCodItemExit(Sender: TObject);
    procedure txtValorIteExit(Sender: TObject);
    procedure btn_Add_IteClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdIteIButtonClick(Sender: TObject);
    procedure txtCodItemButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_OBR: TCTC_FM_C_OBR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_CID, uDmCtc, PSQ_UN_X_MEQ, PSQ_UN_X_CRG,
  PSQ_UN_X_ITE;

procedure TCTC_FM_C_OBR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR);

  pnCargo.Enabled := false;
  pnEquip.Enabled := false;

  txtCliente.SetFocus;
end;

procedure TCTC_FM_C_OBR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR) then
      begin
        inherited;
        pnCargo.Enabled := false;
        pnEquip.Enabled := false;
        pnItens.Enabled := false;
        txtCliente.SetFocus;
      end;
end;

procedure TCTC_FM_C_OBR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR) then
     begin
       inherited;
       dbGrid.SetFocus;
       pcDados.ActivePage := tsEquipamento;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TCTC_FM_C_OBR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR);
end;

procedure TCTC_FM_C_OBR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_C_OBR.FieldByName('ID_OBRA').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_C_OBR);
  inherited;
  dmCtc.CTC_CD_C_OBR.Close;
  dmCtc.CTC_CD_C_OBR.Data :=
  dmCtc.CTC_CD_C_OBR.DataRequest(
          VarArrayOf([0, codigo,'']));

  pcDados.ActivePage := tsEquipamento;
end;

procedure TCTC_FM_C_OBR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_OBR.Close;
    dmCtc.CTC_CD_C_OBR.Data :=
    dmCtc.CTC_CD_C_OBR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text,'']));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_OBR.btn_Add_CrgClick(Sender: TObject);
begin
  inherited;
  pnCargo.Enabled  := true;

  dmCtc.ctc_cd_c_obr_crg.insert;
  txtCodigoCrg.SetFocus;
end;

procedure TCTC_FM_C_OBR.btn_Add_EqpClick(Sender: TObject);
begin
  inherited;
  pnEquip.Enabled  := true;

  dmCtc.ctc_cd_c_obr_eqp.insert;
  txtCodEqp.SetFocus;
end;

procedure TCTC_FM_C_OBR.btn_Add_IteClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmCtc.ctc_cd_c_obr_ite.insert;
  txtCodItem.SetFocus;
end;

procedure TCTC_FM_C_OBR.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_C_OBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_C_OBR.Close;
  FreeAndNil(CTC_FM_C_OBR);
end;

procedure TCTC_FM_C_OBR.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_OBR.Close;
  dmCtc.CTC_CD_C_OBR.Data := dmCtc.CTC_CD_C_OBR.DataRequest(VarArrayOf([0, '','']));
  dmCtc.CTC_CD_C_OBR.Open;
end;

procedure TCTC_FM_C_OBR.grdCargoIButtonClick(Sender: TObject);
begin
  inherited;
 try
     grdCargoIButton.Enabled := false;
     dmCtc.ctc_cd_c_obr_crg.cancel;
     if dmCtc.ctc_cd_c_obr_crg.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          dmCtc.ctc_cd_c_obr_crg.Insert;
          txtCodigoCrg.Setfocus;
          abort;
        end;
     dmCtc.ctc_cd_c_obr_crg.Delete;
     dmCtc.ctc_cd_c_obr_crg.Edit;
  finally
    grdCargoIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_C_OBR.grdCargoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnCargo.Enabled = false then
     pnCargo.Enabled := true;

  dmCtc.ctc_cd_c_obr_crg.cancel;

  if dmCtc.ctc_cd_c_obr_crg.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_crg.Append;
       pnCargo.Enabled := true;
       txtCodigoCrg.SetFocus;
     end
  else
     begin
       dmCtc.ctc_cd_c_obr_crg.Edit;
       pnCargo.Enabled := true;
       txtQtdeFunc.SetFocus;
     end;
end;

procedure TCTC_FM_C_OBR.grdEqpIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdEqpIButton.Enabled := false;
     dmCtc.ctc_cd_c_obr_eqp.cancel;
     if dmCtc.ctc_cd_c_obr_eqp.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          dmCtc.ctc_cd_c_obr_eqp.Insert;
          txtCodEqp.Setfocus;
          abort;
        end;
     dmCtc.ctc_cd_c_obr_eqp.Delete;
     dmCtc.ctc_cd_c_obr_eqp.Edit;
  finally
    grdEqpIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_C_OBR.grdEqpMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnEquip.Enabled = false then
     pnEquip.Enabled := true;

  dmCtc.ctc_cd_c_obr_eqp.cancel;

  if dmCtc.ctc_cd_c_obr_eqp.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_eqp.Append;
       pnEquip.Enabled := true;
       txtCodEqp.SetFocus;
     end
  else
     begin
       dmCtc.ctc_cd_c_obr_eqp.Edit;
       pnEquip.Enabled := true;
       txtValor.SetFocus;
     end;
end;

procedure TCTC_FM_C_OBR.grdIteIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdIteIButton.Enabled := false;
     dmCtc.ctc_cd_c_obr_ite.cancel;
     if dmCtc.ctc_cd_c_obr_ite.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          dmCtc.ctc_cd_c_obr_ite.Insert;
          txtCodItem.Setfocus;
          abort;
        end;
     dmCtc.ctc_cd_c_obr_ite.Delete;
     dmCtc.ctc_cd_c_obr_ite.Edit;
  finally
    grdIteIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_C_OBR.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmCtc.ctc_cd_c_obr_ite.cancel;

  if dmCtc.ctc_cd_c_obr_ite.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_ite.Append;
       pnItens.Enabled := true;
       txtCodItem.SetFocus;
     end
  else
     begin
       dmCtc.ctc_cd_c_obr_ite.Edit;
       pnItens.Enabled := true;
       txtObsItem.SetFocus;
     end;
end;

procedure TCTC_FM_C_OBR.pnCargoExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Crg.Focused) or (grdCargo.Focused) or
     (not grdCargoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmCtc.ctc_cd_c_obr_crg.Cancel;
        dmCtc.ctc_cd_c_obr_crg.edit;


        finally
           pnCargo.Enabled := false;
        end;
      end;
end;

procedure TCTC_FM_C_OBR.pnEquipExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Eqp.Focused) or (grdEqp.Focused) or
     (not grdEqpIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmCtc.ctc_cd_c_obr_eqp.Cancel;
        dmCtc.ctc_cd_c_obr_eqp.edit;


        finally
           pnEquip.Enabled := false;
        end;
      end;
end;

procedure TCTC_FM_C_OBR.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmCtc.CTC_CD_C_OBR.FieldByName('ID_CIDADE').AsString :=
              PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECID').Text :=
              PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmCtc.CTC_CD_C_OBR.FieldByName('int_nomeuf').Text :=
              PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCTC_FM_C_OBR.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused  then
    begin
      Exit;
    end;

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECID').Text := '';

    dmGeral.BUS_CD_C_CID.Close;
    dmGeral.BUS_CD_C_CID.Data :=
      dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECID').Text :=
      dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

    dmCtc.CTC_CD_C_OBR.FieldByName('int_nomeuf').Text :=
      dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
end;

procedure TCTC_FM_C_OBR.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmCtc.CTC_CD_C_OBR.FieldByName('ID_CLIENTE').AsString :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

           dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TCTC_FM_C_OBR.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         Exit;
       end;

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECLI').Text := '';

    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CLI.Data :=
    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
end;

procedure TCTC_FM_C_OBR.txtCodEqpButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_eqp.FieldByName('id_meq').Text :=
         PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString;;
       dmCtc.ctc_cd_c_obr_eqp.FieldByName('int_nome_eqp').Text :=
           trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
   PSQ_FM_X_MEQ.Free;
end;

procedure TCTC_FM_C_OBR.txtCodEqpExit(Sender: TObject);
var
  id_eqp, desc, valor : string;
begin
  inherited;

  dmGeral.BUS_CD_C_MEQ.Close;

  if dmCtc.ctc_cd_c_obr_eqp.FieldByName('id_meq').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Eqp.Focused then
          exit;

       if grdEqp.Focused then
          exit;

       if not grdEqpIButton.Enabled then
          exit;


      if (txtValor.Focused)  then
           begin
             ShowMessage('O campo "Equipamento" deve ser prenchido.');
             txtCodEqp.SetFocus;
             exit;
           end
       else
           begin
             exit;
           end;
     end
  else
     begin
       if dmCtc.ctc_cd_c_obr_eqp.state in [dsBrowse] then
          dmCtc.ctc_cd_c_obr_eqp.edit;
     end;

  dmCtc.ctc_cd_c_obr_eqp.FieldByName('int_nome_eqp').Text := '';
  dmCtc.ctc_cd_c_obr_eqp.FieldByName('valor').Text := '';



  dmGeral.BUS_CD_C_MEQ.Close;
      dmGeral.BUS_CD_C_MEQ.Data :=
      dmGeral.BUS_CD_C_MEQ.DataRequest(
          VarArrayOf([0,txtCodEqp.text]));


  if (dmCtc.ctc_cd_c_obr_eqp.IsEmpty) then
     begin
       ShowMessage('Equipamento não cadastrado!');
       txtCodEqp.SetFocus;
       dmCtc.ctc_cd_c_obr_eqp.FieldByName('int_nome_eqp').Text := '';
       dmCtc.ctc_cd_c_obr_eqp.FieldByName('valor').Text := '';
       exit;
     end;

  dmCtc.ctc_cd_c_obr_eqp.FieldByName('int_nome_eqp').Text :=
        dmGeral.BUS_CD_C_MEQ.FieldByName('descricao').AsString;


  try
   pnEquip.onExit := nil;


  finally
     pnEquip.OnExit := pnEquipExit;
  end;

end;

procedure TCTC_FM_C_OBR.txtCodigoCrgButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CRG := TPSQ_FM_X_CRG.Create(Self);
  PSQ_FM_X_CRG.ShowModal;
  if not PSQ_FM_X_CRG.BUS_CD_C_CRG.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_crg.FieldByName('id_cargo').Text :=
         PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('id_cargo').AsString;;
       dmCtc.ctc_cd_c_obr_crg.FieldByName('int_nome_crg').Text :=
           trim(PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_CRG.BUS_CD_C_CRG.Close;
   PSQ_FM_X_CRG.Free;
end;

procedure TCTC_FM_C_OBR.txtCodigoCrgExit(Sender: TObject);
begin
  inherited;

  dmGeral.BUS_CD_C_CRG.Close;

  if dmCtc.ctc_cd_c_obr_crg.FieldByName('id_cargo').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Crg.Focused then
          exit;

       if grdCargo.Focused then
          exit;

       if not grdCargoIButton.Enabled then
          exit;


      if (txtQtdeFunc.Focused) or (txtValor.Focused)  then
           begin
             ShowMessage('O campo "Cargo" deve ser prenchido.');
             txtCodigoCrg.SetFocus;
             exit;
           end
       else
           begin
             exit;
           end;
     end
  else
     begin
       if dmCtc.ctc_cd_c_obr_crg.state in [dsBrowse] then
          dmCtc.ctc_cd_c_obr_crg.edit;
     end;

  dmCtc.ctc_cd_c_obr_crg.FieldByName('int_nome_crg').Text := '';
  dmCtc.ctc_cd_c_obr_crg.FieldByName('qtde_func').Text := '';
  dmCtc.ctc_cd_c_obr_crg.FieldByName('valor').Text := '';



  dmGeral.BusCargo(0,txtCodigoCrg.text);


  if (dmGeral.bus_cd_c_crg.IsEmpty) then
     begin
       ShowMessage('Cargo não cadastrado!');
       txtCodigoCrg.SetFocus;
       dmCtc.ctc_cd_c_obr_crg.FieldByName('int_nome_crg').Text := '';
       dmCtc.ctc_cd_c_obr_crg.FieldByName('qtde_func').Text := '';
       dmCtc.ctc_cd_c_obr_crg.FieldByName('valor').Text := '';
       exit;
     end;

  dmCtc.ctc_cd_c_obr_crg.FieldByName('int_nome_crg').Text :=
        dmGeral.bus_cd_c_crg.FieldByName('descricao').AsString;


  try
   pnCargo.onExit := nil;


  finally
     pnCargo.OnExit := pnCargoExit;
  end;
end;

procedure TCTC_FM_C_OBR.txtCodItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmCtc.ctc_cd_c_obr_ite.FieldByName('id_item').Text :=
         PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_item').AsString;;
       dmCtc.ctc_cd_c_obr_ite.FieldByName('int_nomeite').Text :=
           trim(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_ITE.BUS_CD_C_ITE.Close;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_C_OBR.txtCodItemExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmCtc.ctc_cd_c_obr_ite.FieldByName('id_item').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Ite.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdIteIButton.Enabled then
          exit;


      if (txtObsItem.Focused) or (txtDtaIniCtrIte.Focused) or
         (txtDtaFimCtrIte.Focused) or (txtValorIte.focused)  then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtCodItem.SetFocus;
             exit;
           end
       else
           begin
             exit;
           end;
     end
  else
     begin
       if dmCtc.ctc_cd_c_obr_ite.state in [dsBrowse] then
          dmCtc.ctc_cd_c_obr_ite.edit;
     end;

  dmCtc.ctc_cd_c_obr_ite.FieldByName('int_nomeite').Text  := '';
  dmCtc.ctc_cd_c_obr_ite.FieldByName('int_undvenda').Text := '';
  dmCtc.ctc_cd_c_obr_ite.FieldByName('obs').Text          := '';
  dmCtc.ctc_cd_c_obr_ite.FieldByName('dta_ini_contrato').Text := '';
  dmCtc.ctc_cd_c_obr_ite.FieldByName('dta_fim_contrato').Text := '';
  dmCtc.ctc_cd_c_obr_ite.FieldByName('valor').Text            := '';

  dmGeral.BUS_CD_C_ITE.Close;
      dmGeral.BUS_CD_C_ITE.Data :=
      dmGeral.BUS_CD_C_ITE.DataRequest(
          VarArrayOf([0,txtCodItem.text]));


  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtCodItem.SetFocus;
       exit;
     end;

  dmCtc.ctc_cd_c_obr_ite.FieldByName('int_nomeite').Text  :=
        dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;

  dmCtc.ctc_cd_c_obr_ite.FieldByName('int_undvenda').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
   pnItens.onExit := nil;


  finally
     pnItens.OnExit := pnEquipExit;
  end;
end;

procedure TCTC_FM_C_OBR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_C_OBR.txtValorCrgExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtCodigoCrg.Focused or txtQtdeFunc.Focused or txtObsCrg.Focused or
     txtDtaIniCtrIte.Focused or txtDtaFimCtrIte.Focused or
     grdCargo.Focused then
     begin
       exit;
     end;

  dmCtc.ctc_cd_c_obr_crg.Post;

  pnCargo.Enabled := false;
  btn_Add_Crg.SetFocus;
end;

procedure TCTC_FM_C_OBR.txtValorExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtCodEqp.Focused or txtObsEqp.Focused or
     txtDtaIniCtrEqp.Focused or txtDtaFimCtrEqp.Focused or
     grdEqp.Focused then
     begin
       exit;
     end;

  dmCtc.ctc_cd_c_obr_eqp.Post;

  pnEquip.Enabled := false;
  btn_Add_Eqp.SetFocus;
end;

procedure TCTC_FM_C_OBR.txtValorIteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtDtaFimCtrIte.Focused or txtDtaIniCtrIte.Focused or
     txtObsItem.Focused then
     begin
       exit;
     end;

  dmCtc.ctc_cd_c_obr_ite.Post;

  pnItens.Enabled := false;
  btn_Add_Ite.SetFocus;
end;

end.
