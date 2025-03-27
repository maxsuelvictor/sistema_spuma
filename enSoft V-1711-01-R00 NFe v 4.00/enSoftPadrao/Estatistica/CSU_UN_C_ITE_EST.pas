unit CSU_UN_C_ITE_EST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.StdCtrls,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Datasnap.DBClient,
  Vcl.Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Mask, vcl.Wwdbedit,System.IniFiles, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExMask, JvToolEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, frxClass,
  frxDBSet;

type
  TCSU_FM_C_ITE_EST = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    dsoMPA: TwwDataSource;
    CSU_CD_C_ITE_EST_MPA: TClientDataSet;
    CSU_CD_C_ITE_EST_SRH: TClientDataSet;
    CSU_CD_C_ITE_EST_VCM: TClientDataSet;
    CSU_CD_C_ITE_EST_VVM: TClientDataSet;
    CSU_CD_C_ITE_EST_PFC: TClientDataSet;
    CSU_CD_C_ITE_EST_MCV: TClientDataSet;
    dsoVCM: TwwDataSource;
    dsoVVM: TwwDataSource;
    dsoSRH: TwwDataSource;
    dsoPFC: TwwDataSource;
    dsoMCV: TwwDataSource;
    pnlDados: TPanel;
    btnSair: TcxButton;
    txtItem: TwwDBEdit;
    Label1: TLabel;
    Und: TLabel;
    txtUnd: TwwDBEdit;
    pnMovimentacoesAno: TPanel;
    Label2: TLabel;
    dbItens: TwwDBGrid;
    pnVendaCliente: TPanel;
    Label3: TLabel;
    grdEstVcm: TwwDBGrid;
    pnVendaVendedor: TPanel;
    Label4: TLabel;
    grdEstVVM: TwwDBGrid;
    dgFes: TwwDBGrid;
    wwDBGrid5: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CSU_CD_C_ITE_EST_VVMid_empresa: TIntegerField;
    CSU_CD_C_ITE_EST_VVMint_nomeemp: TWideStringField;
    CSU_CD_C_ITE_EST_VVMint_cod_vnd: TIntegerField;
    CSU_CD_C_ITE_EST_VVMint_nomevnd: TWideStringField;
    CSU_CD_C_ITE_EST_VVMvalor: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_1: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_2: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_3: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_4: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_5: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_6: TFloatField;
    CSU_CD_C_ITE_EST_PFCid_empresa: TIntegerField;
    CSU_CD_C_ITE_EST_PFCint_nomeemp: TWideStringField;
    CSU_CD_C_ITE_EST_PFCsaldo_fisico: TFloatField;
    CSU_CD_C_ITE_EST_PFCvalor: TFloatField;
    CSU_CD_C_ITE_EST_SRHid_empresa: TIntegerField;
    CSU_CD_C_ITE_EST_SRHint_nomeemp: TWideStringField;
    CSU_CD_C_ITE_EST_SRHano: TFloatField;
    CSU_CD_C_ITE_EST_SRHvalor: TFloatField;
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    CSU_CD_C_ITE_EST_VCMid_empresa: TIntegerField;
    CSU_CD_C_ITE_EST_VCMint_nomeemp: TWideStringField;
    CSU_CD_C_ITE_EST_VCMint_cod_cli: TIntegerField;
    CSU_CD_C_ITE_EST_VCMint_nomecli: TWideStringField;
    CSU_CD_C_ITE_EST_VCMvalor: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_1: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_2: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_3: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_4: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_5: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_6: TFloatField;
    CSU_CD_C_ITE_EST_MCVid_empresa: TIntegerField;
    CSU_CD_C_ITE_EST_MCVint_nomeemp: TWideStringField;
    CSU_CD_C_ITE_EST_MCVano_anterior: TFloatField;
    CSU_CD_C_ITE_EST_MCVmes_ano_anterior: TFloatField;
    CSU_CD_C_ITE_EST_MCVmes_atual: TFloatField;
    CSU_CD_C_ITE_EST_MCVpercentual: TFloatField;
    txtCodItem: TwwDBEdit;
    Label8: TLabel;
    txtDtaInicial: TJvDateEdit;
    Label9: TLabel;
    txtDtaFinal: TJvDateEdit;
    btnFiltrar: TButton;
    CSU_CD_C_ITE_EST_VCMmes_7: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_8: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_9: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_10: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_11: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_12: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_7: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_8: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_9: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_10: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_11: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_12: TFloatField;
    CSU_CD_C_ITE_EST_VCMmes_13: TFloatField;
    CSU_CD_C_ITE_EST_VVMmes_13: TFloatField;
    CSU_FR_R_ITE_EST: TfrxReport;
    CSU_DB_C_ITE_EST_MPA: TfrxDBDataset;
    CSU_DB_C_ITE_EST_VCM: TfrxDBDataset;
    CSU_DB_C_ITE_EST_VVM: TfrxDBDataset;
    CSU_DB_C_ITE_EST_SRH: TfrxDBDataset;
    CSU_DB_C_ITE_EST_PFC: TfrxDBDataset;
    CSU_DB_C_ITE_EST_MCV: TfrxDBDataset;
    btnImprimir: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure CSU_CD_C_ITE_EST_VCMBeforeOpen(DataSet: TDataSet);
    procedure CSU_CD_C_ITE_EST_VVMBeforeOpen(DataSet: TDataSet);
    procedure CSU_CD_C_ITE_EST_PFCBeforeOpen(DataSet: TDataSet);
    procedure CSU_CD_C_ITE_EST_SRHBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    procedure InicializarPeriodo;
    procedure ConfigurarGridVenda;
  public
    { Public declarations }
    codItem:String;
  end;

