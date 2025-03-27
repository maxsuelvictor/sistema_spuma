unit CAD_UN_C_MTV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, vcl.wwdblook, Vcl.DBCtrls, JvExMask,
  JvToolEdit, JvDBControls;

type
  TCAD_FM_C_MTV = class(TPAD_FM_X_PAD)
    dsoMes: TwwDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtJanValor: TwwDBEdit;
    txtFevValor: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtMarValor: TwwDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txtAbrValor: TwwDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    txtMaiValor: TwwDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    txtJunValor: TwwDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    txtJulValor: TwwDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    txtAgoValor: TwwDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    txtSetValor: TwwDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    txtOutValor: TwwDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    txtNovValor: TwwDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    txtDezValor: TwwDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cbbVendedor: TwwDBLookupCombo;
    txtAno: TwwDBEdit;
    txtJanQtde: TwwDBEdit;
    txtCodigo: TwwDBEdit;
    Label41: TLabel;
    wwDBGrid1: TwwDBGrid;
    txtGrupo: TJvDBComboEdit;
    txtGruDescricao: TDBText;
    dsoCsuMtv: TwwDataSource;
    Label42: TLabel;
    Label43: TLabel;
    txtAnoPassado: TDBText;
    txtFevQtde: TwwDBEdit;
    txtMarQtde: TwwDBEdit;
    txtAbrQtde: TwwDBEdit;
    txtMaiQtde: TwwDBEdit;
    txtJunQtde: TwwDBEdit;
    txtJulQtde: TwwDBEdit;
    txtAgoQtde: TwwDBEdit;
    txtSetQtde: TwwDBEdit;
    txtOutQtde: TwwDBEdit;
    txtNovQtde: TwwDBEdit;
    txtDezQtde: TwwDBEdit;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure txtGrupoButtonClick(Sender: TObject);
    procedure txtGrupoExit(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtJanQtdeExit(Sender: TObject);
    procedure txtFevQtdeExit(Sender: TObject);
    procedure txtMarQtdeExit(Sender: TObject);
    procedure txtAbrQtdeExit(Sender: TObject);
    procedure txtMaiQtdeExit(Sender: TObject);
    procedure txtJunQtdeExit(Sender: TObject);
    procedure txtJulQtdeExit(Sender: TObject);
    procedure txtAgoQtdeExit(Sender: TObject);
    procedure txtSetQtdeExit(Sender: TObject);
    procedure txtOutQtdeExit(Sender: TObject);
    procedure txtNovQtdeExit(Sender: TObject);
    procedure txtDezQtdeExit(Sender: TObject);
    procedure txtJanValorExit(Sender: TObject);
    procedure txtFevValorExit(Sender: TObject);
    procedure txtMarValorExit(Sender: TObject);
    procedure txtAbrValorExit(Sender: TObject);
    procedure txtMaiValorExit(Sender: TObject);
    procedure txtJunValorExit(Sender: TObject);
    procedure txtJulValorExit(Sender: TObject);
    procedure txtAgoValorExit(Sender: TObject);
    procedure txtSetValorExit(Sender: TObject);
    procedure txtOutValorExit(Sender: TObject);
    procedure txtNovValorExit(Sender: TObject);
    procedure txtDezValorExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBusca;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_MTV: TCAD_FM_C_MTV;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_GRP, uProxy;

procedure TCAD_FM_C_MTV.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MTV);

  try
   dmGeral.CAD_CD_C_MTV.BeforePost := nil;
   dmGeral.CAD_CD_C_MTV_MES.Insert;
  finally
   dmGeral.CAD_CD_C_MTV.BeforePost := dmGeral.CAD_CD_C_MTVBeforePost;
  end;

  cbbVendedor.Enabled := true;
  txtAno.Enabled := true;
  txtGrupo.Enabled := true;

  cbbVendedor.SetFocus;



end;

procedure TCAD_FM_C_MTV.AbrirBusca;
begin
  dmGeral.BusFuncionario(1,'');
end;

