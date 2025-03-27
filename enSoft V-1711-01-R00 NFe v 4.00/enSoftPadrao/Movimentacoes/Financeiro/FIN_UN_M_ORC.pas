unit FIN_UN_M_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls,
  Vcl.Buttons, vcl.Wwdbedit, vcl.wwdblook;

type
  TFIN_FM_M_ORC = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtcontrole: TDBEdit;
    lblAno: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dsoplc: TwwDataSource;
    txtTotalAnual: TDBEdit;
    lblTotalAnual: TLabel;
    Label10: TLabel;
    cbbFilial: TwwDBLookupCombo;
    gbPlanos: TGroupBox;
    grdPlanos: TwwDBGrid;
    grdPlanosIButton: TwwIButton;
    btnAddPlanos: TBitBtn;
    pnlPlanos: TPanel;
    Label1: TLabel;
    lblJan: TLabel;
    lblFev: TLabel;
    lblMar: TLabel;
    lblAbr: TLabel;
    lblMai: TLabel;
    lblJun: TLabel;
    lblJul: TLabel;
    lblAgo: TLabel;
    lblSet: TLabel;
    lblOut: TLabel;
    lblNov: TLabel;
    lblDez: TLabel;
    lblTotal: TLabel;
    txtJan: TwwDBEdit;
    txtFev: TwwDBEdit;
    txtMar: TwwDBEdit;
    txtAbr: TwwDBEdit;
    txtIdPlano: TJvDBComboEdit;
    txtMai: TwwDBEdit;
    txtJun: TwwDBEdit;
    txtJul: TwwDBEdit;
    txtAgo: TwwDBEdit;
    txtSet: TwwDBEdit;
    txtOut: TwwDBEdit;
    txtNov: TwwDBEdit;
    txtDez: TwwDBEdit;
    txtTotal: TwwDBEdit;
    txtAno: TwwDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtAnoExit(Sender: TObject);
    procedure cbbFilialEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAddPlanosClick(Sender: TObject);
    procedure grdPlanosIButtonClick(Sender: TObject);
    procedure grdPlanosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtIdPlanoButtonClick(Sender: TObject);
    procedure txtIdPlanoExit(Sender: TObject);
    procedure pnlPlanosExit(Sender: TObject);
    procedure txtJanExit(Sender: TObject);
    procedure txtFevExit(Sender: TObject);
    procedure cbbFilialExit(Sender: TObject);
    procedure txtMarExit(Sender: TObject);
    procedure txtAbrExit(Sender: TObject);
    procedure txtMaiExit(Sender: TObject);
    procedure txtJunExit(Sender: TObject);
    procedure txtJulExit(Sender: TObject);
    procedure txtAgoExit(Sender: TObject);
    procedure txtSetExit(Sender: TObject);
    procedure txtOutExit(Sender: TObject);
    procedure txtNovExit(Sender: TObject);
    procedure txtDezExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
    var
      ano : string;
      xano: word;
  end;

var
  FIN_FM_M_ORC: TFIN_FM_M_ORC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PCT, FIN_RN_M_ORC;

procedure TFIN_FM_M_ORC.AbrirBuscas;
begin
  dmGeral.BusEmpresa(1,'%');
end;


procedure TFIN_FM_M_ORC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_ORC);
   pnlPlanos.Enabled := false;
   txtano.SetFocus;
end;

procedure TFIN_FM_M_ORC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_ORC) then
      begin
       inherited;
          txtano.Enabled := False;
          cbbFilial.Enabled := False;
          pnlPlanos.Enabled := false;
          btnAddPlanos.SetFocus;
      end;
end;

procedure TFIN_FM_M_ORC.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_ORC) then
      begin
        inherited;
        txtAno.Enabled := true;
        cbbFilial.Enabled := true;
        dbGrid.SetFocus;
      end
   else
      begin
        if txtAno.CanFocus then
          begin
            txtAno.SetFocus;
          end
        else
          begin
            btnAddPlanos.SetFocus;
          end;
      end;
end;

procedure TFIN_FM_M_ORC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_ORC);
end;

procedure TFIN_FM_M_ORC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        codigo := dmGeral.FIN_CD_M_ORC.FieldByName('id_orc').AsString;
        DmGeral.Grava(dmGeral.FIN_CD_M_ORC);
        inherited;
        dmGeral.FIN_CD_M_ORC.Close;
        dmGeral.FIN_CD_M_ORC.Data :=
        dmGeral.FIN_CD_M_ORC.DataRequest(
                VarArrayOf([0, codigo]));
        AbrirBuscas;
        txtano.Enabled := True;
        cbbFilial.Enabled := True;
      end
   else
      begin
        if txtAno.CanFocus then
          begin
            txtAno.SetFocus;
          end
        else
          begin
            btnAddPlanos.SetFocus;
          end;
      end;
