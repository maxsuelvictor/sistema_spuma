unit CSU_UN_M_VPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, JvgPage,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, JvExMask, JvToolEdit,
  Datasnap.DBClient, vcl.Wwdbedit, Vcl.Buttons, JvExStdCtrls, JvEdit,
  JvValidateEdit, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TCSU_FM_M_VPR = class(TPAD_FM_X_FRM)
    jpgGerencial: TJvgPageControl;
    tbFiltro: TTabSheet;
    Panel1: TPanel;
    tsSair: TTabSheet;
    pnVendedor: TPanel;
    pnDadosVend: TPanel;
    grdVendedor: TwwDBGrid;
    pnDadosVen2Filtro: TPanel;
    Panel2: TPanel;
    pnDadosVen1: TPanel;
    dsVend: TDataSource;
    rgFiltrar: TRadioGroup;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label1: TLabel;
    txtSemanaIni: TEdit;
    txtSemanaFim: TEdit;
    txtAno: TEdit;
    lblAliquotasTaxas: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    wwDBGrid2: TwwDBGrid;
    lbVendedor: TLabel;
    BUS_CD_C_VIT_CON: TClientDataSet;
    btnExibir: TBitBtn;
    pmDetalheVis: TPopupMenu;
    Exibirrota1: TMenuItem;
    BUS_CD_C_VIT_CONid_visita: TIntegerField;
    BUS_CD_C_VIT_CONid_vendedor: TIntegerField;
    BUS_CD_C_VIT_CONdoc_cnpj_cpf: TWideStringField;
    BUS_CD_C_VIT_CONid_veiculo: TIntegerField;
    BUS_CD_C_VIT_CONdta_visita: TDateField;
    BUS_CD_C_VIT_CONobs: TWideStringField;
    BUS_CD_C_VIT_CONrecomendacoes: TWideStringField;
    BUS_CD_C_VIT_CONid_empresa: TIntegerField;
    BUS_CD_C_VIT_CONkm_inicial: TFloatField;
    BUS_CD_C_VIT_CONkm_final: TFloatField;
    BUS_CD_C_VIT_CONemp_fantasia: TWideStringField;
    BUS_CD_C_VIT_CONnome: TWideStringField;
    BUS_CD_C_VIT_CONnome_carro: TWideStringField;
    BUS_CD_C_VIT_CONnome_cli: TWideStringField;
    BUS_CD_C_VIT_CONgps_latitude: TFloatField;
    BUS_CD_C_VIT_CONgps_longitude: TFloatField;
    BUS_CD_C_VIT_CONhor_ini: TTimeField;
    BUS_CD_C_VIT_CONhor_fim: TTimeField;
    BUS_CD_C_VIT_CONsemana: TIntegerField;
    pnFoto: TPanel;
    pnLocalBotFoto: TPanel;
    Button1: TButton;
    pnLocalfoto: TPanel;
    Image1: TImage;
    BUS_CD_C_VIT_CONplaca: TWideStringField;
    BUS_CD_C_VIT_CONid_pedido_mobile: TIntegerField;
    BUS_CD_C_VIT_CONtipo_mobile: TIntegerField;
    Shape1: TShape;
    Shape2: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    txtQtdPed: TJvValidateEdit;
    txtDescTotalPed: TJvValidateEdit;
    Label12: TLabel;
    Label13: TLabel;
    txtValorPedidos: TJvValidateEdit;
    Label8: TLabel;
    txtQtdVis: TJvValidateEdit;
    Label10: TLabel;
    txtQtdCliProg: TJvValidateEdit;
    txtQtdCliForaProg: TJvValidateEdit;
    Label11: TLabel;
    dsCliCar: TDataSource;
    dsCliPro: TDataSource;
    dsCliExt: TDataSource;
    JvgPageControl1: TJvgPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label16: TLabel;
    Label17: TLabel;
    wwDBGrid3: TwwDBGrid;
    Label18: TLabel;
    wwDBGrid4: TwwDBGrid;
    Panel8: TPanel;
    Label19: TLabel;
    wwDBGrid5: TwwDBGrid;
    Panel9: TPanel;
    Label20: TLabel;
    wwDBGrid6: TwwDBGrid;
    Panel10: TPanel;
    Label21: TLabel;
    wwDBGrid7: TwwDBGrid;
    dsPed: TDataSource;
    dsPedIte: TDataSource;
    dsPedTit: TDataSource;
    cdsCliCar: TClientDataSet;
    cdsCliPro: TClientDataSet;
    cdsCliExt: TClientDataSet;
    BUS_CD_C_VIT_CONBUS_SQ_C_VIT_FOT_CON: TDataSetField;
    BUS_CD_C_VIT_FOT_CON: TClientDataSet;
    BUS_CD_C_VIT_FOT_CONid_visita: TIntegerField;
    BUS_CD_C_VIT_FOT_CONid_vit_fot: TIntegerField;
    BUS_CD_C_VIT_FOT_CONcaminho_foto: TWideStringField;
    BUS_CD_C_VIT_FOT_CONobs: TWideStringField;
    DBNavigator1: TDBNavigator;
    dsoVitFot: TwwDataSource;
    wwDBGrid8: TwwDBGrid;
    pmDetalheVisFot: TPopupMenu;
    MenuItem2: TMenuItem;
    lblQtdeFot: TLabel;
    BUS_CD_C_VIT_CONsemana_visitada: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure Exibirrota1Click(Sender: TObject);
    procedure grdVendedorRowChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure jpgGerencialChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure rgFiltrarClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    procedure LimparDadosVendedor;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_VPR: TCSU_FM_M_VPR;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, CSU_UN_M_VPR_ROT, enSoftMenu;

