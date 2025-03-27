unit OFI_UN_M_RQP_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons;

type
  TOFI_FM_M_RQP_CAN = class(TPAD_FM_X_FRM)
    txtMotivoCancelamento: TwwDBEdit;
    btnSalvar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_RQP_CAN: TOFI_FM_M_RQP_CAN;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TOFI_FM_M_RQP_CAN.acSairExecute(Sender: TObject);
begin
  //inherited;
  Close;
end;

procedure TOFI_FM_M_RQP_CAN.btnSalvarClick(Sender: TObject);
begin
  //inherited;
  if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CAN_MOTIVO').AsString = '') then
     begin
       ShowMessage('Deve-se preencher o motivo do cancelamento do registro.');
       txtMotivoCancelamento.Text;
       exit;
     end;

  dmgeral.OFI_CD_M_ORV_ITE.edit;
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean := True;
  dmgeral.OFI_CD_M_ORV_ITE.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
  dmgeral.OFI_CD_M_ORV_ITE.FieldByName('CAN_DATA').AsDateTime := xDataSis;
  dmgeral.OFI_CD_M_ORV_ITE.FieldByName('CAN_HORA').AsDateTime := xHoraSis;
  dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
  dmgeral.OFI_CD_M_ORV_ITE.Post;
  dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
  ShowMessage('Cancelado!');
  Close;
end;

procedure TOFI_FM_M_RQP_CAN.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TOFI_FM_M_RQP_CAN.FormShow(Sender: TObject);
begin
//  inherited;
  txtMotivoCancelamento.SetFocus;
end;

end.
