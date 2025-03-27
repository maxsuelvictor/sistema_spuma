unit EST_UN_M_APR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.Math, System.Classes,System.IniFiles,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TEST_FM_M_APR = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    cbbOpcao: TComboBox;
    lblOpcao: TLabel;
    txtReajuste: TEdit;
    lblReajuste: TLabel;
    pcFiltro: TPageControl;
    tsGrupo: TTabSheet;
    lboxGrupoSel: TListBox;
    lboxGrupoDisp: TListBox;
    lblDispGrupo: TLabel;
    lblGrupoSel: TLabel;
    tsFamilia: TTabSheet;
    lboxFamiliaDisp: TListBox;
    lboxFamiliaSel: TListBox;
    lblFamiliaDisp: TLabel;
    lblFamiliaSel: TLabel;
    btnSair: TcxButton;
    btnReajustar: TcxButton;
    pmSelGrupo: TPopupMenu;
    pmExcluirGrupo: TPopupMenu;
    pmSelFamilia: TPopupMenu;
    pmExcluirFamilia: TPopupMenu;
    btnSelGrupo: TMenuItem;
    btnRemoverGrupo: TMenuItem;
    btnSelFamilia: TMenuItem;
    btnExcluirFamilia: TMenuItem;
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnReajustarClick(Sender: TObject);
    procedure cbbOpcaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure pnlPrincipalResize(Sender: TObject);
    procedure txtReajusteKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelGrupoClick(Sender: TObject);
    procedure btnRemoverGrupoClick(Sender: TObject);
    procedure btnSelFamiliaClick(Sender: TObject);
    procedure btnExcluirFamiliaClick(Sender: TObject);
    procedure lboxGrupoDispDblClick(Sender: TObject);
    procedure lboxFamiliaDispDblClick(Sender: TObject);
    procedure lboxFamiliaSelDblClick(Sender: TObject);
    procedure lboxGrupoSelDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherFiltro;
    function VerificarVlrReajuste:Boolean;
    procedure carregaCores;
    var
      xCorSistema:string;
      xOpcoes:string;
      vlrReajuste:currency;
  public
    { Public declarations }
  end;

var
  EST_FM_M_APR: TEST_FM_M_APR;

implementation

{$R *.dfm}

uses uDmGeral, enFunc;


procedure TEST_FM_M_APR.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlTop.Color := codCor;
end;

function TEST_FM_M_APR.VerificarVlrReajuste:Boolean;
begin
  Result := true;
  if (txtReajuste.text = '') then
    begin
      ShowMessage('É necessário preencher percentual.');
      Result := false;
      exit
    end;
  if (txtReajuste.text = '-') then
    begin
      ShowMessage('Percentual de reajuste inválido.');
      Result := false;
      exit;
    end;
  vlrReajuste := StrToFloat(txtReajuste.Text);
  if (vlrReajuste = 0) then
    begin
      ShowMessage('O percentual de reajuste tem que ser diferente de zero.');
      Result := false;
      exit;
    end;
end;

procedure TEST_FM_M_APR.PreencherFiltro;
var
 i:integer;
begin

  xOpcoes := '';

  if (cbbOpcao.ItemIndex = 1) then
     begin
      if lboxGrupoSel.Count > 0 then
         begin
           for i := 0 to lboxGrupoSel.Count - 1 do
              begin
                if xOpcoes <> '' then
                   begin
                     xOpcoes :=
                     xOpcoes + ',' +''''+trim(copy(lboxGrupoSel.Items[i],1,11))+'''';
                   end;
                if xOpcoes = '' then
                   begin
                     xOpcoes :=
                     xOpcoes +''''+ trim(copy(lboxGrupoSel.Items[i],1,11))+'''';
                   end;
              end;
         end;
     end;

   if (cbbOpcao.ItemIndex = 2) then
     begin
      if lboxFamiliaSel.Count > 0 then
         begin
           for i := 0 to lboxFamiliaSel.Count - 1 do
              begin
                if xOpcoes <> '' then
                   begin
                     xOpcoes :=
                     xOpcoes + ',' +''''+trim(copy(lboxFamiliaSel.Items[i],1,5))+'''';
                   end;
                if xOpcoes = '' then
                   begin
                     xOpcoes :=
                     xOpcoes +''''+ trim(copy(lboxFamiliaSel.Items[i],1,5))+'''';
                   end;
              end;
         end;
     end;

end;

