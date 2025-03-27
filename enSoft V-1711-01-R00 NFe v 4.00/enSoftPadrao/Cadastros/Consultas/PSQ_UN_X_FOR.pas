unit PSQ_UN_X_FOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPSQ_FM_X_FOR = class(TPAD_FM_X_PSQ)
    BUS_CD_C_FOR: TClientDataSet;
    BUS_CD_C_FORid_fornecedor: TIntegerField;
    BUS_CD_C_FORdescricao: TWideStringField;
    BUS_CD_C_FORfantasia: TWideStringField;
    BUS_CD_C_FORendereco: TWideStringField;
    BUS_CD_C_FORend_complemento: TWideStringField;
    BUS_CD_C_FORcep: TWideStringField;
    BUS_CD_C_FORnumero: TWideStringField;
    BUS_CD_C_FORcp: TWideStringField;
    BUS_CD_C_FORtel_fixo: TWideStringField;
    BUS_CD_C_FORtel_movel: TWideStringField;
    BUS_CD_C_FORfax: TWideStringField;
    BUS_CD_C_FORdoc_cnpj: TWideStringField;
    BUS_CD_C_FORdoc_cpf: TWideStringField;
    BUS_CD_C_FORdoc_ie: TWideStringField;
    BUS_CD_C_FORdoc_im: TWideStringField;
    BUS_CD_C_FORbairro: TWideStringField;
    BUS_CD_C_FORid_cidade: TWideStringField;
    BUS_CD_C_FORativo: TBooleanField;
    BUS_CD_C_FORemail: TWideStringField;
    BUS_CD_C_FORlim_valor: TFMTBCDField;
    BUS_CD_C_FORdta_fundacao: TDateField;
    BUS_CD_C_FORdta_cadastro: TDateField;
    BUS_CD_C_FORsenha_cotacao: TWideStringField;
    BUS_CD_C_FORfin_conta: TIntegerField;
    BUS_CD_C_FORfin_agencia: TWideStringField;
    BUS_CD_C_FORfin_banco: TIntegerField;
    BUS_CD_C_FORfin_favor: TWideStringField;
    BUS_CD_C_FORmetodo1_norma_aplicavel: TWideStringField;
    BUS_CD_C_FORmetodo1_data_validade: TDateField;
    BUS_CD_C_FORmetodo2_data_recebimento: TDateField;
    BUS_CD_C_FORmetodo2_situacao: TIntegerField;
    BUS_CD_C_FORmetodo2_proc_qualificacao: TWideStringField;
    BUS_CD_C_FORmetodo3_metodo: TIntegerField;
    BUS_CD_C_FORmetodo3_data: TDateField;
    BUS_CD_C_FORmetodo3_numero_nf: TWideStringField;
    BUS_CD_C_FORtransportadora: TBooleanField;
    BUS_CD_C_FORint_uf: TWideStringField;
    BUS_CD_C_FORCAD_SQ_C_FOR_REP: TDataSetField;
    BUS_CD_C_FORcod_lme: TWideStringField;
    BUS_CD_C_FORrev_lme: TWideStringField;
    BUS_CD_C_FORtipo_fornecedor: TIntegerField;
    BUS_CD_C_FORint_nomecid: TWideStringField;
    BUS_CD_C_FORcod_pais: TWideStringField;
    BUS_CD_C_FORregime: TIntegerField;
    BUS_CD_C_FORaval_ctc_perg_01: TIntegerField;
    BUS_CD_C_FORaval_ctc_perg_02: TIntegerField;
    BUS_CD_C_FORaval_ctc_perg_03: TIntegerField;
    BUS_CD_C_FORaval_ctc_perg_04: TIntegerField;
    BUS_CD_C_FORmetodo2_sit_justificativa: TWideStringField;
    BUS_CD_C_FORmetodo3_observacoes: TWideStringField;
    gbEndereco: TGroupBox;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblNumero: TLabel;
    lblUF: TLabel;
    txtEndereco: TDBText;
    txtBairro: TDBText;
    txtCidade: TDBText;
    txtNumero: TDBText;
    txtUF: TDBText;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_FOR: TPSQ_FM_X_FOR;
  tipo_pesquisa:Integer = 0; //0-Traz fornecedores ativos e 1-Traz fornecedores ativos e inativos.
                             //Foi necessário criar essa variavel para que possa ser selecionado fornecedor inativo
                             // na tela FIN_FM_M_PBX. Responsavel:Luan. Data:04/03/2016

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_FOR.btnPesquisaClick(Sender: TObject);
var
  index: integer;
begin
  inherited;

  if cmbParametro.ItemIndex = 0 then
     index := 0;

  if tipo_pesquisa = 0 then
     begin
      if cmbParametro.ItemIndex = 1 then
         index := 6;
      if cmbParametro.ItemIndex = 2 then
         index := 7;
     end;

  if tipo_pesquisa = 1 then
     begin
      if cmbParametro.ItemIndex = 1 then
         index := 1;
      if cmbParametro.ItemIndex = 2 then
         index := 2;
     end;

  BUS_CD_C_FOR.Close;
  BUS_CD_C_FOR.Data :=
               BUS_CD_C_FOR.DataRequest(
                            VarArrayOf([index, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_FOR.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN)  then
      begin
        btnPesquisaClick(self);
      end;
end;

procedure TPSQ_FM_X_FOR.FormShow(Sender: TObject);
begin
  inherited;
  edtPesquisa.SetFocus;
end;

end.
