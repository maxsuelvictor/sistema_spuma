unit PSQ_UN_X_REC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, JvExExtCtrls,
  JvExtComponent, JvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.ImgList, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TPSQ_FM_X_REC = class(TPAD_FM_X_PSQ)
    pnlAberto: TPanel;
    lblAberto: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    dsRecPag: TwwDataSource;
    Label5: TLabel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    Label7: TLabel;
    btnFiltro: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure dbGridKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      XOrigemForm:string;
  end;

var
  PSQ_FM_X_REC: TPSQ_FM_X_REC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_REC.btnFiltroClick(Sender: TObject);
begin
inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    case cbbPesquisa.ItemIndex of
       0: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([111,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
          end;
       1: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([112,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
          end;
       2: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([113,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
           end;
       3: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([114,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
           end;
       4: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([115,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',StringReplace(txtPesquisa.Text, ',', '.', [])]));
           end;
       5: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([99,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ']));
           end;
     end;

   if  XOrigemForm = 'FIN_FM_M_RBX' then
     begin
       dmGeral.BUS_CD_M_REC.IndexFieldNames := 'DTA_VENCIMENTO';
     end;
  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TPSQ_FM_X_REC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
 txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [3] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPSQ_FM_X_REC.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (xDataSis = dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;
end;

procedure TPSQ_FM_X_REC.dbGridDblClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_REC.Close;
end;

procedure TPSQ_FM_X_REC.dbGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = chr(13) then
     begin
      dbGridDblClick(self);
    end;
end;

procedure TPSQ_FM_X_REC.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([99,dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').text ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ']));

end;

procedure TPSQ_FM_X_REC.FormShow(Sender: TObject);
begin
  inherited;
  if  XOrigemForm = 'FIN_FM_M_RBX' then
    begin
      dmGeral.BUS_CD_M_REC.IndexFieldNames := 'DTA_VENCIMENTO';
    end;

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_REC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TPSQ_FM_X_REC.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.BUS_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean) then
      begin
        aFont.Color := $000065CA;
      end;
end;

end.
