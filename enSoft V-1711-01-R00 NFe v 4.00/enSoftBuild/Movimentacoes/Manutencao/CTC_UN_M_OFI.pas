unit CTC_UN_M_OFI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvDBControls, vcl.wwdblook, JvExMask, JvToolEdit, Vcl.Mask,
  vcl.Wwdbedit, Vcl.DBCtrls, Vcl.Buttons;

type
  TCTC_FM_M_OFI = class(TPAD_FM_X_PAD)
    lblcodigo: TLabel;
    lblveiculo: TLabel;
    lbltproblema: TLabel;
    lblfornecedor: TLabel;
    lblsolicitante: TLabel;
    lblobservacao: TLabel;
    txtcodigo: TwwDBEdit;
    txtkm: TwwDBEdit;
    txtproblema: TwwDBEdit;
    lbldata: TLabel;
    lblkm: TLabel;
    txtobservacao: TwwDBEdit;
    dpkdata: TJvDBDateEdit;
    cbbveiculo: TwwDBLookupCombo;
    txtfornecedor: TJvDBComboEdit;
    cbbsolicitante: TwwDBLookupCombo;
    txtdescricaofornecedor: TDBText;
    gbPecas: TGroupBox;
    pnlPecas: TPanel;
    lbldescricaopeca: TLabel;
    btnAddPecas: TBitBtn;
    lblqtde: TLabel;
    lblunitario: TLabel;
    lbltotal: TLabel;
    dsoPecas: TwwDataSource;
    txtqtde: TwwDBEdit;
    txtunitario: TwwDBEdit;
    txttotal: TwwDBEdit;
    dgPecas: TwwDBGrid;
    txtvalortotal: TwwDBEdit;
    lblvalortotal: TLabel;
    dgPecasIButton: TwwIButton;
    txtPecas: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnAddPecasClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbveiculoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure dgPecasIButtonClick(Sender: TObject);
    procedure dgPecasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlPecasExit(Sender: TObject);
    procedure txttotalExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    //procedure cbbveiculoExit(Sender: TObject);
    procedure cbbsolicitanteExit(Sender: TObject);
    procedure cbbsolicitanteEnter(Sender: TObject);
    procedure txtfornecedorButtonClick(Sender: TObject);
    procedure txtfornecedorExit(Sender: TObject);
    procedure cbbveiculoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_OFI: TCTC_FM_M_OFI;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, uDmCtc;

procedure TCTC_FM_M_OFI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_OFI);
  pnlPecas.Enabled  := False;
  cbbveiculo.SetFocus;
end;

procedure TCTC_FM_M_OFI.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_OFI) then
      begin
        inherited;
        pnlPecas.Enabled  := False;
        cbbveiculo.SetFocus;
      end;
end;

procedure TCTC_FM_M_OFI.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_OFI) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbveiculo.SetFocus;
     end;
end;

procedure TCTC_FM_M_OFI.acExcluirExecute(Sender: TObject);
begin
Inherited;
 Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_OFI);
end;

procedure TCTC_FM_M_OFI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_OFI.FieldByName('ID_OFI').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_OFI);
  inherited;
  dmCtc.CTC_CD_M_OFI.Close;
  dmCtc.CTC_CD_M_OFI.Data :=
  dmCtc.CTC_CD_M_OFI.DataRequest(
          VarArrayOf([0, codigo]));
end;
procedure TCTC_FM_M_OFI.btnAddPecasClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_OFI_ITE.Insert;
  pnlPecas.Enabled  := True;
  txtPecas.SetFocus;
end;

procedure TCTC_FM_M_OFI.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_OFI.Close;
    dmCtc.CTC_CD_M_OFI.Data :=
    dmCtc.CTC_CD_M_OFI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_OFI.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_M_OFI.cbbsolicitanteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbsolicitante.DropDown;
end;

procedure TCTC_FM_M_OFI.cbbsolicitanteExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_OFI.FieldByName('id_solicitante').Text) = '' then
     begin
       ShowMessage('O campo "Solicitante" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_OFI.FieldByName('id_solicitante').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Solicitante não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_OFI.cbbveiculoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusVeiculo(1,'%');
  cbbveiculo.DropDown;
end;

procedure TCTC_FM_M_OFI.cbbveiculoExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_OFI.FieldByName('id_veiculo').Text) = '' then
     begin
       ShowMessage('O campo "Veículo" não foi preenchido.');
       exit;
     end;

  dmGeral.BusVeiculo(0,dmCtc.CTC_CD_M_OFI.FieldByName('id_veiculo').Text);
  if dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       ShowMessage('Veículo não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_OFI.dgPecasIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgPecasIButton.Enabled := False;

     if dmCtc.CTC_CD_M_OFI_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmCtc.CTC_CD_M_OFI_ITE.Delete;
     dmCtc.CTC_CD_M_OFI_ITE.Edit;

  finally
    dgPecasIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_M_OFI.dgPecasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlPecas.Enabled = false then
     pnlPecas.Enabled := true;

  dmCtc.CTC_CD_M_OFI_ITE.cancel;

  if dmCtc.CTC_CD_M_OFI_ITE.IsEmpty then
     begin
       dmCtc.CTC_CD_M_OFI_ITE.Append;
       pnlPecas.Enabled := True;
       txtPecas.SetFocus;
     end
  else
     begin
       dmCtc.CTC_CD_M_OFI_ITE.Edit;
       pnlPecas.Enabled := True;
       txtPecas.SetFocus;
     end;
end;

procedure TCTC_FM_M_OFI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_OFI.Close;
  FreeAndNil(CTC_FM_M_OFI);
end;

procedure TCTC_FM_M_OFI.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_OFI.Close;
  dmCtc.CTC_CD_M_OFI.Data := dmCtc.CTC_CD_M_OFI.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_OFI.Open;
end;

procedure TCTC_FM_M_OFI.pnlPecasExit(Sender: TObject);
begin
  inherited;
  if (btnAddPecas.Focused) or (dgPecas.Focused) or
     (not dgPecasIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             Exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              Exit;
           end;

        dmCtc.CTC_CD_M_OFI_ITE.Cancel;
        dmCtc.CTC_CD_M_OFI_ITE.edit;

        finally
           pnlPecas.Enabled := False;
        end;
      end;
end;

procedure TCTC_FM_M_OFI.txtfornecedorButtonClick(Sender: TObject);
begin
  inherited;
 PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;

      if not dmCtc.CTC_CD_M_OFI.IsEmpty then
         begin
           dmCtc.CTC_CD_M_OFI.FieldByName('ID_FORNECEDOR').AsInteger:=
             PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

           dmCtc.CTC_CD_M_OFI.FieldByName('INT_NOMEFOR').AsString:=
             PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCTC_FM_M_OFI.txtfornecedorExit(Sender: TObject);
begin
  inherited;
if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_OFI.FieldByName('id_fornecedor').Text) = '' then
     begin
       ShowMessage('O campo "Fornecedor" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFornecedor(0,dmCtc.CTC_CD_M_OFI.FieldByName('id_fornecedor').Text);
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       ShowMessage('Fornecedor não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_OFI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_M_OFI.txttotalExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtPecas.Focused or txtqtde.Focused or txtunitario.Focused or
     dgPecas.Focused then
     begin
       Exit;
     end;

  dmCtc.CTC_CD_M_OFI_ITE.Post;

  pnlPecas.Enabled := False;
  btnAddPecas.SetFocus;
end;

end.