end;

procedure TFIN_FM_M_ORC.btnAddPlanosClick(Sender: TObject);
begin
  inherited;
 // dmGeral.BusPlanoCta(90,'1');
  pnlPlanos.Enabled := true;
  dmGeral.FIN_CD_M_ORC_PLC.Insert;
  txtIdPlano.Enabled := true;
  txtIdPlano.SetFocus;
end;

procedure TFIN_FM_M_ORC.btnFiltroClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  try
    inherited;
  dmGeral.FIN_CD_M_ORC.Close;
  dmGeral.FIN_CD_M_ORC.Data :=
  dmGeral.FIN_CD_M_ORC.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_ORC.Button1Click(Sender: TObject);
var
ValorOrc: Currency;
begin
  ValorOrc := 0;
  dmgeral.FIN_CD_M_ORC_PLC.First;
  while not dmgeral.FIN_CD_M_ORC_PLC.Eof do
    begin
      ValorOrc := ValorOrc + dmgeral.FIN_CD_M_ORC_PLCprev_total.AsCurrency;
      dmgeral.FIN_CD_M_ORC_PLC.Next;
    end;

  dmgeral.FIN_CD_M_ORCvlr_orcamento.AsCurrency := ValorOrc;
end;

procedure TFIN_FM_M_ORC.cbbFilialEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusEmpresa(1,'%');
  cbbFilial.DropDown;
end;

procedure TFIN_FM_M_ORC.cbbFilialExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    begin
      exit;
    end;

  if (dmGeral.FIN_CD_M_ORC.FieldByName('ano').AsString = '') then
    begin
      ShowMessage('O campo "Ano" deve ser preenchido.');
      txtAno.SetFocus;
      exit;
    end;

  if (dmGeral.FIN_CD_M_ORC.FieldByName('ID_EMPRESA').AsString = '') then
    begin
      ShowMessage('O campo "Filial" deve ser preenchido.');
      cbbFilial.SetFocus;
      exit;
    end;

  if (dmGeral.FIN_CD_M_ORC.FieldByName('ID_EMPRESA').AsString <> '') then
    begin
     dmGeral.BUS_CD_M_ORC.Close;
     dmGeral.BUS_CD_M_ORC.Data := dmGeral.FIN_CD_M_ORC.DataRequest(VarArrayOf([90,
                                        dmGeral.FIN_CD_M_ORC.FieldByName('ID_EMPRESA').AsString,
                                        dmGeral.FIN_CD_M_ORC.FieldByName('ANO').AsString]));

     if not dmgeral.BUS_CD_M_ORC.IsEmpty then
      begin
        showmessage('Há controle de orçamento cadastrado para ano e filial selecionados!');
        dmGeral.FIN_CD_M_ORC.FieldByName('ano').AsString := '';
        txtAno.Text := '';
        txtano.SetFocus;
      end;
   end;
end;

procedure TFIN_FM_M_ORC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TFIN_FM_M_ORC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmgeral.FIN_CD_M_ORC.Close;
  dmgeral.FIN_CD_M_ORC_PLC.Close;
  FreeAndNil(FIN_FM_M_ORC);
end;

procedure TFIN_FM_M_ORC.FormCreate(Sender: TObject);
var
  xmes,xdia: word;
begin
  inherited;
  {decodeDate(xDataSis,xano,xmes,xdia);
  dmGeral.FIN_CD_M_ORC.Close;
  dmGeral.FIN_CD_M_ORC.Data := dmGeral.FIN_CD_M_ORC.DataRequest(VarArrayOf([0, xano]));
  dmGeral.FIN_CD_M_ORC.Open;  }

  dmGeral.FIN_CD_M_ORC.Close;
  dmGeral.FIN_CD_M_ORC.Data := dmGeral.FIN_CD_M_ORC.DataRequest(VarArrayOf([0,'']));
  AbrirBuscas;

  txtPesquisa.SetFocus;
end;

procedure TFIN_FM_M_ORC.grdPlanosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdPlanosIButton.Enabled := false;
     if dmGeral.FIN_CD_M_ORC_PLC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_ORC_PLC.Delete;
     dmGeral.FIN_CD_M_ORC_PLC.Edit;
  finally
     grdPlanosIButton.Enabled := true;
  end;
