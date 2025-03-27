unit EST_UN_M_XML_LOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Buttons,
  vcl.wwdbigrd, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Vcl.Grids, vcl.wwdbgrid,
  Vcl.ExtCtrls, JvExMask, JvToolEdit, JvDBControls;

type
  TEST_FM_M_XML_LOT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    dgGridLote: TwwDBGrid;
    pnlLote: TPanel;
    txtQtde: TwwDBEdit;
    Label2: TLabel;
    txtLote: TwwDBEdit;
    Label3: TLabel;
    btnAddLote: TBitBtn;
    dgGridLoteIButton: TwwIButton;
    dsoIteLot: TwwDataSource;
    txtDtaVencimento: TJvDBDateEdit;
    Label4: TLabel;
    procedure btnAddLoteClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure dgGridLoteIButtonClick(Sender: TObject);
    procedure pnlLoteExit(Sender: TObject);
    procedure dgGridLoteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtLoteExit(Sender: TObject);
    procedure txtDtaVencimentoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EST_FM_M_XML_LOT: TEST_FM_M_XML_LOT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TEST_FM_M_XML_LOT.btnAddLoteClick(Sender: TObject);
begin
   dmGeral.FAT_CD_M_XML_ITE_LOT.Insert;
   pnlLote.Enabled := true;
   txtLote.Enabled := true;
   txtLote.SetFocus;
end;

procedure TEST_FM_M_XML_LOT.txtDtaVencimentoExit(Sender: TObject);
begin
   if btnAddLote.Focused or dgGridLote.Focused then
          exit;
end;

procedure TEST_FM_M_XML_LOT.txtLoteExit(Sender: TObject);
var
  xLote:String;
begin
    if btnAddLote.Focused or dgGridLote.Focused then
          exit;



   if (trim(dmGeral.FAT_CD_M_XML_ITE_LOT.FieldByName('NUM_LOTE').AsString) = '') then
      begin
        ShowMessage('Nº Lote deve ser preenchido.');
        txtLote.SetFocus;
        exit;
      end;

    xLote := trim(dmGeral.FAT_CD_M_XML_ITE_LOT.FieldByName('NUM_LOTE').AsString);

    dmGeral.FAT_CD_M_XML_ITE_LOT.Cancel;

    if dmGeral.FAT_CD_M_XML_ITE_LOT.Locate('NUM_LOTE',xLote,[]) then
      begin
        ShowMessage('Nº Lote já inserido.');
        dmGeral.FAT_CD_M_XML_ITE_LOT.Insert;
        txtLote.SetFocus;

      end
    else
      begin
        dmGeral.FAT_CD_M_XML_ITE_LOT.Insert;
        dmGeral.FAT_CD_M_XML_ITE_LOT.FieldBYname('NUM_LOTE').AsString := xLote;
        txtDtaVencimento.SetFocus;
      end;

end;

procedure TEST_FM_M_XML_LOT.txtQtdeExit(Sender: TObject);
begin
    if dgGridLote.Focused  then
          exit;


  if (dmGeral.FAT_CD_M_XML_ITE_LOT.FieldByName('qtde').AsString = '') or
     (dmGeral.FAT_CD_M_XML_ITE_LOT.FieldByName('qtde').AsCurrency = 0)  then
      begin
        ShowMessage('Qtde deve ser maior que zero.');
        txtQtde.SetFocus;
        exit;
      end;



  dmGeral.FAT_CD_M_XML_ITE_LOT.Post;
  btnAddLote.Enabled := True;
  btnAddLote.SetFocus;

end;

procedure TEST_FM_M_XML_LOT.dgGridLoteIButtonClick(Sender: TObject);
begin
   try
     dgGridLoteIButton.Enabled := false;
     if dmGeral.FAT_CD_M_XML_ITE_LOT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_XML_ITE_LOT.Delete;

  finally
    dgGridLoteIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_XML_LOT.dgGridLoteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if pnlLote.Enabled = false then
      pnlLote.Enabled := true;

   dmGeral.FAT_CD_M_XML_ITE_LOT.cancel;

      if  dmGeral.FAT_CD_M_XML_ITE_LOT.IsEmpty then
         begin
           txtLote.Enabled := true;
           dmGeral.FAT_CD_M_XML_ITE_LOT.Append;
           pnlLote.Enabled := true;
           txtLote.SetFocus;
         end
      else
        begin
          txtLote.Enabled := false;
          dmGeral.FAT_CD_M_XML_ITE_LOT.Edit;
          pnlLote.Enabled := true;
          txtQtde.SetFocus;
        end;
end;

procedure TEST_FM_M_XML_LOT.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TEST_FM_M_XML_LOT.pnlLoteExit(Sender: TObject);
begin
   if (btnAddLote.Focused) or (dgGridLote.Focused) or
      (not dgGridLoteIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          dmGeral.FAT_CD_M_XML_ITE_LOT.Cancel;
          dmGeral.FAT_CD_M_XML_ITE_LOT.edit;
        finally
           pnlLote.Enabled := false;
        end;
      end;
end;

end.