procedure TCAD_FM_C_MTV.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MTV) then
     begin
       inherited;
        cbbVendedor.Enabled := false;
        txtAno.Enabled := false;
        txtGrupo.Enabled := false;

        dmGeral.BUS_CD_C_CSU_MTV_HST.Close;
        dmGeral.BUS_CD_C_CSU_MTV_HST.Data :=
        dmGeral.BUS_CD_C_CSU_MTV_HST.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_MTV.FieldByName('ID_VENDEDOR').AsString,
                                                           IntToStr(dmGeral.CAD_CD_C_MTV.FieldByName('ANO').AsInteger-1),
                                                           dmGeral.CAD_CD_C_MTV.FieldByName('ID_GRUPO_PROD').AsString]));
        dmGeral.CAD_CD_C_MTV_MES.Edit;
        txtJanQtde.SetFocus;
     end;
end;

procedure TCAD_FM_C_MTV.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MTV) then
     begin
       inherited;
        dmGeral.BUS_CD_C_CSU_MTV_HST.Close;

       dbGrid.SetFocus;
     end
  else
     begin
       txtJanQtde.SetFocus;
     end;
end;

procedure TCAD_FM_C_MTV.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MTV);
end;

procedure TCAD_FM_C_MTV.acGravarExecute(Sender: TObject);
var
  codigo: string;
  mes:Integer;
begin
  codigo := dmGeral.CAD_CD_C_MTV.FieldByName('ID_MTV').AsString;

  dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_TOTAL').AsCurrency :=0;
  dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_TOTAL').AsCurrency :=0;
  for mes := 1 to 12 do
    begin
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_TOTAL').AsCurrency :=
                    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_TOTAL').AsCurrency +
                     dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_'+FormatFloat('00',mes)).AsCurrency;

      dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_TOTAL').AsCurrency :=
                    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_TOTAL').AsCurrency +
                    dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_'+FormatFloat('00',mes)).AsCurrency*
                    dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_'+FormatFloat('00',mes)).AsCurrency;
    end;
  DmGeral.Grava(dmGeral.CAD_CD_C_MTV);
  inherited;
  dmGeral.CAD_CD_C_MTV.Close;
  dmGeral.CAD_CD_C_MTV.Data :=
  dmGeral.CAD_CD_C_MTV.DataRequest(
          VarArrayOf([0, codigo]));
  AbrirBusca;
  dmGeral.BUS_CD_C_CSU_MTV_HST.Close;

end;

procedure TCAD_FM_C_MTV.btnFiltroClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  try
    inherited;
      dmGeral.CAD_CD_C_MTV.Close;
      dmGeral.CAD_CD_C_MTV.Data :=
      dmGeral.CAD_CD_C_MTV.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text]));  // Busca o caixa aberto para o funcionário especificado.

    finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_MTV.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
   txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2] then
    txtPesquisa.NumbersOnly := true
  else
    txtPesquisa.NumbersOnly := false;
end;

procedure TCAD_FM_C_MTV.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'');
  cbbVendedor.DropDown;
end;

procedure TCAD_FM_C_MTV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_CSU_MTV_HST.Close;
  dmGeral.BUS_CD_C_MTV.Close;
  dmGeral.CAD_CD_C_MTV.Close;
  FreeAndNil(CAD_FM_C_MTV);
end;

procedure TCAD_FM_C_MTV.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_MTV.Close;
  dmGeral.CAD_CD_C_MTV.Data := dmGeral.CAD_CD_C_MTV.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_MTV.Open;
end;

procedure TCAD_FM_C_MTV.txtAbrQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_04').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_04').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtAbrValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_04').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_04').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtAgoQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_08').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_08').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtAgoValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_08').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_08').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtDezQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_12').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_12').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtDezValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_12').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_12').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtFevQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_02').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_02').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtFevValorExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_02').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_02').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtGrupoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_GRP := TPSQ_FM_X_GRP.Create(Self);
   PSQ_FM_X_GRP.ShowModal;
      if not PSQ_FM_X_GRP.BUS_CD_C_GRP.IsEmpty then
         begin
           dmGeral.CAD_CD_C_MTV.FieldByName('ID_GRUPO_PROD').AsString :=
              trim(PSQ_FM_X_GRP.BUS_CD_C_GRP.FieldByName('ID_CODIGO').AsString);

           dmGeral.CAD_CD_C_MTV.FieldByName('INT_NOMEGRP').Text :=
              PSQ_FM_X_GRP.BUS_CD_C_GRP.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRP.Free;
