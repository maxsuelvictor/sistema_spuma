unit CSU_UN_M_AUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.Buttons, Vcl.Menus, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Datasnap.Provider, Datasnap.Xmlxform;

type
  TCSU_FM_M_AUD = class(TForm)
    pnlPrincipal: TPanel;
    CSU_CD_M_AUD: TClientDataSet;
    dso: TDataSource;
    pnlCentral: TPanel;
    gbFiltros: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    Label2: TLabel;
    lboxFuncionario: TListBox;
    TabSheet1: TTabSheet;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    dgAud: TwwDBGrid;
    btnFiltrar: TButton;
    CSU_CD_M_AUDdta_servidor: TDateField;
    CSU_CD_M_AUDhor_servidor: TTimeField;
    CSU_CD_M_AUDarq_auditoria: TBlobField;
    CSU_CD_M_AUDid_usuario: TIntegerField;
    CSU_CD_M_AUDid_empresa: TIntegerField;
    CSU_CD_M_AUDprograma: TWideStringField;
    CSU_CD_M_AUDid_aud: TIntegerField;
    CSU_CD_M_AUDint_nomefun: TWideStringField;
    CSU_CD_M_AUDint_empresa: TWideStringField;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverFun: TPopupMenu;
    btnRemoverVnd: TMenuItem;
    btnRemoverTodosVnd: TMenuItem;
    lboxPro: TListBox;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    Label1: TLabel;
    pmRemoverPro: TPopupMenu;
    btnRemoverPro: TMenuItem;
    btnRemoverTodosPro: TMenuItem;
    btnVisAud: TButton;
    btnVisXml: TButton;
    CSU_CD_X_XML: TClientDataSet;
    dsoXml: TDataSource;
    XMLTransformProvider1: TXMLTransformProvider;
    pnXml: TPanel;
    btnSair: TSpeedButton;
    CSU_CD_X_XML_FIL: TClientDataSet;
    dsoXmlFil: TDataSource;
    ScrollBox1: TScrollBox;
    dgXmlFil: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    dgXml: TwwDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    dgXmlFil2: TwwDBGrid;
    CSU_CD_X_XML_FIL2: TClientDataSet;
    dsoXmlFil2: TDataSource;
    Panel7: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    btnFechar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverVndClick(Sender: TObject);
    procedure btnRemoverTodosVndClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnRemoverProClick(Sender: TObject);
    procedure btnRemoverTodosProClick(Sender: TObject);
    procedure lboxProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVisXmlClick(Sender: TObject);
    procedure btnVisAudClick(Sender: TObject);
    procedure btnXmlClick(Sender: TObject);
    procedure pnXmlExit(Sender: TObject);
    procedure dgXmlKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dgXmlCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos: Boolean;
    procedure PreencherCondicao;
    var
      xCondEmpresa,xCondFunc,xCondProg:string;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_AUD: TCSU_FM_M_AUD;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, enFunc, enSoftMenu, PSQ_UN_X_PRO, CSU_UN_M_AUD_XML;

procedure TCSU_FM_M_AUD.btnFiltrarClick(Sender: TObject);
var
xPesquisa:string;
begin
  if TestarCampos then
    begin
      PreencherCondicao;

      {if txtpesquisa.Text <> '' then
        xPesquisa := '%'+txtpesquisa.Text;}

      CSU_CD_M_AUD.Active:= False;
      CSU_CD_M_AUD.Close;
      CSU_CD_M_AUD.Data :=
        CSU_CD_M_AUD.DataRequest(
          VarArrayOf([deInicial.Text,deFinal.Text,xCondEmpresa,xCondFunc,xCondProg,xPesquisa]));
    end;
end;

procedure TCSU_FM_M_AUD.btnRemoverProClick(Sender: TObject);
begin
  if lboxPro.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;
  lboxPro.DeleteSelected;
end;

