unit CAD_UN_C_ECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls,
  vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, Datasnap.DBClient;

type
  TCAD_FM_C_ECF = class(TPAD_FM_X_PAD)
    lblSerialImpressora: TLabel;
    lblMarca: TLabel;
    lblModelo: TLabel;
    lblCaixa: TLabel;
    txtSerial: TDBEdit;
    txtMarca: TDBEdit;
    txtModelo: TDBEdit;
    txtCaixa: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label1: TLabel;
    txtSerialPv: TDBEdit;
    dsoFpg: TwwDataSource;
    gbFormPag: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    lblFormPagEcf: TLabel;
    lblFormPag: TLabel;
    cbbFormPag: TwwDBLookupCombo;
    txtecf: TDBEdit;
    cbbEmpresa: TwwDBLookupCombo;
    Label2: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtSerialExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure cbbFormPagEnter(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure cbbFormPagExit(Sender: TObject);
    procedure txtecfExit(Sender: TObject);
    procedure btnCancelarEnter(Sender: TObject);
    procedure cbbEmpresaEnter(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_ECF: TCAD_FM_C_ECF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_ECF.AbrirBuscas;
begin
   dmGeral.BusEmpresa(1,'%');
   dmGeral.BusFormaPgtos(1,'%');
end;

procedure TCAD_FM_C_ECF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ECF);
  txtSerial.Enabled := True;
  txtSerial.SetFocus;
end;

procedure TCAD_FM_C_ECF.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NAT) then
      begin
        inherited;
        txtSerial.Enabled := False;
        txtMarca.SetFocus;
      end;
end;

procedure TCAD_FM_C_ECF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ECF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtSerial.Enabled := True;
       txtSerial.SetFocus;
     end;
end;

procedure TCAD_FM_C_ECF.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ECF);
end;

procedure TCAD_FM_C_ECF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_ECF);
  inherited;
  dmGeral.CAD_CD_C_ECF.Close;
  dmGeral.CAD_CD_C_ECF.Data :=
  dmGeral.CAD_CD_C_ECF.DataRequest(
          VarArrayOf([0, codigo]));

   AbrirBuscas;

end;

procedure TCAD_FM_C_ECF.btnCancelarEnter(Sender: TObject);
begin
  inherited;
   if (dmGeral.CAD_CD_C_ECF_FPG.State in [dsInsert]) and
      (dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString <>'') then
     begin
       txtecf.SetFocus;
     end;
end;