end;

procedure TCAD_FM_C_MTV.txtGrupoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  valorMed:Currency;
  mes:Integer;
begin
  inherited;
  if btnCancelar.Focused then
       begin
         exit;
       end;

  dmGeral.CAD_CD_C_MTV.FieldByName('INT_NOMEGRP').Text := '';

  dmGeral.BUS_CD_C_GRP.Close;
  dmGeral.BUS_CD_C_GRP.Data :=
  dmGeral.BUS_CD_C_GRP.DataRequest(VarArrayOf([0, txtGrupo.Text]));


  if dmGeral.BUS_CD_C_GRP.IsEmpty then
    begin
      ShowMessage('Grupo do produto não cadastrado.');
      txtGrupo.SetFocus;
      exit;
    end;


    dmGeral.CAD_CD_C_MTV.FieldByName('INT_NOMEGRP').Text :=
         dmGeral.BUS_CD_C_GRP.FieldByName('DESCRICAO').AsString;



    dmGeral.BUS_CD_C_MTV.Close;
    dmGeral.BUS_CD_C_MTV.Data :=
    dmGeral.BUS_CD_C_MTV.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_MTV.FieldByName('ID_MTV').AsString,
                                                  dmGeral.CAD_CD_C_MTV.FieldByName('ID_VENDEDOR').AsString,
                                                   dmGeral.CAD_CD_C_MTV.FieldByName('ANO').AsString,
                                                    dmGeral.CAD_CD_C_MTV.FieldByName('ID_GRUPO_PROD').AsString]));

    if not dmGeral.BUS_CD_C_MTV.EOF then
      begin
        ShowMessage('Existe registro com mesmo vendedor, ano e grupo de produto cadastrado.');
        cbbVendedor.SetFocus;
        exit;
      end;



    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
    try
       valorMed :=
           SMPrincipal.enValorMedioGrp(dmGeral.CAD_CD_C_MTV.FieldByName('ID_VENDEDOR').AsInteger,
                                           dmGeral.CAD_CD_C_MTV.FieldByName('ANO').AsInteger-1,
                                           dmGeral.CAD_CD_C_MTV.FieldByName('ID_GRUPO_PROD').AsInteger );


       for mes := 1 to 12 do
             dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_'+formatfloat('00',mes)).AsCurrency := valorMed;

    finally
      FreeAndNil(SMPrincipal);
    end;


    dmGeral.BUS_CD_C_CSU_MTV_HST.Close;
    dmGeral.BUS_CD_C_CSU_MTV_HST.Data :=
    dmGeral.BUS_CD_C_CSU_MTV_HST.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_MTV.FieldByName('ID_VENDEDOR').AsString,
                                                           IntToStr(dmGeral.CAD_CD_C_MTV.FieldByName('ANO').AsInteger-1),
                                                           dmGeral.CAD_CD_C_MTV.FieldByName('ID_GRUPO_PROD').AsString]));


end;

procedure TCAD_FM_C_MTV.txtJanQtdeExit(Sender: TObject);
begin
  inherited;

  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_01').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_01').AsCurrency := 0;


end;

procedure TCAD_FM_C_MTV.txtJanValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_01').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_01').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtJulQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_07').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_07').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtJulValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_07').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_07').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtJunQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_06').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_06').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtJunValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_06').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_06').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtMaiQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_05').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_05').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtMaiValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_05').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_05').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtMarQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_03').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_03').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtMarValorExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_03').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_03').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtNovQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_11').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_11').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtNovValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_11').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_11').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtOutQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_10').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_10').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtOutValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_10').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_10').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtSetQtdeExit(Sender: TObject);
begin
  inherited;
   if dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_09').AsString = '' then
      dmGeral.CAD_CD_C_MTV_MES.FieldByName('QTDE_MES_09').AsCurrency := 0;
end;

procedure TCAD_FM_C_MTV.txtSetValorExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_09').AsString = '' then
     dmGeral.CAD_CD_C_MTV_MES.FieldByName('VALOR_MES_09').AsCurrency := 0;
end;

end.