procedure TCSU_FM_M_VPR.btnExibirClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  QtdeVisitas,QtdePedidos,TotalDescPed, TotalPed, QtdeCliVisProg, QtdeCliExtVis: Currency;
  tipo, vendedor, Ano, ParIni, ParFim: String;
  CliVisitados,CliVisitadosExt,Pedidos: String;
begin
  inherited;

  if rgFiltrar.ItemIndex = -1 then
     begin
       ShowMessage('O filtro por "Período" ou "Semana" deve ser escolhido.');
       abort;
     end;

  if rgFiltrar.ItemIndex = 0 then
     begin
        if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
            begin
              Showmessage('O período deve ser preenchido.');
              abort;
            end
        else
            begin
              if (deInicial.Date >  deFinal.Date) then
                  begin
                    Showmessage('Data inicial não pode ser maior que a data final.');
                    abort;
                  end;
            end;
     end;

  if rgFiltrar.ItemIndex = 1 then
     begin
       if (txtAno.Text = '') or (txtAno.Text = '0') then
           begin
              Showmessage('O campo "Ano" deve ser preenchido.');
              abort;
           end;

       if (txtSemanaIni.Text = '') or (txtSemanaIni.Text = '0') then
           begin
              Showmessage('O campo "Semana inicial" deve ser preenchido.');
              abort;
           end;


       if (txtSemanaFim.Text = '') or (txtSemanaFim.Text = '0') then
           begin
              Showmessage('O campo "Semana final" deve ser preenchido.');
              abort;
           end;

       if StrToInt(txtSemanaIni.text) >  StrToInt(txtSemanaFim.text) then
           begin
             Showmessage('A semana inicial não pode ser maior que a semana final.');
             abort;
           end;
     end;

  try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
    if rgFiltrar.ItemIndex = 0 then
       begin
         vendedor := dmGeral.BUS_CD_C_FUN_CRG_GER.FieldByName('id_funcionario').AsString;
         ano := '0';
         ParIni := deInicial.Text;
         ParFim := deFinal.Text;
         SMPrincipal.enBuscarEstatVendProdutor(IntToStr(rgFiltrar.ItemIndex), vendedor, Ano, ParIni, ParFim, QtdeVisitas,
                     QtdePedidos,TotalDescPed, TotalPed, QtdeCliVisProg, QtdeCliExtVis,CliVisitados,CliVisitadosExt,Pedidos);

         txtQtdVis.Value := QtdeVisitas;
         txtQtdPed.Value := QtdePedidos;
         txtDescTotalPed.Value := TotalDescPed;
         txtValorPedidos.Value := TotalPed;
         txtQtdCliProg.Value := QtdeCliVisProg;
         txtQtdCliForaProg.Value := QtdeCliExtVis;


         BUS_CD_C_VIT_CON.Close;
         BUS_CD_C_VIT_CON.Data :=
           BUS_CD_C_VIT_CON.DataRequest(
              VarArrayOf([1,parini,parfim,vendedor]));

         cdsCliCar.Close;
          cdsCliCar.Data :=
             cdsCliCar.DataRequest(
                    VarArrayOf([83,vendedor]));


         cdsCliPro.Close;
            cdsCliPro.Data :=
               cdsCliPro.DataRequest(
                    VarArrayOf([82,CliVisitados]));

         cdsCliExt.Close;
            cdsCliExt.Data :=
               cdsCliExt.DataRequest(
                    VarArrayOf([82,CliVisitadosExt]));

          dmGeral.BUS_CD_M_PED.Close;
          dmGeral.BUS_CD_M_PED.Data :=
             dmGeral.BUS_CD_M_PED.DataRequest(
                    VarArrayOf([107,Pedidos]));
       end;
    if rgFiltrar.ItemIndex = 1 then
       begin
         vendedor := dmGeral.BUS_CD_C_FUN_CRG_GER.FieldByName('id_funcionario').AsString;
         ano := txtAno.text;
         ParIni := txtSemanaIni.Text;
         ParFim := txtSemanaFim.Text;
         SMPrincipal.enBuscarEstatVendProdutor(IntToStr(rgFiltrar.ItemIndex), vendedor, Ano, ParIni, ParFim,
            QtdeVisitas,QtdePedidos,TotalDescPed, TotalPed, QtdeCliVisProg, QtdeCliExtVis,CliVisitados,CliVisitadosExt,Pedidos);

         txtQtdVis.Value := QtdeVisitas;
         txtQtdPed.Value := QtdePedidos;
         txtDescTotalPed.Value   := TotalDescPed;
         txtValorPedidos.Value   := TotalPed;
         txtQtdCliProg.Value     := QtdeCliVisProg;
         txtQtdCliForaProg.Value := QtdeCliExtVis;

         BUS_CD_C_VIT_CON.Close;
         BUS_CD_C_VIT_CON.Data :=
           BUS_CD_C_VIT_CON.DataRequest(
              VarArrayOf([0,ano,parini,parfim,vendedor]));

         cdsCliCar.Close;
          cdsCliCar.Data :=
             cdsCliCar.DataRequest(
                    VarArrayOf([83,vendedor]));


         cdsCliPro.Close;
            cdsCliPro.Data :=
               cdsCliPro.DataRequest(
                    VarArrayOf([82,CliVisitados]));

         cdsCliExt.Close;
            cdsCliExt.Data :=
               cdsCliExt.DataRequest(
                    VarArrayOf([82,CliVisitadosExt]));


          dmGeral.BUS_CD_M_PED.Close;
          dmGeral.BUS_CD_M_PED.Data :=
             dmGeral.BUS_CD_M_PED.DataRequest(
                    VarArrayOf([107,Pedidos]));
       end;

  finally
    FreeAndNil(SMPrincipal);

  end;