procedure TCSU_FM_M_AUD.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TCSU_FM_M_AUD.btnRemoverTodosProClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPro.ClearSelection;

  if lboxPro.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPro.Items.Count > 0 then
     begin
       for i := 0 to lboxPro.Items.Count - 1 do
           begin
             lboxPro.Items.Delete(lboxPro.ItemIndex);
           end;
       lboxPro.Items.Clear;
     end;
end;

procedure TCSU_FM_M_AUD.btnRemoverTodosVndClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxFuncionario.ClearSelection;

  if lboxFuncionario.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFuncionario.Items.Count > 0 then
     begin
       for i := 0 to lboxFuncionario.Items.Count - 1 do
           begin
             lboxFuncionario.Items.Delete(lboxFuncionario.ItemIndex);
           end;
       lboxFuncionario.Items.Clear;
     end;
end;

procedure TCSU_FM_M_AUD.btnRemoverVndClick(Sender: TObject);
begin
  if lboxFuncionario.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;
  lboxFuncionario.DeleteSelected;
end;

procedure TCSU_FM_M_AUD.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_M_AUD.btnVisAudClick(Sender: TObject);
var
i:integer;
xName: String;
begin
  Panel1.Caption := '';
  Panel10.Visible := false;
  dgXmlFil2.Visible := false;
  Panel6.Visible := false;

  Panel7.Visible := false;
  dgXmlFil.Visible := false;
  Panel1.Visible := false;


  if not CSU_CD_M_AUD.IsEmpty then
    begin
      pnXml.visible := True;
      TBlobField(CSU_CD_M_AUD.FieldByName('arq_auditoria')).SaveToFile('auditoria.xml');
      CSU_CD_X_XML.LoadFromFile(ExtractFilePath(Application.ExeName)+'auditoria.xml');
      for I := 0 to CSU_CD_X_XML.FieldCount - 1 do
        begin
            xName := CSU_CD_X_XML.Fields[I].DisplayLabel;

          if (Pos('SQ',xName) > 0) and (Panel1.Caption = '') then
            begin
              CSU_CD_X_XML_FIL.DataSetField := TDataSetField(CSU_CD_X_XML.FieldByName(xName));
              if not CSU_CD_X_XML_FIL.IsEmpty then
                Panel1.Caption := xName;
            end
          else if (Pos('SQ',xName) > 0) and (Panel1.Caption <> '') then
            begin
              CSU_CD_X_XML_FIL2.DataSetField := TDataSetField(CSU_CD_X_XML.FieldByName(xName));
              if not CSU_CD_X_XML_FIL2.IsEmpty then
                begin
                  Panel6.Caption := xName;
                  break;
                end;
            end;
        end;
      if not CSU_CD_X_XML_FIL.IsEmpty then
        begin
          Panel1.Visible := true;
          dgXmlFil.Visible := true;
          Panel7.Visible := true;
        end;

      if not CSU_CD_X_XML_FIL2.IsEmpty then
        begin
          Panel6.Visible := true;
          dgXmlFil2.Visible := true;
          Panel10.Visible := true;
        end;
      dgXml.SetFocus;
    end;
end;

procedure TCSU_FM_M_AUD.btnVisXmlClick(Sender: TObject);
begin
  try
  if not CSU_CD_M_AUD.IsEmpty then
    begin
      Application.CreateForm(TCSU_FM_M_AUD_XML,CSU_FM_M_AUD_XML);

      TBlobField(CSU_CD_M_AUD.FieldByName('arq_auditoria')).SaveToFile('auditoria.xml');

      CSU_FM_M_AUD_XML.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'auditoria.xml');

      CSU_FM_M_AUD_XML.ShowModal;
      CSU_FM_M_AUD_XML.Free;
    end;
  finally
    Deletefile(ExtractFilePath(Application.ExeName)+'auditoria.xml');
  end;
end;

procedure TCSU_FM_M_AUD.btnXmlClick(Sender: TObject);
begin
  pnXml.visible := False;
