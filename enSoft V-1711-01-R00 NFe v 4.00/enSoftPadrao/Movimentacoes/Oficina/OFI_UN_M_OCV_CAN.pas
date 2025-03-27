unit OFI_UN_M_OCV_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons;

type
  TOFI_FM_M_OCV_CAN = class(TPAD_FM_X_FRM)
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
  OFI_FM_M_OCV_CAN: TOFI_FM_M_OCV_CAN;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_FEV, OFI_UN_M_OCV, OFI_UN_M_OCQ;

procedure TOFI_FM_M_OCV_CAN.btnSalvarClick(Sender: TObject);
begin
  //inherited;
  if dmGeral.OFI_CD_M_OCV.Active = True then
    begin
      if trim(dmGeral.OFI_CD_M_OCV.FieldByName('CAN_MOTIVO').AsString) = '' then
        begin
          ShowMessage('Deve-se preencher o motivo do cancelamento.');
          exit;
        end;

      if MessageDlg('Deseja realmente cancelar o orçamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Try
            dmGeral.OFI_CD_M_OCV.BeforePost := nil;

            dmgeral.OFI_CD_M_OCV.edit;
            dmgeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger      := 2;
            dmgeral.OFI_CD_M_OCV.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
            dmgeral.OFI_CD_M_OCV.FieldByName('CAN_DATA').AsDateTime   := xDataSis;
            dmgeral.OFI_CD_M_OCV.FieldByName('CAN_HORA').AsDateTime   := xHoraSis;

            dmgeral.OFI_CD_M_OCV.Post;

            dmGeral.OFI_CD_M_OCV.ApplyUpdates(0);
            ShowMessage('O orçamento foi cancelado!');



            dmGeral.OFI_CD_M_OCV.Data :=
            dmGeral.OFI_CD_M_OCV.DataRequest(
                VarArrayOf([0,dmgeral.OFI_CD_M_OCV.FieldByName('id_orcamento').AsString]));

            Close;

            //OFI_FM_M_OCV.btnIncluir.Enabled := false;
            //OFI_FM_M_OCV.btnExcluir.Enabled := false;
          finally
            dmGeral.OFI_CD_M_OCV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;
          end;
        end;
    end
  else
    begin
      if trim(OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('CAN_MOTIVO').AsString) = '' then
        begin
          ShowMessage('Deve-se preencher o motivo do cancelamento.');
          exit;
        end;

      if MessageDlg('Deseja realmente cancelar o orçamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Try
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.BeforePost := nil;

            OFI_FM_M_OCQ.OFI_CD_M_OCQ.edit;
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger      := 2;
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('CAN_DATA').AsDateTime   := xDataSis;
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('CAN_HORA').AsDateTime   := xHoraSis;

            OFI_FM_M_OCQ.OFI_CD_M_OCQ.Post;

            OFI_FM_M_OCQ.OFI_CD_M_OCQ.ApplyUpdates(0);
            ShowMessage('O orçamento foi cancelado!');



            OFI_FM_M_OCQ.OFI_CD_M_OCQ.Data :=
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.DataRequest(
                VarArrayOf([0,OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_orcamento').AsString]));

            Close;

            //OFI_FM_M_OCV.btnIncluir.Enabled := false;
            //OFI_FM_M_OCV.btnExcluir.Enabled := false;
          finally
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.BeforePost := OFI_FM_M_OCQ.OFI_CD_M_OCQBeforePost;
          end;
        end;
    end;
end;




procedure TOFI_FM_M_OCV_CAN.acSairExecute(Sender: TObject);
begin
  // inherited;
  if dmGeral.OFI_CD_M_OCV.Active = True then
    begin
      dmGeral.OFI_CD_M_OCV.cancel;
    end
  else
    begin
      OFI_FM_M_OCQ.OFI_CD_M_OCQ.cancel;
    end;
  Close;
end;

procedure TOFI_FM_M_OCV_CAN.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TOFI_FM_M_OCV_CAN.FormShow(Sender: TObject);
begin
 // inherited;
  txtMotivoCan.SetFocus;
end;

end.