end;

procedure TCSU_FM_M_VPR.btnFiltroClick(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.BUS_CD_C_FUN_CRG_GER.Close;
    dmGeral.BUS_CD_C_FUN_CRG_GER.Data :=
       dmGeral.BUS_CD_C_FUN_CRG_GER.DataRequest(
              VarArrayOf(['''0''','true']));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCSU_FM_M_VPR.Button1Click(Sender: TObject);
begin
  inherited;
  pnFoto.visible := false;
end;

procedure TCSU_FM_M_VPR.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  PathImg: String;
begin
  inherited;

  if not (BUS_CD_C_VIT_FOT_CON.IsEmpty) then
     begin
       if trim(BUS_CD_C_VIT_FOT_CON.FieldByName('caminho_foto').Text) <> '' then
          begin
             //PathImg := ExtractFilePath(Application.ExeName)+ BUS_CD_C_VIT_CON.FieldByName('caminho_foto').Text; //aqui é o caminho da pasta
             PathImg := BUS_CD_C_VIT_FOT_CON.FieldByName('caminho_foto').Text; //aqui é o caminho da pasta
             if not (FileExists(PathImg)) then
                begin
                  ShowMessage('Arquivo não encontrado:' + #13 + PathImg);
                  abort;
                end;

             pnFoto.visible := true;

             pnFoto.Height := 338;
             pnFoto.Width := 468;
             pnFoto.left  := 560;

             Image1.Picture.LoadFromFile(PathImg);
          end;
     end;
end;

procedure TCSU_FM_M_VPR.Exibirrota1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TCSU_FM_M_VPR_ROT,CSU_FM_M_VPR_ROT);
  xCaminho := '';
  BUS_CD_C_VIT_CON.First;
  while not (BUS_CD_C_VIT_CON.Eof) do
     begin
       //origem+'/'+destino
       if (BUS_CD_C_VIT_CON.FieldByName('doc_cnpj_cpf').AsString<>'') then
           begin
             if (BUS_CD_C_VIT_CON.FieldByName('gps_latitude').AsString<>'') and
                (BUS_CD_C_VIT_CON.FieldByName('gps_longitude').AsString<>'') then

             xCaminho := xCaminho+ stringReplace( BUS_CD_C_VIT_CON.FieldByName('gps_latitude').AsString,',','.',[rfReplaceAll]) +','+
                          stringReplace(BUS_CD_C_VIT_CON.FieldByName('gps_longitude').AsString,',','.',[rfReplaceAll])+'/';
           end;
       BUS_CD_C_VIT_CON.Next;
     end;
  BUS_CD_C_VIT_CON.First;
  CSU_FM_M_VPR_ROT.btnRotaClick(sender);
  CSU_FM_M_VPR_ROT.panel1.Visible := false;
  CSU_FM_M_VPR_ROT.ShowModal;
  CSU_FM_M_VPR_ROT.Free;
end;

procedure TCSU_FM_M_VPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CSU_FM_M_VPR);
end;

