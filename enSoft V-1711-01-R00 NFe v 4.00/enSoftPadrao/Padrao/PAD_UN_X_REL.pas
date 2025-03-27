unit PAD_UN_X_REL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList,
  cxButtons, vcl.Wwdbedit,System.IniFiles, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, Vcl.ComCtrls, vcl.wwriched, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExButtons, JvBitBtn;

type
  TPAD_FM_X_REL = class(TForm)
    pnlDireita: TPanel;
    imgBotoes: TImageList;
    pnlDados: TPanel;
    gbRelatorios: TGroupBox;
    lbxRelatorios: TListBox;
    gbFiltros: TGroupBox;
    btnImprimir: TButton;
    btnSair: TButton;
    pnlEsquerda: TPanel;
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    imgBotoesAz: TImageList;
    imgBotoesVe: TImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure AtualizaComponente;
    procedure carregaCores;
  public
    { Public declarations }
  end;

var
  PAD_FM_X_REL: TPAD_FM_X_REL;

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

procedure TPAD_FM_X_REL.AtualizaComponente;
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

        if Components[x] is TListBox then
           begin
             if TListBox(Components[x]).Tag = 0 then
                begin
                  TListBox(Components[x]).Color := xCorEdit;
                end;
           end;
      end;
end;

procedure TPAD_FM_X_REL.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TPAD_FM_X_REL.carregaCores;
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
       btnImprimir.Images                 := imgBotoes;
       btnSair.Images                     := imgBotoes;
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
       btnImprimir.Images                 := imgBotoesAz;
       btnSair.Images                     := imgBotoesAz;
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
       btnImprimir.Images                 := imgBotoesVe;
       btnSair.Images                     := imgBotoesVe;
     end
  else if xCorSistema = 'LARANJA' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $0000A5FF;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       btnImprimir.Images                 := imgBotoes;
       btnSair.Images                     := imgBotoes;
     end;
end;

procedure TPAD_FM_X_REL.FormCreate(Sender: TObject);
begin
  AtualizaComponente;
  WindowState := wsMaximized;
  Self.FormStyle := fsMDIChild;
end;

procedure TPAD_FM_X_REL.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPAD_FM_X_REL.FormShow(Sender: TObject);
begin
 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);
 if lbxRelatorios.CanFocus then
    lbxRelatorios.SetFocus;
end;

procedure TPAD_FM_X_REL.lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

end.