end;

procedure TCSU_FM_M_AUD.dgXmlCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if not odd(dsoXml.DataSet.RecNo) then
    begin
      ABrush.Color := $00C1C1FF;
    end
  else
    begin
      ABrush.Color := clSkyBlue;
    end;
end;

procedure TCSU_FM_M_AUD.dgXmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pnXml.Visible then
    begin
      if Key = vk_escape then
        begin
          pnXml.Visible := false;
        end;
    end;
end;

procedure TCSU_FM_M_AUD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(CSU_FM_M_AUD);
end;

procedure TCSU_FM_M_AUD.FormResize(Sender: TObject);
begin
  pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
  pnlCentral.left := (pnlPRincipal.Width div 2) - (pnlCentral.width div 2);
end;

procedure TCSU_FM_M_AUD.FormShow(Sender: TObject);
var
i:integer;
xMenu:String;
begin
  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
  pnXml.Height := 380;
  deInicial.SetFocus;
end;

procedure TCSU_FM_M_AUD.lboxEmpresasDblClick(Sender: TObject);
begin
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TCSU_FM_M_AUD.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TCSU_FM_M_AUD.lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
    begin
      PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
      PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           if not dmGeral.ExisteRegNoListBox(lboxFuncionario,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
              begin
                lboxFuncionario.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                           ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);

              end;
         end;
       PSQ_FM_X_FUN.Free;
     end;
end;

procedure TCSU_FM_M_AUD.lboxProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     begin
        PSQ_FM_X_PRO := TPSQ_FM_X_PRO.Create(Self);
        PSQ_FM_X_PRO.ShowModal;
        if not PSQ_FM_X_PRO.BUS_CD_M_PRO.IsEmpty then
           begin
             lboxPro.Items.Add(PSQ_FM_X_PRO.BUS_CD_M_PRO.FieldByName('formulario').AsString+
              ' - ' + PSQ_FM_X_PRO.BUS_CD_M_PRO.FieldByName('descricao').AsString);

           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TCSU_FM_M_AUD.PreencherCondicao;
var
i:Integer;
begin
  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
               end;
          end;
     end;

  // Funcionario --------------------------------------------------------------
  xCondFunc := '';
  if lboxFuncionario.Count > 0 then
     begin
       for i := 0 to lboxFuncionario.Count - 1 do
          begin
            if xCondFunc <> '' then
               begin
                 xCondFunc :=
                 xCondFunc+ ',' +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
               end;
            if xCondFunc = '' then
               begin
                 xCondFunc :=
                 xCondFunc +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Programa --------------------------------------------------------------
  xCondProg := '';
  if lboxPro.Count > 0 then
     begin
       for i := 0 to lboxPro.Count - 1 do
          begin
            if xCondProg <> '' then
               begin
                 xCondProg :=
                 xCondProg+ ',' +''''+trim(copy(lboxPro.Items[i],1,12))+'''';
               end;
            if xCondProg = '' then
               begin
                 xCondProg :=
                 xCondProg +''''+trim(copy(lboxPro.Items[i],1,12))+'''';
               end;
          end;
     end;
end;

procedure TCSU_FM_M_AUD.btnFecharClick(Sender: TObject);
begin
  CSU_CD_X_XML.Active := False;
  Deletefile(ExtractFilePath(Application.ExeName)+'auditoria.xml');
  pnXml.visible := False;
end;

function TCSU_FM_M_AUD.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

    if lboxEmpresaSelecionada.Count = 0 then
      begin
        mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
      end;

    if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end;
end;

procedure TCSU_FM_M_AUD.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;

procedure TCSU_FM_M_AUD.pnXmlExit(Sender: TObject);
begin
  CSU_CD_X_XML.Active := False;
  Deletefile(ExtractFilePath(Application.ExeName)+'auditoria.xml');
  pnXml.visible := False;
end;

end.
