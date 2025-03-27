unit uSuporte001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TfrmSuporte001 = class(TForm)
    Label1: TLabel;
    dso: TwwDataSource;
    dbGrid: TwwDBGrid;
    btnFaturar: TButton;
    btnSair: TButton;
    txtSenha: TEdit;
    Label2: TLabel;
    btnIniciaFat: TButton;
    Label3: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    lblQtdeReg: TLabel;
    FAT_DS_M_NFE_TIT: TwwDataSource;
    FAT_DS_M_NFE_ITE: TwwDataSource;
    pgNfeDados: TPageControl;
    tsItens: TTabSheet;
    dgItens: TwwDBGrid;
    tsTitulos: TTabSheet;
    grdTitulos: TwwDBGrid;
    tsInfFiscal: TTabSheet;
    txtNfeObs: TDBMemo;
    btnSalvarInfFis: TBitBtn;
    btnAlterarInfFis: TBitBtn;
    lblCaixa: TLabel;
    dsCxa: TwwDataSource;
    Label4: TLabel;
    procedure btnFaturarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIniciaFatClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuporte001: TfrmSuporte001;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_NFE;

procedure TfrmSuporte001.btnFaturarClick(Sender: TObject);
var
  chave, protocolo: String;
begin

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       abort;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1 then
     begin
       ShowMessage('Nota fiscal já encerrada.');
       abort;
     end;


  dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
  if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
     begin
       dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
       if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
          begin
            ShowMessage('Nenhuma forma de pagamento foi informada na nota fiscal!');
            exit;
          end;
     end;


  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) = '' then
     begin
        ShowMessage('Nota fiscal sem chave, será necessário informar.');
        if not InputQuery('Chave da nota fiscal','Digite a chave:', chave) then
           exit;

        if trim(chave) = '' then
           begin
             Showmessage('Chave da nota fiscal deve ser informada.');
             exit;
           end;

        if not InputQuery('Protocolo da nota fiscal','Digite o protocolo:', protocolo) then
           exit;

        if trim(protocolo) = '' then
           begin
             Showmessage('Protocolo da nota fiscal deve ser informado.');
             exit;
           end;

     end;


  if MessageDlg('Deseja finalizar esta nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
         dmGeral.BUS_CD_M_NFE_CXA.Edit;
         //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString        := 'X';
         //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger     := 0;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean    := true;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
         if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) = '' then
            begin
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString := chave;

              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString :=  protocolo;
            end;
         //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ABERTURA').AsInteger :=
         //        dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
         //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger  :=
         //        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger;
         try
            dmGeral.BUS_CD_M_NFE_CXA.Post;
            if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
               begin
                 Showmessage('Nota fiscal faturada com sucesso!');
               end;
         except
           on e: Exception do
              begin
                ShowMessage('Erro ao tentar encerrar a nota fiscal: ' + e.Message);
              end;
         end;
     end;
end;

procedure TfrmSuporte001.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSuporte001.btnIniciaFatClick(Sender: TObject);
begin
    if trim(txtSenha.Text) = '' then
       begin
         ShowMessage('A senha deve ser informada');
         abort;
       end;

    if trim(txtSenha.Text) <> 'fat06' then
       begin
         ShowMessage('Senha inválida!' + #13 +
                     'Não será possível faturar.');
         abort;
       end
    else
       begin
         dmGeral.BUS_CD_M_NFE_CXA.Close;
         dmGeral.BUS_CD_M_NFE_CXA.Data :=
              dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                       VarArrayOf([101]));

         lblQtdeReg.Caption := 'Qtde de registros encontrado: 0';

         if dmGeral.BUS_CD_M_NFE_CXA.RecordCount > 0 then
            lblQtdeReg.Caption := 'Qtde de registros encontrado: ' + IntToStr(dmGeral.BUS_CD_M_NFE_CXA.RecordCount);

         txtSenha.Enabled := false;
         btnFaturar.Enabled := true;
         dbGrid.Enabled := true;
         btnIniciaFat.Enabled := false;
       end;

end;

procedure TfrmSuporte001.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   // Situação de NFe FATURADA normnal. Cor Verde
   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
      (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) then
      begin
        Afont.Color := clGreen;
      end;
end;

procedure TfrmSuporte001.dbGridRowChanged(Sender: TObject);
begin

  lblCaixa.Caption := '';

  if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
                dmGeral.BUS_CD_M_CXA.DataRequest(
                        VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_abertura').AsString]));
        if not dmGeral.BUS_CD_M_CXA.IsEmpty then
           begin
             lblCaixa.Caption := 'Abertura: ' + dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').AsString + ' - ' +
                                 'Funcionário: ' + copy(dmGeral.BUS_CD_M_CXA.FieldByName('INT_NOMEFUN').AsString,1,35);
           end;
     end;
end;

procedure TfrmSuporte001.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_CXA.close;
  txtSenha.SetFocus;
end;

end.
