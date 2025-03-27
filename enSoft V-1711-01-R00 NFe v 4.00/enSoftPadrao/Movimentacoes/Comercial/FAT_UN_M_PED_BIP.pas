unit FAT_UN_M_PED_BIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.StdCtrls, Data.DB, Datasnap.DBClient, vcl.wwdatsrc;

type
  TFAT_FM_M_PED_BIP = class(TForm)
    dso: TwwDataSource;
    PCP_CD_M_ETQ: TClientDataSet;
    Label12: TLabel;
    wwDBGrid3: TwwDBGrid;
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED_BIP: TFAT_FM_M_PED_BIP;
  xEnter_Grid: Boolean;

implementation

{$R *.dfm}

uses uDmGeral, FAT_UN_M_PED;

procedure TFAT_FM_M_PED_BIP.FormCreate(Sender: TObject);
begin
  xEnter_Grid := false;
end;

procedure TFAT_FM_M_PED_BIP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = VK_ESCAPE then
     begin
       Close;
     end;
end;

procedure TFAT_FM_M_PED_BIP.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) and (xEnter_Grid = false) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;
  if (key= char(9)) then
     key := #0;
end;

procedure TFAT_FM_M_PED_BIP.FormShow(Sender: TObject);
var
  rIncluiOpr, rIncluiPer: String;

begin
  xPed_MedidasPerson := '';

  rIncluiOpr := 'N';
  rIncluiPer := 'N';

  PCP_CD_M_ETQ.Close;
     PCP_CD_M_ETQ.Data :=
        PCP_CD_M_ETQ.DataRequest(
              VarArrayOf([19,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString,
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_cor').AsString,
                             rIncluiPer, 0, '','', rIncluiOpr, '',3]));
end;

procedure TFAT_FM_M_PED_BIP.wwDBGrid3DblClick(Sender: TObject);
begin
  if not PCP_CD_M_ETQ.IsEmpty then
     begin
       xPed_MedidasPerson := PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString;
       close;
     end;
end;

procedure TFAT_FM_M_PED_BIP.wwDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = vk_return then
     begin
       if not dso.DataSet.IsEmpty then
          begin
            xPed_MedidasPerson := PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString;
            close;
          end;
     end;
end;

end.
