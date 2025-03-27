unit CAD_UN_C_FUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, vcl.wwdblook, JvExStdCtrls,
  JvCombobox, JvDBCombobox, enFunc, JvExExtCtrls, JvExtComponent, JvPanel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  Datasnap.DBClient, vcl.wwclearbuttongroup, vcl.wwradiogroup, Vcl.ComCtrls,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_FUN = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblCelular: TLabel;
    lblEndereco: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    lblCEP: TLabel;
    txtCodigo: TDBEdit;
    txtNome: TDBEdit;
    txtTelefone: TDBEdit;
    txtCelular: TDBEdit;
    txtEndereco: TDBEdit;
    txtBairro: TDBEdit;
    txtCEP: TDBEdit;
    txtCPF: TDBEdit;
    chkAtivo: TDBCheckBox;
    txtCidade: TJvDBComboEdit;
    lblIdentidade: TLabel;
    txtIdentidade: TDBEdit;
    lblEmail: TLabel;
    txtEmail: TDBEdit;
    lblNumero: TLabel;
    txtNumero: TDBEdit;
    lblSexo: TLabel;
    cbbSexo: TwwDBLookupCombo;
    lblAniversario: TLabel;
    dpkAniversario: TJvDBDateEdit;
    gbSeguranca: TGroupBox;
    txtCidadeDescricao: TDBText;
    txtEstadoDescricao: TDBText;
    Label2: TLabel;
    dsoCrg: TwwDataSource;
    pmExcluirCargo: TPopupMenu;
    btnRemoverRegistroCargo: TMenuItem;
    dgCargo: TwwDBGrid;
    BitBtn1: TBitBtn;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    chbHabilitarSeg: TDBCheckBox;
    Label3: TLabel;
    cbbEmpAlocado: TwwDBLookupCombo;
    cbbVndIntExt: TwwDBComboBox;
    Label4: TLabel;
    RgTipo: TwwRadioGroup;
    dsoEmp: TwwDataSource;
    pcDadosInf: TPageControl;
    tsGeral: TTabSheet;
    tsGestaoQualid: TTabSheet;
    DBCheckBox6: TDBCheckBox;
    tsProdutorMobile: TTabSheet;
    chkAltPrecPedApp: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    txtPerComissao: TwwDBEdit;
    lblPerComMec: TLabel;
    DBCheckBox10: TDBCheckBox;
    Label5: TLabel;
    DBCheckBox13: TDBCheckBox;
    Label6: TLabel;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    lblLogin: TLabel;
    lblSenhaAnterior: TLabel;
    lblExpiraEm: TLabel;
    lblNovaSenha: TLabel;
    lblConfirmarSenha: TLabel;
    cbbPerfil: TwwDBLookupCombo;
    txtLogin: TDBEdit;
    dpkExpiraEm: TJvDBDateEdit;
    chkAlteraLimiteCliente: TDBCheckBox;
    dpkAlteraSituacaoCliente: TDBCheckBox;
    chkAlteraPrecoItens: TDBCheckBox;
    chkHailitaotaoExclusao: TDBCheckBox;
    txtSenhaAnterior: TEdit;
    txtNovaSenha: TEdit;
    txtConfirmarSenha: TEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    chbPermitirCancelarOS: TDBCheckBox;
    chbRedefinirSenha: TDBCheckBox;
    chbHabBtnAltFun: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    chkAPG: TDBCheckBox;
    chbAlterarVendedorPed: TDBCheckBox;
    chkEst: TDBCheckBox;
    chbExcluirCaixa: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    chbMostarCustoCsuIte: TDBCheckBox;
    chbZerarEst: TDBCheckBox;
    chbVisNotaCsuIte: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    chbAltCliped: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    txtSgqComissaoPerm: TwwDBEdit;
    Label9: TLabel;
    DBCheckBox17: TDBCheckBox;
    Label10: TLabel;
    wwDBGrid2: TwwDBGrid;
    BitBtn2: TBitBtn;
    dsFunCpn: TDataSource;
    pmExcluirCpn: TPopupMenu;
    MenuItem1: TMenuItem;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure cbbSexoEnter(Sender: TObject);
    procedure cbbPerfilEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dgCargoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroCargoClick(Sender: TObject);
    procedure chbHabilitarSegClick(Sender: TObject);
    procedure txtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure txtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure cbbEmpAlocadoEnter(Sender: TObject);
    procedure txtSgqComissaoPermExit(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    xSenhaAtual: String;
    procedure LimparCampos;
    procedure CarregarEmpresas;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_FUN: TCAD_FM_C_FUN;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CRG, PSQ_UN_X_CID, uValidacoes, uProxy, PSQ_UN_X_CPG;

procedure TCAD_FM_C_FUN.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FUN);

  dmGeral.CAD_CD_C_FUN.BeforePost := nil;

  CarregarEmpresas;

  dmGeral.CAD_CD_C_FUN.BeforePost := dmGeral.CAD_CD_C_FUNBeforePost;

  LimparCampos;
  txtSenhaAnterior.Enabled := false;
  txtSenhaAnterior.Color := $00DADADA;
  txtNome.SetFocus;
