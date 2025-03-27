unit PAD_UN_X_PAD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc, vcl.wwdblook,vcl.wwdbcomb,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TPAD_FM_X_PAD = class(TForm)
    pnlEsquerda: TPanel;
    pnlFiltro: TPanel;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    pnlDatagrid: TPanel;
    dbGrid: TwwDBGrid;
    pnlDireita: TPanel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
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
    btnIncluir: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    btnCancelar: TcxButton;
    btnGrava: TcxButton;
    ImgPequena: TImageList;
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    imgBotoesAtivoAz: TImageList;
    btnSair: TButton;
    btnImprime: TcxButton;
    btnAtualiza: TcxButton;
    btnFiltro: TcxButton;
    ImgPequenaAz: TImageList;
    imgBotoesAtivoVe: TImageList;
    ImgPequenaVe: TImageList;
    BUS_CD_C_AUS_PRG_PAD: TClientDataSet;
    BUS_CD_C_AUS_PAD: TClientDataSet;
    BUS_CD_C_AUS_PADid_aus: TIntegerField;
    BUS_CD_C_AUS_PADid_empresa: TIntegerField;
    BUS_CD_C_AUS_PADid_funcionario: TIntegerField;
    BUS_CD_C_AUS_PADint_nomefuncionario: TWideStringField;
    BUS_CD_C_AUS_PADint_perfilseg: TWideStringField;
    BUS_CD_C_AUS_PADCAD_SQ_C_AUS_PRG: TDataSetField;
    BUS_CD_C_AUS_PRG_PADid_aus: TIntegerField;
    BUS_CD_C_AUS_PRG_PADid_perfil_seg: TIntegerField;
    BUS_CD_C_AUS_PRG_PADformulario: TWideStringField;
    BUS_CD_C_AUS_PRG_PADchave: TWideStringField;
    BUS_CD_C_AUS_PRG_PADid_empresa: TIntegerField;
    BUS_CD_C_AUS_PRG_PADadicionar: TBooleanField;
    BUS_CD_C_AUS_PRG_PADalterar: TBooleanField;
    BUS_CD_C_AUS_PRG_PADexcluir: TBooleanField;
    BUS_CD_C_AUS_PRG_PADconsulta: TBooleanField;
    BUS_CD_C_AUS_PRG_PADid_aus_prg: TIntegerField;
    BUS_CD_C_AUS_PRG_PADmenu: TWideStringField;
    BUS_CD_C_AUS_PRG_PADmodulo: TWideStringField;
    BUS_CD_C_AUS_PRG_PADdescricao: TWideStringField;
    imgBotoesAtivoLa: TImageList;
    ImgPequenaLa: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure pnlDadosExit(Sender: TObject);
    procedure lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaComponente;

    procedure carregaCores;
    procedure VerifAcessoUsu;


  public
    { Public declarations }

    function ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
    function Botoes(DS: TDataSet; O: Integer; Tabela: TClientDataSet): boolean;
    Function VerifAcessoUsuConsulta:boolean;
    procedure VisualizarDados(acao: Boolean);
  end;

var
  PAD_FM_X_PAD: TPAD_FM_X_PAD;
  xFaz_Busca_L_Mestre: Boolean      = True;
  xCorGrid:TColor                   = clWhite;
  xCorLabel:TColor                  = $00DADADA;
  xCorPanelTitulo:TColor            = $00844D08;
  xCorEdit:TColor                   = clWhite;
  xCorEditBloc:TColor               = $00DADADA;
  xCorGridTitulo:TColor             = $00DADADA;
  xCorListBox:TColor                = $00DADADA;
  xCorSistema:String                ='GRAFITE';
  xHabBtnAlterar:Boolean            = False;
  xHabBtnExcluir:Boolean            = False;
implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TPAD_FM_X_PAD.acAdicionaExecute(Sender: TObject);
begin
  dbGrid.Enabled    := False;
  gbxFiltro.Enabled := False;
end;

procedure TPAD_FM_X_PAD.acAlterarExecute(Sender: TObject);
begin
  if dso.DataSet.IsEmpty then
     begin
       ShowMessage('Selecione o registro que deseja alterar.');
       abort;
     end;
  dbGrid.Enabled    := False;
  gbxFiltro.Enabled := False;
end;

procedure TPAD_FM_X_PAD.acCancelarExecute(Sender: TObject);
begin
  btnCancelar.Tag := 0;
  dbGrid.Enabled := true;
  gbxFiltro.Enabled := true;
end;

procedure TPAD_FM_X_PAD.acExcluirExecute(Sender: TObject);
begin
  //--
end;

procedure TPAD_FM_X_PAD.acGravarExecute(Sender: TObject);
begin
  btnGrava.Tag := 0;
  dbGrid.Enabled := true;
  gbxFiltro.Enabled := true;
end;

procedure TPAD_FM_X_PAD.acSairExecute(Sender: TObject);
begin
  Close;
end;

