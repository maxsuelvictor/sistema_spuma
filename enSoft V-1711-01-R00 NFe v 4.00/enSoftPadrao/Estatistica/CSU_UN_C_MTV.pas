unit CSU_UN_C_MTV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB,
  vcl.wwdatsrc, Vcl.ComCtrls, Vcl.Menus;

type
  TCSU_FM_C_MTV = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    GroupBox1: TGroupBox;
    txtAno: TEdit;
    Label2: TLabel;
    btnFiltrar: TButton;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    imgBotoesInativo: TImageList;
    imgBotoesAtivoVe: TImageList;
    ImgPequenaVe: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequena: TImageList;
    imgBotoesAtivo: TImageList;
    imgBotoesAtivoAz: TImageList;
    dso: TwwDataSource;
    dsoVend: TwwDataSource;
    PageControl1: TPageControl;
    tsGrupo: TTabSheet;
    lboxDispGrupo: TListBox;
    lboxSelGrupo: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    PageControl2: TPageControl;
    tsQtde: TTabSheet;
    dgQtdeVendedor: TwwDBGrid;
    dgQtde: TwwDBGrid;
    tsValor: TTabSheet;
    dgValorVnd: TwwDBGrid;
    dgValor: TwwDBGrid;
    btnSair: TButton;
    pmDelGrupo: TPopupMenu;
    pmSelGrupo: TPopupMenu;
    btnSelGrupo: TMenuItem;
    btnDelGrupo: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lboxDispGrupoDblClick(Sender: TObject);
    procedure lboxSelGrupoDblClick(Sender: TObject);
   // procedure lboxDispVendedorDblClick(Sender: TObject);
   // procedure lboxSelVendedorDblClick(Sender: TObject);
    procedure btnSelGrupoClick(Sender: TObject);
   // procedure btnSelVendClick(Sender: TObject);
   // procedure btnDelVendClick(Sender: TObject);
    procedure btnDelGrupoClick(Sender: TObject);
    procedure dgQtdeRowChanged(Sender: TObject);
    procedure dgValorRowChanged(Sender: TObject);
    procedure pnlDadosClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure carregaCores;
    var
       xCorSistema,xCondVend,xCondGrupo:String;
  public
    { Public declarations }
  end;

var
  CSU_FM_C_MTV: TCSU_FM_C_MTV;

implementation

{$R *.dfm}

uses uDmGeral, enFunc;

procedure TCSU_FM_C_MTV.btnDelGrupoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxSelGrupo.ClearSelection;

  if lboxSelGrupo.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSelGrupo.Items.Count > 0 then
     begin
       for i := 0 to lboxSelGrupo.Items.Count - 1 do
           begin
             lboxDispGrupo.Items.Add(lboxSelGrupo.Items[i]);
             lboxSelGrupo.Items.Delete(lboxSelGrupo.ItemIndex);
           end;
       lboxSelGrupo.Items.Clear;
     end;
end;

{procedure TCSU_FM_C_MTV.btnDelVendClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxSelVendedor.ClearSelection;

  if lboxSelVendedor.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSelVendedor.Items.Count > 0 then
     begin
       for i := 0 to lboxSelVendedor.Items.Count - 1 do
           begin
             lboxDispVendedor.Items.Add(lboxSelVendedor.Items[i]);
             lboxSelVendedor.Items.Delete(lboxSelVendedor.ItemIndex);
           end;
       lboxSelVendedor.Items.Clear;
     end;
end; }

procedure TCSU_FM_C_MTV.btnFiltrarClick(Sender: TObject);
var
  msg:String;
