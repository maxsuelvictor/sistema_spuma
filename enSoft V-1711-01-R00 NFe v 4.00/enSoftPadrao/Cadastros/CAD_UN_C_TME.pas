unit CAD_UN_C_TME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TCAD_FM_C_TME = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    chkAtivo: TDBCheckBox;
    chkMovimentaEstoque: TDBCheckBox;
    chkCriticaEstoque: TDBCheckBox;
    cbbTipoMovimento: TwwDBLookupCombo;
    lblTipoMovimento: TLabel;
    cbbIndicador: TwwDBLookupCombo;
    lblIndicador: TLabel;
    lblPessoaFisica: TLabel;
    lblInternoPessoaFisica: TLabel;
    lblExternoPessoaFisica: TLabel;
    lblPessoaJuridica: TLabel;
    lblInternoPessoaJuridica: TLabel;
    lblExternoPessoaJuridica: TLabel;
    cbbInternoPessoaFisica: TwwDBLookupCombo;
    cbbExternoPessoaFisica: TwwDBLookupCombo;
    cbbInternoPessoaJuridica: TwwDBLookupCombo;
    cbbExternoPessoaJuridica: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label1: TLabel;
    cbbInternoPessoaFisicaSubstituta: TwwDBLookupCombo;
    cbbExternoPessoaFisicaSubstituta: TwwDBLookupCombo;
    cbbInternoPessoaJuridicaSubstituta: TwwDBLookupCombo;
    cbbExternoPessoaJuridicaSubstituta: TwwDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbbExternoServico: TwwDBLookupCombo;
    cbbInternoServico: TwwDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbbExteriorPessoaFisica: TwwDBLookupCombo;
    Label13: TLabel;
    cbbExteriorPessoaJuridica: TwwDBLookupCombo;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbInternoPessoaFisicaEnter(Sender: TObject);
    procedure cbbExternoPessoaFisicaEnter(Sender: TObject);
    procedure cbbInternoPessoaJuridicaEnter(Sender: TObject);
    procedure cbbExternoPessoaJuridicaEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTipoMovimentoEnter(Sender: TObject);
    procedure cbbIndicadorEnter(Sender: TObject);
    procedure cbbInternoPessoaFisicaSubstitutaEnter(Sender: TObject);
    procedure cbbExternoPessoaFisicaSubstitutaEnter(Sender: TObject);
    procedure cbbInternoPessoaJuridicaSubstitutaEnter(Sender: TObject);
    procedure cbbExternoPessoaJuridicaSubstitutaEnter(Sender: TObject);
    procedure cbbInternoServicoEnter(Sender: TObject);
    procedure cbbExternoServicoEnter(Sender: TObject);
    procedure cbbExteriorPessoaFisicaEnter(Sender: TObject);
    procedure cbbExteriorPessoaJuridicaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TME: TCAD_FM_C_TME;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CFO;

procedure TCAD_FM_C_TME.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TME);
  cbbIndicador.Enabled := True;
  chkCriticaEstoque.Enabled := True;
  chkMovimentaEstoque.Enabled := True;
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_TME.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TME) then
      begin
        inherited;
        cbbIndicador.Enabled := False;
        chkCriticaEstoque.Enabled := False;
        chkMovimentaEstoque.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_TME.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TME) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_TME.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TME);
end;

procedure TCAD_FM_C_TME.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.CAD_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString;

   DmGeral.Grava(dmGeral.CAD_CD_C_TME);
   inherited;

   dmGeral.BusCfop(1,'%');
   dmGeral.BUS_PR_X_EXS;
   dmGeral.BUS_PR_X_IND;

   dmGeral.CAD_CD_C_TME.Close;
   dmGeral.CAD_CD_C_TME.Data :=
   dmGeral.CAD_CD_C_TME.DataRequest(
           VarArrayOf([90, codigo]));

  {dmGeral.BusCfop(1,'%');
  dmGeral.BUS_PR_X_EXS;
  dmGeral.BUS_PR_X_IND;}
end;

procedure TCAD_FM_C_TME.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_TME.Close;
    dmGeral.CAD_CD_C_TME.Data :=
    dmGeral.CAD_CD_C_TME.DataRequest(
            VarArrayOf([90+cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_TME.cbbExteriorPessoaFisicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExteriorPessoaFisica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExteriorPessoaJuridicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExteriorPessoaJuridica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExternoPessoaFisicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExternoPessoaFisica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExternoPessoaFisicaSubstitutaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExternoPessoaFisicaSubstituta.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExternoPessoaJuridicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExternoPessoaJuridica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExternoPessoaJuridicaSubstitutaEnter(
  Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExternoPessoaJuridicaSubstituta.DropDown;
end;

procedure TCAD_FM_C_TME.cbbExternoServicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbExternoServico.DropDown;
end;

procedure TCAD_FM_C_TME.cbbIndicadorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_X_IND.Open;
  cbbIndicador.DropDown;
end;

procedure TCAD_FM_C_TME.cbbInternoPessoaFisicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbInternoPessoaFisica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbInternoPessoaFisicaSubstitutaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbInternoPessoaFisicaSubstituta.DropDown;
end;

procedure TCAD_FM_C_TME.cbbInternoPessoaJuridicaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbInternoPessoaJuridica.DropDown;
end;

procedure TCAD_FM_C_TME.cbbInternoPessoaJuridicaSubstitutaEnter(
  Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbInternoPessoaJuridicaSubstituta.DropDown;
end;

procedure TCAD_FM_C_TME.cbbInternoServicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbInternoServico.DropDown;
end;

procedure TCAD_FM_C_TME.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_TME.cbbTipoMovimentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_X_EXS.Open;
  cbbTipoMovimento.DropDown;
end;

procedure TCAD_FM_C_TME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TME.Close;
  FreeAndNil(CAD_FM_C_TME);
end;

procedure TCAD_FM_C_TME.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  dmGeral.BUS_PR_X_EXS;
  dmGeral.BUS_PR_X_IND;

  dmGeral.CAD_CD_C_TME.Close;
  dmGeral.CAD_CD_C_TME.Data := dmGeral.CAD_CD_C_TME.DataRequest(VarArrayOf([90, '']));
  dmGeral.CAD_CD_C_TME.Open;

end;

procedure TCAD_FM_C_TME.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