function TPAD_FM_X_PAD.Botoes(DS: TDataSet; O: Integer; Tabela: TClientDataSet): boolean;
var
  Obj:TSMClient;
  erro: string;
begin
  result := true;

  case O of
    2 : Ds.Append;
    3 : if not DS.IsEmpty then
           begin
             DS.Edit;
           end
        else
           begin
             ShowMessage('Registro não encontrado para alteração.');
             result := false;
           end;
    4 : if not DS.IsEmpty then
           begin
              if MessageDlg('Confirma a Exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                   DS.Delete;
                   Tabela.ApplyUpdates(0);
                   Ds.Close;
                   Ds.Open;
                 end
              else
                 result := false;
           end
        else
           begin
             ShowMessage('Registro não encontrado para exclusão.');
             result := false;
           end;
    6 : if MessageDlg('Deseja Cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           Begin
             DS.Cancel;
             Ds.Close;
             Ds.Open;
             pnlDados.Enabled:= False;
           end
        else
           begin
             result := false;
           end;
    7 : Close;
    8 : Tabela.Refresh;
  end;
end;


procedure TPAD_FM_X_PAD.dbGridDblClick(Sender: TObject);
begin
  if not dso.DataSet.IsEmpty then
     begin
      if not VerifAcessoUsuConsulta then exit;

       if dso.DataSet.State in [dsBrowse] then
          begin
            VisualizarDados(true);
          end;
     end
  else
     begin
       showmessage('Não há registro para consultar os dados!');
     end;
end;

procedure TPAD_FM_X_PAD.dsoStateChange(Sender: TObject);
begin
  acAdiciona.Enabled  := True;
  acExcluir.Enabled   := False;
  pnlDados.Enabled    := False;
  acAlterar.Enabled   := True;
  acExcluir.Enabled   := dso.State  = dsBrowse;
  acGravar.Enabled    := False;
  acCancelar.Enabled  := False;
  acGravar.Enabled    := False;
  acSair.Enabled      := True;

  if (xHabBtnAlterar = False) then
    begin
      btnAlterar.Enabled := False;
    end;
  if (xHabBtnExcluir = False) then
    begin
      btnExcluir.Enabled := False;
    end;

  VerifAcessoUsu;

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

  // Maxsuel Victor, 28/01/2025
     // Foi adicionado esse  >>  if dso.DataSet <> nil then << , por que quando estava
     //   no pedido de venda tentando importar um orçamento e ainda na tela do pedido de venda
     //   querer acessar a tela de Orçamento, o sistema estava dando erro de memória.
  if dso.DataSet <> nil then
     begin
        if (dso.DataSet.State in [dsEdit,dsInsert]) Then
           begin
             acGravar.Enabled    := True;
             acCancelar.Enabled  := True;
             pnlDados.Enabled    := True;
             acAdiciona.Enabled  := False;
             acExcluir.Enabled   := False;
             acAlterar.Enabled   := False;
             acSair.Enabled      := False;

             btnSair.Images      := imgBotoesInativo;
           end;
     end;
end;

procedure TPAD_FM_X_PAD.AtualizaComponente;
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

procedure TPAD_FM_X_PAD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dso.DataSet <> nil then
     begin
       if (dso.DataSet.State in [dsEdit,dsInsert]) Then
          Begin
            ShowMessage('Você deve Cancelar ou Gravar a operação.');
            Abort;
          end;
     end;
 // Screen.OnActiveControlChange := nil;
end;

procedure TPAD_FM_X_PAD.FormCreate(Sender: TObject);
begin
  AtualizaComponente;
  pnlDados.Enabled:= False;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TPAD_FM_X_PAD.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPAD_FM_X_PAD.FormShow(Sender: TObject);
var
  codigo, revisao: string;
begin
{ pnlDados.Color := pnlDireita.Color;}
 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);
 cbbPesquisa.SetFocus;

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

procedure TPAD_FM_X_PAD.lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

procedure TPAD_FM_X_PAD.pnlDadosDblClick(Sender: TObject);
begin
  if not dso.DataSet.IsEmpty then
     begin
       if dbGrid.Enabled = true then
          begin
            VisualizarDados(false);
          end;
     end;
end;

procedure TPAD_FM_X_PAD.pnlDadosExit(Sender: TObject);
begin
  if btnGrava.CanFocus then
     btnGrava.SetFocus;
end;

function TPAD_FM_X_PAD.ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
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

procedure TPAD_FM_X_PAD.carregaCores;
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
       btnIncluir.OptionsImage.Images     := imgBotoesAtivo;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivo;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivo;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivo;
       btnGrava.OptionsImage.Images       := imgBotoesAtivo;
       btnImprime.OptionsImage.Images     := imgBotoesAtivo;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivo;
       btnFiltro.OptionsImage.Images      := imgPequena;
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
       btnIncluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoAz;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoAz;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoAz;
       btnImprime.OptionsImage.Images     := imgBotoesAtivoAz;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivoAz;
       btnFiltro.OptionsImage.Images      := imgPequenaAz;
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
       btnIncluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoVe;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoVe;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoVe;
       btnImprime.OptionsImage.Images     := imgBotoesAtivoVe;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivoVe;
       btnFiltro.OptionsImage.Images      := imgPequenaVe;
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
       btnIncluir.OptionsImage.Images     := imgBotoesAtivoLa;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoLa;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoLa;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoLa;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoLa;
       btnImprime.OptionsImage.Images     := imgBotoesAtivoLa;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivoLa;
       btnFiltro.OptionsImage.Images      := imgPequenaLa;
       btnSair.Images                     := imgBotoesAtivoLa;
     end;
end;

procedure TPAD_FM_X_PAD.VerifAcessoUsu;
var
xFormulario: string;
begin
  BUS_CD_C_AUS_PAD.Close;
  BUS_CD_C_AUS_PAD.Data :=
    BUS_CD_C_AUS_PAD.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text, xFuncionario]));

  if not BUS_CD_C_AUS_PAD.IsEmpty then
    begin
      xFormulario := StringReplace(self.Name,'FM','MN',[]);
      if BUS_CD_C_AUS_PRG_PAD.Locate('formulario',xFormulario,[loCaseInsensitive,loPartialKey]) then
        begin
          if BUS_CD_C_AUS_PRG_PADadicionar.AsBoolean = false then
            self.btnIncluir.enabled := false;

          if BUS_CD_C_AUS_PRG_PADalterar.AsBoolean = false then
            self.btnAlterar.enabled := false;

          if BUS_CD_C_AUS_PRG_PADexcluir.AsBoolean = false then
            self.btnExcluir.enabled := false;
        end;
    end;