begin
       msg := '';
       if txtAno.Text = '' then
         msg := msg+ 'Deve-se preencher o ano.'+#13+#10;

       if  lboxSelGrupo.Count = 0 then
         msg := msg +'Deve-se selecionar pelo menos 1 grupo de produto.'+#13+#10;

       {if  lboxSelVendedor.Count = 0 then
         msg := msg +'Deve-se selecionar pelo menos 1 vendedor.'+#13+#10; }

       if msg <> '' then
         begin
           ShowMessage(msg);
           exit;
         end;


    PreencherCondicao;
    dmGeral.BUS_CD_C_CSU_MTV_VND.Close;
    dmGeral.BUS_CD_C_CSU_MTV.Close;
    dmGeral.BUS_CD_C_CSU_MTV.Data :=
    dmGeral.BUS_CD_C_CSU_MTV.DataRequest(
          VarArrayOf([txtAno.Text,xCondGrupo]));

    
end;


procedure TCSU_FM_C_MTV.PreencherCondicao;
var
 i:Integer;
begin
    // Vendedor ------------------------------------------------------------------
 { xCondVend := '';
  if lboxSelVendedor.Count > 0 then
     begin
       for i := 0 to lboxSelVendedor.Count - 1 do
          begin
            if xCondVend <> '' then
               begin
                 xCondVend :=
                 xCondVend + ',' +''''+trim(copy(lboxSelVendedor.Items[i],1,4))+'''';

               end;
            if xCondVend = '' then
               begin
                 xCondVend :=
                 xCondVend +''''+ trim(copy(lboxSelVendedor.Items[i],1,4))+'''';
               end;
          end;
     end;}

  xCondGrupo := '';
  if lboxSelGrupo.Count > 0 then
     begin
       for i := 0 to lboxSelGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +''''+trim(copy(lboxSelGrupo.Items[i],1,6))+'''';

               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +''''+ trim(copy(lboxSelGrupo.Items[i],1,6))+'''';
               end;
          end;
     end;
end;

procedure TCSU_FM_C_MTV.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_MTV.btnSelGrupoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxDispGrupo.ClearSelection;

  if lboxDispGrupo.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxDispGrupo.Items.Count > 0 then
     begin
       for i := 0 to lboxDispGrupo.Items.Count - 1 do
           begin
             lboxSelGrupo.Items.Add(lboxDispGrupo.Items[i]);
             lboxDispGrupo.Items.Delete(lboxDispGrupo.ItemIndex);
           end;
       lboxDispGrupo.Items.Clear;
     end;
end;


procedure TCSU_FM_C_MTV.carregaCores;
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

{procedure TCSU_FM_C_MTV.btnSelVendClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxDispVendedor.ClearSelection;

  if lboxDispVendedor.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxDispVendedor.Items.Count > 0 then
     begin
       for i := 0 to lboxDispVendedor.Items.Count - 1 do
           begin
             lboxSelVendedor.Items.Add(lboxDispVendedor.Items[i]);
             lboxDispVendedor.Items.Delete(lboxDispVendedor.ItemIndex);
           end;
       lboxDispVendedor.Items.Clear;
     end;
end;  }

procedure TCSU_FM_C_MTV.dgQtdeRowChanged(Sender: TObject);
begin
 if dmGeral.BUS_CD_C_CSU_MTV.RecordCount>0 then
   begin
    dmGeral.BUS_CD_C_CSU_MTV_VND.Close;
    dmGeral.BUS_CD_C_CSU_MTV_VND.Data :=
    dmGeral.BUS_CD_C_CSU_MTV_VND.DataRequest(
          VarArrayOf([dmGeral.BUS_CD_C_CSU_MTV.FieldByName('ano').AsString,
                      dmGeral.BUS_CD_C_CSU_MTV.FieldByName('id_grupo_prod').AsString]));
   end;
end;

procedure TCSU_FM_C_MTV.dgValorRowChanged(Sender: TObject);
begin
  if dmGeral.BUS_CD_C_CSU_MTV.RecordCount>0 then
   begin
    dmGeral.BUS_CD_C_CSU_MTV_VND.Close;
    dmGeral.BUS_CD_C_CSU_MTV_VND.Data :=
    dmGeral.BUS_CD_C_CSU_MTV_VND.DataRequest(
          VarArrayOf([dmGeral.BUS_CD_C_CSU_MTV.FieldByName('ano').AsString,
                      dmGeral.BUS_CD_C_CSU_MTV.FieldByName('id_grupo_prod').AsString]));
   end;
end;

procedure TCSU_FM_C_MTV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmGeral.BUS_CD_C_GRP.Close;
   dmGeral.BUS_CD_C_FUN.Close;
   dmGeral.BUS_CD_C_CSU_MTV_VND.Close;
   dmGeral.BUS_CD_C_CSU_MTV.Close;
   Action := caFree;
end;

procedure TCSU_FM_C_MTV.FormCreate(Sender: TObject);
begin
 // carregaCores;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TCSU_FM_C_MTV.FormResize(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPRincipal.Width div 2) - (pnlDados.width div 2);
end;

procedure TCSU_FM_C_MTV.FormShow(Sender: TObject);
begin

     {dmGeral.BusFuncionario(1,'%');

     dmGeral.BUS_CD_C_FUN.First;
     while not dmGeral.BUS_CD_C_FUN.EOF do
       begin
         lboxDispVendedor.Items.Add(
                StrZero(dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,4,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString);
         dmGeral.BUS_CD_C_FUN.Next;
       end; }


     dmGeral.BUS_CD_C_GRP.Close;
     dmGeral.BUS_CD_C_GRP.Data :=
     dmGeral.BUS_CD_C_GRP.DataRequest(
          VarArrayOf([1, '%']));

     dmGeral.BUS_CD_C_GRP.First;
     while not dmGeral.BUS_CD_C_GRP.EOF do
       begin
         lboxDispGrupo.Items.Add(
                StrZero(dmGeral.BUS_CD_C_GRP.FieldByName('ID_CODIGO').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_GRP.FieldByName('DESCRICAO').AsString);
         dmGeral.BUS_CD_C_GRP.Next;
       end;


end;

procedure TCSU_FM_C_MTV.lboxDispGrupoDblClick(Sender: TObject);
begin
   if lboxDispGrupo.ItemIndex > - 1 then
     begin
       lboxSelGrupo.Items.Add(lboxDispGrupo.Items[lboxDispGrupo.ItemIndex]);
       lboxDispGrupo.Items.Delete(lboxDispGrupo.ItemIndex);
     end;
end;

{
procedure TCSU_FM_C_MTV.lboxDispVendedorDblClick(Sender: TObject);
begin
    if lboxDispVendedor.ItemIndex > - 1 then
     begin
       lboxSelVendedor.Items.Add(lboxDispVendedor.Items[lboxDispVendedor.ItemIndex]);
       lboxDispVendedor.Items.Delete(lboxDispVendedor.ItemIndex);
     end;
end;}

procedure TCSU_FM_C_MTV.lboxSelGrupoDblClick(Sender: TObject);
begin
   if lboxSelGrupo.ItemIndex > -1 then
     begin
       lboxDispGrupo.Items.Add(lboxSelGrupo.Items[lboxSelGrupo.ItemIndex]);
       lboxSelGrupo.Items.Delete(lboxSelGrupo.ItemIndex);
     end;
end;

procedure TCSU_FM_C_MTV.pnlDadosClick(Sender: TObject);
begin

end;

{
procedure TCSU_FM_C_MTV.lboxSelVendedorDblClick(Sender: TObject);
begin
   if lboxSelVendedor.ItemIndex > -1 then
     begin
       lboxDispVendedor.Items.Add(lboxSelVendedor.Items[lboxSelVendedor.ItemIndex]);
       lboxSelVendedor.Items.Delete(lboxSelVendedor.ItemIndex);
     end;
end;   }

end.
