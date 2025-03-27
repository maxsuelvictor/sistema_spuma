unit CSU_UN_M_ACR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons, Datasnap.DBClient;

type
  TCSU_FM_M_ACR = class(TPAD_FM_X_FRM)
    gbFiltro: TGroupBox;
    lblAte: TLabel;
    lblPeriodo: TLabel;
    btnFiltro: TSpeedButton;
    dpkDataInicial: TJvDateEdit;
    dpkDataFinal: TJvDateEdit;
    gbQtdeReclam: TGroupBox;
    txtQtdeReclamacoes: TEdit;
    gbQtdeDef: TGroupBox;
    grdQtdeDefeitos: TwwDBGrid;
    dsQtdeDefeitos: TDataSource;
    gbQtdeRegiao: TGroupBox;
    grdQtdeRegiao: TwwDBGrid;
    dsQtdeReg: TDataSource;
    gbClientesReclam: TGroupBox;
    grdClientesReclam: TwwDBGrid;
    gbQtdeDisp: TGroupBox;
    grdQtdeDisp: TwwDBGrid;
    cdsQtdeDefeitos: TClientDataSet;
    cdsQtdeClientes: TClientDataSet;
    cdsQtdeDisp: TClientDataSet;
    cdsQtdeReg: TClientDataSet;
    dsQtdeClientes: TDataSource;
    dsQtdeDisp: TDataSource;
    cdsQtdeClientescodigo: TIntegerField;
    cdsQtdeClientesdescricao: TStringField;
    cdsQtdeClientesqtde: TIntegerField;
    cdsQtdeDefeitoscodigo: TIntegerField;
    cdsQtdeDefeitosdescricao: TStringField;
    cdsQtdeDefeitosqtde: TIntegerField;
    cdsQtdeRegcodigo: TIntegerField;
    cdsQtdeRegdescricao: TStringField;
    cdsQtdeRegqtde: TIntegerField;
    cdsQtdeDispcodigo: TIntegerField;
    cdsQtdeDispdescricao: TStringField;
    cdsQtdeDispqtde: TIntegerField;
    cdsAcr: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_ACR: TCSU_FM_M_ACR;

implementation

{$R *.dfm}

uses
    uProxy, uDmGeral;

procedure TCSU_FM_M_ACR.btnFiltroClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;


  if ((dpkDataInicial.Text = '  /  /    ') or (dpkDataFinal.Text = '  /  /    ')) then
      begin
        ShowMessage('O período deve ser preenchido.');
        exit;
      end
  else
      begin
        if (dpkDataInicial.Date >  dpkDataFinal.Date) then
            begin
              ShowMessage('Data inicial não pode ser maior que a data final.');
              exit;
            end;
      end;

 try
  Screen.Cursor := crHourGlass;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  cdsAcr.Data := SMPrincipal.enSgqEstatisticaAcr(1,VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,
                                      dpkDataInicial.Text,dpkDataFinal.Text]));
  if not cdsAcr.IsEmpty then
     begin
        txtQtdeReclamacoes.Text := cdsAcr.FieldByName('qtde').AsString;
     end;
  //FreeAndNil(SMPrincipal);
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  cdsQtdeDefeitos.Data := SMPrincipal.enSgqEstatisticaAcr(2,VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,
                                      dpkDataInicial.Text,dpkDataFinal.Text]));
  //FreeAndNil(SMPrincipal);
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  cdsQtdeReg.Data := SMPrincipal.enSgqEstatisticaAcr(3,VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,

                                      dpkDataInicial.Text,dpkDataFinal.Text]));
  ///FreeAndNil(SMPrincipal);
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  cdsQtdeClientes.Data := SMPrincipal.enSgqEstatisticaAcr(4,VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,
                                      dpkDataInicial.Text,dpkDataFinal.Text]));
  //FreeAndNil(SMPrincipal);
  //SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  cdsQtdeDisp.Data := SMPrincipal.enSgqEstatisticaAcr(5,VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,
                                      dpkDataInicial.Text,dpkDataFinal.Text]));

 finally
   Screen.Cursor := crDefault;
   FreeAndNil(SMPrincipal);
 end;
end;

procedure TCSU_FM_M_ACR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CSU_FM_M_ACR);
end;

procedure TCSU_FM_M_ACR.FormShow(Sender: TObject);
begin
  inherited;

  txtQtdeReclamacoes.Text := '0';

  cdsAcr.CreateDataSet;
  cdsQtdeDefeitos.CreateDataSet;
  cdsQtdeClientes.CreateDataSet;
  cdsQtdeDisp.CreateDataSet;
  cdsQtdeReg.CreateDataSet;

  dpkDataInicial.SetFocus;
end;

end.