end;

Function TPAD_FM_X_PAD.VerifAcessoUsuConsulta: boolean;
var
xFormulario: string;
begin
  Result := true;

  BUS_CD_C_AUS_PAD.Close;
  BUS_CD_C_AUS_PAD.Data :=
    BUS_CD_C_AUS_PAD.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text, xFuncionario]));

  if not BUS_CD_C_AUS_PAD.IsEmpty then
    begin
      xFormulario := StringReplace(self.Name,'FM','MN',[]);
      if BUS_CD_C_AUS_PRG_PAD.Locate('formulario',xFormulario,[loCaseInsensitive,loPartialKey]) then
        begin
          if BUS_CD_C_AUS_PRG_PADconsulta.AsBoolean = false then
             result := false;
        end;
    end;
end;

procedure TPAD_FM_X_PAD.VisualizarDados(acao: Boolean);
var
  x: Integer;
  estado: boolean;
begin
   if acao = true then
      estado:= false
   else
      estado := true;


   for x := 0 to ComponentCount-1 do
      begin


        if Components[x] is TDBEdit then
           begin
             //if (TDBEdit(Components[x]).Tag=1)   then
                 TDBEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TwwDBEdit then
           begin
            // if (TwwDBEdit(Components[x]).Tag=1)   then
                TwwDBEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TJvDbMaskEdit then
           begin
             //if (TJvDbMaskEdit(Components[x]).ReadOnly=True) and (TJvDbMaskEdit(Components[x]).Tag=1)   then
            TJvDbMaskEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TDBComboBox then
           TDBComboBox(Components[x]).Enabled := Estado;

        // Neste caso o Grid não precisa, porque nas nossas telas
        // o grid não permite edição, portanto o usuário tem que ser
        // treinado para que não dê clique no grid (evita o evento mouse up)
          //if Components[x] is TwwDBGrid then
          //   begin
          //     TwwDBGrid(Components[x]).Enabled := Estado;
          //   end;

        if Components[x] is TwwDBRichEdit then
           begin
             TwwDBRichEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TJvDBComboEdit then
           begin
             TJvDBComboEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TJvDBDateEdit then
           begin
             TJvDBDateEdit(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TDBRadioGroup then
           begin
             TDBRadioGroup(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TDBCheckBox then
           begin
             TDBCheckBox(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TwwDBLookupCombo then
           begin
             TwwDBLookupCombo(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TwwDBComboBox then
           begin
             TwwDBComboBox(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TBitBtn then
           begin
             TBitBtn(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TwwIButton then
           begin
             TwwIButton(Components[x]).Enabled := Estado;
           end;

        if Components[x] is TDBmemo then
           begin
             TDBmemo(Components[x]).Enabled := Estado;
           end;


        end;

   if acao = true then
      begin
        pnlDados.Enabled := true;
        btnIncluir.Enabled := false;
        btnAlterar.Enabled := false;
        btnExcluir.Enabled := false;
      end
   else
      begin
        pnlDados.Enabled := false;

        btnIncluir.Enabled := true;

        btnAlterar.Enabled := xHabBtnAlterar;
        btnExcluir.Enabled := xHabBtnExcluir;
      end;
end;

end.
