unit OFI_UN_M_ORQ_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons;

type
  TOFI_FM_M_ORQ_CAN = class(TPAD_FM_X_FRM)
    txtMotivoCan: TwwDBEdit;
    btnSalvar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_ORQ_CAN: TOFI_FM_M_ORQ_CAN;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_FEQ;

procedure TOFI_FM_M_ORQ_CAN.btnSalvarClick(Sender: TObject);
begin
  //inherited;
  if (dmGeral.OFI_CD_M_ORV.FieldByName('CAN_MOTIVO').AsString = '') then
     begin
       ShowMessage('Deve-se preencher o motivo do cancelamento.');
       exit;
     end;

  dmgeral.OFI_CD_M_ORV.edit;
  dmgeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 4;
  dmgeral.OFI_CD_M_ORV.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
  dmgeral.OFI_CD_M_ORV.FieldByName('CAN_DATA').AsDateTime := xDataSis;
  dmgeral.OFI_CD_M_ORV.FieldByName('CAN_HORA').AsDateTime := xHoraSis;
  dmGeral.OFI_CD_M_ORV.BeforePost := nil;
  dmgeral.OFI_CD_M_ORV.Post;
  dmGeral.OFI_CD_M_ORV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;
  dmGeral.OFI_CD_M_ORV.ApplyUpdates(0);
  ShowMessage('Cancelado!');
  Close;
  OFI_FM_M_FEQ.btnIncluir.Enabled := false;
  OFI_FM_M_FEQ.btnExcluir.Enabled := false;
end;




procedure TOFI_FM_M_ORQ_CAN.acSairExecute(Sender: TObject);
begin
 // inherited;
   Close;
end;

procedure TOFI_FM_M_ORQ_CAN.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TOFI_FM_M_ORQ_CAN.FormShow(Sender: TObject);
begin
 // inherited;
  txtMotivoCan.SetFocus;
end;

end.
