unit FIN_UN_M_DCT_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, vcl.Wwdbedit, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TFIN_FM_M_DCT_CAN = class(TPAD_FM_X_FRM)
    btnSalvar: TBitBtn;
    txtMotivoCan: TDBMemo;
    procedure btnSalvarClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtMotivoCanEnter(Sender: TObject);
    procedure txtMotivoCanExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_DCT_CAN: TFIN_FM_M_DCT_CAN;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFIN_FM_M_DCT_CAN.acSairExecute(Sender: TObject);
begin
  // inherited;

   Close;
end;

procedure TFIN_FM_M_DCT_CAN.btnSalvarClick(Sender: TObject);
begin
 // inherited;
  if (trim(dmGeral.FIN_CD_M_DCT.FieldByName('CAN_MOTIVO').AsString) = '') then
     begin
       ShowMessage('Deve-se preencher o motivo do cancelamento.');
       exit;
     end;

  dmgeral.FIN_CD_M_DCT.edit;
  dmgeral.FIN_CD_M_DCT.FieldByName('CANCELADO').AsBoolean := true;
  try
   dmGeral.FIN_CD_M_DCT.BeforePost := nil;
   dmgeral.FIN_CD_M_DCT.Post;
  finally
     dmGeral.FIN_CD_M_DCT.BeforePost := dmGeral.FIN_CD_M_DCTBeforePost;
  end;

  dmGeral.FIN_CD_M_DCT.ApplyUpdates(0);
  ShowMessage('Cancelado!');
  Close;

end;

procedure TFIN_FM_M_DCT_CAN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // inherited;
   dmgeral.FIN_CD_M_DCT.Cancel;
end;

procedure TFIN_FM_M_DCT_CAN.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TFIN_FM_M_DCT_CAN.FormShow(Sender: TObject);
begin
  // inherited;
  txtMotivoCan.SetFocus;

end;

procedure TFIN_FM_M_DCT_CAN.txtMotivoCanEnter(Sender: TObject);
begin
  inherited;
//  FIN_FM_M_DCT_CAN.KeyPreview := false;
end;

procedure TFIN_FM_M_DCT_CAN.txtMotivoCanExit(Sender: TObject);
begin
  inherited;
 // FIN_FM_M_DCT_CAN.KeyPreview := true;
end;

end.
