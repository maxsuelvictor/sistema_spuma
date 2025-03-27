unit CAD_UN_C_DTS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit;

type
  TCAD_FM_C_DTS = class(TPAD_FM_X_FRM)
    btnSalvar: TButton;
    txtData: TJvDateEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_DTS: TCAD_FM_C_DTS;

implementation

{$R *.dfm}

uses uDmGeral, enSoftMenu;

procedure TCAD_FM_C_DTS.btnSalvarClick(Sender: TObject);
begin
  inherited;
   xDataSis := strtodatetime(txtData.text);
   frmSoftMenu.dxStatusBar.Panels[1].Text:='Data do Sistema :'+DateToStr(xDataSis);
end;

procedure TCAD_FM_C_DTS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_DTS);
end;

procedure TCAD_FM_C_DTS.FormCreate(Sender: TObject);
begin
  inherited;
  //WindowState := wsNormal;
  //self.FormStyle := fsNormal;
end;

procedure TCAD_FM_C_DTS.FormShow(Sender: TObject);
begin
  inherited;
  txtData.text := formatdatetime('dd/mm/yyyy',xDataSis);
end;

end.
