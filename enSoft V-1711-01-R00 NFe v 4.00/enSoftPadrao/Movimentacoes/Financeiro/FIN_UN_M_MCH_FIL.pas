unit FIN_UN_M_MCH_FIL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, JvToolEdit, Vcl.Mask, JvExMask, Datasnap.DBClient;

type
  TFIN_FM_M_MCH_FIL = class(TPAD_FM_X_FRM)
    gbCheques: TGroupBox;
    lblPeriodo: TLabel;
    txtDataInicial: TJvDateEdit;
    txtDataFinal: TJvDateEdit;
    Label1: TLabel;
    lblCliente: TLabel;
    txtDescricaoCliente: TEdit;
    dgTit: TwwDBGrid;
    txtCliente: TJvComboEdit;
    btnBuscar: TButton;
    lblOperacao: TLabel;
    txtOperacao: TEdit;
    btnSelecionar: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    Label7: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSair1Click(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dgTitCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure acSairExecute(Sender: TObject);
  private
    { Private declarations }
    procedure DefinirSituacaoCheques;
    var
      xSituacao:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_MCH_FIL: TFIN_FM_M_MCH_FIL;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI;

procedure TFIN_FM_M_MCH_FIL.acSairExecute(Sender: TObject);
begin
 // inherited;
    Close;
end;

procedure TFIN_FM_M_MCH_FIL.btnBuscarClick(Sender: TObject);
begin
  inherited;
  DefinirSituacaoCheques;
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([12,txtDataInicial.Text,txtDataFinal.Text,
            dmGeral.FIN_CD_M_MCH.FieldByName('ID_EMPRESA').AsString,xSituacao,txtCliente.Text]));

end;

procedure TFIN_FM_M_MCH_FIL.DefinirSituacaoCheques;
begin
  xSituacao := '';
  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 1) then
    begin
       xSituacao := '1,3';
    end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 2) then
    begin
       xSituacao := '2';
    end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 3) then
    begin
       xSituacao := '1,3,4';
    end;

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 4) then
    begin
       xSituacao := '1,3,4';
    end;
end;

procedure TFIN_FM_M_MCH_FIL.btnSair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFIN_FM_M_MCH_FIL.btnSelecionarClick(Sender: TObject);
begin
  inherited;

  dmGeral.FIN_CD_M_MCH_CHE.BeforePost := nil;

  dmGeral.FIN_CD_M_MCH_CHE.Cancel;
  dmGeral.FIN_CD_M_MCH_CHE.First;
  while( not dmgeral.FIN_CD_M_MCH_CHE.IsEmpty) do
    begin
      dmGeral.FIN_CD_M_MCH_CHE.Delete;
    end;

  if (dmGeral.BUS_CD_M_REC.RecordCount > 0 ) then
    begin
      dmGeral.BUS_CD_M_REC.First;
      while (not dmGeral.BUS_CD_M_REC.EOF) do
        begin
          if (dmGeral.BUS_CD_M_REC.FieldByName('INT_SELECAO').AsBoolean = True) then
             begin
               dmGeral.FIN_CD_M_MCH_CHE.Insert;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_CONTROLE').AsString :=
                       dmGeral.FIN_CD_M_MCH.FieldByName('ID_CONTROLE').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('ID_TITULO').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_BANCO').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('CHE_BANCO').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_AGENCIA').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('CHE_AGENCIA').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CONTA').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('CHE_CONTA').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_CHEQUE').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('CHE_CHEQUE').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VENCIMENTO').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_EMITENTE').AsString :=
                       dmGeral.BUS_CD_M_REC.FieldByName('CHE_EMITENTE').AsString;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_CHEQUE').AsCurrency :=
                       dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_SALDO').AsCurrency :=
                       dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_ATRASO').AsCurrency :=
                       dmGeral.BUS_CD_M_REC.FieldByName('INT_ATRASO').AsCurrency;
               dmGeral.FIN_CD_M_MCH_CHE.FieldByName('INT_VLR_JUROS').AsCurrency :=
                       dmGeral.BUS_CD_M_REC.FieldByName('INT_VLR_JUROS').AsCurrency;


               if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger = 2) then
                  begin
                    dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency :=
                            dmGeral.BUS_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency;
                  end;


               if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [1,4]) then
                  begin
                   dmGeral.FIN_CD_M_MCH_CHE.FieldByName('VLR_PAGO').AsCurrency :=
                         dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;
                  end;
               dmGeral.FIN_CD_M_MCH_CHE.Post;
             end;
          dmGeral.BUS_CD_M_REC.Next;
        end;
        Close;
    end
  else
     begin
       ShowMessage('Não há nenhum registro para ser selecionado.');
     end;
   dmGeral.FIN_CD_M_MCH_CHE.BeforePost := dmgeral.FIN_CD_M_MCH_CHEBeforePost;
end;

procedure TFIN_FM_M_MCH_FIL.FormCreate(Sender: TObject);
begin
 // inherited;
  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger in [3,4]) then
    begin
      txtCliente.Text := dmGeral.FIN_CD_M_MCH.FieldByName('ID_CLIENTE').AsString;
      txtDescricaoCliente.Text := dmGeral.FIN_CD_M_MCH.FieldByName('INT_NOMECLI').AsString;
      txtCliente.Enabled := false;
    end;

  txtOperacao.Text := dmGeral.FIN_CD_M_MCH.FieldByName('INT_OPERACAO').AsString;
end;

procedure TFIN_FM_M_MCH_FIL.FormShow(Sender: TObject);
begin
//  inherited;
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(
                 VarArrayOf([0, '']));

  if (dmGeral.FIN_CD_M_MCH.FieldByName('OPERACAO').AsInteger <> 4) then
    begin
      dgTit.ColumnByName('INT_VLR_JUROS').Visible := false;
    end;


end;

procedure TFIN_FM_M_MCH_FIL.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtCliente.Text :=
                  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
           txtDescricaoCliente.Text :=
                  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_MCH_FIL.txtClienteExit(Sender: TObject);
begin
  inherited;

  if (txtCliente.Text = '') then
    begin
      txtDescricaoCliente.Text := '';
    end
  else
    begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,txtCliente.Text]));
       if (not dmGeral.BUS_CD_C_CLI.IsEmpty) then
          begin
            txtDescricaoCliente.Text := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
          end
        else
          begin
            ShowMessage('Cliente não cadastrado.');
            txtCliente.Text := '';
            txtDescricaoCliente.Text := '';
            txtCliente.SetFocus;
            abort;
          end;

    end;

end;

procedure TFIN_FM_M_MCH_FIL.dgTitCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
   if (dmGeral.BUS_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger = 2) then
      begin
        AFont.Color := clRed;
      end;

   if (dmGeral.BUS_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger = 3) then
      begin
        AFont.Color := clLime;
      end;

   if (dmGeral.BUS_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger = 4) then
      begin
        AFont.Color := clMaroon;
      end;

   if (dmGeral.BUS_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger = 5) then
      begin
        AFont.Color := clOlive;
      end;

   if (dmGeral.BUS_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger = 6) then
      begin
        AFont.Color := clBlue;
      end;
end;

end.