end;

procedure TCAD_FM_C_FUN.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FUN);
  CarregarEmpresas;
  xSenhaAtual := dmGeral.CAD_CD_C_FUNsenha.AsString;
  txtSenhaAnterior.Enabled := true;
  txtSenhaAnterior.Color   := clWhite;
  chkAtivo.SetFocus;
end;

procedure TCAD_FM_C_FUN.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FUN) then
     begin
       inherited;
       dbGrid.SetFocus;
       LimparCampos;

       pcDadosInf.ActivePage := tsGeral;

     end
end;

procedure TCAD_FM_C_FUN.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FUN);
end;

procedure TCAD_FM_C_FUN.acGravarExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
  xNovaSenha,xSenhaAnt: String;
  codigo: string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try

        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

        if ((trim(dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsString) <> '') and
            (dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean = True))  then
          begin
            if trim(txtSenhaAnterior.text) <> '' then
              xSenhaAnt   := Trim(SMPrincipal.enMD5(txtSenhaAnterior.Text));
            ValidaCAD_CD_C_FUN_Senha(xSenhaAnt,xSenhaAtual,txtNovaSenha.Text,txtConfirmarSenha.text);
            if trim(txtNovaSenha.Text) <> '' then
              begin
                xNovaSenha:= Trim(SMPrincipal.enMD5(trim(txtNovaSenha.Text)));
                dmGeral.CAD_CD_C_FUNsenha.AsString := xNovaSenha;
              end;
          end;
        finally
          FreeAndNil(SMPrincipal);
        end;

        codigo :=  dmGeral.CAD_CD_C_FUN.FieldByName('id_funcionario').AsString;

        DmGeral.Grava(dmGeral.CAD_CD_C_FUN);
        LimparCampos;
        dmGeral.CAD_CD_C_FUN.Close;
        dmGeral.CAD_CD_C_FUN.Data :=
          dmGeral.CAD_CD_C_FUN.DataRequest(
            VarArrayOf([0, codigo]));

        pcDadosInf.ActivePage := tsGeral;

     end
  else
    begin
     chkAtivo.SetFocus;
    end;
end;


procedure TCAD_FM_C_FUN.CarregarEmpresas;
begin


   dmGeral.BUS_CD_C_PAR.Close;
   dmGeral.BUS_CD_C_PAR.Data :=
      dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([2, '%']));

   dmGeral.BUS_CD_C_PAR.First;
   while not dmGeral.BUS_CD_C_PAR.eof do
      begin
        if  (not (dmGeral.CAD_CD_C_FUN_EMP.Locate('ID_EMPRESA',dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,[]))) then
           begin
             dmGeral.CAD_CD_C_FUN_EMP.Insert;
             dmGeral.CAD_CD_C_FUN_EMP.FieldByName('ID_EMPRESA').AsInteger :=
                     dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
             dmGeral.CAD_CD_C_FUN_EMP.FieldByName('INT_EMPFANTASIA').AsString   :=
                     dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
             dmGeral.CAD_CD_C_FUN_EMP.FieldByName('permitir_acesso').AsBoolean := true;
             dmGeral.CAD_CD_C_FUN_EMP.Post;
           end;
        dmGeral.BUS_CD_C_PAR.Next;
     end;
   dmGeral.BUS_CD_C_PAR.Close;

   dmGeral.CAD_CD_C_FUN_EMP.IndexFieldNames := 'ID_EMPRESA';
   dmGeral.CAD_CD_C_FUN_EMP.First;

   dmGeral.CAD_CD_C_FUN_EMP.edit;

end;



procedure TCAD_FM_C_FUN.BitBtn1Click(Sender: TObject);
begin
  inherited;
