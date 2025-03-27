unit PCP_UN_C_CDR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvExMask, JvToolEdit,
  JvDBControls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_C_CDR = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblGrupo: TLabel;
    lblCorGrupo: TLabel;
    lblCorCadarco: TLabel;
    txtCodigo: TDBEdit;
    rg_Tipo: TDBRadioGroup;
    txtGrupoDescricao: TDBText;
    txtGrupo: TJvDBComboEdit;
    txtCorGrupo: TJvDBComboEdit;
    txtCorGrupoDescricao: TDBText;
    txtCorCadarco: TJvDBComboEdit;
    txtCorCadarcoDescricao: TDBText;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtGrupoButtonClick(Sender: TObject);
    procedure txtGrupoExit(Sender: TObject);
    procedure txtCorGrupoButtonClick(Sender: TObject);
    procedure txtCorGrupoExit(Sender: TObject);
    procedure txtCorCadarcoButtonClick(Sender: TObject);
    procedure txtCorCadarcoExit(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CDR: TPCP_FM_C_CDR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_GRU, PSQ_UN_X_COR, uProxy, uDmSgq;

procedure TPCP_FM_C_CDR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDR);
  txtGrupo.SetFocus;
end;

procedure TPCP_FM_C_CDR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDR) then
     begin
       inherited;
       txtGrupo.SetFocus;
     end;
end;

procedure TPCP_FM_C_CDR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtGrupo.SetFocus;
     end;
end;

procedure TPCP_FM_C_CDR.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CDR);
end;

procedure TPCP_FM_C_CDR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_CDR.FieldByName('ID_CDR').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_CDR);
   inherited;
   dmSgq.PCP_CD_C_CDR.Close;
   dmSgq.PCP_CD_C_CDR.Data :=
   dmSgq.PCP_CD_C_CDR.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CDR.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_CDR.Close;
    dmSgq.PCP_CD_C_CDR.Data :=
    dmSgq.PCP_CD_C_CDR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CDR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_C_CDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_CDR.Close;
  FreeAndNil(PCP_FM_C_CDR);
end;

procedure TPCP_FM_C_CDR.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CDR.Close;
  dmSgq.PCP_CD_C_CDR.Data := dmSgq.PCP_CD_C_CDR.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_CDR.Open;
end;

procedure TPCP_FM_C_CDR.txtCorCadarcoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_COR := TPSQ_FM_X_COR.Create(Self);
   PSQ_FM_X_COR.ShowModal;
      if not PSQ_FM_X_COR.BUS_CD_C_COR.IsEmpty then
         begin
           dmSgq.PCP_CD_C_CDR.FieldByName('ID_COR_CADARCO').AsInteger :=
              PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger;

           dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOC').Text :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRU.Free;
end;

procedure TPCP_FM_C_CDR.txtCorCadarcoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOC').Text := '';

    if dmSgq.PCP_CD_C_CDR.FieldByName('ID_COR_CADARCO').Text = '' then
       begin
         ShowMessage('O campo "Cor do Cadarço" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_COR.Close;
    dmGeral.BUS_CD_C_COR.Data :=
    dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([0, txtGrupo.Text]));

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOC').Text :=
         dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_CDR.txtCorGrupoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_COR := TPSQ_FM_X_COR.Create(Self);
   PSQ_FM_X_COR.ShowModal;
      if not PSQ_FM_X_COR.BUS_CD_C_COR.IsEmpty then
         begin
           dmSgq.PCP_CD_C_CDR.FieldByName('ID_COR_GRUPO').AsInteger :=
              PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger;

           dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOG').Text :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRU.Free;
end;

procedure TPCP_FM_C_CDR.txtCorGrupoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOG').Text := '';

    if dmSgq.PCP_CD_C_CDR.FieldByName('ID_COR_GRUPO').Text = '' then
       begin
         ShowMessage('O campo "Cor do Grupo" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_COR.Close;
    dmGeral.BUS_CD_C_COR.Data :=
    dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([0, txtGrupo.Text]));

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMECOG').Text :=
         dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_CDR.txtGrupoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
   PSQ_FM_X_GRU.ShowModal;
      if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
         begin
           dmSgq.PCP_CD_C_CDR.FieldByName('ID_GRUPO').AsString :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString;

           dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMEGRU').Text :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRU.Free;
end;

procedure TPCP_FM_C_CDR.txtGrupoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMEGRU').Text := '';

    if dmSgq.PCP_CD_C_CDR.FieldByName('ID_GRUPO').Text = '' then
       begin
         ShowMessage('O campo "Grupo" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_GRU.Close;
    dmGeral.BUS_CD_C_GRU.Data :=
    dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0, txtGrupo.Text]));

    dmSgq.PCP_CD_C_CDR.FieldByName('INT_NOMEGRU').Text :=
         dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_CDR.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
