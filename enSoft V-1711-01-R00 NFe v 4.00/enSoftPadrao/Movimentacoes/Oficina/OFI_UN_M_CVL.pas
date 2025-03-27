unit OFI_UN_M_CVL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, vcl.Wwdotdot,
  vcl.Wwdbcomb, JvExMask, JvToolEdit, JvDBControls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Buttons, frxClass, frxDBSet, frxExportPDF, frxExportXLS;

type
  TOFI_FM_M_CVL = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    txtCodigo: TwwDBEdit;
    dsoIPVA: TwwDataSource;
    dsoMulta: TwwDataSource;
    dsoSeguro: TwwDataSource;
    Label2: TLabel;
    cbbTipoMov: TwwDBComboBox;
    Label3: TLabel;
    txtData: TJvDBDateEdit;
    Label4: TLabel;
    PageControl1: TPageControl;
    tsIPVA: TTabSheet;
    tsMulta: TTabSheet;
    TsSeguro: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    txtVlrIPVA: TwwDBEdit;
    txtVlrSegObrig: TwwDBEdit;
    Label7: TLabel;
    gbCotaUnica: TGroupBox;
    Label8: TLabel;
    txtDtaCotaUnica: TJvDBDateEdit;
    Label9: TLabel;
    txtDtaPag: TJvDBDateEdit;
    GroupBox2: TGroupBox;
    txtDtaVenc1Cota: TJvDBDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    GroupBox3: TGroupBox;
    JvDBDateEdit2: TJvDBDateEdit;
    Label12: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    wwDBEdit1: TwwDBEdit;
    Label14: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label15: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label16: TLabel;
    JvDBDateEdit4: TJvDBDateEdit;
    Label17: TLabel;
    JvDBDateEdit5: TJvDBDateEdit;
    Label18: TLabel;
    Label19: TLabel;
    txtInfracao: TwwDBEdit;
    Label20: TLabel;
    txtProcesso: TwwDBEdit;
    txtLocal: TwwDBEdit;
    Label21: TLabel;
    txtVlrPago: TwwDBEdit;
    Label22: TLabel;
    txtDtaPagamento: TJvDBDateEdit;
    Label23: TLabel;
    txtVlrMulta: TwwDBEdit;
    Label24: TLabel;
    txtDtaVencimento: TJvDBDateEdit;
    Label25: TLabel;
    txtObs: TwwDBEdit;
    Label26: TLabel;
    txtNumApolice: TwwDBEdit;
    Label27: TLabel;
    txtDtaVigencia: TJvDBDateEdit;
    Label28: TLabel;
    txtDtaContrato: TJvDBDateEdit;
    Label29: TLabel;
    txtVlrSeguro: TwwDBEdit;
    Label30: TLabel;
    txtVlrFranquia: TwwDBEdit;
    Label31: TLabel;
    txtVlrCobertura: TwwDBEdit;
    Label32: TLabel;
    txtVlrDanos_materiais: TwwDBEdit;
    Label33: TLabel;
    txtVlrDanos_corporais: TwwDBEdit;
    Label34: TLabel;
    txtNomeCorretor: TwwDBEdit;
    Label35: TLabel;
    txtCorretor_tel: TwwDBEdit;
    Label36: TLabel;
    txtCorretor_celular: TwwDBEdit;
    Label37: TLabel;
    txtPlaca: TJvDBComboEdit;
    txtDescEqp: TwwDBEdit;
    btnImprimirEspelho: TBitBtn;
    OFI_XL_M_CVL: TfrxXLSExport;
    OFI_PD_M_CVL: TfrxPDFExport;
    OFI_FR_M_CVL: TfrxReport;
    OFI_DB_M_CVL: TfrxDBDataset;
    OFI_DB_M_CVL_IPV: TfrxDBDataset;
    OFI_DB_M_CVL_MLT: TfrxDBDataset;
    OFI_DB_M_CVL_SGR: TfrxDBDataset;
    BUS_DB_C_MEQ: TfrxDBDataset;
    txtAnoExer: TwwDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure cbbTipoMovExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbTipoMovEnter(Sender: TObject);
  private
    { Private declarations }
    procedure HabilDesab(status:Boolean);
  public
    { Public declarations }
  end;

var
  OFI_FM_M_CVL: TOFI_FM_M_CVL;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_MEQ, OFI_UN_M_CVL_IMP;


procedure TOFI_FM_M_CVL.HabilDesab(status:Boolean);
begin
   cbbTipoMov.Enabled := status;
   txtPlaca.Enabled := status;
   txtData.Enabled := status;
end;


procedure TOFI_FM_M_CVL.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_CVL);
  cbbTipoMov.SetFocus;
end;

