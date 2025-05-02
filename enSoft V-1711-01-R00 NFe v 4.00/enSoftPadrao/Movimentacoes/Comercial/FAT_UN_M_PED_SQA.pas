unit FAT_UN_M_PED_SQA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB, Datasnap.DBClient, System.IniFiles, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.SqlExpr, Datasnap.DSConnect, vcl.Wwdbedit,
  vcl.wwdblook, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Buttons, System.Math, vcl.Wwdbspin, vcl.wwdatsrc;

type
  TFAT_FM_M_PED_SQA = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    btnImporta: TButton;
    btnSair: TButton;
    Label10: TLabel;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    txtPcpObsItem: TDBMemo;
    lblItemSobMed: TLabel;
    Label1: TLabel;
    dsPedSqa: TwwDataSource;
    dsPedtIten: TwwDataSource;
    txtQtdeRetirarConf: TwwDBSpinEdit;
    Label2: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Button1: TButton;
    procedure grdItensDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED_SQA: TFAT_FM_M_PED_SQA;


implementation

{$R *.dfm}

uses uDmGeral, uProxy, FAT_UN_M_PED, PSQ_UN_X_ITE;


procedure TFAT_FM_M_PED_SQA.grdItensDblClick(Sender: TObject);
begin
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_sequencia').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_item').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_cor').AsInteger :=
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_tamanho').AsInteger :=
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('pcp_obs_item').AsString :=
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_solicitacao').AsDateTime := date;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_solicitacao').AsDateTime := time;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_func_solicitacao').AsInteger := xFuncionario;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency :=
          dmgeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;
//  dmgeral.FAT_CD_M_PED_SQA.FieldByName('liberado_destinatario
//  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_usu_destinatario
 // dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_liberado
 // dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_liberado
end;

end.
