unit OFI_UN_M_MTC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit,
  Data.DB, vcl.wwdatsrc, Vcl.DBCGrids, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, vcl.Wwdotdot, vcl.Wwdbcomb,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls;

type
  TOFI_FM_M_MTC = class(TForm)
    pnlTopo: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dbcOrv: TDBCtrlGrid;
    dso: TwwDataSource;
    txtOrdem: TwwDBEdit;
    lblOrdem: TLabel;
    btnSair: TcxButton;
    txtData: TJvDBDateEdit;
    lblEntrega: TLabel;
    txtPlaca: TwwDBEdit;
    lblPlaca: TLabel;
    txtCliente: TwwDBEdit;
    lblCliente: TLabel;
    txtReclamacaoCliente: TDBMemo;
    lblReclamacaoCliente: TLabel;
    lblTipoOS: TLabel;
    txtTipoOS: TwwDBEdit;
    lblSituacao: TLabel;
    cbbSituacao: TwwDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbSituacaoEnter(Sender: TObject);
    procedure cbbSituacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_MTC: TOFI_FM_M_MTC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TOFI_FM_M_MTC.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TOFI_FM_M_MTC.cbbSituacaoChange(Sender: TObject);
begin
  if (dmGeral.OFI_CD_M_ORV.State in [dsEdit]) then
     begin
      dmGeral.OFI_CD_M_ORV.BeforePost := nil;
      dmgeral.OFI_CD_M_ORV.Post;
      dmGeral.OFI_CD_M_ORV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;
      dmGeral.OFI_CD_M_ORV.ApplyUpdates(0);
      if txtOrdem.CanFocus then
        begin
          txtOrdem.SetFocus;
        end;
      cbbSituacao.OnChange := nil;
     end;
end;

procedure TOFI_FM_M_MTC.cbbSituacaoEnter(Sender: TObject);
begin
  dmgeral.OFI_CD_M_ORV.edit;
  cbbSituacao.OnChange := cbbSituacaoChange;
end;

procedure TOFI_FM_M_MTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmGeral.OFI_CD_M_ORV.Close;
   Action :=caFree;
end;

procedure TOFI_FM_M_MTC.FormCreate(Sender: TObject);
begin
     WindowState := wsMaximized;
     self.FormStyle := fsMDIChild;
end;

procedure TOFI_FM_M_MTC.FormShow(Sender: TObject);
begin
    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

    dmGeral.OFI_CD_M_ORV.Close;
    dmGeral.OFI_CD_M_ORV.Data :=
    dmGeral.OFI_CD_M_ORV.DataRequest(
                VarArrayOf([8,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'','2']));

    cbbSituacao.OnChange := nil;
    dmGeral.OFI_CD_M_ORV.IndexFieldNames := 'ID_ORDEM';
end;

end.