procedure TCAD_FM_C_ECF.btnFiltroClick(Sender: TObject);
var
pesq : string;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if cbbPesquisa.ItemIndex = 0 then
      pesq := '2';

    if cbbPesquisa.ItemIndex = 1 then
      pesq := '3';

    dmGeral.CAD_CD_C_ECF.Close;
    dmGeral.CAD_CD_C_ECF.Data :=
    dmGeral.CAD_CD_C_ECF.DataRequest(
            VarArrayOf([pesq, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_ECF.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.CAD_CD_C_ECF_FPG.Insert;
  cbbFormPag.SetFocus;
end;

procedure TCAD_FM_C_ECF.cbbEmpresaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusEmpresa(1,'%');
  cbbEmpresa.DropDown;
end;

procedure TCAD_FM_C_ECF.cbbFormPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(1,'%');
  cbbFormPag.DropDown;
end;

procedure TCAD_FM_C_ECF.cbbFormPagExit(Sender: TObject);
var
  id_Sist, id_Ecf : string;
begin
  inherited;

  if dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtEcf.Focused) then
           begin
             ShowMessage('O campo "Forma de Pagamento do Sistema" deve ser preenchido.');
             cbbFormPag.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             exit;
           end;
     end
  else
    begin
      if dmGeral.CAD_CD_C_ECF_FPG.state in [dsBrowse] then
          dmGeral.CAD_CD_C_ECF_FPG.edit;
    end;

    if dmGeral.CAD_CD_C_ECF_FPG.State in [dsInsert] then
     begin
       id_Sist       := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString;
       id_Ecf := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString;

       dmGeral.CAD_CD_C_ECF_FPG.cancel;
       if dmGeral.CAD_CD_C_ECF_FPG.Locate('ID_FORMA_PAG',id_Sist,[]) then
          begin
            ShowMessage('Forma de pagamento do "Sistema" já inserido.');
            dmGeral.CAD_CD_C_ECF_FPG.Insert;
            cbbFormPag.SetFocus;
            abort;
          end
       else
          begin
            dmGeral.CAD_CD_C_ECF_FPG.Insert;
            dmgeral.CAD_CD_C_ECF_FPG.FieldByName('ECF_SERIAL_IMPRESSORA').AsString :=
                    dmGeral.CAD_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;
            dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString        := id_Sist;
            dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString  := id_Ecf;
            dmGeral.BusFormaPgtos(0,dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString);
            dmGeral.CAD_CD_C_ECF_FPG.FieldByName('INT_NOMEFPG').AsString :=
                    dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

          end;
     end;
     txtecf.SetFocus;
     keybd_event(VK_RETURN,0,0,0);
end;

procedure TCAD_FM_C_ECF.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_ECF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_ECF.Close;
  FreeAndNil(CAD_FM_C_ECF);
end;

procedure TCAD_FM_C_ECF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ECF.Close;
  dmGeral.CAD_CD_C_ECF.Data := dmGeral.CAD_CD_C_ECF.DataRequest(VarArrayOf([1, '%']));
  dmGeral.CAD_CD_C_ECF.Open;

  AbrirBuscas;

end;
procedure TCAD_FM_C_ECF.FormShow(Sender: TObject);
begin
  inherited;
  txtSerial.Enabled := False;

end;

procedure TCAD_FM_C_ECF.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
    try
     grdItensIButton.Enabled := false;

     if dmGeral.CAD_CD_C_ECF_FPG.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_ECF_FPG.Delete;
     dmGeral.CAD_CD_C_ECF_FPG.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_ECF.txtecfExit(Sender: TObject);
var
  id_Sist, id_Ecf : string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       //exit;
     end;

  if btn_Add_Itens.Focused or cbbFormPag.Focused then
     begin
       abort;
     end;

  if dmGeral.CAD_CD_C_ECF_FPG.State in [dsInsert] then
     begin
       id_Sist       := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString;
       id_Ecf := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString;

       dmGeral.CAD_CD_C_ECF_FPG.cancel;
       if id_Ecf <> '' then
          begin
            if dmGeral.CAD_CD_C_ECF_FPG.Locate('ID_FORMA_PAG_ECF',id_Ecf,[]) then
              begin
                ShowMessage('Forma de pagamento do "ECF" já inserido.');
                dmGeral.CAD_CD_C_ECF_FPG.Insert;
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString :=  id_Sist;
                txtecf.SetFocus;
                abort;
              end
            else
              begin
                dmGeral.CAD_CD_C_ECF_FPG.Insert;
                dmgeral.CAD_CD_C_ECF_FPG.FieldByName('ECF_SERIAL_IMPRESSORA').AsString :=
                        dmGeral.CAD_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString        := id_Sist;
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString  := id_Ecf;
                dmGeral.BusFormaPgtos(0,dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString);
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('INT_NOMEFPG').AsString :=
                       dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
                dmGeral.CAD_CD_C_ECF_FPG.Post;
              end;
          end
         else
           begin
             ShowMessage('Forma de pagamento do "ECF" deve ser preenchido.');
             txtecf.SetFocus;
             exit;
           end;
     end;
  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;


  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       //exit;
     end;

  if btn_Add_Itens.Focused then
     begin
       abort;
     end;

  if dmGeral.CAD_CD_C_ECF_FPG.State in [dsInsert] then
     begin
       id_Sist       := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString;
       id_Ecf := dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString;

       dmGeral.CAD_CD_C_ECF_FPG.cancel;
       if id_Ecf <> '' then
          begin
            if dmGeral.CAD_CD_C_ECF_FPG.Locate('ID_FORMA_PAG_ECF',id_Ecf,[]) then
              begin
                ShowMessage('Forma de pagamento do "ECF" já inserido.');
                dmGeral.CAD_CD_C_ECF_FPG.Insert;
                cbbFormPag.SetFocus;
                abort;
              end
            else
              begin
                dmGeral.CAD_CD_C_ECF_FPG.Insert;
                dmgeral.CAD_CD_C_ECF_FPG.FieldByName('ECF_SERIAL_IMPRESSORA').AsString :=
                        dmGeral.CAD_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString        := id_Sist;
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').AsString  := id_Ecf;
                dmGeral.BusFormaPgtos(0,dmGeral.CAD_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG').AsString);
                dmGeral.CAD_CD_C_ECF_FPG.FieldByName('INT_NOMEFPG').AsString :=
                       dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
                dmGeral.CAD_CD_C_ECF_FPG.Post;
              end;
          end;
     end;
  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus; }

end;

procedure TCAD_FM_C_ECF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_ECF.txtSerialExit(Sender: TObject);
begin
  inherited;
  try
    if btnCancelar.focused then
       begin
         exit;
       end
  finally
    begin
      if btnCancelar.focused then
         begin
           txtMarca.Text := '';
           acCancelarExecute(self);
         end;
    end;
  end;

  dmGeral.BUS_CD_C_ECF.Close;
  dmGeral.BUS_CD_C_ECF.Data :=
  dmGeral.BUS_CD_C_ECF.DataRequest(VarArrayOf([0,Trim(txtSerial.Text)]));

  if not dmGeral.BUS_CD_C_ECF.IsEmpty then
     begin
       ShowMessage('Serial já cadastrado.');
       txtSerial.SetFocus;
       Abort;
     end;
end;

end.