procedure TOFI_FM_M_CVL.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_CVL) then
      begin
        inherited;
        HabilDesab(false);

        if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 0) then
          begin
             dmGeral.OFI_CD_M_CVL_IPV.Edit;
          end;

        if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 1) then
          begin
            dmGeral.OFI_CD_M_CVL_MLT.Edit;
          end;

        if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 2) then
          begin
            dmGeral.OFI_CD_M_CVL_SGR.Edit;
          end;

      end;
end;

procedure TOFI_FM_M_CVL.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_CVL) then
     begin
       inherited;
       dbGrid.SetFocus;

     end
  else
     begin

     end;
end;

procedure TOFI_FM_M_CVL.acExcluirExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_CVL);
end;

procedure TOFI_FM_M_CVL.acGravarExecute(Sender: TObject);
VAR
  codigo:String;
begin
  inherited;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     if dmGeral.OFI_CD_M_CVL_IPV.State IN [dsInsert]  then
       begin
         dmGeral.OFI_CD_M_CVL_IPV.FieldByName('id_ipva').AsInteger :=
               dmGeral.BuscarSeq('OFI_TB_M_CVL_IPV');
       end;

     if dmGeral.OFI_CD_M_CVL_MLT.State IN [dsInsert]  then
       begin
           dmGeral.OFI_CD_M_CVL_MLT.FieldByName('id_multa').AsInteger :=
               dmGeral.BuscarSeq('OFI_TB_M_CVL_MLT');
       end;

     if dmGeral.OFI_CD_M_CVL_SGR.State IN [dsInsert]  then
       begin
           dmGeral.OFI_CD_M_CVL_SGR.FieldByName('id_seguro').AsInteger :=
               dmGeral.BuscarSeq('OFI_TB_M_CVL_SGR');
       end;


     if (dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').AsInteger=0) then
           dmGeral.OFI_CD_M_CVL_IPV.Post;

     if (dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').AsInteger=1) then
           dmGeral.OFI_CD_M_CVL_MLT.Post;

     if (dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').AsInteger=2) then
           dmGeral.OFI_CD_M_CVL_SGR.Post;


     codigo := dmGeral.OFI_CD_M_CVL.FieldByName('ID_CONTROLE').AsString;
     DmGeral.Grava(dmGeral.OFI_CD_M_CVL);

     inherited;
     dmGeral.OFI_CD_M_CVL.Close;
     dmGeral.OFI_CD_M_CVL.Data :=
             dmGeral.OFI_CD_M_CVL.DataRequest(VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
     HabilDesab(true);

    end
  else
    begin

    end;

end;

procedure TOFI_FM_M_CVL.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
      if (cbbPesquisa.ItemIndex in [0,1]) then
        begin
         dmGeral.OFI_CD_M_CVL.Close;
         dmGeral.OFI_CD_M_CVL.Data :=
         dmGeral.OFI_CD_M_CVL.DataRequest(
              VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPesquisa.text]));
        end;
      if (cbbPesquisa.ItemIndex =2) then
        begin
         dmGeral.OFI_CD_M_CVL.Close;
         dmGeral.OFI_CD_M_CVL.Data :=
         dmGeral.OFI_CD_M_CVL.DataRequest(
              VarArrayOf([1,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPesquisa.text]));
        end;
      if (cbbPesquisa.ItemIndex =3) then
        begin
         dmGeral.OFI_CD_M_CVL.Close;
         dmGeral.OFI_CD_M_CVL.Data :=
         dmGeral.OFI_CD_M_CVL.DataRequest(
              VarArrayOf([2,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPesquisa.text]));
        end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_CVL.btnImprimirEspelhoClick(Sender: TObject);
begin
  inherited;
  OFI_FM_M_CVL_IMP := TOFI_FM_M_CVL_IMP.Create(Self);
  OFI_FM_M_CVL_IMP.ShowModal;
  OFI_FM_M_CVL_IMP.Free;

end;

procedure TOFI_FM_M_CVL.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex = 0 then
    txtPesquisa.Enabled :=false
  else
    txtPesquisa.Enabled :=true;

  if cbbPesquisa.ItemIndex = 1 then
    txtPesquisa.NumbersOnly :=true
  else
     txtPesquisa.NumbersOnly :=false;
end;

procedure TOFI_FM_M_CVL.cbbTipoMovEnter(Sender: TObject);
begin
  inherited;
  cbbTipoMov.DropDown;
end;

procedure TOFI_FM_M_CVL.cbbTipoMovExit(Sender: TObject);
begin
  inherited;

  try
    dmGeral.OFI_CD_M_CVL.BeforePost := nil;


    dmGeral.OFI_CD_M_CVL_IPV.Cancel;
    dmGeral.OFI_CD_M_CVL_MLT.Cancel;
    dmGeral.OFI_CD_M_CVL_SGR.Cancel;

    if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 0) then
      begin
         tsIPVA.TabVisible := true;
         tsMulta.TabVisible := false;
         tsSeguro.TabVisible := false;

         dmGeral.OFI_CD_M_CVL_IPV.Insert;
      end;

    if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 1) then
      begin
        tsIPVA.TabVisible := false;
        tsMulta.TabVisible := true;
        tsSeguro.TabVisible := false;

        dmGeral.OFI_CD_M_CVL_MLT.Insert;

        dmGeral.OFI_CD_M_CVL_MLT.FieldByName('recurso').AsBoolean := false;
        dmGeral.OFI_CD_M_CVL_MLT.FieldByName('recurso_aceito').AsBoolean := false;
        dmGeral.OFI_CD_M_CVL_MLT.FieldByName('pago').AsBoolean := false;
      end;

    if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 2) then
      begin
        tsIPVA.TabVisible := false;
        tsMulta.TabVisible := false;
        tsSeguro.TabVisible := true;

        dmGeral.OFI_CD_M_CVL_SGR.Insert;
      end;
   finally
      dmGeral.OFI_CD_M_CVL.BeforePost :=  dmGeral.OFI_CD_M_CVLBeforePost;
      ActiveControl := nil;
      PostMessage(txtPlaca.Handle, WM_SETFOCUS, 0, 0);
   end;


