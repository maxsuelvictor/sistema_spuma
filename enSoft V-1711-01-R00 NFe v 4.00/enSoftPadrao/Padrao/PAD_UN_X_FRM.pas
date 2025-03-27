unit PAD_UN_X_FRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList,
  cxButtons, vcl.Wwdbedit,System.IniFiles, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, Vcl.ComCtrls, vcl.wwriched, JvExExtCtrls, JvExtComponent,
  JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPAD_FM_X_FRM = class(TForm)
    pnlDireita: TPanel;
    pnlDados: TPanel;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    dso: TwwDataSource;
    imgBotoesAtivo: TImageList;
    imgBotoesInativo: TImageList;
    ImgPequena: TImageList;
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    imgBotoesAtivoAz: TImageList;
    ImgPequenaAz: TImageList;
    imgBotoesAtivoVe: TImageList;
    ImgPequenaVe: TImageList;
    pnlBotoes: TPanel;
    btnSair: TButton;
    btnImprime: TcxButton;
    imgBotoesAtivoLa: TImageList;
    ImgPequenaLa: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acSairExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaComponente;
    procedure carregaCores;

  public
    { Public declarations }
    function ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
    function Botoes(DS: TDataSet; O: Integer; Tabela: TClientDataSet): boolean;
  end;

var
  PAD_FM_X_FRM: TPAD_FM_X_FRM;
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

uses uDmGeral, uProxy;

function TPAD_FM_X_FRM.Botoes(DS: TDataSet; O: Integer; Tabela: TClientDataSet): boolean;
begin

end;

procedure TPAD_FM_X_FRM.dsoStateChange(Sender: TObject);
begin
  if xCorSistema = 'GRAFITE' then
    begin
      btnSair.Images  := imgBotoesAtivo;
    end
  else if xCorSistema = 'AZUL' then
    begin
      btnSair.Images  := imgBotoesAtivoAz;
    end
  else if xCorSistema = 'VERDE' then
    begin
      btnSair.Images  := imgBotoesAtivoVe;
    end;

  if (dso.DataSet.State in [dsEdit,dsInsert]) Then
     begin
       btnSair.Images      := imgBotoesInativo;
     end;
end;

procedure TPAD_FM_X_FRM.acSairExecute(Sender: TObject);
begin
   Close;
end;

procedure TPAD_FM_X_FRM.AtualizaComponente;
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

        {if Components[x] is TSpeedButton then
           begin
              if TSpeedButton(Components[x]).Tag = 0 then
                begin
                   if xCorSistema = 'GRAFITE' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequena.GetBitmap(2, TSpeedButton(Components[x]).Glyph);
                      end;

                   if xCorSistema = 'AZUL' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequenaAz.GetBitmap(2, TSpeedButton(Components[x]).Glyph);
                      end;

                   if xCorSistema = 'VERDE' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequenaVe.GetBitmap(2, TSpeedButton(Components[x]).Glyph);
                      end;
                end

              else if TSpeedButton(Components[x]).Tag = 1 then
                begin
                   if xCorSistema = 'GRAFITE' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequena.GetBitmap(3, TSpeedButton(Components[x]).Glyph);
                      end;

                   if xCorSistema = 'AZUL' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequenaAz.GetBitmap(3, TSpeedButton(Components[x]).Glyph);
                      end;

                   if xCorSistema = 'VERDE' then
                      begin
                        TSpeedButton(Components[x]).Glyph.Assign(nil);
                        imgPequenaVe.GetBitmap(3, TSpeedButton(Components[x]).Glyph);
                      end;
                end;
           end;}
        end;
end;

procedure TPAD_FM_X_FRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if dso.DataSet <> nil then
     begin
       if (dso.DataSet.State in [dsEdit,dsInsert]) Then
          Begin
            ShowMessage('Você deve Cancelar ou Gravar a operação.');
            Abort;
          end;
     end;}
 // Screen.OnActiveControlChange := nil;
end;

procedure TPAD_FM_X_FRM.FormCreate(Sender: TObject);
begin
  AtualizaComponente;
 // pnlDados.Enabled:= False;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TPAD_FM_X_FRM.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPAD_FM_X_FRM.FormShow(Sender: TObject);
var
  codigo, revisao: string;
begin
{ pnlDados.Color := pnlDireita.Color;}
 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);
 btnSair.SetFocus;

 codigo  := '';
 revisao := '';

 if ExisteListaMestre(xFaz_Busca_L_Mestre,false,self.Name,codigo,revisao) then
     begin
       lblCodificacaoLMestre.Caption := 'Codificação: ' + codigo + '      Rev.: ' + revisao;
     end
  else
     begin
       lblCodificacaoLMestre.Caption := 'Sem codificação.';
     end;
end;

procedure TPAD_FM_X_FRM.lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

function TPAD_FM_X_FRM.ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
var
  codigo_lista_mestre: String;
begin
  result := true;
  if fazer_busca = true then
     begin
       if not dmGeral.cad_cd_c_par_ctr.fieldByName('ID_LME').isnull then
          begin
            codigo_lista_mestre := dmGeral.cad_cd_c_par_ctr.FieldByName('ID_LME').AsString;
          end
       else
          begin
            if exibi_mensagens then
               begin
                 Showmessage('Código da lista mestre não foi encontrado nos parâmetros .');
               end;
            result := false;
          end;
       if result = true then
          begin
            dmGeral.BUS_CD_C_LME_DOC_DPG.Close;
            dmGeral.BUS_CD_C_LME_DOC_DPG.Data :=
            dmGeral.BUS_CD_C_LME_DOC_DPG.DataRequest(VarArrayOf([0,codigo_lista_mestre, name_formulario]));
            if dmGeral.BUS_CD_C_LME_DOC_DPG.IsEmpty then
               begin
                 if exibi_mensagens then
                    begin
                      Showmessage('A codificação da lista mestre para este documento não foi encontrado.');
                    end;
                 result := false;
               end
            else
               begin
                 codigo  := dmGeral.BUS_CD_C_LME_DOC_DPG.FieldByName('CODIGO').AsString;
                 revisao := dmGeral.BUS_CD_C_LME_DOC_DPG.FieldByName('REVISAO').AsString;
               end;
            dmGeral.BUS_CD_C_LME_DOC_DPG.Close;
          end;
     end;
end;

procedure TPAD_FM_X_FRM.carregaCores;
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
       btnImprime.OptionsImage.Images     := imgBotoesAtivo;
       btnSair.Images                     := imgBotoesAtivo;
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
       btnImprime.OptionsImage.Images     := imgBotoesAtivoAz;
       btnSair.Images                     := imgBotoesAtivoAz;
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
       btnImprime.OptionsImage.Images     := imgBotoesAtivoVe;
       btnSair.Images                     := imgBotoesAtivoVe;
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
       btnImprime.OptionsImage.Images     := imgBotoesAtivo;
       btnSair.Images                     := imgBotoesAtivo;
     end;
end;
end.
