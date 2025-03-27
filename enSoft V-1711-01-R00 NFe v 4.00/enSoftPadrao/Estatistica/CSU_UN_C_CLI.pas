unit CSU_UN_C_CLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.DBCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Buttons, Vcl.ComCtrls,System.IniFiles,
  Datasnap.DBClient;

type
  TCSU_FM_C_CLI = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dgItens: TwwDBGrid;
    dso: TwwDataSource;
    pcDados: TPageControl;
    tabDados: TTabSheet;
    tabContatos: TTabSheet;
    tabReclamacoes: TTabSheet;
    tabInformacoes: TTabSheet;
    tabBancoInformacoes: TTabSheet;
    lblEndereco: TLabel;
    txtEndereco: TDBEdit;
    txtComplemento: TDBEdit;
    lblComplemento: TLabel;
    txtNumero: TDBEdit;
    lblNumero: TLabel;
    lblCEP: TLabel;
    txtCEP: TDBEdit;
    lblCaixaPostal: TLabel;
    txtCaixaPostal: TDBEdit;
    lblEmail: TLabel;
    txtEmail: TDBEdit;
    lblCidade: TLabel;
    txtCidade: TJvDBComboEdit;
    txtCidadeDescricao: TDBText;
    txtEstadoDescricao: TDBText;
    lblBairro: TLabel;
    txtBairro: TDBEdit;
    txttxtSexo: TDBEdit;
    lblSexo: TLabel;
    txtTelFixo: TDBEdit;
    lblTelFixo: TLabel;
    txtTelMovel: TDBEdit;
    lblTelMovel: TLabel;
    txtFax: TDBEdit;
    lblFax: TLabel;
    txtSituacao: TDBEdit;
    lblSituacao: TLabel;
    lblRota: TLabel;
    txtRota: TDBEdit;
    lblLimite: TLabel;
    txtLimite: TDBEdit;
    dpkValidade: TJvDBDateEdit;
    lblValidade: TLabel;
    lblSaldo: TLabel;
    txtSaldo: TDBEdit;
    lblEnderecoCobranca: TLabel;
    lblEnderecoCob: TLabel;
    txtEnderecoCob: TDBEdit;
    lblCepCob: TLabel;
    txtCepCob: TDBEdit;
    lblCidadeCob: TLabel;
    txtCidadeCob: TDBEdit;
    lblUfCob: TLabel;
    txtUfCob: TDBEdit;
    txtBairroCob: TDBEdit;
    lblBairroCob: TLabel;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltra: TButton;
    lblCampoBusca: TLabel;
    lblTextoBuscado: TLabel;
    btnNotasFiscais: TButton;
    btnFinanceiro: TButton;
    btnEstatistica: TButton;
    wwDBGrid1: TwwDBGrid;
    dsoContatos: TwwDataSource;
    wwDBGrid2: TwwDBGrid;
    dsoReclamacoes: TwwDataSource;
    wwDBGrid3: TwwDBGrid;
    dsoInformacoes: TwwDataSource;
    wwDBGrid4: TwwDBGrid;
    dsoBancoInformacoes: TwwDataSource;
    btnSair: TSpeedButton;
    Panel4: TPanel;
    Label4: TLabel;
    CAD_CD_C_CLI: TClientDataSet;
    CAD_CD_C_CLICAD_SQ_C_CLI_REC: TDataSetField;
    CAD_CD_C_CLICAD_SQ_C_CLI_INF: TDataSetField;
    CAD_CD_C_CLICAD_SQ_C_CLI_CTO: TDataSetField;
    CAD_CD_C_CLIid_cliente: TIntegerField;
    CAD_CD_C_CLIpessoa: TIntegerField;
    CAD_CD_C_CLInome: TWideStringField;
    CAD_CD_C_CLIendereco: TWideStringField;
    CAD_CD_C_CLIend_complemento: TWideStringField;
    CAD_CD_C_CLIcep: TWideStringField;
    CAD_CD_C_CLInumero: TWideStringField;
    CAD_CD_C_CLItel_fixo: TWideStringField;
    CAD_CD_C_CLItel_movel: TWideStringField;
    CAD_CD_C_CLIfax: TWideStringField;
    CAD_CD_C_CLIdoc_cnpj_cpf: TWideStringField;
    CAD_CD_C_CLIdoc_ie_identidade: TWideStringField;
    CAD_CD_C_CLIdoc_ip: TWideStringField;
    CAD_CD_C_CLIdoc_im: TWideStringField;
    CAD_CD_C_CLIbairro: TWideStringField;
    CAD_CD_C_CLIid_cidade: TWideStringField;
    CAD_CD_C_CLIativo: TBooleanField;
    CAD_CD_C_CLIemail: TWideStringField;
    CAD_CD_C_CLIlim_valor: TFMTBCDField;
    CAD_CD_C_CLIlim_saldo: TFMTBCDField;
    CAD_CD_C_CLIlim_validade: TDateField;
    CAD_CD_C_CLIsexo: TIntegerField;
    CAD_CD_C_CLIsituacao: TIntegerField;
    CAD_CD_C_CLIdta_nascimento: TDateField;
    CAD_CD_C_CLIdta_cadastro: TDateField;
    CAD_CD_C_CLItipo_cliente: TIntegerField;
    CAD_CD_C_CLIcob_endereco: TWideStringField;
    CAD_CD_C_CLIcob_bairro: TWideStringField;
    CAD_CD_C_CLIcob_cidade: TWideStringField;
    CAD_CD_C_CLIcob_estado: TWideStringField;
    CAD_CD_C_CLIdta_ult_compra: TDateField;
    CAD_CD_C_CLIdta_pri_compra: TDateField;
    CAD_CD_C_CLIcod_sufrana: TWideStringField;
    CAD_CD_C_CLIcod_pais: TWideStringField;
    CAD_CD_C_CLIid_perfil_cli: TIntegerField;
    CAD_CD_C_CLIid_rota: TIntegerField;
    CAD_CD_C_CLIdoc_rg_orgao: TWideStringField;
    CAD_CD_C_CLIapelido: TWideStringField;
    CAD_CD_C_CLIcod_lme: TWideStringField;
    CAD_CD_C_CLIrev_lme: TWideStringField;
    CAD_CD_C_CLIfiliacao: TWideStringField;
    CAD_CD_C_CLIcob_cep: TWideStringField;
    CAD_CD_C_CLIid_regiao: TIntegerField;
    CAD_CD_C_CLICAD_SQ_C_CLI_BCO: TDataSetField;
    CAD_CD_C_CLIint_uf: TWideStringField;
    CAD_CD_C_CLIint_situacao: TWideStringField;
    CAD_CD_C_CLIint_sexo: TWideStringField;
    CAD_CD_C_CLIint_nomecid: TWideStringField;
    CAD_CD_C_CLIint_nomereg: TWideStringField;
    CAD_CD_C_CLIcontribuinte: TIntegerField;
    CAD_CD_C_CLIid_vendedor: TIntegerField;
    CAD_CD_C_CLIint_reg_desc_perc: TFloatField;
    CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField;
    CAD_CD_C_CLIprofissao: TWideStringField;
    CAD_CD_C_CLIrenda: TFMTBCDField;
    CAD_CD_C_CLIint_nomepai: TWideStringField;
    CAD_CD_C_CLIid_responsavel: TIntegerField;
    CAD_CD_C_CLIint_nomeresp: TWideStringField;
    CAD_CD_C_CLIint_pessoa: TWideStringField;
    CAD_CD_C_CLIint_nomepec: TWideStringField;
    CAD_CD_C_CLI_INF: TClientDataSet;
    CAD_CD_C_CLI_INFid_cliente: TIntegerField;
    CAD_CD_C_CLI_INFid_cli_informa: TIntegerField;
    CAD_CD_C_CLI_INFdta_informacao: TDateField;
    CAD_CD_C_CLI_INFdta_maior_compra: TDateField;
    CAD_CD_C_CLI_INFvlr_maior_compra: TFMTBCDField;
    CAD_CD_C_CLI_INFvlr_lim_liberado: TFMTBCDField;
    CAD_CD_C_CLI_INFatrasa: TBooleanField;
    CAD_CD_C_CLI_INFinformante: TWideStringField;
    CAD_CD_C_CLI_INFobs: TWideStringField;
    CAD_CD_C_CLI_INFid_sequencia: TIntegerField;
    CAD_CD_C_CLI_BCO: TClientDataSet;
    CAD_CD_C_CLI_BCOdta_informacao: TDateField;
    CAD_CD_C_CLI_BCOnome_arquivo: TWideStringField;
    CAD_CD_C_CLI_BCOobs: TWideStringField;
    CAD_CD_C_CLI_BCOarquivo: TBlobField;
    CAD_CD_C_CLI_BCOid_cliente: TIntegerField;
    CAD_CD_C_CLI_BCOid_banco_info: TIntegerField;
    CAD_CD_C_CLI_REC: TClientDataSet;
    CAD_CD_C_CLI_RECdta_registro: TDateField;
    CAD_CD_C_CLI_RECobs: TWideStringField;
    CAD_CD_C_CLI_RECid_cliente: TIntegerField;
    CAD_CD_C_CLI_RECid_reclamacao: TIntegerField;
    CAD_CD_C_CLI_CTO: TClientDataSet;
    CAD_CD_C_CLI_CTOid_cliente: TIntegerField;
    CAD_CD_C_CLI_CTOid_contato: TIntegerField;
    CAD_CD_C_CLI_CTOnome: TWideStringField;
    CAD_CD_C_CLI_CTOtelefone: TWideStringField;
    CAD_CD_C_CLI_CTOemail: TWideStringField;
    CAD_CD_C_CLI_CTOdta_nascimento: TDateField;
    CAD_CD_C_CLI_CTOtipo_contato: TIntegerField;
    btnLocalizacao: TSpeedButton;
    CAD_CD_C_CLIgps_latitude: TFloatField;
    CAD_CD_C_CLIgps_longitude: TFloatField;
    btnExtrato: TButton;
    CAD_CD_C_CLIint_nomevnd: TWideStringField;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltraClick(Sender: TObject);
    procedure btnNotasFiscaisClick(Sender: TObject);
    procedure btnEstatisticaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnLocalizacaoClick(Sender: TObject);
    procedure btnExtratoClick(Sender: TObject);
  private
    procedure carregaCores;
     var
       xCorSistema:string;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure OpenForm(FClass: TFormClass; var Instance);

