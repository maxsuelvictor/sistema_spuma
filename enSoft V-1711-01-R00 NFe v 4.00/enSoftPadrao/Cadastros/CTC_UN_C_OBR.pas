unit CTC_UN_C_OBR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvToolEdit,
  JvDBControls, Vcl.DBCtrls, JvExMask, Vcl.Mask, JvExExtCtrls, JvExtComponent,
  JvPanel;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_OBR: TCTC_FM_C_OBR;

implementation

{$R *.dfm}

uses uDmCtc, PSQ_UN_X_CLI, PSQ_UN_X_CID, ctc_rn_c_obr, XXX_RN_C_BUS;

procedure TCTC_FM_C_OBR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR);
  txtCliente.SetFocus;
end;

procedure TCTC_FM_C_OBR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR) then
      begin
        inherited;
        txtCliente.SetFocus;
      end;
end;

procedure TCTC_FM_C_OBR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_OBR) then
     begin
       inherited;
       dbGrid.SetFocus;
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
  gravaObra(sender);
  inherited;
  dmCtc.CTC_CD_C_OBR.Close;
  dmCtc.CTC_CD_C_OBR.Data :=
  dmCtc.CTC_CD_C_OBR.DataRequest(
          VarArrayOf([0, codigo]));

end;

procedure TCTC_FM_C_OBR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_OBR.Close;
    dmCtc.CTC_CD_C_OBR.Data :=
    dmCtc.CTC_CD_C_OBR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
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
  dmCtc.CTC_CD_C_OBR.Data := dmCtc.CTC_CD_C_OBR.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_C_OBR.Open;
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
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCTC_FM_C_OBR.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         Exit;
       end;

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECID').Text := '';

//    dmGeral.BUS_CD_C_CID.Close;
//    dmGeral.BUS_CD_C_CID.Data :=
//    dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

    dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECID').Text :=
      buscaCidade(0,txtCidade.Text).FieldByName('NOME').AsString;
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
  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       Exit;
     end;
  dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECLI').Text := '';

  dmCtc.CTC_CD_C_OBR.FieldByName('INT_NOMECLI').Text :=
    buscaCliente(0,txtCliente.Text).FieldByName('NOME').AsString;
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

end.