procedure TEST_FM_M_APR.txtReajusteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited KeyPress(Key);

  if not (Key in ['0'..'9',',','-',#8]) then
    begin
      Key := #0;
      Beep;
    end
  else
    begin
      if  (Key in [',','-']) then
        begin
          if ((Key = '-') and (txtReajuste.text <> '')) then
            begin
               Key := #0;
               Beep;
            end;
          if ((Key = ',') and (pos(',',txtReajuste.text) <> 0)) then
            begin
               Key := #0;
               Beep;
            end;
          if ((Key = ',') and (txtReajuste.text = '')) then
            begin
               Key := #0;
               Beep;
            end;
        end;
    end;

end;

procedure TEST_FM_M_APR.btnExcluirFamiliaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxFamiliaSel.ClearSelection;

  if lboxFamiliaSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFamiliaSel.Items.Count > 0 then
     begin
       for i := 0 to lboxFamiliaSel.Items.Count - 1 do
           begin
             lboxFamiliaDisp.Items.Add(lboxFamiliaSel.Items[i]);
             lboxFamiliaSel.Items.Delete(lboxFamiliaSel.ItemIndex);
           end;
       lboxFamiliaSel.Items.Clear;
     end;
end;

procedure TEST_FM_M_APR.btnReajustarClick(Sender: TObject);
begin
   if (VerificarVlrReajuste=false) then
     begin
       exit;
     end;
   PreencherFiltro;

   if (cbbOpcao.ItemIndex = 0) then
     begin
        dmGeral.CAD_CD_C_ITE.Close;
        dmGeral.CAD_CD_C_ITE.Data :=
        dmGeral.CAD_CD_C_ITE.DataRequest(
                   VarArrayOf([111,'1']));

     end;
   if (cbbOpcao.ItemIndex = 1) then
     begin
        if (xOpcoes = '') then
          begin
            ShowMessage('É necessário selecionar pelo menos 1 grupo.');
            exit;
          end;

        dmGeral.CAD_CD_C_ITE.Close;
        dmGeral.CAD_CD_C_ITE.Data :=
        dmGeral.CAD_CD_C_ITE.DataRequest(
                   VarArrayOf([112,xOpcoes,'1']));
     end;

   if (cbbOpcao.ItemIndex = 2) then
     begin
        if (xOpcoes = '') then
          begin
            ShowMessage('É necessário selecionar pelo menos 1 familia.');
            exit;
          end;

        dmGeral.CAD_CD_C_ITE.Close;
        dmGeral.CAD_CD_C_ITE.Data :=
        dmGeral.CAD_CD_C_ITE.DataRequest(
                   VarArrayOf([113,xOpcoes,'1']));
     end;

   if not dmGeral.CAD_CD_C_ITE.IsEmpty then
     begin
       try
          dmGeral.CAD_CD_C_ITE.BeforePost := nil;
          dmGeral.CAD_CD_C_ITE.First;
          while (not dmGeral.CAD_CD_C_ITE.EOF) do
            begin
               dmGeral.CAD_CD_C_ITE.Edit;
               if (dmGeral.CAD_CD_C_ITE.FieldByName('preco_avista').AsString <> '') then
                 begin
                   dmGeral.CAD_CD_C_ITE.FieldByName('preco_avista_ant_reajuste').AsCurrency :=
                       dmGeral.CAD_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
                   dmGeral.CAD_CD_C_ITE.FieldByName('preco_avista').AsCurrency :=
                        RoundTo(dmGeral.CAD_CD_C_ITE.FieldByName('preco_avista').AsCurrency*(1+(vlrReajuste/100)),-2);
                   dmGeral.CAD_CD_C_ITE.FieldByName('dta_ult_reajuste').AsDateTime := xDataSis;
                 end;
               if (dmGeral.CAD_CD_C_ITE.FieldByName('preco_aprazo').AsString <> '') then
                 begin
                   dmGeral.CAD_CD_C_ITE.FieldByName('preco_aprazo_ant_reajuste').AsCurrency :=
                       dmGeral.CAD_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency;
                   dmGeral.CAD_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency :=
                        RoundTo(dmGeral.CAD_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency*(1+(vlrReajuste/100)),-2);
                   dmGeral.CAD_CD_C_ITE.FieldByName('dta_ult_reajuste').AsDateTime := xDataSis;
                 end;

               dmGeral.CAD_CD_C_ITE.Post;
               dmGeral.CAD_CD_C_ITE.Next;
            end;
          if (dmGeral.CAD_CD_C_ITE.ApplyUpdates(0) = 0) then
            begin
             ShowMessage('Processo de reajustes dos preços realizado com sucesso.');
            end
          else
            begin
             ShowMessage('Falha no processo de reajustes dos preços.');
            end;
       finally
         dmGeral.CAD_CD_C_ITE.BeforePost := dmGeral.CAD_CD_C_ITEBeforePost;
       end;
       dmGeral.CAD_CD_C_ITE.Close;
       dmGeral.CAD_CD_C_ITE.Data :=
       dmGeral.CAD_CD_C_ITE.DataRequest(
                 VarArrayOf([0,'']));
     end
    else
      begin
        if (cbbOpcao.ItemIndex = 0) then
           begin
             ShowMessage('Não há nenhum item cadastrado.');
           end;
        if (cbbOpcao.ItemIndex = 1) then
           begin
             ShowMessage('Não há nenhum item dos grupos selecionados.');
           end;
        if (cbbOpcao.ItemIndex = 2) then
           begin
             ShowMessage('Não há nenhum item das familias selecionadas.');
           end;
      end;
end;

procedure TEST_FM_M_APR.btnRemoverGrupoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGrupoSel.ClearSelection;

  if lboxGrupoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoSel.Items.Count - 1 do
           begin
             lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[i]);
             lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
           end;
       lboxGrupoSel.Items.Clear;
     end;
end;

procedure TEST_FM_M_APR.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TEST_FM_M_APR.btnSelFamiliaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxFamiliaDisp.ClearSelection;

  if lboxFamiliaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFamiliaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxFamiliaDisp.Items.Count - 1 do
           begin
             lboxFamiliaSel.Items.Add(lboxFamiliaDisp.Items[i]);
             lboxFamiliaDisp.Items.Delete(lboxFamiliaDisp.ItemIndex);
           end;
       lboxFamiliaDisp.Items.Clear;
     end;
end;

procedure TEST_FM_M_APR.btnSelGrupoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxGrupoDisp.ClearSelection;

  if lboxGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoDisp.Items.Count - 1 do
           begin
             lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[i]);
             lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
           end;
       lboxGrupoDisp.Items.Clear;
     end;
