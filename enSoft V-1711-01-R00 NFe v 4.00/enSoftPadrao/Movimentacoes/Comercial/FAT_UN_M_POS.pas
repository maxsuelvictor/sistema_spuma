unit FAT_UN_M_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Mask, Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Datasnap.DBClient;

type
  TFAT_FM_M_POS = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    lblDataRegistro: TLabel;
    dsoIte: TwwDataSource;
    gbPreVendas: TGroupBox;
    dgPreVendasAnteriores: TwwDBGrid;
    gbNotaFiscalVenda: TGroupBox;
    dgNotaFiscalVenda: TwwDBGrid;
    gbItensNota: TGroupBox;
    dgItensNota: TwwDBGrid;
    gbPosVenda: TGroupBox;
    lblSugestaoReclamacao: TLabel;
    Label1: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dpkDataRegistro: TJvDBDateEdit;
    dsoBusPos: TwwDataSource;
    dsoBusNfe: TwwDataSource;
    dsoBusNfeIte: TwwDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    rgAvaliaca: TDBRadioGroup;
    btnInserir: TBitBtn;
    txtSugetaoReclamacao: TDBMemo;
    txtSolucao: TDBMemo;
    gbPosVendaRealizadas: TGroupBox;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    txtPesquisaData: TJvDateEdit;
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure dgNotaFiscalVendaDblClick(Sender: TObject);
    procedure gbPosVendaExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure onExit;
    var
    Cliente, NomeCliente: string;
  end;

var
  FAT_FM_M_POS: TFAT_FM_M_POS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI;

procedure TFAT_FM_M_POS.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_POS);

  dmgeral.BUS_CD_M_POS_ITE.Close;
  dmGeral.BUS_CD_M_NFE.Close;

  dmgeral.FAT_CD_M_POSdta_posvenda.AsDateTime :=xDataSis;
  txtcliente.SetFocus;
end;

procedure TFAT_FM_M_POS.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_POS);
end;

procedure TFAT_FM_M_POS.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_POS) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       dpkDataRegistro.SetFocus;
     end;
end;

procedure TFAT_FM_M_POS.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_POS);

  if dmgeral.FAT_CD_M_POS.IsEmpty then
    begin
      dmgeral.BUS_CD_M_POS_ITE.Close;
      dmGeral.BUS_CD_M_NFE.Close;
    end;
end;

procedure TFAT_FM_M_POS.acGravarExecute(Sender: TObject);
var
codigo,data: string;
begin
  inherited;
  codigo := dmGeral.FAT_CD_M_POS.FieldByName('ID_POSVENDA').AsString;
  data   := dmgeral.FAT_CD_M_POSdta_posvenda.text;
  DmGeral.Grava(dmGeral.FAT_CD_M_POS);

  dmGeral.FAT_CD_M_POS.Close;
  dmGeral.FAT_CD_M_POS.Data :=
  dmGeral.FAT_CD_M_POS.DataRequest(
          VarArrayOf([0,dmgeral.CAD_CD_C_PARid_empresa.AsString,codigo]));

  onExit;

end;

procedure TFAT_FM_M_POS.btnInserirClick(Sender: TObject);
var
xResp: integer;
begin
  inherited;
  if (dmGeral.FAT_CD_M_POS_ITEreclamacao.AsString <> '') or
     (dmGeral.FAT_CD_M_POS_ITEsolucao.AsString <> '') or
     (dmGeral.FAT_CD_M_POS_ITEavaliacao.AsString <> '') then
    begin
      xResp := xFuncionario;
      dmgeral.FAT_CD_M_POS_ITE.post;
      DmGeral.Grava(dmGeral.FAT_CD_M_POS);
      dmgeral.FAT_CD_M_POS.Edit;

      dmgeral.FAT_CD_M_POSdta_posvenda.AsDateTime :=xDataSis;
      dmgeral.FAT_CD_M_POSid_cliente.AsString := Cliente;
      dmgeral.FAT_CD_M_POSint_nomecli.AsString:= NomeCliente;
      dmgeral.FAT_CD_M_POSid_empresa.Text := dmgeral.CAD_CD_C_PARid_empresa.Text;
      dmgeral.FAT_CD_M_POSid_responsavel.asinteger := xResp;

      txtCliente.SetFocus;
      onExit;
    end
  else
    showMessage('Todos os campos devem ser preenchidos!');
end;

procedure TFAT_FM_M_POS.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;
end;

procedure TFAT_FM_M_POS.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  inherited;
  if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
  else
      xPesquisa := txtPesquisa.Text;


  if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

  dmGeral.FAT_CD_M_POS.Close;
  dmGeral.FAT_CD_M_POS.Data :=
  dmGeral.FAT_CD_M_POS.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmgeral.CAD_CD_C_PARid_empresa.AsString,xPesquisa]));
