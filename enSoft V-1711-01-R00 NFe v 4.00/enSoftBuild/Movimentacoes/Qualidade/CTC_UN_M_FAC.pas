unit CTC_UN_M_FAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.wwdblook, JvExStdCtrls, JvCombobox, JvDBCombobox,
  vcl.wwcheckbox, vcl.wwclearbuttongroup, vcl.wwradiogroup, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCTC_FM_M_FAC = class(TPAD_FM_X_PAD)
    txtNFac: TDBEdit;
    lblNFac: TLabel;
    txtDescricaoProblema: TDBEdit;
    lblDataAbertura: TLabel;
    txtDataAbertura: TDBEdit;
    cbbOrigem: TJvDBComboBox;
    cbbResponsavel1: TwwDBLookupCombo;
    dpkDada1: TDBEdit;
    lblAcao: TLabel;
    lblOrigem: TLabel;
    lbldescricaoprob: TLabel;
    lblResponsavel1: TLabel;
    lblData1: TLabel;
    cbbAcao: TJvDBComboBox;
    txtacaoimed: TDBEdit;
    lblacaoimediata: TLabel;
    cbbResponsavel2: TwwDBLookupCombo;
    dpkDada2: TDBEdit;
    lblData2: TLabel;
    cbbResponsavel3: TwwDBLookupCombo;
    lblData3: TLabel;
    dpkDada3: TDBEdit;
    lblcausaproblema: TLabel;
    txtCausaProblema: TDBEdit;
    cbbResponsavel4: TwwDBLookupCombo;
    lblData4: TLabel;
    dpkDada4: TDBEdit;
    lblacaoCP: TLabel;
    txtAcao1: TDBEdit;
    lblresponsavel: TLabel;
    cbbResponsavel5: TwwDBLookupCombo;
    lbldata: TLabel;
    dpkDada5: TDBEdit;
    txtAcao2: TDBEdit;
    cbbResponsavel6: TwwDBLookupCombo;
    dpkDada6: TDBEdit;
    txtAcao3: TDBEdit;
    cbbResponsavel7: TwwDBLookupCombo;
    dpkDada7: TDBEdit;
    txtAcao4: TDBEdit;
    cbbResponsavel8: TwwDBLookupCombo;
    dpkDada8: TDBEdit;
    txtMetodoAvaliacao: TDBEdit;
    lblmetodoavaliacao: TLabel;
    lblacaocorre_prev: TLabel;
    lblprazoacao: TLabel;
    txtprazoacao: TDBEdit;
    txtprazoimplantada: TDBEdit;
    lblprazoimplementacao: TLabel;
    txtnovafacefi: TDBEdit;
    lblnovafacacao: TLabel;
    txtnovafaccomp: TDBEdit;
    txtanalisecri: TDBEdit;
    lblanlisecritica: TLabel;
    chbacaoimplantada: TwwCheckBox;
    chbiplantadaprazo: TwwCheckBox;
    chbacaoeficaz: TwwCheckBox;
    chbnescessidadeacao: TwwCheckBox;
    lblnovafaccomplementar: TLabel;
    rgAvaliacao: TwwRadioGroup;
    lblResponsavel2: TLabel;
    lblResponsavel3: TLabel;
    lblResponsavel4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbResponsavel1Enter(Sender: TObject);
    procedure cbbResponsavel1Exit(Sender: TObject);
    procedure cbbResponsavel2Enter(Sender: TObject);
    procedure cbbResponsavel2Exit(Sender: TObject);
    procedure cbbResponsavel3Enter(Sender: TObject);
    procedure cbbResponsavel4Enter(Sender: TObject);
    procedure cbbResponsavel3Exit(Sender: TObject);
    procedure cbbResponsavel4Exit(Sender: TObject);
    procedure cbbResponsavel5Enter(Sender: TObject);
    procedure cbbResponsavel5Exit(Sender: TObject);
    procedure cbbResponsavel6Enter(Sender: TObject);
    procedure cbbResponsavel7Enter(Sender: TObject);
    procedure cbbResponsavel8Enter(Sender: TObject);
    procedure cbbResponsavel6Exit(Sender: TObject);
    procedure cbbResponsavel7Exit(Sender: TObject);
    procedure cbbResponsavel8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_FAC: TCTC_FM_M_FAC;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc;

procedure TCTC_FM_M_FAC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_FAC);
  txtDescricaoProblema.SetFocus;

end;

procedure TCTC_FM_M_FAC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_FAC);
  txtDescricaoProblema.SetFocus;

end;

procedure TCTC_FM_M_FAC.acCancelarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_FAC);

end;

procedure TCTC_FM_M_FAC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_FAC);

end;

procedure TCTC_FM_M_FAC.acGravarExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       DmGeral.Grava(dmCtc.CTC_CD_M_FAC);
     end
  else
     begin
       txtDescricaoProblema.SetFocus;
     end;

end;

procedure TCTC_FM_M_FAC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_CEP.Close;
    dmCtc.CTC_CD_M_CEP.Data :=
    dmCtc.CTC_CD_M_CEP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_FAC.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_M_FAC.cbbResponsavel1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel1.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel1Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('pro_id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('pro_id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_FAC.cbbResponsavel2Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel2.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel2Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('aci_id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('aci_id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_FAC.cbbResponsavel3Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel3.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel3Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('ava_id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('ava_id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel4Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel4.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel4Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('cap_id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('cap_id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel5Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel5.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel5Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_01').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_01').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel6Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel6.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel6Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_02').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_02').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel7Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel7.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel7Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_03').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_03').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel8Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel8.DropDown;
end;

procedure TCTC_FM_M_FAC.cbbResponsavel8Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_04').Text) = '' then
     begin
       ShowMessage('O campo "Resposavel" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_04').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsavel não Cadastrado.');
     end;
end;

procedure TCTC_FM_M_FAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dso.Dataset.Close;
  FreeAndNil(CTC_FM_M_FAC);

end;

procedure TCTC_FM_M_FAC.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_FAC.Open;

end;


procedure TCTC_FM_M_FAC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
end.
