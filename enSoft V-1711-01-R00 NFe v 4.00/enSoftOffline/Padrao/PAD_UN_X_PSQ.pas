unit PAD_UN_X_PSQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList,
  cxButtons, vcl.Wwdbedit,System.IniFiles, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, Vcl.ComCtrls, vcl.wwriched, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExButtons, JvBitBtn, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TPAD_FM_X_PSQ = class(TForm)
    dsoPesquisa: TwwDataSource;
    dbGrid: TwwDBGrid;
    gbxFiltro: TGroupBox;
    cmbParametro: TComboBox;
    edtPesquisa: TEdit;
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    ImgPequena: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequenaVe: TImageList;
    btnSair: TcxButton;
    btnPesquisa: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbParametroChange(Sender: TObject);
    procedure cmbParametroSelect(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure dbGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ffMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure AtualizaComponente;
    procedure carregaCores;
  public
    { Public declarations }
  end;

var
  PAD_FM_X_PSQ: TPAD_FM_X_PSQ;
  xEnter_Grid: Boolean;

  xFaz_Busca_L_Mestre: Boolean      = True;
  xCorGrid:TColor                   = clWhite;
  xCorLabel:TColor                  = $00DADADA;
  xCorPanelTitulo:TColor            = $00844D08;
  xCorEdit:TColor                   = clWhite;
  xCorEditBloc:TColor               = $00DADADA;
  xCorGridTitulo:TColor             = $00DADADA;
  xCorListBox:TColor                = $00DADADA;
  xCorSistema:String                ='GRAFITE';

implementation

{$R *.dfm}

procedure TPAD_FM_X_PSQ.AtualizaComponente;
var
  x: Integer;
begin
   carregaCores;

   for x := 0 to ComponentCount-1 do
      begin
        if (components[x] is TLabel) and
           ((components[x] as TLabel).tag > 0) then
           (components[x] as TLabel).caption := '';

        if Components[x] is TDBEdit then
           begin
             if (TDBEdit(Components[x]).Tag=1)   then
                TDBEdit(Components[x]).Color := xCorEditBloc;
           end;

        if Components[x] is TwwDBEdit then
           begin
             if (TwwDBEdit(Components[x]).Tag=1)   then
                TwwDBEdit(Components[x]).Color := xCorEditBloc;
           end;

        if Components[x] is TwwDBEdit then
           begin
             if (TwwDBEdit(Components[x]).ReadOnly=True) and (TwwDBEdit(Components[x]).Tag=1)   then
                TwwDBEdit(Components[x]).Color   := xCorEditBloc
             else if (TwwDBEdit(Components[x]).ReadOnly=True)   then
                TwwDBEdit(Components[x]).Color   := xCorEditBloc
             else
                TwwDBEdit(Components[x]).Color   := xCorEdit;
           end;

        if Components[x] is TDBEdit then
           begin
             if (TDBEdit(Components[x]).ReadOnly=True) and (TDBEdit(Components[x]).Tag=1)   then
                TDBEdit(Components[x]).Color   := xCorEditBloc
             else if (TDBEdit(Components[x]).ReadOnly=True)   then
                TDBEdit(Components[x]).Color   := xCorEditBloc
             else
                TDBEdit(Components[x]).Color   :=  xCorEdit;
           end;

        if Components[x] is TJvDbMaskEdit then
           begin
             if (TJvDbMaskEdit(Components[x]).ReadOnly=True) and (TJvDbMaskEdit(Components[x]).Tag=1)   then
                TJvDbMaskEdit(Components[x]).Color   := xCorEditBloc
             else if (TJvDbMaskEdit(Components[x]).ReadOnly=True)   then
                TJvDbMaskEdit(Components[x]).Color   := xCorEditBloc
             else
                TJvDbMaskEdit(Components[x]).Color   :=  xCorEdit;
           end;

        if Components[x] is TDBComboBox then
           TDBComboBox(Components[x]).Color := $00F9E1DF;
        if Components[x] is TwwDBGrid then
           begin
             if TwwDBGrid(Components[x]).Tag<>1 then
                begin
                  TwwDBGrid(Components[x]).TitleFont.Color := clBlack;
                  TwwDBGrid(Components[x]).Color      := xCorGrid;
                  TwwDBGrid(Components[x]).TitleColor := xCorGridTitulo;
                end;
           end;

        if Components[x] is TwwDBRichEdit then
           begin
             if TwwDBRichEdit(Components[x]).Tag<>1 then
                begin
                  TwwDBRichEdit(Components[x]).Color := $00EAE0D9;
                end;
           end;

        if Components[x] is TListBox then
           begin
             if TListBox(Components[x]).Tag<>1 then
                begin
                  TListBox(Components[x]).Color := xCorListBox;
                end;
           end;

        if Components[x] is TJvPanel then
           begin
             if TJvPanel(Components[x]).Tag = 1 then
                begin
                  TJvPanel(Components[x]).Color := xCorPanelTitulo;
                end;
           end;

        if Components[x] is TJvDBComboEdit then
           begin
             if TJvDBComboEdit(Components[x]).Tag = 1 then
                begin
                  TJvDBComboEdit(Components[x]).Color := xCorEdit;
                end;
           end;

        if Components[x] is TJvDBDateEdit then
           begin
             if TJvDBDateEdit(Components[x]).Tag = 1 then
                begin
                  TJvDBDateEdit(Components[x]).Color := xCorEditBloc;
                end;
           end;
        end;
end;

procedure TPAD_FM_X_PSQ.btnSairClick(Sender: TObject);
begin
  dsoPesquisa.DataSet.Close;
  Close;
end;

procedure TPAD_FM_X_PSQ.carregaCores;
var
  Rede:TInifile;
begin
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

  if xCorSistema = 'GRAFITE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00333333;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnPesquisa.OptionsImage.Images    := imgPequena;
       btnSair.OptionsImage.Images        := imgPequena;
     end
  else if xCorSistema = 'AZUL' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00844D08;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnPesquisa.OptionsImage.Images    := imgPequenaAz;
       btnSair.OptionsImage.Images        := imgPequenaAz;
     end
  else if xCorSistema = 'VERDE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00006305;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnPesquisa.OptionsImage.Images    := imgPequenaVe;
       btnSair.OptionsImage.Images        := imgPequenaVe;
     end;
end;

procedure TPAD_FM_X_PSQ.cmbParametroChange(Sender: TObject);
begin
  edtPesquisa.Text := '';
  if copy(cmbParametro.text,1,1) = '1' then
     begin
       edtPesquisa.NumbersOnly := True;
     end
  else
     begin
       if (copy(cmbParametro.text,1,1) = '0') or
          (copy(cmbParametro.text,1,1) = '2') then
          edtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPAD_FM_X_PSQ.cmbParametroSelect(Sender: TObject);
begin
  if btnSair.Focused then exit;
 // cmbParametroChange(sender);
  edtPesquisa.SetFocus;

end;

procedure TPAD_FM_X_PSQ.dbGridDblClick(Sender: TObject);
begin
  if not dsoPesquisa.DataSet.IsEmpty then
     begin
       close;
     end;
end;

procedure TPAD_FM_X_PSQ.dbGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if ord(key) = vk_return then
     begin
       if not dsoPesquisa.DataSet.IsEmpty then
          begin
            xEnter_Grid := true;
            close;
          end;
     end;

  if ord(key) = vk_tab then
     begin
        Perform(wm_NextDlgCtl,0,0);
     end;
end;

procedure TPAD_FM_X_PSQ.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ord(key) = VK_DOWN then
     begin
       dbGrid.SetFocus;
       dsoPesquisa.DataSet.Next;
     end;
end;

procedure TPAD_FM_X_PSQ.FormCreate(Sender: TObject);
begin
  AtualizaComponente;
  xEnter_Grid := false;
end;

procedure TPAD_FM_X_PSQ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = VK_ESCAPE then
     begin
       dsoPesquisa.DataSet.Close;
       Close;
     end;
end;

procedure TPAD_FM_X_PSQ.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPAD_FM_X_PSQ.FormShow(Sender: TObject);
begin
  if edtPesquisa.CanFocus then
     begin
       edtPesquisa.SetFocus;
     end
  else
     begin
       dbGrid.SetFocus;
     end;
end;

procedure TPAD_FM_X_PSQ.ffMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

end.
