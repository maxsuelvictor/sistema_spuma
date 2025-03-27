unit CTC_UN_C_EOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Mask, vcl.Wwdbedit;

type
  TCTC_FM_C_EOC = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    Label1: TLabel;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    gbGrupo: TGroupBox;
    btnAddGrupo: TBitBtn;
    grdGrupo: TwwDBGrid;
    grdGrupoIButton: TwwIButton;
    pnlGrupo: TPanel;
    lblItem: TLabel;
    lblComposicaoEspecificacao: TLabel;
    Label2: TLabel;
    txtGrupo: TDBEdit;
    txtDescricao2: TDBEdit;
    txtUnid: TDBEdit;
    txtClasse: TDBEdit;
    Label3: TLabel;
    dsoEocGrupo: TwwDataSource;
    txtCodigo2: TDBEdit;
    Label4: TLabel;
    txtFoco: TDBEdit;
    procedure btnAddGrupoClick(Sender: TObject);
    procedure pnlGrupoExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGrupoIButtonClick(Sender: TObject);
    procedure txtGrupoExit(Sender: TObject);
    procedure txtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure txtDescricao2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdGrupoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_EOC: TCTC_FM_C_EOC;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc;

procedure TCTC_FM_C_EOC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EOC);
  txtDescricao.SetFocus;
end;

procedure TCTC_FM_C_EOC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EOC) then
    begin
      txtDescricao.SetFocus;
    end;
end;

procedure TCTC_FM_C_EOC.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EOC) then
     begin
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_EOC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EOC);
end;

procedure TCTC_FM_C_EOC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_C_EOC.FieldByName('ID_ESTRUTURA').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_C_EOC);

  inherited;

  dmCtc.CTC_CD_C_EOC.Close;
  dmCtc.CTC_CD_C_EOC.Data :=
  dmCtc.CTC_CD_C_EOC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_C_EOC.btnAddGrupoClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_EOC_GRU.Insert;
  pnlGrupo.Enabled := True;
  txtGrupo.SetFocus;
end;

procedure TCTC_FM_C_EOC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_EOC.Close;
    dmCtc.CTC_CD_C_EOC.Data :=
    dmCtc.CTC_CD_C_EOC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_EOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_C_EOC.Close;
  FreeAndNil(CTC_FM_C_EOC);
end;

procedure TCTC_FM_C_EOC.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_EOC.Close;
  dmCtc.CTC_CD_C_EOC.Data := dmCtc.CTC_CD_C_EOC.DataRequest(VarArrayOf([0, '']));
end;

procedure TCTC_FM_C_EOC.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;
end;

procedure TCTC_FM_C_EOC.grdGrupoDblClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_EOC_GRU.cancel;

  if dmCtc.CTC_CD_C_EOC_GRU.IsEmpty then
    begin
      dmCtc.CTC_CD_C_EOC_GRU.Append;
      pnlGrupo.Enabled := true;
      txtGrupo.SetFocus;
    end
  else
    begin
      if copy(dmCtc.CTC_CD_C_EOC_GRU.FieldByName('GRUPO').AsString,3,3) = '000' then
        begin
          dmCtc.CTC_CD_C_EOC_GRU.Edit;
          pnlGrupo.Enabled := true;
          txtGrupo.Enabled := false;
          txtUnid.Enabled := false;
          txtClasse.Enabled := false;
          txtCodigo2.Enabled := false;
          txtDescricao2.SetFocus;
        end
      else
        begin
          dmCtc.CTC_CD_C_EOC_GRU.Edit;
          pnlGrupo.Enabled := true;
          txtGrupo.Enabled := false;
          txtCodigo2.SetFocus;
        end;
    end;
end;

procedure TCTC_FM_C_EOC.grdGrupoIButtonClick(Sender: TObject);
begin
  inherited;
  try
    grdGrupoIButton.Enabled := False;
    if dmCtc.CTC_CD_C_EOC_GRU.IsEmpty then
      begin
        ShowMessage('Não há registro para excluir.');
        abort;
      end;
    dmCtc.CTC_CD_C_EOC_GRU.Delete;
    //dmGeral.CTC_CD_M_ORC_ITE.Edit;
  finally
    grdGrupoIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_C_EOC.pnlGrupoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused then
     begin
       acCancelarExecute(acCancelar);
       exit;
     end;
  if btnGrava.Focused  then
     begin
        acGravarExecute(acGravar);
        Exit;
     end;

   if (length(trim(txtGrupo.Text)) < 5) or
      (txtDescricao2.Text = '') then
      begin
        dmCtc.CTC_CD_C_EOC_GRU.Cancel;
        txtGrupo.Enabled   := true;
        txtCodigo2.Enabled := true;
        txtUnid.Enabled    := true;
        txtClasse.Enabled  := true;
        pnlGrupo.Enabled   := False;
      end
  else
      begin
        try
        dmCtc.CTC_CD_C_EOC.BeforePost := nil;

        dmCtc.CTC_CD_C_EOC_GRU.Post;
        btnAddGrupo.SetFocus;
        txtGrupo.Enabled   := true;
        txtCodigo2.Enabled := true;
        txtUnid.Enabled    := true;
        txtClasse.Enabled  := true;
        pnlGrupo.Enabled   := False;

        finally
          dmCtc.CTC_CD_C_EOC.BeforePost := dmCtc.CTC_CD_C_EOC.BeforePost;
        end;
      end;