end;

procedure TFIN_FM_M_ORC.grdPlanosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlPlanos.Enabled = false then
     pnlPlanos.Enabled := true;

  dmGeral.FIN_CD_M_ORC_PLC.cancel;

  if dmGeral.FIN_CD_M_ORC_PLC.IsEmpty then
     begin
       pnlPlanos.Enabled := false;
     end;
   if not dmGeral.FIN_CD_M_ORC_PLC.IsEmpty then
    begin
      txtIdPlano.Enabled := false;
      dmGeral.FIN_CD_M_ORC_PLC.Edit;
      pnlPlanos.Enabled := true;
      txtJan.SetFocus;
    end;
end;

procedure TFIN_FM_M_ORC.pnlPlanosExit(Sender: TObject);
begin
  inherited;
  if (btnAddPlanos.Focused) or (grdPlanos.Focused) or
     (not grdPlanosIButton.Enabled) then
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
        dmGeral.FIN_CD_M_ORC_PLC.Cancel;
        dmGeral.FIN_CD_M_ORC_PLC.edit;
        finally
           pnlPlanos.Enabled := false;
        end;
      end;
end;

procedure TFIN_FM_M_ORC.txtAbrExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_ABR').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_ABR').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtAgoExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_AGO').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_AGO').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtAnoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    begin
      exit;
    end;

  if (dmGeral.FIN_CD_M_ORC.FieldByName('ano').AsString = '') then
    begin
      ShowMessage('O campo "Ano" deve ser preenchido.');
      exit;
    end;
end;

procedure TFIN_FM_M_ORC.txtDezExit(Sender: TObject);
var
  codPlano:string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused or grdPlanos.Focused then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_DEZ').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_DEZ').AsCurrency := 0;
    end;
   codPlano := dmGeral.FIN_CD_M_ORC_PLC.FieldByName('ID_PLC').AsString;

   dmGeral.FIN_CD_M_ORC_PLC.Post;
   dmGeral.FIN_CD_M_ORC_PLC.locate('ID_PLC',codPlano,[]);
   pnlPlanos.Enabled := False;
   btnAddPlanos.SetFocus;
end;

procedure TFIN_FM_M_ORC.txtFevExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_FEV').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_FEV').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtIdPlanoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.xPctChamadaPor := FIN_FM_M_ORC.Name;
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.FIN_CD_M_ORC_PLC.FieldByName('ID_PLC').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TFIN_FM_M_ORC.txtIdPlanoExit(Sender: TObject);
var
  codPlano:string;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddPlanos.Focused or grdPlanos.Focused then
     begin
       exit;
     end;

  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('ID_PLC').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txtIdPlano.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.FIN_CD_M_ORC_PLC.FieldByName('ID_PLC').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       txtIdPlano.Text:= '';
       txtIdPlano.SetFocus;
       exit;
     end;

  if (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsString = '1') then
     begin
       ShowMessage('Plano de contas não pode ser do tipo receita.');
       txtIdPlano.Text:= '';
       txtIdPlano.SetFocus;
       exit;
     end;

   codPlano := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
   dmGeral.FIN_CD_M_ORC_PLC.Cancel;
   if dmGeral.FIN_CD_M_ORC_PLC.locate('ID_PLC',codPlano,[]) then
     begin
       ShowMessage('Plano de contas já tinha sido selecionado.');
       dmGeral.FIN_CD_M_ORC_PLC.Insert;
       pnlPlanos.Enabled := true;
       txtIdPlano.Text:= '';
       txtIdPlano.SetFocus;
       exit;
     end
   else
     begin
        dmGeral.FIN_CD_M_ORC_PLC.Insert;
        pnlPlanos.Enabled := true;
        dmGeral.FIN_CD_M_ORC_PLC.FieldByName('ID_PLC').AsString := codPlano;
        ActiveControl := nil;
        PostMessage(txtJan.Handle, WM_SETFOCUS, 0, 0);
        txtJan.SetFocus;
     end;

end;

procedure TFIN_FM_M_ORC.txtJanExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JAN').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JAN').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtJulExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUL').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUL').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtJunExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUN').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUN').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtMaiExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAI').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAI').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtMarExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAR').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAR').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtNovExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_NOV').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_NOV').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtOutExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_OUT').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_OUT').AsCurrency := 0;
    end;
end;

procedure TFIN_FM_M_ORC.txtSetExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_SET').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_SET').AsCurrency := 0;
    end;
end;

end.