procedure TCSU_FM_M_VPR.FormCreate(Sender: TObject);
begin
  inherited;
  grdVendedor.SetFocus;
end;

procedure TCSU_FM_M_VPR.FormShow(Sender: TObject);
begin
  inherited;

 dmGeral.BUS_CD_M_PED.Close;
   dmGeral.BUS_CD_M_PED.Data :=
     dmGeral.BUS_CD_M_PED.DataRequest(
           VarArrayOf([0,'']));

 dmGeral.BUS_CD_C_FUN_CRG_GER.Close;
   dmGeral.BUS_CD_C_FUN_CRG_GER.Data :=
       dmGeral.BUS_CD_C_FUN_CRG_GER.DataRequest(
              VarArrayOf(['''0''','true']));

 cdsCliCar.Close;
    cdsCliCar.Data :=
       cdsCliCar.DataRequest(
              VarArrayOf([0,'']));

  frmSoftMenu.rbMenu.ShowTabGroups := false;
  LimparDadosVendedor;
end;

procedure TCSU_FM_M_VPR.LimparDadosVendedor;
begin
   BUS_CD_C_VIT_CON.Close;
   BUS_CD_C_VIT_CON.Data :=
     BUS_CD_C_VIT_CON.DataRequest(
        VarArrayOf([2]));

   dmGeral.BUS_CD_M_PED.Close;
   dmGeral.BUS_CD_M_PED.Data :=
     dmGeral.BUS_CD_M_PED.DataRequest(
           VarArrayOf([0,'']));

   cdsCliCar.Close;
   cdsCliCar.Data :=
     cdsCliCar.DataRequest(
           VarArrayOf([0,'']));

   cdsCliPro.Close;
   cdsCliPro.Data :=
     cdsCliPro.DataRequest(
           VarArrayOf([0,'']));

   cdsCliExt.Close;
   cdsCliExt.Data :=
     cdsCliExt.DataRequest(
           VarArrayOf([0,'']));


   txtQtdVis.Value := 0;
   txtQtdPed.Value := 0;
   txtDescTotalPed.Value := 0;
   txtValorPedidos.Value := 0;
   txtQtdCliProg.Value := 0;
   txtQtdCliForaProg.Value := 0;

   pnFoto.visible := false;
