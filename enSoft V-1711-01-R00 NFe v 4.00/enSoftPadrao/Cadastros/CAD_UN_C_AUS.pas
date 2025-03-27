unit CAD_UN_C_AUS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls;

type
  TCAD_FM_C_AUS = class(TPAD_FM_X_PAD)
    CAD_CD_C_AUS: TClientDataSet;
    CAD_CD_C_AUS_PRG: TClientDataSet;
    CAD_CD_C_AUSid_aus: TIntegerField;
    CAD_CD_C_AUSid_empresa: TIntegerField;
    CAD_CD_C_AUSid_funcionario: TIntegerField;
    CAD_CD_C_AUSint_nomefuncionario: TWideStringField;
    CAD_CD_C_AUSCAD_SQ_C_AUS_PRG: TDataSetField;
    CAD_CD_C_AUS_PRGid_aus: TIntegerField;
    CAD_CD_C_AUS_PRGid_perfil_seg: TIntegerField;
    CAD_CD_C_AUS_PRGformulario: TWideStringField;
    CAD_CD_C_AUS_PRGchave: TWideStringField;
    CAD_CD_C_AUS_PRGid_empresa: TIntegerField;
    CAD_CD_C_AUS_PRGadicionar: TBooleanField;
    CAD_CD_C_AUS_PRGalterar: TBooleanField;
    CAD_CD_C_AUS_PRGexcluir: TBooleanField;
    CAD_CD_C_AUS_PRGconsulta: TBooleanField;
    CAD_CD_C_AUS_PRGid_aus_prg: TIntegerField;
    dsoPrg: TwwDataSource;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtperfil: TDBEdit;
    txtfuncionario: TJvDBComboEdit;
    Label6: TLabel;
    lbl_Funcionario: TwwDBEdit;
    Label1: TLabel;
    CAD_CD_C_AUSint_perfilseg: TWideStringField;
    CAD_CD_C_AUS_PRGmenu: TWideStringField;
    CAD_CD_C_AUS_PRGmodulo: TWideStringField;
    CAD_CD_C_AUS_PRGdescricao: TWideStringField;
    BUS_CD_C_AUS: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    DataSetField1: TDataSetField;
    WideStringField2: TWideStringField;
    gdPes: TwwDBGrid;
    dsoPesMod: TwwDataSource;
    mpOpcoes: TPopupMenu;
    miExcluir: TMenuItem;
    gdAus: TwwDBGrid;
    gdAusIButton: TwwIButton;
    CAD_CD_C_AUSint_id_perfilseg: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtfuncionarioButtonClick(Sender: TObject);
    procedure txtfuncionarioExit(Sender: TObject);
    procedure CAD_CD_C_AUSNewRecord(DataSet: TDataSet);
    procedure CAD_CD_C_AUSBeforePost(DataSet: TDataSet);
    procedure CAD_CD_C_AUS_PRGReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CAD_CD_C_AUSReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CAD_CD_C_AUS_PRGNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure gdPesDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure gdAusIButtonClick(Sender: TObject);
    procedure gdAusRowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_AUS: TCAD_FM_C_AUS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, CAD_RN_C_AUS, enSoftMenu;

procedure TCAD_FM_C_AUS.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_AUS);
  txtfuncionario.Enabled := true;
  gdAus.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
  txtfuncionario.SetFocus;
end;

procedure TCAD_FM_C_AUS.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_AUS) then
      begin
        inherited;
        txtfuncionario.Enabled := false;
        gdAus.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
      end;
end;

procedure TCAD_FM_C_AUS.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_AUS) then
     begin
       inherited;
       dbGrid.SetFocus;
       gdAus.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
     end
  else
     begin
       txtFuncionario.SetFocus;
     end;
end;

procedure TCAD_FM_C_AUS.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_AUS);
end;

procedure TCAD_FM_C_AUS.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := CAD_CD_C_AUS.FieldByName('ID_FUNCIONARIO').AsString;
   try
    DmGeral.Grava(CAD_CD_C_AUS);
   finally
    inherited;
    CAD_CD_C_AUS.Close;
    CAD_CD_C_AUS.Data :=
    CAD_CD_C_AUS.DataRequest(VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text, codigo]));
    gdAus.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
   end;