end;

procedure TOFI_FM_M_CVL.dbGridRowChanged(Sender: TObject);
begin
  inherited;

  if (not dmGeral.OFI_CD_M_CVL.IsEmpty) then
    begin
      if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 0) then
        begin
           tsIPVA.TabVisible := true;
           tsMulta.TabVisible := false;
           tsSeguro.TabVisible := false;
        end;

      if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 1) then
        begin
          tsIPVA.TabVisible := false;
          tsMulta.TabVisible := true;
          tsSeguro.TabVisible := false;
        end;

      if (dmGeral.OFI_CD_M_CVL.FieldByName('tipo_movimento').AsInteger = 2) then
        begin
          tsIPVA.TabVisible := false;
          tsMulta.TabVisible := false;
          tsSeguro.TabVisible := true;
        end;
    end;
end;

procedure TOFI_FM_M_CVL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_MEQ.Close;
  dmGeral.OFI_CD_M_CVL.Close;
  FreeAndNil(OFI_FM_M_CVL);
end;

procedure TOFI_FM_M_CVL.FormShow(Sender: TObject);
begin
  inherited;
  tsIPVA.TabVisible := true;
  tsMulta.TabVisible := false;
  tsSeguro.TabVisible := false;

  dmGeral.OFI_CD_M_CVL.Close;
  dmGeral.OFI_CD_M_CVL.Data :=
  dmGeral.OFI_CD_M_CVL.DataRequest(VarArrayOf([0,'']));

end;

procedure TOFI_FM_M_CVL.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.xFormCall := OFI_FM_M_CVL.Name;
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
        dmGeral.OFI_CD_M_CVL.FieldByName('id_meq').Text :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString;
         dmGeral.OFI_CD_M_CVL.FieldByName('int_placa').Text :=
                trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_placa').AsString);
        dmGeral.OFI_CD_M_CVL.FieldByName('int_descricao').Text :=
                trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
   PSQ_FM_X_MEQ.Free;
end;

procedure TOFI_FM_M_CVL.txtPlacaExit(Sender: TObject);
begin
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;



  if (trim(dmGeral.OFI_CD_M_CVL.FieldByName('INT_PLACA').AsString) = '') then
    begin
      ShowMessage('O campo "Placa" deve ser preenchido.');
      txtPlaca.SetFocus;
      exit;
    end;

  dmGeral.OFI_CD_M_CVL.FieldByName('INT_PLACA').AsString := UpperCase(txtPlaca.Text);

  dmGeral.OFI_CD_M_CVL.FieldByName('id_meq').Text := '';
  dmGeral.OFI_CD_M_CVL.FieldByName('int_descricao').Text := '';

  dmGeral.BUS_CD_C_MEQ.Close;
  dmGeral.BUS_CD_C_MEQ.Data :=
  dmGeral.BUS_CD_C_MEQ.DataRequest(
         VarArrayOf([7,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                      trim(dmGeral.OFI_CD_M_CVL.FieldByName('INT_PLACA').Text)]));


  if dmGeral.BUS_CD_C_MEQ.IsEmpty then
     begin
       ShowMessage('Placa não encontrado.');
       dmGeral.OFI_CD_M_CVL.FieldByName('INT_PLACA').AsString :='';
       txtPlaca.Text := '';
       txtPlaca.SetFocus;
       Exit;
     end;


  dmGeral.OFI_CD_M_CVL.FieldByName('id_meq').Text :=
          dmGeral.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
  dmGeral.OFI_CD_M_CVL.FieldByName('int_descricao').Text :=
          dmGeral.BUS_CD_C_MEQ.FieldByName('descricao').AsString;
end;

end.