try
    dmGeral.CAD_CD_C_FUN.BeforePost := nil;

      PSQ_FM_X_CRG := TPSQ_FM_X_CRG.Create(Self);
      PSQ_FM_X_CRG.ShowModal;

      if not PSQ_FM_X_CRG.BUS_CD_C_CRG.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FUN_CRG.Cancel;
           if dmGeral.CAD_CD_C_FUN_CRG.Locate('INT_NOMECRG',PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('DESCRICAO').AsString,[]) then
          begin
            ShowMessage('Cargo já Inserido.');
            abort;
          end
       else
          begin
            dmGeral.CAD_CD_C_FUN_CRG.Insert;

            dmGeral.CAD_CD_C_FUN_CRG.FieldByName('ID_FUNCIONARIO').AsString :=
                    dmgeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString;

            dmGeral.CAD_CD_C_FUN_CRG.FieldByName('ID_CARGO').AsString :=
                    PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('ID_CARGO').AsString;

            dmGeral.CAD_CD_C_FUN_CRG.FieldByName('INT_NOMECRG').AsString :=
                    PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('DESCRICAO').AsString;

            dmGeral.CAD_CD_C_FUN_CRG.Post;
          end;

         end;
       PSQ_FM_X_CRG.Free;
 finally
     dmGeral.CAD_CD_C_FUN.BeforePost := dmGeral.CAD_CD_C_FUNBeforePost;
  end;
end;

procedure TCAD_FM_C_FUN.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
      dmGeral.CAD_CD_C_FUN.BeforePost := nil;

      PSQ_FM_X_CPG := TPSQ_FM_X_CPG.Create(Self);
      PSQ_FM_X_CPG.ShowModal;

      if not PSQ_FM_X_CPG.BUS_CD_C_CPG.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FUN_CPN.Cancel;
           if dmGeral.CAD_CD_C_FUN_CPN.Locate('ID_CONDICAO_PAG',PSQ_FM_X_CPG.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsString,[]) then
          begin
            ShowMessage('Condição de pagamento já Inserido.');
            abort;
          end
       else
          begin
            dmGeral.CAD_CD_C_FUN_CPN.Insert;


            dmGeral.CAD_CD_C_FUN_CPN.FieldByName('ID_CONDICAO_PAG').AsString :=
                    PSQ_FM_X_CPG.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsString;

            dmGeral.CAD_CD_C_FUN_CPN.FieldByName('ID_FUNCIONARIO').AsString :=
                    dmgeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString;


            dmGeral.CAD_CD_C_FUN_CPN.FieldByName('INT_NOMECPG').AsString :=
                    PSQ_FM_X_CPG.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString;

            dmGeral.CAD_CD_C_FUN_CPN.Post;
          end;

         end;
       PSQ_FM_X_CPG.Free;
 finally
     dmGeral.CAD_CD_C_FUN.BeforePost := dmGeral.CAD_CD_C_FUNBeforePost;
  end;
end;

procedure TCAD_FM_C_FUN.btnFiltroClick(Sender: TObject);
begin
  inherited;

  if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

  if cbbPesquisa.ItemIndex = 2 then
    begin
      dmGeral.CAD_CD_C_FUN.Close;
      dmGeral.CAD_CD_C_FUN.Data :=
        dmGeral.CAD_CD_C_FUN.DataRequest(
          VarArrayOf([7, txtPesquisa.Text]));
    end
  else
    begin
      dmGeral.CAD_CD_C_FUN.Close;
      dmGeral.CAD_CD_C_FUN.Data :=
        dmGeral.CAD_CD_C_FUN.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
    end;
end;

