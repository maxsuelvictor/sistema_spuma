unit CAD_UN_C_TRI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Buttons, JvExMask,
  JvToolEdit, JvDBControls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.wwcheckbox;

type
  TCAD_FM_C_TRI = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    Label2: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    gbxMovimentos: TGroupBox;
    grdItens: TwwDBGrid;
    CAD_DS_C_TRI_REG: TwwDataSource;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    lblFiscoInterno: TLabel;
    lblNaoContribuinteinterno: TLabel;
    lblContribuinteInterno: TLabel;
    lblPerReducaoInternoNaoContribuinte: TLabel;
    lblAliquotaInternoNaoContribuinte: TLabel;
    lblCSTInternoNaoContribuinte: TLabel;
    lblPerReducaoInternoContribuinte: TLabel;
    lblAliquotaInternoContribuinte: TLabel;
    lblCSTInternoContribuinte: TLabel;
    lblTipoEstoque: TLabel;
    lblUF: TLabel;
    Label1: TLabel;
    txtPerReducaoInternoNaoContr: TDBEdit;
    txtAliquotaInternoNaoContr: TDBEdit;
    txtPerRedInternoContr: TDBEdit;
    txtAliquotaInternoContr: TDBEdit;
    cbbCSTInternoContr: TwwDBLookupCombo;
    cbbCSTInternoNaoContr: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    cbbUF: TwwDBLookupCombo;
    cbbCodEmpresa: TwwDBLookupCombo;
    btn_Add_Itens: TBitBtn;
    DataSource1: TDataSource;
    Label3: TLabel;
    cbbCSTOSNInternoContr: TwwDBLookupCombo;
    cbbCSTOSNInternoNaoContr: TwwDBLookupCombo;
    Label4: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbInformFiscoInterno: TwwDBLookupCombo;
    txtCPAliq: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtAliqDest: TDBEdit;
    chkInsInt: TwwCheckBox;
    chkInsExt: TwwCheckBox;
    Label10: TLabel;
    txtPerReducaoDestino: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    txtDisAliq: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbCSTInternoContrEnter(Sender: TObject);
    procedure cbbCSTInternoNaoContrEnter(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtInfFiscoExternoffExit(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbUFEnter(Sender: TObject);
    procedure txtInformFIscoInternoButtonClick(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure cbbCodEmpresaExit(Sender: TObject);
    procedure cbbCodEmpresaEnter(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbCSTOSNInternoContrEnter(Sender: TObject);
    procedure cbbCSTOSNInternoNaoContrEnter(Sender: TObject);
    procedure cbbInformFiscoInternoExit(Sender: TObject);
    procedure cbbInformFiscoInternoEnter(Sender: TObject);
    procedure cbbUFExit(Sender: TObject);
    procedure cbbCSTInternoContrExit(Sender: TObject);
    procedure cbbCSTOSNInternoContrExit(Sender: TObject);
    procedure cbbCSTInternoNaoContrExit(Sender: TObject);
    procedure cbbCSTOSNInternoNaoContrExit(Sender: TObject);
    procedure txtAliquotaInternoContrExit(Sender: TObject);
    procedure txtPerRedInternoContrExit(Sender: TObject);
    procedure txtAliquotaInternoNaoContrExit(Sender: TObject);
    procedure txtPerReducaoInternoNaoContrExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TRI: TCAD_FM_C_TRI;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_TME, PSQ_UN_X_INF, uValidacoes;

procedure TCAD_FM_C_TRI.AbrirBuscas;
begin
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusEmpresa(1,'%');
  dmGeral.BusInfoFis(1,'%');
  dmGeral.BUS_PR_X_ICM_ICO; // CST Para Contribuinte
  dmGeral.BUS_PR_X_ICM_INC; // CST Para Não Contribuinte

  dmGeral.BUS_PR_X_ICM_OSN_ICO; // CST Simples Nacional - Para Contribuinte
  dmGeral.BUS_PR_X_ICM_OSN_INC; // CST Simples Nacional - Para Não Contribuinte

end;

procedure TCAD_FM_C_TRI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TRI);
  pnItens.Enabled := false;
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_TRI.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TRI) then
     begin
       inherited;
       pnItens.Enabled := false;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_TRI.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TRI) then
     begin
       inherited;
       dbGrid.SetFocus;
     //  AbrirBuscas;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_TRI.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TRI);
  inherited;
end;

procedure TCAD_FM_C_TRI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  uValidacoes.ValidaCAD_CD_C_TRI_REG_Outras;

  codigo := dmGeral.CAD_CD_C_TRI.FieldByName('ID_TRIBUTO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_TRI);
  inherited;
  dmGeral.CAD_CD_C_TRI.Close;
  dmGeral.CAD_CD_C_TRI.Data :=
  dmGeral.CAD_CD_C_TRI.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_TRI.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_TRI.Close;
    dmGeral.CAD_CD_C_TRI.Data :=
    dmGeral.CAD_CD_C_TRI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_TRI.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled := true;

  dmGeral.CAD_CD_C_TRI_REG.Insert;
  cbbCodEmpresa.SetFocus;
end;

procedure TCAD_FM_C_TRI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TRI.Close;
  FreeAndNil(CAD_FM_C_TRI);
end;

procedure TCAD_FM_C_TRI.FormCreate(Sender: TObject);
begin
  inherited;
   AbrirBuscas;

  dmGeral.CAD_CD_C_TRI.Close;
  dmGeral.CAD_CD_C_TRI.Data := dmGeral.CAD_CD_C_TRI.DataRequest(VarArrayOf([1, '']));


end;

procedure TCAD_FM_C_TRI.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
end;

procedure TCAD_FM_C_TRI.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.CAD_CD_C_TRI_REG.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_TRI_REG.Delete;
     dmGeral.CAD_CD_C_TRI_REG.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_TRI.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if dso.DataSet.State in [dsBrowse] then
    begin
      exit;
    end;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.CAD_CD_C_TRI_REG.cancel;

  if dmGeral.CAD_CD_C_TRI_REG.IsEmpty then
     begin
       dmGeral.CAD_CD_C_TRI_REG.Append;
       pnItens.Enabled := true;
       cbbCodEmpresa.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_TRI_REG.Edit;
       pnItens.Enabled := true;
       txtAliquotaInternoContr.SetFocus;
     end;
end;

procedure TCAD_FM_C_TRI.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_TRI_REG.Cancel;
        dmGeral.CAD_CD_C_TRI_REG.edit;
        finally
           pnItens.Enabled := false;
        end;
      end;
end;



procedure TCAD_FM_C_TRI.txtAliquotaInternoContrExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end; }

  if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_ALIQUOTA').IsNull or
      (dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_ALIQUOTA').AsString = '') then
     begin
       ShowMessage('O campo "Alíquota contribuinte" deve ser preenchido.');
       txtAliquotaInternoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.txtAliquotaInternoNaoContrExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

 { if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;   }

    if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused
     or txtAliquotaInternoContr.Focused or txtPerRedInternoContr.Focused or
     cbbCSTInternoNaoContr.Focused or cbbCSTOSNInternoNaoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_ALIQUOTA').IsNull or
      (dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_ALIQUOTA').AsString = '') then
     begin
       ShowMessage('O campo "Alíquota não contribuinte" deve ser preenchido.');
       txtAliquotaInternoNaoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.txtInfFiscoExternoffExit(Sender: TObject);
var
  tipoEstoque: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

 // if not btnAddTipoEstoque.Focused or cbbCSTInternoContribuinte.Focused or txtAliquotaInternoContribuinte.Focused or
 //    txtPerReducaoInternoContribuinte.Focused  or cbbCSTInternoNaoContribuinte.Focused or
 //    txtAliquotaInternoNaoContribuinte.Focused or txtPerReducaoInternoNaoContribuinte.Focused or

  tipoEstoque := dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_TRIBUTO').AsString;
  dmGeral.CAD_CD_C_TRI_REG.Post;
  dmGeral.CAD_CD_C_TRI_REG.locate('ID_TRIBUTO',tipoEstoque,[]);


end;

procedure TCAD_FM_C_TRI.txtInformFIscoInternoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_INF := TPSQ_FM_X_INF.Create(Self);
   PSQ_FM_X_INF.ShowModal;
      if not PSQ_FM_X_INF.BUS_CD_C_INF.IsEmpty then
         begin
           dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_INF').AsString :=
                PSQ_FM_X_INF.BUS_CD_C_INF.FieldByName('ID_INF').AsString;
         end;
   PSQ_FM_X_INF.Free;
end;



procedure TCAD_FM_C_TRI.txtPerRedInternoContrExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end; }

   if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused
     or txtAliquotaInternoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').IsNull or
      (dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsString = '') then
     begin
       ShowMessage('O campo "% Red. contribuinte" deve ser preenchido.');
       txtPerRedInternoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.txtPerReducaoInternoNaoContrExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end; }

  if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused or
     cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused or
     txtAliquotaInternoContr.Focused or txtPerRedInternoContr.Focused or
     cbbCSTInternoNaoContr.Focused or cbbCSTOSNInternoNaoContr.Focused or txtAliquotaInternoNaoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').IsNull or
      (dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsString = '') then
     begin
       ShowMessage('O campo "% Red. não contribuinte" deve ser preenchido.');
       txtPerReducaoInternoNaoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_TRI.cbbCSTOSNInternoContrEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ICM_OSN_ICO;
  cbbCSTOSNInternoContr.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbCSTOSNInternoContrExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;}

  if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_CSOSN').AsString = '' then
     begin
       ShowMessage('O campo "CSOSN contribuinte" deve ser preenchido.');
       cbbCSTOSNInternoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.cbbCSTOSNInternoNaoContrEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ICM_OSN_INC;
  cbbCSTOSNInternoNaoContr.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbCSTOSNInternoNaoContrExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

 { if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;  }

  if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused
     or txtAliquotaInternoContr.Focused or txtPerRedInternoContr.Focused or
     cbbCSTInternoNaoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_CSOSN').AsString = '' then
     begin
       ShowMessage('O campo "CSOSN não contribuinte" deve ser preenchido.');
       cbbCSTOSNInternoNaoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.cbbInformFiscoInternoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusInfoFis(1,'%');
  cbbInformFiscoInterno.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbInformFiscoInternoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  if cbbCodEmpresa.Focused or grdItens.Focused or
      cbbTipoEstoque.Focused or cbbUF.Focused or
      cbbCSTInternoContr.Focused or txtAliquotaInternoContr.Focused or
      txtPerRedInternoContr.Focused or cbbCSTInternoNaoContr.Focused or
      txtAliquotaInternoNaoContr.Focused or txtPerReducaoInternoNaoContr.Focused or
      cbbCSTOSNInternoContr.Focused or cbbCSTOSNInternoNaoContr.Focused  then
      begin
        dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').Text := '';
        dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEINF').text := '';
        exit;
      end;

 { if btn_Add_Itens.Focused or cbbCodEmpresa.Focused or grdItens.Focused or
     cbbTipoEstoque.Focused or cbbUF.Focused or
     cbbCSTInternoContr.Focused or txtAliquotaInternoContr.Focused or
     txtPerRedInternoContr.Focused or cbbCSTInternoNaoContr.Focused or
     txtAliquotaInternoNaoContr.Focused or txtPerReducaoInternoNaoContr.Focused or
     cbbCSTOSNInternoContr.Focused or cbbCSTOSNInternoNaoContr.Focused  then
     begin
       if trim(dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').text) <> '' then
          begin
            dmGeral.BusInfoFis(0,dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').Text);
            if not dmGeral.BUS_CD_C_TME.IsEmpty then
               begin
                 dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').Text := '';
                 dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEINF').text := '';
               end;
          end;
       exit;
     end;  }

  dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEINF').text := '';

  if (dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').text = '') then
      begin
        Showmessage('O campo "Informação fiscal" deve ser preenchido.');
        cbbInformFIscoInterno.SetFocus;
        abort;
      end;

  dmGeral.BusInfoFis(0,dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').Text);

  if dmGeral.BUS_CD_C_INF.IsEmpty then
     begin
       Showmessage('Informação fiscal não encontrado.');
       dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_inf').Text := '';
       cbbInformFIscoInterno.SetFocus;
       exit;
     end;

  dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEINF').text :=
          dmGeral.BUS_CD_C_INF.FieldByName('DESCRICAO').Text;

  dmGeral.CAD_CD_C_TRI_REG.Post;

  pnItens.Enabled := false;

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TCAD_FM_C_TRI.cbbCSTInternoContrEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ICM_ICO;
  cbbCSTInternoContr.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbCSTInternoContrExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;}

   if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('CNT_ID_ST_ICM').AsString = '' then
     begin
       ShowMessage('O campo "CST contribuinte" deve ser preenchido.');
       cbbCSTInternoContr.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_TRI.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(1,'%');
  cbbTipoEstoque.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused then
     begin
       exit;
     end;

  dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMETME').text := '';

  if (dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_tipo_mov_estoque').text = '') then
      begin
        Showmessage('O campo "Tipo de estoque" deve ser preenchido.');
        cbbTipoEstoque.SetFocus;
        abort;
      end;

  dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_tipo_mov_estoque').Text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       Showmessage('Tipo de estoque não encontrado.');
       dmGeral.CAD_CD_C_TRI_REG.FieldByName('id_tipo_mov_estoque').Text := '';
       cbbTipoEstoque.SetFocus;
       exit;
     end;

  dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMETME').text :=
          dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').Text;
end;

procedure TCAD_FM_C_TRI.cbbUFEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_UFS;
  cbbUF.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbUFExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

 { if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;}

   if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('UF').AsString = '' then
     begin
       ShowMessage('O campo "UF" deve ser preenchido.');
       cbbUF.SetFocus;
       exit;
     end;
end;

procedure TCAD_FM_C_TRI.cbbCodEmpresaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusEmpresa(1,'%');
  cbbCodEmpresa.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbCodEmpresaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdItens.Focused  then
     begin
       exit;
     end;

  dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEEMP').text := '';

  if (dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_EMPRESA').text = '') then
      begin
        Showmessage('O campo "Empresa" deve ser preenchido.');
        cbbCodEmpresa.SetFocus;
        abort;
      end;


  //dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEEMP').text := '';

  if trim(dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_EMPRESA').Text) <> '' then
     begin
        dmGeral.BusEmpresa(0,dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_EMPRESA').Text);
        if dmGeral.BUS_CD_C_PAR.IsEmpty then
           begin
             Showmessage('Empresa não encontrada.');
             dmGeral.CAD_CD_C_TRI_REG.FieldByName('ID_EMPRESA').Text := '';
             cbbCodEmpresa.SetFocus;
             exit;
           end;
        dmGeral.CAD_CD_C_TRI_REG.FieldByName('INT_NOMEEMP').text :=
                dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').Text;
     end;
end;

procedure TCAD_FM_C_TRI.cbbCSTInternoNaoContrEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ICM_INC;
  cbbCSTInternoNaoContr.DropDown;
end;

procedure TCAD_FM_C_TRI.cbbCSTInternoNaoContrExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       exit;
     end;

  {if btn_Add_itens.Focused or grdItens.Focused then
     begin
       exit;
     end;  }

    if btn_Add_Itens.Focused or grdItens.Focused or
     cbbCodEmpresa.Focused or cbbTipoEstoque.Focused or cbbUF.Focused
     or cbbCSTInternoContr.Focused or cbbCSTOSNInternoContr.Focused
     or txtAliquotaInternoContr.Focused or txtPerRedInternoContr.Focused then
     begin
       exit;
     end;

   if dmGeral.CAD_CD_C_TRI_REG.FieldByName('NCT_ID_ST_ICM').AsString = '' then
     begin
       ShowMessage('O campo "CST não contribuinte" deve ser preenchido.');
       cbbCSTInternoNaoContr.SetFocus;
       exit;
     end;
end;

end.
