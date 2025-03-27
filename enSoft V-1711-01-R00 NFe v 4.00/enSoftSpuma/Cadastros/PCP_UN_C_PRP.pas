unit PCP_UN_C_PRP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, JvExExtCtrls, JvExtComponent,
  JvPanel;

type
  TPCP_FM_C_PRP = class(TPAD_FM_X_PAD)
    lblGrupo: TLabel;
    lblItem: TLabel;
    lblCaracteristicasSetemInspecionadas: TLabel;
    lblCriterioAceitacao: TLabel;
    lblMetodoVerificacao: TLabel;
    lblAmostragem: TLabel;
    lblManuseioTransporte: TLabel;
    lblArmazenamento: TLabel;
    lblPreservacao: TLabel;
    txtCaracteristicasSetemInspecionadas: TDBMemo;
    txtCriterioAceitacao: TDBMemo;
    txtMetodoVerificacao: TDBMemo;
    txtAmostragem: TDBMemo;
    txtManuseioTransporte: TDBMemo;
    txtArmazenamento: TDBMemo;
    txtPreservacao: TDBMemo;
    txtGrupo: TJvDBComboEdit;
    txtGrupoDescricao: TDBText;
    txtItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtGrupoButtonClick(Sender: TObject);
    procedure txtGrupoExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_PRP: TPCP_FM_C_PRP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_GRU, PSQ_UN_X_ITE, uDmSgq;

procedure TPCP_FM_C_PRP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRP);
  txtGrupo.SetFocus;
end;

procedure TPCP_FM_C_PRP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRP) then
      begin
        inherited;
        txtGrupo.SetFocus;
      end;
end;

procedure TPCP_FM_C_PRP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtGrupo.SetFocus;
     end;
end;

procedure TPCP_FM_C_PRP.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRP);
end;

procedure TPCP_FM_C_PRP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_PRP.FieldByName('ID_PRP').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_PRP);
   inherited;
   dmSgq.PCP_CD_C_PRP.Close;
   dmSgq.PCP_CD_C_PRP.Data :=
   dmSgq.PCP_CD_C_PRP.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_PRP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_PRP.Close;
    dmSgq.PCP_CD_C_PRP.Data :=
    dmSgq.PCP_CD_C_PRP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_PRP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TPCP_FM_C_PRP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_PRP.Close;
  FreeAndNil(PCP_FM_C_PRP);
end;

procedure TPCP_FM_C_PRP.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_PRP.Close;
  dmSgq.PCP_CD_C_PRP.Data := dmSgq.PCP_CD_C_PRP.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_PRP.Open;
end;

procedure TPCP_FM_C_PRP.txtGrupoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
   PSQ_FM_X_GRU.ShowModal;
      if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
         begin
           dmSgq.PCP_CD_C_PRP.FieldByName('ID_GRUPO').AsString :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString;

           dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEGRU').AsString :=
              PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRU.Free;
end;

procedure TPCP_FM_C_PRP.txtGrupoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         Exit;
       end;

    dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEGRU').Text := '';

    if dmSgq.PCP_CD_C_PRP.FieldByName('ID_ITEM').Text <> '' then
       begin
          dmSgq.PCP_CD_C_PRP.FieldByName('ID_GRUPO').AsString := '';
          dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEGRU').AsString := '';

          Exit;
          txtItem.SetFocus;
       end
    else
       begin
          dmGeral.BUS_CD_C_GRU.Close;
          dmGeral.BUS_CD_C_GRU.Data :=
          dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0, txtGrupo.Text]));

          dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEGRU').Text :=
               dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
       end;

    if dmSgq.PCP_CD_C_PRP.FieldByName('ID_ITEM').AsString = '' then
       begin
          txtCaracteristicasSetemInspecionadas.SetFocus;
       end
    else
       begin
          txtItem.SetFocus;
       end;
end;

procedure TPCP_FM_C_PRP.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmSgq.PCP_CD_C_PRP.FieldByName('ID_ITEM').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_PRP.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         Exit;
       end;

    dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEITE').Text := '';

    if dmSgq.PCP_CD_C_PRP.FieldByName('ID_GRUPO').Text <> '' then
       begin
          dmSgq.PCP_CD_C_PRP.FieldByName('ID_ITEM').AsInteger := 0;
          dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEITE').AsString := '';

          Exit;
          txtCaracteristicasSetemInspecionadas.SetFocus;
       end
    else
       begin
          dmGeral.BUS_CD_C_ITE.Close;
          dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

          dmSgq.PCP_CD_C_PRP.FieldByName('INT_NOMEITE').Text :=
               dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
       end;
end;

procedure TPCP_FM_C_PRP.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