var
  CSU_FM_C_CLI: TCSU_FM_C_CLI;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_C_CLI_NFE, CSU_UN_C_CLI_FIN, CSU_UN_C_CLI_STA,CSU_UN_M_VPR_ROT,
  CSU_UN_C_CLI_EXT;

procedure TCSU_FM_C_CLI.btnEstatisticaClick(Sender: TObject);
begin
 if CAD_CD_C_CLI.IsEmpty then
   begin
     ShowMessage('É necessário selecionar cliente.');
     exit;
   end;


 CSU_FM_C_CLI_STA := TCSU_FM_C_CLI_STA.Create(Self);
 CSU_FM_C_CLI_STA.CodCliente := CAD_CD_C_CLI.FieldBYName('ID_CLIENTE').AsString;
 CSU_FM_C_CLI_STA.ShowModal;
 CSU_FM_C_CLI_STA.Free;
end;


procedure TCSU_FM_C_CLI.carregaCores;
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

procedure TCSU_FM_C_CLI.btnExtratoClick(Sender: TObject);
begin

  if not CAD_CD_C_CLI.IsEmpty then
     begin
        if not dmGeral.Conexao.Connected then
           begin
             Showmessage('Servidor desconectou.');
             abort;
           end;
        OpenForm(TCSU_FM_C_CLI_EXT, CSU_FM_C_CLI_EXT)
        {CSU_FM_C_CLI_FIN := TCSU_FM_C_CLI_FIN.Create(Self);
        CSU_FM_C_CLI_FIN.lblNomeCli.Caption := CAD_CD_C_CLI.FieldByName('ID_CLIENTE').AsString + ' - ' + CAD_CD_C_CLI.FieldByName('NOME').AsString;
        CSU_FM_C_CLI_FIN.ShowModal;
        CSU_FM_C_CLI_FIN.Free;}
     end;
