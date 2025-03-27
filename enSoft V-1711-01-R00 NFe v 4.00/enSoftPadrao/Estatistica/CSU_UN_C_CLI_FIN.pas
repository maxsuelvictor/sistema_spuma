unit CSU_UN_C_CLI_FIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,System.IniFiles,
  Vcl.CheckLst, Vcl.ComCtrls;

type
  TCSU_FM_C_CLI_FIN = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dgPagamentos: TwwDBGrid;
    lblPagamentos: TLabel;
    dso: TwwDataSource;
    dsoPagamentos: TwwDataSource;
    lblTotalAberto: TLabel;
    lblTotalVencer: TLabel;
    lblTotalVencido: TLabel;
    lblTotalQuitado: TLabel;
    lblTotalGeral: TLabel;
    lblCreditoDisponivel: TLabel;
    txtTotalAberto: TEdit;
    txtTotalVencer: TEdit;
    txtTotalVercido: TEdit;
    txtTotalQuitado: TEdit;
    txtTotalGeral: TEdit;
    txtCreditoDisponivel: TEdit;
    btnCobranca: TButton;
    lblAberto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlAberto: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    txtTotalSubst: TEdit;
    Label6: TLabel;
    txtTotalPago: TEdit;
    Label7: TLabel;
    lblNomeCli: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtCodBaixa: TDBText;
    txtObservacoes: TDBText;
    Label10: TLabel;
    txtResponsavel: TDBText;
    Label11: TLabel;
    txtTotalJurosPg: TEdit;
    Label12: TLabel;
    txtTotalAbertoCorr: TEdit;
    Label13: TLabel;
    chkEmpresa: TCheckListBox;
    pcControl: TPageControl;
    tsFinanceiro: TTabSheet;
    wwDBGrid5: TwwDBGrid;
    tsDuplicata: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    tsPromissoria: TTabSheet;
    tsCartao: TTabSheet;
    tsBoleto: TTabSheet;
    tsDinheiro: TTabSheet;
    tsCheque: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid6: TwwDBGrid;
    wwDBGrid7: TwwDBGrid;
    procedure btnCobrancaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgfinCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgPagamentosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure dgfinDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure chkEmpresaClick(Sender: TObject);
    procedure pcControlChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    procedure carregaCores;
    var
      xCorSistema:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_CLI_FIN: TCSU_FM_C_CLI_FIN;

implementation

{$R *.dfm}

uses uDmGeral, CSU_RN_C_FIN,uProxy,UApplayClassProxy, CSU_UN_M_COB,
  CSU_UN_C_CLI_FIN_ITE, enFunc, CSU_UN_C_CLI;

procedure TCSU_FM_C_CLI_FIN.btnCobrancaClick(Sender: TObject);
begin
  if not CSU_FM_C_CLI.CAD_CD_C_CLI.IsEmpty then
    begin
      if dmGeral.BUS_CD_M_REC.IsEmpty then
         begin
           ShowMessage('Não há título para poder exibir a cobrança.');
           exit;
         end;

      {dmGeral.BUS_CD_M_COB.Close;
      dmGeral.BUS_CD_M_COB.Data :=
      dmGeral.BUS_CD_M_COB.DataRequest(
            VarArrayOf([5,dmGeral.CAD_CD_C_CLIid_cliente.Text]));  }

      dmGeral.BUS_CD_M_COB_TIT_TIT.Close;
      dmGeral.BUS_CD_M_COB_TIT_TIT.Data :=
      dmGeral.BUS_CD_M_COB_TIT_TIT.DataRequest(
            VarArrayOf([0,dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString]));

      CSU_FM_M_COB := TCSU_FM_M_COB.Create(Self);
      CSU_FM_M_COB.ShowModal;
      CSU_FM_M_COB.Free;
    end;
end;

procedure TCSU_FM_C_CLI_FIN.Button1Click(Sender: TObject);
begin
  dmGeral.BUS_CD_M_REC.Close;
end;

procedure TCSU_FM_C_CLI_FIN.Button2Click(Sender: TObject);
begin
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(
              VarArrayOf([94,dmgeral.CAD_CD_C_CLI.FieldByName('id_cliente').Text]));

end;

procedure TCSU_FM_C_CLI_FIN.Button3Click(Sender: TObject);
begin
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(
              VarArrayOf([94,dmgeral.CAD_CD_C_CLI.FieldByName('id_cliente').Text]));
   dmGeral.BUS_CD_M_REC.Open;

end;

procedure TCSU_FM_C_CLI_FIN.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlCima.Color := codCor;
    pnlBaixo.Color := codCor;
end;

procedure TCSU_FM_C_CLI_FIN.chkEmpresaClick(Sender: TObject);
var
xempresa: string;
i:Integer;
begin
   xEmpresa := '';
  for I := 0 to chkEmpresa.Items.Count - 1 do
    begin
      if chkEmpresa.Checked[I] then
        begin
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa +' or (id_empresa = '+trim(copy(chkEmpresa.Items[I],1,2))+')';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +'(id_empresa = '+ trim(copy(chkEmpresa.Items[I],1,2))+') ';
           end;
        end;
    end;
  dmGeral.BUS_CD_M_REC.Filtered := True;
  dmGeral.BUS_CD_M_REC.Filter := xEmpresa;
  // dmGeral.BUS_CD_M_REC.Filter := 'id_empresa in ('+xEmpresa+')';
