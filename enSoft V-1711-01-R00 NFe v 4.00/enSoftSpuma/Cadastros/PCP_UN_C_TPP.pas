unit PCP_UN_C_TPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, JvExExtCtrls, JvExtComponent,
  JvPanel, Datasnap.DBClient;

type
  TPCP_FM_C_TPP = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    GroupBox1: TGroupBox;
    btnAddSetor: TBitBtn;
    grdSetores: TwwDBGrid;
    PCP_CD_C_TPP_SET: TwwDataSource;
    grdSetoresIButton: TwwIButton;
    pnlSetores: TPanel;
    lblDescricaoSetor: TLabel;
    lblSetor: TLabel;
    lblGeraEstoque: TLabel;
    lblGeraLote: TLabel;
    lblGravaLote: TLabel;
    lblExecServico: TLabel;
    txtSetorDescricao: TDBText;
    chkGeraEstoque: TDBCheckBox;
    chkGeraLote: TDBCheckBox;
    chkGravaLote: TDBCheckBox;
    chkExecServico: TDBCheckBox;
    txtSetor: TJvDBComboEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddSetorClick(Sender: TObject);
    procedure grdSetoresIButtonClick(Sender: TObject);
    procedure grdSetoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtSetorButtonClick(Sender: TObject);
    procedure txtSetorExit(Sender: TObject);
    procedure chkExecServicoExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure pnlSetoresExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_TPP: TPCP_FM_C_TPP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_SET, uDmSgq;

procedure TPCP_FM_C_TPP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TPP);

  pnlSetores.Enabled := False;
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_TPP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TPP) then
      begin
        inherited;
        pnlSetores.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_TPP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TPP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_TPP.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TPP);
end;

procedure TPCP_FM_C_TPP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_TPP.FieldByName('ID_TPP').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_TPP);
   inherited;
   dmSgq.PCP_CD_C_TPP.Close;
   dmSgq.PCP_CD_C_TPP.Data :=
   dmSgq.PCP_CD_C_TPP.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_TPP.btnAddSetorClick(Sender: TObject);
begin
  inherited;
  pnlSetores.Enabled := True;

  dmSgq.PCP_CD_C_TPP_SET.Insert;
  txtSetor.SetFocus;
end;

procedure TPCP_FM_C_TPP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_TPP.Close;
    dmSgq.PCP_CD_C_TPP.Data :=
    dmSgq.PCP_CD_C_TPP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_TPP.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_TPP.chkExecServicoExit(Sender: TObject);
var
setor : string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  if btnAddSetor.Focused or txtSetor.Focused or
     chkGeraEstoque.Focused or chkGeraLote.Focused or
     chkGravaLote.Focused then
     begin
       Abort;
     end;

  setor := dmSgq.PCP_CD_C_TPP_SET.FieldByName('ID_SETOR').AsString;

  dmSgq.PCP_CD_C_TPP_SET.Post;
  btnAddSetor.SetFocus;
  dmSgq.PCP_CD_C_TPP_SET.locate('ID_SETOR',setor,[]);
end;

procedure TPCP_FM_C_TPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_TPP.Close;
  FreeAndNil(PCP_FM_C_TPP);
end;

procedure TPCP_FM_C_TPP.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_TPP.Close;
  dmSgq.PCP_CD_C_TPP.Data := dmSgq.PCP_CD_C_TPP.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_TPP.Open;
end;

procedure TPCP_FM_C_TPP.grdSetoresIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdSetoresIButton.Enabled := False;
     if dmSgq.PCP_CD_C_TPP_SET.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmSgq.PCP_CD_C_TPP_SET.Delete;
     dmSgq.PCP_CD_C_TPP_SET.Edit;
  finally
    grdSetoresIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_TPP.grdSetoresMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlSetores.Enabled = False then
     pnlSetores.Enabled := True;

  dmSgq.PCP_CD_C_TPP_SET.Cancel;

  if dmSgq.PCP_CD_C_TPP_SET.IsEmpty then
     begin
       dmSgq.PCP_CD_C_TPP_SET.Append;
       pnlSetores.Enabled := True;
       txtSetor.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_TPP_SET.Edit;
       pnlSetores.Enabled := True;
       txtSetor.SetFocus;
     end;
end;

procedure TPCP_FM_C_TPP.pnlSetoresExit(Sender: TObject);
begin
  inherited;
  if (btnAddSetor.Focused) or (grdSetores.Focused) or (not grdSetoresIButton.Enabled) then
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

          dmSgq.PCP_CD_C_TPP_SET.Cancel;
          dmSgq.PCP_CD_C_TPP_SET.Edit;
          finally
             pnlSetores.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_C_TPP.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

procedure TPCP_FM_C_TPP.txtSetorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_SET := TPSQ_FM_X_SET.Create(Self);
   PSQ_FM_X_SET.ShowModal;
      if not PSQ_FM_X_SET.BUS_CD_C_SET.IsEmpty then
         begin
           dmSgq.PCP_CD_C_TPP_SET.FieldByName('INT_NOMESET').AsString :=
                PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;

           dmSgq.PCP_CD_C_TPP_SET.FieldByName('ID_SETOR').AsString :=
                PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('ID_SETOR').AsString;
         end;
   PSQ_FM_X_SET.Free;
end;

procedure TPCP_FM_C_TPP.txtSetorExit(Sender: TObject);
begin
  inherited;


  dmGeral.BUS_CD_C_SET.Close;

  if dmSgq.PCP_CD_C_TPP_SET.FieldByName('ID_SETOR').AsString = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btnAddSetor.Focused then
          exit;

       if grdSetores.Focused then
          exit;

       if not grdSetoresIButton.Enabled then
          exit;

       if (chkGeraEstoque.Focused) or (chkGeraLote.Focused) or
          (chkGravaLote.Focused) or (chkExecServico.Focused) then
           begin
             ShowMessage('O campo "Setor" deve ser preenchido.');
             txtSetor.SetFocus;
             exit;
           end
       else
           begin
             pnlSetores.Enabled := false;
             exit;
           end;
     end
   else
     begin
       if dmSgq.PCP_CD_C_TPP_SET.state in [dsBrowse] then
          dmSgq.PCP_CD_C_TPP_SET.edit;
     end;

  dmSgq.PCP_CD_C_TPP_SET.FieldByName('INT_NOMESET').AsString := '';

  dmGeral.BUS_CD_C_SET.Close;
  dmGeral.BUS_CD_C_SET.Data :=
  dmGeral.BUS_CD_C_SET.DataRequest(VarArrayOf([0, txtSetor.Text]));

  dmSgq.PCP_CD_C_TPP_SET.FieldByName('INT_NOMESET').AsString :=
       dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
end;

end.
