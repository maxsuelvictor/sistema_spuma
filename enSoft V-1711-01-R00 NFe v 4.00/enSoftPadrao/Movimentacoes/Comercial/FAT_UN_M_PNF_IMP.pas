unit FAT_UN_M_PNF_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFAT_FM_M_PNF_IMP = class(TForm)
    btnSair: TSpeedButton;
    btnAtualizaCont: TBitBtn;
    dbGrid: TwwDBGrid;
    Label3: TLabel;
    procedure btnAtualizaContClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PNF_IMP: TFAT_FM_M_PNF_IMP;

implementation

{$R *.dfm}

uses FAT_UN_M_PNF, uDmGeral;

procedure TFAT_FM_M_PNF_IMP.btnAtualizaContClick(Sender: TObject);
var
  codigo: String;
begin

  if not dmGeral.FAT_CD_M_PED.IsEmpty then
     begin
        codigo := dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString;

        dmGeral.FAT_CD_M_PED.Close;
          dmGeral.FAT_CD_M_PED.Data :=
             dmGeral.FAT_CD_M_PED.DataRequest(
                            VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo ]));

        dmGeral.BUS_CD_M_NFE_CXA.Close;
           dmGeral.BUS_CD_M_NFE_CXA.Data :=
                dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([9,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, 'S', dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString]));

        FAT_FM_M_PNF.ImprimirDocumentos;

        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
           dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([7, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, DateToStr(xDataSis),DateToStr(xDataSis)]));

     end
  else
     begin
       ShowMessage('Não há registro selecionado.');
       exit;
     end;

end;

procedure TFAT_FM_M_PNF_IMP.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
