unit OFI_UN_M_FEV_OPC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TOFI_FM_M_FEV_OPC = class(TForm)
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    rgTipoNota: TRadioGroup;
    btnSalvar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_FEV_OPC: TOFI_FM_M_FEV_OPC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TOFI_FM_M_FEV_OPC.btnSalvarClick(Sender: TObject);
begin
  if rgTipoNota.ItemIndex = -1 then
     begin
       ShowMessage('Selecione umas das opções.');
       exit;
     end;

  if rgTipoNota.ItemIndex = 0 then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean     := false;
       dmGeral.OFI_CD_M_ORV.FieldByName('orv_gera_fin_separado').AsBoolean := false;
     end
  else
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean := true;
       dmGeral.OFI_CD_M_ORV.FieldByName('orv_gera_fin_separado').AsBoolean :=
          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_gera_fin_separado').AsBoolean;
     end;
  close;
end;

end.