end;

procedure TCSU_FM_C_CLI.btnFiltraClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    CAD_CD_C_CLI.Close;
    CAD_CD_C_CLI.Data :=
          CAD_CD_C_CLI.DataRequest(
              VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCSU_FM_C_CLI.btnFinanceiroClick(Sender: TObject);
begin
  if not CAD_CD_C_CLI.IsEmpty then
     begin
        if not dmGeral.Conexao.Connected then
           begin
             Showmessage('Servidor desconectou.');
             abort;
           end;
        CSU_FM_C_CLI_FIN := TCSU_FM_C_CLI_FIN.Create(Self);
        CSU_FM_C_CLI_FIN.lblNomeCli.Caption := CAD_CD_C_CLI.FieldByName('ID_CLIENTE').AsString + ' - ' + CAD_CD_C_CLI.FieldByName('NOME').AsString;
        CSU_FM_C_CLI_FIN.ShowModal;
        CSU_FM_C_CLI_FIN.Free;
     end;
end;

procedure TCSU_FM_C_CLI.btnLocalizacaoClick(Sender: TObject);
begin
  xCaminho := '';

  if (CAD_CD_C_CLI.FieldByName('gps_latitude').AsString<>'')
    and (CAD_CD_C_CLI.FieldByName('gps_longitude').AsString<>'') then
    begin
      Application.CreateForm(TCSU_FM_M_VPR_ROT,CSU_FM_M_VPR_ROT);

      xCaminho := xCaminho+ stringReplace( CAD_CD_C_CLI.FieldByName('gps_latitude').AsString,',','.',[rfReplaceAll]) +','+
                          stringReplace(CAD_CD_C_CLI.FieldByName('gps_longitude').AsString,',','.',[rfReplaceAll])+'/';

      xCaminho := xCaminho+ stringReplace( dmgeral.CAD_CD_C_PAR.FieldByName('gps_latitude').AsString,',','.',[rfReplaceAll]) +','+
                          stringReplace(dmgeral.CAD_CD_C_PAR.FieldByName('gps_longitude').AsString,',','.',[rfReplaceAll])+'/';

      CSU_FM_M_VPR_ROT.btnRotaClick(sender);
      CSU_FM_M_VPR_ROT.panel1.Visible := false;
      CSU_FM_M_VPR_ROT.ShowModal;
      CSU_FM_M_VPR_ROT.Free;
    end
  else
    Showmessage('Dados de localização do cliente não cadastrado.');
end;

procedure TCSU_FM_C_CLI.btnNotasFiscaisClick(Sender: TObject);
begin
  if not CAD_CD_C_CLI.IsEmpty then
    begin
      dmGeral.BUS_CD_M_NFE.Close;
      dmGeral.BUS_CD_M_NFE.Data :=
              dmGeral.BUS_CD_M_NFE.DataRequest(
                  VarArrayOf([95,  ' '''+'S'+''','''+'R'+''' '  ,
                      CAD_CD_C_CLI.FieldByName('id_cliente').Text]));

      CSU_FM_C_CLI_NFE := TCSU_FM_C_CLI_NFE.Create(Self);
      CSU_FM_C_CLI_NFE.ShowModal;
      CSU_FM_C_CLI_NFE.Free;
  end;
end;

procedure TCSU_FM_C_CLI.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_CLI.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;
procedure TCSU_FM_C_CLI.dgItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if not CAD_CD_C_CLIativo.AsBoolean then
    begin
      aFont.Color := clMaroon;
      aFont.Style := [fsBold];
    end;
end;

procedure TCSU_FM_C_CLI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CAD_CD_C_CLI.Close;
FreeAndNil(CSU_FM_C_CLI);
end;

procedure TCSU_FM_C_CLI.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TCSU_FM_C_CLI.FormResize(Sender: TObject);
begin
 pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
 pnlCentral.left := (pnlPRincipal.Width div 2) - (pnlCentral.width div 2);
end;

procedure TCSU_FM_C_CLI.FormShow(Sender: TObject);
begin
  CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
         CAD_CD_C_CLI.DataRequest(
              VarArrayOf([0, dmGeral.BUS_CD_M_CSU_OPR_PEDid_cliente.Text]));
end;

procedure TCSU_FM_C_CLI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       Screen.Cursor := crHourGlass;
       try
         CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
         CAD_CD_C_CLI.DataRequest(
              VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
       finally
         Screen.Cursor := crDefault;
       end;
     end;
end;

procedure OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;

end.