var
  CSU_FM_C_ITE_EST: TCSU_FM_C_ITE_EST;
  xCorGrid:TColor                   = clWhite;
  xCorLabel:TColor                  = $00DADADA;
  xCorPanelTitulo:TColor            = $00844D08;
  xCorEdit:TColor                   = clWhite;
  xCorEditBloc:TColor               = $00DADADA;
  xCorGridTitulo:TColor             = $00DADADA;
  xCorListBox:TColor                = $00DADADA;
  xCorSistema:String                ='GRAFITE';

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_C_ITE,DateUtils, enConstantes;

procedure TCSU_FM_C_ITE_EST.btnFiltrarClick(Sender: TObject);
begin

   if (txtDtaInicial.Text = '  /  /    ')  or (txtDtaFinal.Text = '  /  /    ') then
      begin
         ShowMessage('Deve ser preenchido o período.');
         exit;
      end;

   if StrToDate(txtDtaInicial.text)>StrToDate(txtDtaFinal.text) then
     begin
       ShowMessage('A data inicial não pode ser maior que a data final.');
       exit;
     end;


   if (StrToDate(txtDtaFinal.text) - StrToDate(txtDtaInicial.Text))>365 then
     begin
        ShowMessage('Período tem que ser no máximo de 1 ano.');
        exit;
     end;




  CSU_CD_C_ITE_EST_VCM.Close;
     CSU_CD_C_ITE_EST_VCM.Data :=
             CSU_CD_C_ITE_EST_VCM.DataRequest(
                  VarArrayOf([codItem,txtDtaInicial.Text,txtDtaFinal.Text]));

  CSU_CD_C_ITE_EST_VVM.Close;
  CSU_CD_C_ITE_EST_VVM.Data :=
             CSU_CD_C_ITE_EST_VVM.DataRequest(
                  VarArrayOf([codItem,txtDtaInicial.Text,txtDtaFinal.Text]));

  ConfigurarGridVenda;

end;

procedure TCSU_FM_C_ITE_EST.btnImprimirClick(Sender: TObject);
var
  PathImg,xOpcoes: String;
  LogoEmpresa: TfrxPictureView;
begin

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CSU_FR_R_ITE_EST.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
      xOpcoes := xOpcoes + 'Item........................: ' +txtCodItem.Text +' - '+txtItem.Text+' '+txtUnd.Text+#13+#10;
      xOpcoes := xOpcoes + 'Período de Vendas...........: ' +txtDtaInicial.Text +' à '+txtDtaFinal.Text+#13+#10;

      dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_R_ITE_EST.Name,xCodLme,xRevLme,nil);
      CSU_FR_R_ITE_EST.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      CSU_FR_R_ITE_EST.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      CSU_FR_R_ITE_EST.Variables['Opcoes'] := QuotedStr(xOpcoes);
      CSU_FR_R_ITE_EST.PrepareReport();
      CSU_FR_R_ITE_EST.ShowReport();