end;

procedure TFAT_FM_M_POS.dgNotaFiscalVendaDblClick(Sender: TObject);
var
Nota:string;
begin
  inherited;
    try
     dmgeral.FAT_CD_M_POS.BeforePost := nil;
     Nota := dgNotaFiscalVenda.Fields[1].AsString;
     dmgeral.BUS_CD_M_POS_ITE.Close;
     dmgeral.BUS_CD_M_POS_ITE.Open;

         if dmGeral.BUS_CD_M_POS_ITE.Locate('ID_FISCAL',Nota,[]) or dmGeral.FAT_CD_M_POS_ITE.Locate('ID_FISCAL',Nota,[]) then
            begin
              Showmessage('A Pós-venda dessa Nota já existe!');
              dgNotaFiscalVenda.SetFocus;
            end
         else
            begin
              gbPosVenda.Enabled := True;
              dmgeral.FAT_CD_M_POS_ITE.insert;
              dmgeral.FAT_CD_M_POS_ITEid_fiscal.Text := dgNotaFiscalVenda.Fields[1].AsString;
              txtSugetaoReclamacao.SetFocus;
            end;
      finally
         dmgeral.FAT_CD_M_POS.BeforePost := dmgeral.FAT_CD_M_POS.BeforePost;
      end;
end;

procedure TFAT_FM_M_POS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_POS.Close;
  dmGeral.FAT_CD_M_POS_ITE.Close;
  FreeAndNil(FAT_FM_M_POS);
end;

procedure TFAT_FM_M_POS.FormCreate(Sender: TObject);
begin
  inherited;
  //dmGeral.FAT_CD_M_POS.Open;
  dmGeral.FAT_CD_M_POS.Close;
  dmGeral.FAT_CD_M_POS.Data := dmGeral.FAT_CD_M_POS.DataRequest(VarArrayOf([0,dmgeral.CAD_CD_C_PARid_empresa.AsString,0]));

  dmgeral.BUS_CD_M_POS_ITE.Close;
  dmgeral.BUS_CD_M_NFE.Close;
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));
end;

procedure TFAT_FM_M_POS.FormShow(Sender: TObject);
begin
  inherited;
  pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);

  cbbPesquisaChange(self);
end;

procedure TFAT_FM_M_POS.gbPosVendaExit(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_POS_ITE.Cancel;
  gbPosVenda.Enabled := False;
end;

procedure TFAT_FM_M_POS.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.FAT_CD_M_POS_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_POS_ITE.Delete;
     //dmGeral.FAT_CD_M_POS_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_POS.onExit;
begin

  if dmgeral.FAT_CD_M_POSid_cliente.AsString <> '' then
    begin
      dmgeral.BUS_CD_M_POS_ITE.Close;
      dmgeral.BUS_CD_M_POS_ITE.DataRequest(VarArrayOf([dmgeral.CAD_CD_C_PARid_empresa.text,
          dmgeral.FAT_CD_M_POSid_cliente.Text,
          dmgeral.FAT_CD_M_POSdta_posvenda.AsDateTime,
          dmgeral.FAT_CD_M_POSid_posvenda.AsInteger]));
      dmgeral.BUS_CD_M_POS_ITE.Open;

      dmgeral.BUS_CD_M_NFE.Close;
      dmgeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([97,dmgeral.CAD_CD_C_PARid_empresa.text,dmgeral.FAT_CD_M_POSid_cliente.Text]));
      dmgeral.BUS_CD_M_NFE.Open;
    end;
end;


procedure TFAT_FM_M_POS.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmgeral.FAT_CD_M_POSint_nomecli.AsString := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
           dmGeral.FAT_CD_M_POS.FieldByName('ID_CLIENTE').AsInteger :=
             PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_POS.txtClienteExit(Sender: TObject);
begin
  inherited;
  try
    if btnCancelar.focused then Exit
  finally
    begin
      if btnCancelar.focused then
         begin
           txtCliente.Text := '';
           acCancelarExecute(self);
         end;
    end;
  end;
  if txtCliente.Text = '' then
    begin
      showMessage('Cliente deve ser informado.');
      txtcliente.setfocus;
    end
  else
    begin
  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));
  if dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      showMessage('Cliente não Cadastrado.');
      txtcliente.setfocus;
    end
  else
    begin
      onExit;
      Cliente := dmgeral.FAT_CD_M_POSid_cliente.AsString;
      NomeCliente := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
      dmgeral.FAT_CD_M_POSint_nomecli.AsString := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
    end;
    end;
    gbNotaFiscalVenda.SetFocus;
end;

end.
