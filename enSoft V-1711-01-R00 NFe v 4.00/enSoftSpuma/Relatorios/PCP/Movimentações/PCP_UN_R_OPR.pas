unit PCP_UN_R_OPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls;

type
  TPCP_FM_R_OPR = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    tsItens: TTabSheet;
    Label8: TLabel;
    lboxItens: TListBox;
    Label1: TLabel;
    tsCor: TTabSheet;
    lblCoresDisp: TLabel;
    lblCoresSel: TLabel;
    lboxCorSel: TListBox;
    lboxCorDisp: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_R_OPR: TPCP_FM_R_OPR;

implementation

{$R *.dfm}

end.