end;

procedure TCSU_FM_C_ITE_EST.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_ITE_EST.InicializarPeriodo;
begin
   //txtDtaInicial.Text := '01'+'/'+  formatdatetime('mm', IncMonth(xDataSis,-11))  + '/' + formatdatetime('yyyy', IncMonth(xDataSis,-11));
   //txtDtaFinal.Text :=   copy(DateToStr(EndOfTheMonth(xDataSis)),1,2)+'/'+  formatdatetime('mm', xDataSis)  + '/' + formatdatetime('yyyy', xDataSis);

   txtDtaInicial.Text := DateToStr(xDataSis-365);
   txtDtaFinal.Text := DateToStr(xDataSis);

end;

procedure TCSU_FM_C_ITE_EST.ConfigurarGridVenda;
var
  DataInicial,DataFinal: TDate;
  I: Integer;
begin
    DataInicial := StrToDate(txtDtaInicial.Text);
    DataFinal := StrToDate(txtDtaFinal.Text);


    for I := 0 to 12 do
       begin
         if  StrTodate('01'+'/'+FormatDateTime('mm',IncMonth(DataInicial,i))+'/'+FormatDateTime('yyyy',IncMonth(DataInicial,i))) <=
             StrTodate('01'+'/'+FormatDateTime('mm',DataFinal)+'/'+FormatDateTime('yyyy',DataFinal) ) then
              begin
                if (grdEstVcm.ColumnByName('mes_'+IntToStr(i+1)).Visible = false) then
                  grdEstVcm.AddField('mes_'+IntToStr(i+1)+#9+'10'+#9+'6'+#186+#9+'T'+#9+'M'+#234+'s',i+4);
                grdEstVcm.Columns[i+4].DisplayLabel := FormatDateTime('mm/yyyy',IncMonth(DataInicial,i));

                if (grdEstVVM.ColumnByName('mes_'+IntToStr(i+1)).Visible = false) then
                  grdEstVVM.AddField('mes_'+IntToStr(i+1)+#9+'10'+#9+'6'+#186+#9+'T'+#9+'M'+#234+'s',i+4);
                grdEstVVM.Columns[i+4].DisplayLabel := FormatDateTime('mm/yyyy',IncMonth(DataInicial,i));
              end
         else
             begin
                if (grdEstVcm.ColumnByName('mes_'+IntToStr(i+1)).Visible = true) then
                   grdEstVcm.RemoveField('mes_'+IntToStr(i+1));

                if (grdEstVVM.ColumnByName('mes_'+IntToStr(i+1)).Visible = true) then
                   grdEstVVM.RemoveField('mes_'+IntToStr(i+1));

             end;
       end;


end;

procedure TCSU_FM_C_ITE_EST.carregaCores;
var
  Rede:TInifile;
  x: Integer;
begin
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00333333;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
      { btnIncluir.OptionsImage.Images     := imgBotoesAtivo;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivo;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivo;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivo;
       btnGrava.OptionsImage.Images       := imgBotoesAtivo;
       btnImprime.OptionsImage.Images     := imgBotoesAtivo;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivo;
       btnFiltro.OptionsImage.Images      := imgPequena;
       btnSair.Images                     := imgBotoesAtivo; }
     end
  else if xCorSistema = 'AZUL' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00844D08;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       {btnIncluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoAz;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoAz;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoAz;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoAz;
       btnImprime.OptionsImage.Images     := imgBotoesAtivoAz;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivoAz;
       btnFiltro.OptionsImage.Images      := imgPequenaAz;
       btnSair.Images                     := imgBotoesAtivoAz; }
     end
  else if xCorSistema = 'VERDE' then
     begin
       // Componentes
       xCorGrid                           := clWindow;
       xCorLabel                          := $00DADADA;
       xCorPanelTitulo                    := $00006305;
       xCorEdit                           := clWindow;
       xCorEditBloc                       := $00DADADA;
       xCorGridTitulo                     := $00DADADA;
       xCorListBox                        := $00DADADA;

       // Botões de Ação
       {btnIncluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnAlterar.OptionsImage.Images     := imgBotoesAtivoVe;
       btnExcluir.OptionsImage.Images     := imgBotoesAtivoVe;
       btnCancelar.OptionsImage.Images    := imgBotoesAtivoVe;
       btnGrava.OptionsImage.Images       := imgBotoesAtivoVe;
       btnImprime.OptionsImage.Images     := imgBotoesAtivoVe;
       btnAtualiza.OptionsImage.Images    := imgBotoesAtivoVe;
       btnFiltro.OptionsImage.Images      := imgPequenaVe;
       btnSair.Images                     := imgBotoesAtivoVe;}
     end;



  for x := 0 to ComponentCount-1 do
      begin
        if (components[x] is TLabel) and
           ((components[x] as TLabel).tag > 0) then
           (components[x] as TLabel).caption := '';

       { if Components[x] is TDBEdit then
           begin
             if (TDBEdit(Components[x]).Tag=1)   then
                TDBEdit(Components[x]).Color := xCorEditBloc;
           end;   }

        if Components[x] is TwwDBEdit then
           begin
             if (TwwDBEdit(Components[x]).Tag=1)   then
                TwwDBEdit(Components[x]).Color := xCorEditBloc;
           end;

        if Components[x] is TwwDBEdit then
           begin
             if (TwwDBEdit(Components[x]).ReadOnly=True) and (TwwDBEdit(Components[x]).Tag=1)   then
                TwwDBEdit(Components[x]).Color   := xCorEditBloc
             else if (TwwDBEdit(Components[x]).ReadOnly=True)   then
                TwwDBEdit(Components[x]).Color   := xCorEditBloc
             else
                TwwDBEdit(Components[x]).Color   := xCorEdit;
           end;

       { if Components[x] is TDBEdit then
           begin
             if (TDBEdit(Components[x]).ReadOnly=True) and (TDBEdit(Components[x]).Tag=1)   then
                TDBEdit(Components[x]).Color   := xCorEditBloc
             else if (TDBEdit(Components[x]).ReadOnly=True)   then
                TDBEdit(Components[x]).Color   := xCorEditBloc
             else
                TDBEdit(Components[x]).Color   :=  xCorEdit;
           end;

        if Components[x] is TJvDbMaskEdit then
           begin
             if (TJvDbMaskEdit(Components[x]).ReadOnly=True) and (TJvDbMaskEdit(Components[x]).Tag=1)   then
                TJvDbMaskEdit(Components[x]).Color   := xCorEditBloc
             else if (TJvDbMaskEdit(Components[x]).ReadOnly=True)   then
                TJvDbMaskEdit(Components[x]).Color   := xCorEditBloc
             else
                TJvDbMaskEdit(Components[x]).Color   :=  xCorEdit;
           end;

        if Components[x] is TDBComboBox then
           TDBComboBox(Components[x]).Color := $00F9E1DF;
        if Components[x] is TwwDBGrid then
           begin
             if TwwDBGrid(Components[x]).Tag<>1 then
                begin
                  TwwDBGrid(Components[x]).TitleFont.Color := clBlack;
                  TwwDBGrid(Components[x]).Color      := xCorGrid;
                  TwwDBGrid(Components[x]).TitleColor := xCorGridTitulo;
                end;
           end;

        if Components[x] is TwwDBRichEdit then
           begin
             if TwwDBRichEdit(Components[x]).Tag<>1 then
                begin
                  TwwDBRichEdit(Components[x]).Color := $00EAE0D9;
                end;
           end;  }

        if Components[x] is TListBox then
           begin
             if TListBox(Components[x]).Tag<>1 then
                begin
                  TListBox(Components[x]).Color := xCorListBox;
                end;
           end;

        if Components[x] is TJvPanel then
           begin
             if TJvPanel(Components[x]).Tag = 1 then
                begin
                  TJvPanel(Components[x]).Color := xCorPanelTitulo;
                end;
           end;

        {if Components[x] is TJvDBComboEdit then
           begin
             if TJvDBComboEdit(Components[x]).Tag = 1 then
                begin
                  TJvDBComboEdit(Components[x]).Color := xCorEdit;
                end;
           end;

        if Components[x] is TJvDBDateEdit then
           begin
             if TJvDBDateEdit(Components[x]).Tag = 1 then
                begin
                  TJvDBDateEdit(Components[x]).Color := xCorEditBloc;
                end;
           end;   }
      end;

end;

procedure TCSU_FM_C_ITE_EST.CSU_CD_C_ITE_EST_PFCBeforeOpen(DataSet: TDataSet);
begin
  CSU_CD_C_ITE_EST_PFCvalor.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_C_ITE_EST.CSU_CD_C_ITE_EST_SRHBeforeOpen(DataSet: TDataSet);
begin
  CSU_CD_C_ITE_EST_SRHvalor.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_C_ITE_EST.CSU_CD_C_ITE_EST_VCMBeforeOpen(DataSet: TDataSet);
begin
  CSU_CD_C_ITE_EST_VCMvalor.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_1.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_2.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_3.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_4.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_5.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_6.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_7.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_8.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_9.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_10.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_11.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_12.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VCMmes_13.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_C_ITE_EST.CSU_CD_C_ITE_EST_VVMBeforeOpen(DataSet: TDataSet);
begin
  CSU_CD_C_ITE_EST_VVMvalor.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_1.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_2.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_3.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_4.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_5.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_6.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_7.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_8.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_9.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_10.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_11.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_12.DisplayFormat := CMascaraValor;
  CSU_CD_C_ITE_EST_VVMmes_13.DisplayFormat := CMascaraValor;

end;

procedure TCSU_FM_C_ITE_EST.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   CSU_CD_C_ITE_EST_MPA.Close;
   CSU_CD_C_ITE_EST_VCM.Close;
   CSU_CD_C_ITE_EST_VVM.Close;
   CSU_CD_C_ITE_EST_SRH.Close;
   CSU_CD_C_ITE_EST_PFC.Close;
   CSU_CD_C_ITE_EST_MCV.Close;
end;

procedure TCSU_FM_C_ITE_EST.FormCreate(Sender: TObject);
var
  x: integer;
begin
  carregaCores;
        if Components[x] is TJvPanel then
           begin
             if TJvPanel(Components[x]).Tag = 1 then
                begin
                  TJvPanel(Components[x]).Color := xCorPanelTitulo;
                end;
           end;

end;

procedure TCSU_FM_C_ITE_EST.FormShow(Sender: TObject);
var
  ano,mes,dia: word;
  UltDiaMesIni: integer;
  MesIni_VCM, xMesIni_PGF: Integer;
  DataTemp: TDate;
begin

    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

    InicializarPeriodo;

     CSU_CD_C_ITE_EST_MPA.Close;
     CSU_CD_C_ITE_EST_MPA.Data :=
             CSU_CD_C_ITE_EST_MPA.DataRequest(
                  VarArrayOf([codItem]));

     CSU_CD_C_ITE_EST_VCM.Close;
     CSU_CD_C_ITE_EST_VCM.Data :=
             CSU_CD_C_ITE_EST_VCM.DataRequest(
                  VarArrayOf([codItem,txtDtaInicial.Text,txtDtaFinal.Text]));

     CSU_CD_C_ITE_EST_VVM.Close;
     CSU_CD_C_ITE_EST_VVM.Data :=
             CSU_CD_C_ITE_EST_VVM.DataRequest(
                  VarArrayOf([codItem,txtDtaInicial.Text,txtDtaFinal.Text]));

     CSU_CD_C_ITE_EST_SRH.Close;
     CSU_CD_C_ITE_EST_SRH.Data :=
             CSU_CD_C_ITE_EST_SRH.DataRequest(
                  VarArrayOf([codItem]));

     CSU_CD_C_ITE_EST_PFC.Close;
     CSU_CD_C_ITE_EST_PFC.Data :=
             CSU_CD_C_ITE_EST_PFC.DataRequest(
                  VarArrayOf([codItem]));

     CSU_CD_C_ITE_EST_MCV.Close;
     CSU_CD_C_ITE_EST_MCV.Data :=
             CSU_CD_C_ITE_EST_MCV.DataRequest(
                  VarArrayOf([codItem]));


    ConfigurarGridVenda;


end;

end.