end;

procedure TCTC_FM_C_EOC.txtDescricao2Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    begin
      acCancelarExecute(acCancelar);
      exit;
    end;

  if btnGrava.Focused  then
    begin
      acGravarExecute(acGravar);
      Exit;
    end;

  if txtDescricao2.Text = '' Then
    begin
      if (dmCtc.CTC_CD_C_EOC_GRU.State in [dsInsert]) or (dmCtc.CTC_CD_C_EOC_GRU.State in [dsEdit]) then
        begin
          ShowMessage('Descrição dee ser preenchida.');
          txtDescricao2.SetFocus;
          Abort;
        end;
    end;
end;

procedure TCTC_FM_C_EOC.txtGrupoExit(Sender: TObject);
var
  id_estrtura,grupo,univ: String;
  I,a,b: integer;
begin
  inherited;

  if btnCancelar.Focused then
    begin
      acCancelarExecute(acCancelar);
      exit;
    end;

  if btnGrava.Focused  then
    begin
      acGravarExecute(acGravar);
      Exit;
    end;

  if length(trim(txtGrupo.Text)) > 4 then
    begin
      a := StrToInt(copy(txtGrupo.Text,1,1));
      b := StrToInt(copy(txtGrupo.Text,3,3));
    end
  else
    begin
      if (dmCtc.CTC_CD_C_EOC_GRU.State in [dsInsert]) or (dmCtc.CTC_CD_C_EOC_GRU.State in [dsEdit]) then
        begin
          ShowMessage('Grupo inválido.');
          txtGrupo.SetFocus;
        end;
      exit;
    end;

  try
    pnlGrupo.OnExit := nil;

  if dmCtc.CTC_CD_C_EOC_GRU.State in [dsInsert] then
    begin
      grupo := dmCtc.CTC_CD_C_EOC_GRU.FieldByName('GRUPO').AsString;
      dmCtc.CTC_CD_C_EOC_GRU.cancel;

      for I := 1 to a-1 do
        begin
          univ  := intTostr(I) + '.000';

          if not (dmCtc.CTC_CD_C_EOC_GRU.Locate('GRUPO',univ,[])) then
            begin
              ShowMessage('Grupo inválido, Falta o grupo principal '+'"'+univ+'"'+';');
              dmCtc.CTC_CD_C_EOC_GRU.Insert;
              txtGrupo.SetFocus;
              exit;
            end;
        end;

      if b > 0 then  // Critica de Hieranquia , grupo não pricipal.
        begin
          univ := intTostr(a) + '.000';
          if dmCtc.CTC_CD_C_EOC_GRU.Locate('GRUPO',univ,[]) then
            begin
              if dmCtc.CTC_CD_C_EOC_GRU.Locate('GRUPO',grupo,[]) then
                begin
                  ShowMessage('Grupo já cadastrado.');
                  dmCtc.CTC_CD_C_EOC_GRU.Insert;
                  txtGrupo.SetFocus;
                  //Abort;
                end
              else
                begin
                  dmCtc.CTC_CD_C_EOC_GRU.Insert;

                  dmCtc.CTC_CD_C_EOC_GRU.FieldByName('ID_ESTRUTURA').AsString :=
                    dmCtc.CTC_CD_C_EOC.FieldByName('ID_ESTRUTURA').AsString;

                  dmCtc.CTC_CD_C_EOC_GRU.FieldByName('GRUPO').AsString := grupo;

                  txtFoco.SetFocus;
                  Keybd_event(13,0,0,0);
                end;
            end
          else
            begin
              ShowMessage('Grupo inválido, Falta o grupo principal '+'"'+univ+'"'+';');
              dmCtc.CTC_CD_C_EOC_GRU.Insert;
              txtGrupo.SetFocus;
            end;
        end
      else  // Critica de Hieranquia , grupo pricipal.
        begin
          txtCodigo2.Enabled := false;
          txtUnid.Enabled    := false;
          txtClasse.Enabled  := False;

          if dmCtc.CTC_CD_C_EOC_GRU.Locate('GRUPO',grupo,[]) then
            begin
              ShowMessage('Grupo já cadastrado.');
              dmCtc.CTC_CD_C_EOC_GRU.Insert;
              txtGrupo.SetFocus;
             // Abort;
            end
          else
            begin
              dmCtc.CTC_CD_C_EOC_GRU.Insert;

              dmCtc.CTC_CD_C_EOC_GRU.FieldByName('ID_ESTRUTURA').AsString :=
                dmCtc.CTC_CD_C_EOC.FieldByName('ID_ESTRUTURA').AsString;

              dmCtc.CTC_CD_C_EOC_GRU.FieldByName('GRUPO').AsString := grupo;

              txtFoco.SetFocus;
              Keybd_event(13,0,0,0);
            end;
        end;
    end;
  finally
    pnlGrupo.OnExit :=  pnlGrupoExit;
  end;
end;

procedure TCTC_FM_C_EOC.txtGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9','.',#08] ) then
  key:=#0;
end;

procedure TCTC_FM_C_EOC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