procedure TCAD_FM_C_FUN.btnRemoverRegistroCargoClick(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_FUN_CRG.IsEmpty then
    begin
      ShowMessage('Não há registro para excluir.');
      abort;
    end
  else
    begin
     dmGeral.CAD_CD_C_FUN_CRG.Delete;
     dmGeral.CAD_CD_C_FUN_CRG.Edit;
    end;
end;

procedure TCAD_FM_C_FUN.cbbEmpAlocadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusEmpresa(2,'%');
  cbbEmpAlocado.DropDown;
end;

procedure TCAD_FM_C_FUN.cbbPerfilEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPerfilSeg(1,'%');
  cbbPerfil.DropDown;
end;

procedure TCAD_FM_C_FUN.cbbSexoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_SXO;
  cbbSexo.DropDown;
end;

procedure TCAD_FM_C_FUN.chbHabilitarSegClick(Sender: TObject);
begin
  inherited;

  if (dmGeral.CAD_CD_C_FUN.State in [dsInsert,dsEdit]) then
    begin
     if chbHabilitarSeg.Checked then
       begin
         gbSeguranca.Visible := true;
       end
     else
       begin
        gbSeguranca.Visible := false;
       end;
    end;
end;

procedure TCAD_FM_C_FUN.dgCargoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 try
  dmGeral.CAD_CD_C_FUN.BeforePost := nil;
  if key = vk_f3 then
     begin
      PSQ_FM_X_CRG := TPSQ_FM_X_CRG.Create(Self);
      PSQ_FM_X_CRG.ShowModal;

      if not PSQ_FM_X_CRG.BUS_CD_C_CRG.IsEmpty then
         begin
           if not dmGeral.CAD_CD_C_FUN_CRG.Locate('ID_CARGO',PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('ID_CARGO').AsString,[]) then
              begin
                dmGeral.CAD_CD_C_FUN_CRG.Insert;
                dmGeral.CAD_CD_C_FUN_CRGid_cargo.Text := PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('ID_CARGO').AsString;
                dmGeral.CAD_CD_C_FUN_CRGint_nomecrg.Text := PSQ_FM_X_CRG.BUS_CD_C_CRG.FieldByName('DESCRICAO').AsString;
                dmGeral.CAD_CD_C_FUN_CRG.Post;

              end;
         end;
       PSQ_FM_X_CRG.Free;
   end;
  finally
     dmGeral.CAD_CD_C_FUN.BeforePost := dmGeral.CAD_CD_C_FUNBeforePost;
  end;
end;

procedure TCAD_FM_C_FUN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_FUN.Close;
  FreeAndNil(CAD_FM_C_FUN);
end;

procedure TCAD_FM_C_FUN.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data := dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_FUN.Open;

  dmGeral.BusPerfilSeg(1,'%');
  dmGeral.BusEmpresa(2,'%');
  dmGeral.BUS_PR_X_SXO;
end;

procedure TCAD_FM_C_FUN.FormShow(Sender: TObject);
begin
  inherited;
  LimparCampos;

  chbPermitirCancelarOS.Visible := false;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = True)) then
    chbPermitirCancelarOS.Visible := true;

  chkAPG.Visible := dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;
  RgTipo.Visible := dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;

   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
      tsGestaoQualid.tabVisible := false;

  chbAltCliped.Visible := false;
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     chbAltCliped.Visible := true;
end;

procedure TCAD_FM_C_FUN.LimparCampos;
begin
  xSenhaAtual := '';
  txtSenhaAnterior.Text  := '';
  txtNovaSenha.Text      := '';
  txtConfirmarSenha.Text := '';
end;

procedure TCAD_FM_C_FUN.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_FUN_CPN.IsEmpty then
     begin
       ShowMessage('Não há registro para excluir.');
       abort;
     end
  else
     begin
       dmGeral.CAD_CD_C_FUN_CPN.Delete;
       dmGeral.CAD_CD_C_FUN_CPN.Edit;
     end;
end;

procedure TCAD_FM_C_FUN.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FUN.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_FUN.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_FUN.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.CAD_CD_C_FUN.FieldByName('INT_NOMECID').Text := '';

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

  if not dmGeral.BUS_CD_C_CID.IsEmpty then
    begin
      dmGeral.CAD_CD_C_FUN.FieldByName('INT_NOMECID').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;
     dmGeral.CAD_CD_C_FUN.FieldByName('ESTADO').Text :=
       dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
    end
  else
    begin
      ShowMessage('Cidade não encontrada');
    end;
end;

procedure TCAD_FM_C_FUN.txtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TCAD_FM_C_FUN.txtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key =#32 ) then
     Key := #0;
end;

procedure TCAD_FM_C_FUN.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_FUN.txtSgqComissaoPermExit(Sender: TObject);
begin
  inherited;

    if dmgeral.CAD_CD_C_FUN.FieldByName('SGQ_PER_COMISSAO').AsCurrency < 0 then
       begin
         ShowMessage('Não é permitido valor menor que 0!');
         txtSgqComissaoPerm.text := '0';
         txtSgqComissaoPerm.SetFocus;
         exit;
       end;

    if dmgeral.CAD_CD_C_FUN.FieldByName('SGQ_PER_COMISSAO').AsCurrency >
          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency then
       begin
          ShowMessage('Limite máximo de percentual para os representantes é de: '+CurrToStr(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency)+' %');
          txtSgqComissaoPerm.text := '0';
          txtSgqComissaoPerm.SetFocus;
          exit;
       end;
end;

end.
