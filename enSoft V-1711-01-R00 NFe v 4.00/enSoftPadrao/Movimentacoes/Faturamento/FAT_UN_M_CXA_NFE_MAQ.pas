unit FAT_UN_M_CXA_NFE_MAQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, vcl.wwdblook;

type
  TFAT_FM_M_CXA_NFE_MAQ = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    dsMaquinetas: TwwDataSource;
    dsTemp: TDataSource;
    cdsTemp: TClientDataSet;
    cdsTempdescricao: TStringField;
    cdsTempid_maquineta: TIntegerField;
    cdsTempdesc_maquineta: TStringField;
    grdResCartao: TwwDBGrid;
    btnSalvarDados: TBitBtn;
    btnSair: TBitBtn;
    cdsTempid_forma_pag: TIntegerField;
    cbbMaquineta: TwwDBLookupCombo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdResCartaoFieldChanged(Sender: TObject; Field: TField);
    procedure cbbMaquinetaExit(Sender: TObject);
    procedure btnSalvarDadosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontarResumoFpg(cdsTit: TClientDataSet);
  end;

var
  FAT_FM_M_CXA_NFE_MAQ: TFAT_FM_M_CXA_NFE_MAQ;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_CXA;

procedure TFAT_FM_M_CXA_NFE_MAQ.btnSalvarDadosClick(Sender: TObject);
begin
  FAT_RN_M_CXA.FatValidaCxaNfeMaq(cdsTemp);

  if MessageDlg('Confirma gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       FAT_RN_M_CXA.FatAtualMaqNfsTit(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_empresa').AsInteger,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,cdsTemp);
       close;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_MAQ.cbbMaquinetaExit(Sender: TObject);
begin
  cdsTemp.Post;
end;

procedure TFAT_FM_M_CXA_NFE_MAQ.FormCreate(Sender: TObject);
begin
  dmGeral.BusMaquineta(1,'%');

  cdsTemp.close;
  cdsTemp.CreateDataSet;
  cdsTemp.EmptyDataSet;
end;

procedure TFAT_FM_M_CXA_NFE_MAQ.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;

end;
procedure TFAT_FM_M_CXA_NFE_MAQ.grdResCartaoFieldChanged(Sender: TObject;
  Field: TField);
begin
  if Field.FieldName = 'id_maquineta' then
     begin
       if Field.text <> '' then
          begin
             if (cdsTempid_forma_pag.Text = '') then
                begin
                   cdsTemp.Cancel;
                   abort;
                end;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_MAQ.MontarResumoFpg(cdsTit: TClientDataSet);
var
  IdAntigo: Integer;
begin
 try

  cdsTit.First;
  IdAntigo := 0;
  while not cdsTit.eof do
     begin
       dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);
       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 3 then
          begin
             if not cdsTemp.Locate('ID_FORMA_PAG',cdsTit.FieldByName('id_forma_pag').AsInteger,[]) then
                begin
                  cdsTemp.Insert;
                  cdsTemp.FieldByName('id_forma_pag').AsInteger :=
                       cdsTit.FieldByName('id_forma_pag').AsInteger;
                  cdsTemp.FieldByName('DESCRICAO').AsString :=
                       cdsTit.FieldByName('INT_NOMEFPG').AsString;
                  IdAntigo :=
                       cdsTit.FieldByName('id_forma_pag').AsInteger;
                end;
          end;
       cdsTit.Next;
     end;
  cdsTit.First;

  finally
      dmGeral.BUS_CD_C_FPG.Close;
  end;
end;

end.