end;

procedure TCSU_FM_C_CLI_FIN.dgfinCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (xDataSis = dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;
end;

procedure TCSU_FM_C_CLI_FIN.dgfinDblClick(Sender: TObject);
begin
    if  dmGeral.BUS_CD_M_REC.IsEmpty then
      begin
        exit;
      end;

    dmGeral.BUS_CD_M_NFE.Close;
    dmGeral.BUS_CD_M_NFE.Data :=
            dmGeral.BUS_CD_M_NFE.DataRequest(
                VarArrayOf([102,dmGeral.BUS_CD_M_REC.FieldByName('ID_FISCAL').AsString]));
    if not dmGeral.BUS_CD_M_NFE_ITE.IsEmpty then
      begin
        CSU_FM_C_CLI_FIN_ITE := TCSU_FM_C_CLI_FIN_ITE.Create(Self);
        CSU_FM_C_CLI_FIN_ITE.ShowModal;
        CSU_FM_C_CLI_FIN_ITE.Free;
      end
    else
      begin
        ShowMessage('Não há itens da nota selecionada.');
      end;
end;

procedure TCSU_FM_C_CLI_FIN.dgPagamentosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean) then
     begin
       aFont.Color := $000065CA;
     end;
end;

procedure TCSU_FM_C_CLI_FIN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dmgeral.BUS_CD_M_REC.Filtered := false;
end;

procedure TCSU_FM_C_CLI_FIN.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TCSU_FM_C_CLI_FIN.FormShow(Sender: TObject);
var
  txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,
  txtTotQuitado,txtTotGeral,txtTotAbertoCorr:String;
  i: Integer;
  SMPrincipal : TSMClient;

begin
  btnCobranca.SetFocus;

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
          dmGeral.BUS_CD_C_PAR.DataRequest(
                  VarArrayOf([1, '']));

   dmGeral.BUS_CD_C_PAR.First;
   while not dmGeral.BUS_CD_C_PAR.Eof do
         begin
           chkEmpresa.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('id_empresa').AsInteger,2,0)+'-'+
                                       dmGeral.BUS_CD_C_PAR.FieldByName('emp_fantasia').AsString   );
           dmGeral.BUS_CD_C_PAR.Next;
         end;

  dmGeral.BUS_CD_C_PAR.close;

  for i := 0 to chkEmpresa.Count - 1 do
      begin
       chkEmpresa.Checked[i] := True;
      end;


   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('csu_cli_fin_separar_fpg').AsBoolean = true) then
     begin
       tsFinanceiro.TabVisible := false;
       tsDuplicata.TabVisible := true;
       tsPromissoria.TabVisible := true;
       tsCartao.TabVisible := true;
       tsBoleto.TabVisible := true;
       tsDinheiro.TabVisible := true;
       tsCheque.TabVisible := true;

     end
   else
     begin
       tsDuplicata.TabVisible := false;
       tsPromissoria.TabVisible := false;
       tsCartao.TabVisible := false;
       tsBoleto.TabVisible := false;
       tsDinheiro.TabVisible := false;
       tsCheque.TabVisible := false;
       tsFinanceiro.TabVisible := true;
     end;





  dmGeral.BUS_CD_M_REC.Filtered := false;

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(
              VarArrayOf([94,CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').Text]));

   pcControlChange(self);

  CalTotalCliFin(txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,
                 txtTotPago, txtTotQuitado,txtTotGeral,txtTotAbertoCorr);

      txtTotalAberto.text  := txtTotAberto;
      txtTotalAbertoCorr.text := txtTotAbertoCorr;
      txtTotalVencer.text  := txtTotAVencer;
      txtTotalVercido.text := txtTotVencido;
      txtTotalSubst.text   := txtTotSubst;
      txtTotalJurosPg.text := txtTotJurosPg;
      txtTotalPago.text    := txtTotPago;
      txtTotalQuitado.text := txtTotQuitado;
      txtTotalGeral.text     := txtTotGeral;

       //Busca sequencia no servidor
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    txtCreditoDisponivel.text :=  FormatCurr('###,###,##0.00' ,(SMPrincipal.enVerCreditoCli(CSU_FM_C_CLI.CAD_CD_C_CLIid_cliente.AsString,0)));
  finally
    FreeAndNil(SMPrincipal);
  end;
end;


procedure TCSU_FM_C_CLI_FIN.pcControlChange(Sender: TObject);
begin

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('csu_cli_fin_separar_fpg').AsBoolean = true) then
     begin
        dmgeral.BUS_CD_M_REC.Filtered := true;
        if pcControl.TabIndex = 0 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=1';
        if pcControl.TabIndex = 1 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=2';
        if pcControl.TabIndex = 2 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=3';
        if pcControl.TabIndex = 3 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=4';
        if pcControl.TabIndex = 4 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=5';
        if pcControl.TabIndex = 5 then
          dmgeral.BUS_CD_M_REC.Filter := 'INT_DOCIMPRESSO=6';
     end;




end;

end.