end;

procedure TCAD_FM_C_AUS.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;
    CAD_CD_C_AUS.Close;
    CAD_CD_C_AUS.Data :=
      CAD_CD_C_AUS.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text, txtPesquisa.Text]));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_AUS.CAD_CD_C_AUSBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCAD_CD_C_AUS(DataSet);
  { TODO -oMaxsuel : Insertido por Maxsuel Victor, em 05/09/2016 }
  dmGeral.enAudRegistrarInfo(DataSet);
end;

procedure TCAD_FM_C_AUS.CAD_CD_C_AUSNewRecord(DataSet: TDataSet);
begin
  inherited;
  CadNovoAus(DataSet);
end;

procedure TCAD_FM_C_AUS.CAD_CD_C_AUSReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TCAD_FM_C_AUS.CAD_CD_C_AUS_PRGNewRecord(DataSet: TDataSet);
begin
  inherited;
  CadNovoAusMod(DataSet);
end;

procedure TCAD_FM_C_AUS.CAD_CD_C_AUS_PRGReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TCAD_FM_C_AUS.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_AUS.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if CAD_CD_C_AUS.FieldByName('int_perfilseg').AsString = '' then
    begin
      dmGeral.BUS_CD_C_PES_MOD.Close;
    end
  else if CAD_CD_C_AUS.FieldByName('int_perfilseg').AsString <> dmGeral.BUS_CD_C_PES_MOD.FieldByName('int_perfilseg').AsString then
    begin
      dmGeral.BUS_CD_C_PES_MOD.Close;
      dmGeral.BUS_CD_C_PES_MOD.Data :=
        dmGeral.BUS_CD_C_PES_MOD.DataRequest(
          VarArrayOf([CAD_CD_C_AUS.FieldByName('int_id_perfilseg').AsString]));
    end;
end;

procedure TCAD_FM_C_AUS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_AUS.Close;
  dmGeral.BUS_CD_C_PES_MOD.Close;
  FreeAndNil(CAD_FM_C_AUS);
end;

procedure TCAD_FM_C_AUS.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_PES_MOD.Close;
end;

procedure TCAD_FM_C_AUS.FormShow(Sender: TObject);
begin
  inherited;
  CAD_CD_C_AUS.Close;
  CAD_CD_C_AUS.Data :=
  CAD_CD_C_AUS.DataRequest(VarArrayOf([0, '']));
end;

procedure TCAD_FM_C_AUS.gdAusIButtonClick(Sender: TObject);
begin
  inherited;
  if not CAD_CD_C_AUS_PRG.IsEmpty then
    begin
      CAD_CD_C_AUS_PRG.Delete;
    end;
end;

procedure TCAD_FM_C_AUS.gdAusRowChanged(Sender: TObject);
begin
  inherited;
  if CAD_CD_C_AUS_PRG.IsEmpty then
    gdAus.Enabled := false
  else
    gdAus.Enabled := true;
end;

procedure TCAD_FM_C_AUS.gdPesDblClick(Sender: TObject);
begin
  inherited;
  if dmgeral.BUS_CD_C_PES_MOD.IsEmpty then
    begin
      ShowMessage('Nenhum programa selecionado.');
      exit;
    end;

  if CAD_CD_C_AUS_PRG.Locate('formulario',dmgeral.BUS_CD_C_PES_MOD.FieldByName('formulario').Text,
    [loCaseInsensitive,loPartialKey])=false then
    begin
      CAD_CD_C_AUS_PRG.Insert;
      CAD_CD_C_AUS_PRG.FieldByName('id_perfil_seg').AsInteger := dmgeral.BUS_CD_C_PES_MOD.FieldByName('id_perfil_seg').AsInteger;
      CAD_CD_C_AUS_PRG.FieldByName('formulario').AsString     := dmgeral.BUS_CD_C_PES_MOD.FieldByName('formulario').AsString;
      CAD_CD_C_AUS_PRG.FieldByName('chave').AsString          := dmgeral.BUS_CD_C_PES_MOD.FieldByName('chave').AsString;
      CAD_CD_C_AUS_PRG.FieldByName('menu').AsString           := dmgeral.BUS_CD_C_PES_MOD.FieldByName('menu').AsString;
      CAD_CD_C_AUS_PRG.FieldByName('descricao').AsString      := dmgeral.BUS_CD_C_PES_MOD.FieldByName('descricao').AsString;
      CAD_CD_C_AUS_PRG.FieldByName('modulo').AsString         := dmgeral.BUS_CD_C_PES_MOD.FieldByName('modulo').AsString;
      CAD_CD_C_AUS_PRG.FieldByName('id_empresa').AsInteger    := dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger;
      CAD_CD_C_AUS_PRG.FieldByName('adicionar').AsBoolean     := true;
      CAD_CD_C_AUS_PRG.FieldByName('alterar').AsBoolean       := true;
      CAD_CD_C_AUS_PRG.FieldByName('excluir').AsBoolean       := true;
      CAD_CD_C_AUS_PRG.FieldByName('consulta').AsBoolean      := true;
      CAD_CD_C_AUS_PRG.Post;

      gdAus.Enabled := true;
    end
  else
    ShowMessage('Este programa já foi inserido.');