end;

procedure TCSU_FM_M_VPR.MenuItem2Click(Sender: TObject);
var
  PathImg: String;
begin
  inherited;

  lblQtdeFot.Caption := 'Qtde de fotos: 0';

  if not (BUS_CD_C_VIT_FOT_CON.IsEmpty) then
     begin
       lblQtdeFot.Caption := 'Qtde de fotos: ' + IntToStr(BUS_CD_C_VIT_FOT_CON.RecordCount) ;
       if trim(BUS_CD_C_VIT_FOT_CON.FieldByName('caminho_foto').Text) <> '' then
          begin
             //PathImg := ExtractFilePath(Application.ExeName)+ BUS_CD_C_VIT_CON.FieldByName('caminho_foto').Text; //aqui é o caminho da pasta
             PathImg := BUS_CD_C_VIT_FOT_CON.FieldByName('caminho_foto').Text; //aqui é o caminho da pasta
             if not (FileExists(PathImg)) then
                begin
                  ShowMessage('Arquivo não encontrado:' + #13 + PathImg);
                  abort;
                end;

             pnFoto.visible := true;

             pnFoto.Height := 338;
             pnFoto.Width := 468;
             pnFoto.left  := 560;

             Image1.Picture.LoadFromFile(PathImg);
          end;
     end;
end;

procedure TCSU_FM_M_VPR.rgFiltrarClick(Sender: TObject);
begin
  inherited;
  if rgFiltrar.ItemIndex = 0 then
     begin
       txtAno.Text := '';
       txtSemanaIni.Text := '';
       txtSemanaFim.Text := '';
     end
  else
     begin
       deInicial.Text := '';
       deFinal.Text := '';
     end;

end;

procedure TCSU_FM_M_VPR.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  AFont.Color := clBlack;
  if BUS_CD_C_VIT_CON.FieldByName('tipo_mobile').AsInteger = 1 then
     begin
       AFont.Color := clRed;
     end;
end;

procedure TCSU_FM_M_VPR.grdVendedorRowChanged(Sender: TObject);
begin
  inherited;
  lbVendedor.Caption := '';
  if not (dmGeral.BUS_CD_C_FUN_CRG_GER.IsEmpty) then
     begin
       lbVendedor.Caption := 'Vendedor: ' + dmGeral.BUS_CD_C_FUN_CRG_GER.FieldByName('nome').AsString;
     end;
  LimparDadosVendedor;
end;

procedure TCSU_FM_M_VPR.jpgGerencialChange(Sender: TObject);
begin
  inherited;
  if jpgGerencial.ActivePage = tsSair then
     begin
       frmSoftMenu.rbMenu.ShowTabGroups := true;
       //cdsPosFT.Close;
       Close;
     end;
end;

end.