end;

procedure TEST_FM_M_APR.cbbOpcaoClick(Sender: TObject);
begin
  if (cbbOpcao.ItemIndex = 0) then
    begin
      pcFiltro.Visible := false;
      btnReajustar.Top := 63;
      btnSair.Top := 63;
    end;
  if (cbbOpcao.ItemIndex = 1) then
    begin
       pcFiltro.Visible := true;
       tsGrupo.TabVisible := true;
       tsFamilia.TabVisible := false;
        btnReajustar.Top := 343;
        btnSair.Top := 343;
    end;
  if (cbbOpcao.ItemIndex = 2) then
    begin
       pcFiltro.Visible := true;
       tsGrupo.TabVisible := false;
       tsFamilia.TabVisible := true;
        btnReajustar.Top := 343;
       btnSair.Top := 343;
    end;
end;

procedure TEST_FM_M_APR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TEST_FM_M_APR.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TEST_FM_M_APR.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TEST_FM_M_APR.FormShow(Sender: TObject);
begin
  pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

  pcFiltro.Visible := false;
  btnReajustar.Top := 63;
  btnSair.Top := 63;

  dmGeral.CAD_CD_C_ITE.Close;
  dmGeral.CAD_CD_C_ITE.Data :=
         dmGeral.CAD_CD_C_ITE.DataRequest(
              VarArrayOf([0,'']));

  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
         dmGeral.BUS_CD_C_GRU.DataRequest(
              VarArrayOf([1,'']));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGrupoDisp.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;
  dmGeral.BUS_CD_C_GRU.Close;

  dmGeral.BUS_CD_C_FAM.Close;
  dmGeral.BUS_CD_C_FAM.Data :=
         dmGeral.BUS_CD_C_FAM.DataRequest(
              VarArrayOf([1,'']));
   if not dmGeral.BUS_CD_C_FAM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FAM.First;

       while not dmGeral.BUS_CD_C_FAM.eof do
          begin
            lboxFamiliaDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_FAM.FieldByName('ID_FAMILIA').AsFloat,5,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FAM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FAM.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FAM.Close;

end;

procedure TEST_FM_M_APR.lboxFamiliaDispDblClick(Sender: TObject);
begin
   if lboxFamiliaDisp.ItemIndex > - 1 then
     begin
       lboxFamiliaSel.Items.Add(lboxFamiliaDisp.Items[lboxFamiliaDisp.ItemIndex]);
       lboxFamiliaDisp.Items.Delete(lboxFamiliaDisp.ItemIndex);
     end;
end;

procedure TEST_FM_M_APR.lboxFamiliaSelDblClick(Sender: TObject);
begin
   if lboxFamiliaSel.ItemIndex > -1 then
     begin
       lboxFamiliaDisp.Items.Add(lboxFamiliaSel.Items[lboxFamiliaSel.ItemIndex]);
       lboxFamiliaSel.Items.Delete(lboxFamiliaSel.ItemIndex);
     end;
end;

procedure TEST_FM_M_APR.lboxGrupoDispDblClick(Sender: TObject);
begin
  if lboxGrupoDisp.ItemIndex > - 1 then
     begin
       lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[lboxGrupoDisp.ItemIndex]);
       lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
     end;
end;

procedure TEST_FM_M_APR.lboxGrupoSelDblClick(Sender: TObject);
begin
  if lboxGrupoSel.ItemIndex > -1 then
     begin
       lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[lboxGrupoSel.ItemIndex]);
       lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
     end;
end;

procedure TEST_FM_M_APR.pnlPrincipalResize(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);
end;

end.