end;

procedure TCAD_FM_C_AUS.txtfuncionarioButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
  PSQ_FM_X_FUN.ShowModal;
  if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
    begin
      CAD_CD_C_AUS.FieldByName('ID_FUNCIONARIO').AsInteger :=
        PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
      CAD_CD_C_AUS.FieldByName('int_nomeFUNCIONARIO').text       :=
        PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;

      dmGeral.BUS_CD_C_PES_MOD.Close;
      dmGeral.BUS_CD_C_PES_MOD.Data :=
        dmGeral.BUS_CD_C_PES_MOD.DataRequest(
          VarArrayOf([0, dmgeral.BUS_CD_C_FUN.FieldByName('ID_PERFIL_SEG').AsString]));

      CAD_CD_C_AUS.FieldByName('INT_PERFILSEG').AsString := dmgeral.BUS_CD_C_PES_MOD.FieldByName('INT_PERFILSEG').AsString;
    end;
   PSQ_FM_X_FUN.Free;
end;

procedure TCAD_FM_C_AUS.txtfuncionarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
    btnGrava.Focused  then
    begin
      exit;
    end;

  if (CAD_CD_C_AUS.FieldByName('ID_FUNCIONARIO').AsString = '') then
    begin
      ShowMessage('O campo "Funcionário" deve ser preenchido.');
      txtFuncionario.SetFocus;
      exit;
    end;

  dmGeral.BusFuncionario(0,CAD_CD_C_AUS.FieldByName('ID_FUNCIONARIO').AsString);

  if dmGeral.BUS_CD_C_FUN.IsEmpty then
    begin
      ShowMessage('Funcionário não cadastrado.');
      txtFuncionario.Text := '';
      txtFuncionario.SetFocus;
      exit;
    end;

  if (dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = false) then
    begin
      ShowMessage('Funcionário inativo.');
      txtFuncionario.Text := '';
      txtFuncionario.SetFocus;
      exit;
    end;

  BUS_CD_C_AUS.Close;
  BUS_CD_C_AUS.Data :=
    BUS_CD_C_AUS.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text, CAD_CD_C_AUS.FieldByName('ID_FUNCIONARIO').Text]));

  if not BUS_CD_C_AUS.IsEmpty then
    begin
      ShowMessage('Funcionário já cadastro.');
      txtFuncionario.Text := '';
      txtFuncionario.SetFocus;
      exit;
    end;

  CAD_CD_C_AUS.FieldByName('INT_NOMEFUNCIONARIO').AsString := dmgeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;


  dmGeral.BUS_CD_C_PES_MOD.Close;
  dmGeral.BUS_CD_C_PES_MOD.Data :=
    dmGeral.BUS_CD_C_PES_MOD.DataRequest(
      VarArrayOf([dmgeral.BUS_CD_C_FUN.FieldByName('ID_PERFIL_SEG').AsString]));

  CAD_CD_C_AUS.FieldByName('INT_PERFILSEG').AsString := dmgeral.BUS_CD_C_PES_MOD.FieldByName('INT_PERFILSEG').AsString;
  txtfuncionario.Enabled := false;
end;

procedure TCAD_FM_C_AUS.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
