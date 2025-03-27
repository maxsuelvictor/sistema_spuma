unit CSU_UN_M_OPR_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.Buttons, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  vcl.Wwdbedit;

type
  TCSU_FM_M_OPR_PED = class(TPAD_FM_X_FRM)
    lblPedidos: TLabel;
    dgPedidos: TwwDBGrid;
    lblItens: TLabel;
    dgPedidosIte: TwwDBGrid;
    lblTitulos: TLabel;
    dgPedidosTit: TwwDBGrid;
    dsoIte: TwwDataSource;
    dsoTit: TwwDataSource;
    btnDadosCliente: TcxButton;
    lblNOrdemProducao: TLabel;
    lblEmissao: TLabel;
    lblResponsavel: TLabel;
    txtNOrdemProducao: TwwDBEdit;
    txtEmissao: TJvDBDateEdit;
    txtResponsavel: TwwDBEdit;
    dsoOpr: TwwDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDadosClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_OPR_PED: TCSU_FM_M_OPR_PED;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_C_CLI, CSU_UN_M_OPR_ADM;

procedure TCSU_FM_M_OPR_PED.btnDadosClienteClick(Sender: TObject);
begin
  //inherited;
 { if dmGeral.BUS_CD_M_CSU_OPR_PED.IsEmpty then
    begin
      ShowMessage('Não há pedido de venda selecionado.');
      exit;
    end;

  dmGeral.CAD_CD_C_CLI.Close;
  dmGeral.CAD_CD_C_CLI.Data :=
          dmGeral.CAD_CD_C_CLI.DataRequest(
              VarArrayOf([0, dmGeral.BUS_CD_M_CSU_OPR_PED.FieldByName('ID_CLIENTE').AsString])); }


  CSU_FM_C_CLI := TCSU_FM_C_CLI.Create(Self);
   CSU_FM_C_CLI.FormStyle := fsNormal;
   CSU_FM_C_CLI.WindowState := wsNormal;
   CSU_FM_C_CLI.BorderIcons := [biSystemMenu,biMinimize];
   CSU_FM_C_CLI.Position := poMainFormCenter;
   CSU_FM_C_CLI.Show;




end;

procedure TCSU_FM_M_OPR_PED.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  FreeAndNil(CSU_FM_M_OPR_PED);
end;

procedure TCSU_FM_M_OPR_PED.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TCSU_FM_M_OPR_PED.FormShow(Sender: TObject);
begin
  //inherited;
  dmGeral.BUS_CD_M_CSU_OPR_PED.Close;
  dmGeral.BUS_CD_M_CSU_OPR_PED.Data :=
    dmGeral.BUS_CD_M_CSU_OPR_PED.DataRequest(
      VarArrayOf([0, dmGeral.BUS_CD_M_CSU_OPR.FieldByName('ID_OPR').AsString]));

  dmGeral.AtualizarGridItens(dgPedidosIte,'int_nomeite',21,11);
end;

end.
