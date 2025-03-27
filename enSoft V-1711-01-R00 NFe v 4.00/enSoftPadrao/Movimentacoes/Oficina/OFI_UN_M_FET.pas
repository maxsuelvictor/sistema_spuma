{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit OFI_UN_M_FET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons, vcl.wwdblook, JvExStdCtrls, JvEdit, JvValidateEdit,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS,uProxy, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, enFunc;

type
  TOFI_FM_M_FET = class(TPAD_FM_X_PAD)
    gbIOR: TGroupBox;
    lblNOrdem: TLabel;
    lblCliente: TLabel;
    txtNOrdem: TwwDBEdit;
    txtCliente: TwwDBEdit;
    lblEmissao: TLabel;
    dpkEmissao: TJvDBDateEdit;
    lblOS: TLabel;
    txtOS: TwwDBEdit;
    txtVeiculo: TwwDBEdit;
    lblCredito: TLabel;
    lblCodPag: TLabel;
    lblTotalizacao: TLabel;
    lblTotPec: TLabel;
    lblTotServ: TLabel;
    lblTotTer: TLabel;
    lblTotGer: TLabel;
    lblBruto: TLabel;
    txtPecBruto: TwwDBEdit;
    lblVeiculo: TLabel;
    lblDesc: TLabel;
    txtPecDesc: TwwDBEdit;
    lblLiq: TLabel;
    txtPecLiq: TwwDBEdit;
    lblTitulos: TLabel;
    gbPG: TGroupBox;
    lblEnt: TLabel;
    lblGer: TLabel;
    gbTit: TGroupBox;
    lblVar: TLabel;
    lblFormPag: TLabel;
    lblParc: TLabel;
    lblFormPag2: TLabel;
    lblBruto2: TLabel;
    txtServBruto: TwwDBEdit;
    txtServDesc: TwwDBEdit;
    lblDesc2: TLabel;
    lblLiq2: TLabel;
    txtServLiq: TwwDBEdit;
    lblBruto3: TLabel;
    txtTerBruto: TwwDBEdit;
    txtTerDesc: TwwDBEdit;
    lblDesc3: TLabel;
    lblLiq3: TLabel;
    txtTerLiq: TwwDBEdit;
    lblTotal: TLabel;
    txtTotGer: TwwDBEdit;
    txtCredGer: TwwDBEdit;
    txtDespesas: TwwDBEdit;
    lblDesp: TLabel;
    lblCred: TLabel;
    dsoTit: TwwDataSource;
    cbbCondPag: TwwDBLookupCombo;
    txtFpgEntrada: TJvComboEdit;
    txtVlrEntrada: TJvValidateEdit;
    txtQtdeParc: TEdit;
    txtGerFpg: TJvComboEdit;
    btnReabertura: TButton;
    btmCancelamento: TButton;
    txtpecperdesc: TwwDBEdit;
    txtserperdesc: TwwDBEdit;
    txtterperdesc: TwwDBEdit;
    btnImprimirEspelho: TBitBtn;
    OFI_FR_M_FEV: TfrxReport;
    OFI_XL_M_FEV: TfrxXLSExport;
    OFI_PD_M_FEV: TfrxPDFExport;
    OFI_DB_M_FEV: TfrxDBDataset;
    OFI_DB_M_FEV_PRO: TfrxDBDataset;
    OFI_DB_M_FEV_SER: TfrxDBDataset;
    OFI_DB_M_FEV_TIT: TfrxDBDataset;
    txtCredDisp: TEdit;
    pcTitulos: TPageControl;
    tsPecSer: TTabSheet;
    dgTitPecSer: TwwDBGrid;
    dgTitPecSerIButton: TwwIButton;
    pnlTit: TPanel;
    lblFormPag3: TLabel;
    lblDias: TLabel;
    lblVenc: TLabel;
    lblVar2: TLabel;
    lblAgen: TLabel;
    lblConta: TLabel;
    lblCheq: TLabel;
    lblEmit: TLabel;
    lblBanco: TLabel;
    txtDiasPecSer: TwwDBEdit;
    dpkVencimentoPecSer: TJvDBDateEdit;
    txtValorPecSer: TwwDBEdit;
    txtBancoPecSer: TwwDBEdit;
    txtAgenciaPecSer: TwwDBEdit;
    txtContaPecSer: TwwDBEdit;
    txtChequePecSer: TwwDBEdit;
    txtEmitentePecSer: TwwDBEdit;
    cbbFormPagPecSer: TwwDBLookupCombo;
    BtnaddTitPecSer: TBitBtn;
    tsServicos: TTabSheet;
    dgTitSer: TwwDBGrid;
    dgTitSerIButton: TwwIButton;
    pnlTitSer: TPanel;
    lblFormaPagSer: TLabel;
    lblDiasSer: TLabel;
    lblVencimentoSer: TLabel;
    lblValorSer: TLabel;
    lblAgenciaSer: TLabel;
    lblContaSer: TLabel;
    lblChequeSer: TLabel;
    lblEmitenteSer: TLabel;
    lblBancoSer: TLabel;
    txtDiasSer: TwwDBEdit;
    dpkVencimentoSer: TJvDBDateEdit;
    txtValorSer: TwwDBEdit;
    txtBancoSer: TwwDBEdit;
    txtAgenciaSer: TwwDBEdit;
    txtContaSer: TwwDBEdit;
    txtChequeSer: TwwDBEdit;
    txtEmitenteSer: TwwDBEdit;
    cbbFormaPagSer: TwwDBLookupCombo;
    btnAddTitSer: TBitBtn;
    dsoTitSer: TwwDataSource;
    cbbTitPecaServico: TComboBox;
    lblTipoItem: TLabel;
    gbCredito: TGroupBox;
    lblCredPecas: TLabel;
    lblCredServico: TLabel;
    txtCredPecas: TwwDBEdit;
    txtCredServico: TwwDBEdit;
    Panel6: TPanel;
    Aberto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    txtVlrParcela: TJvValidateEdit;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    OFI_DB_M_FEV_TIT_SER: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbCondPagEnter(Sender: TObject);
    procedure cbbCondPagExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure BtnaddTitPecSerClick(Sender: TObject);
    procedure dgTitPecSerIButtonClick(Sender: TObject);
    procedure cbbFormPagPecSerEnter(Sender: TObject);
    procedure cbbFormPagPecSerExit(Sender: TObject);
    procedure txtEmitentePecSerExit(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure dgTitPecSerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtDiasPecSerExit(Sender: TObject);
    procedure dpkVencimentoPecSerExit(Sender: TObject);
    procedure txtValorPecSerExit(Sender: TObject);
    procedure txtFpgEntradaEnter(Sender: TObject);
    procedure txtCredGerExit(Sender: TObject);
    procedure txtBancoPecSerExit(Sender: TObject);
    procedure txtAgenciaPecSerExit(Sender: TObject);
    procedure txtContaPecSerExit(Sender: TObject);
    procedure txtChequePecSerExit(Sender: TObject);
    procedure dgTitPecSerRowChanged(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnReaberturaClick(Sender: TObject);
    procedure btmCancelamentoClick(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure pnlTitExit(Sender: TObject);
    procedure cbbFormaPagSerEnter(Sender: TObject);
    procedure cbbFormaPagSerExit(Sender: TObject);
    procedure txtDiasSerExit(Sender: TObject);
    procedure dpkVencimentoSerExit(Sender: TObject);
    procedure txtValorSerExit(Sender: TObject);
    procedure txtBancoSerExit(Sender: TObject);
    procedure txtAgenciaSerExit(Sender: TObject);
    procedure txtContaSerExit(Sender: TObject);
    procedure txtChequeSerExit(Sender: TObject);
    procedure txtEmitenteSerExit(Sender: TObject);
    procedure btnAddTitSerClick(Sender: TObject);
    procedure pnlTitSerExit(Sender: TObject);
    procedure dgTitSerIButtonClick(Sender: TObject);
    procedure dgTitSerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgTitSerRowChanged(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtCredPecasExit(Sender: TObject);
    procedure txtCredServicoExit(Sender: TObject);
    procedure txtVlrParcelaExit(Sender: TObject);
  private
    { Private declarations }
    procedure HabilDesabCamposCheque;
    // procedure HabilDesabCamposCheque1;
    // procedure HabilDesabCamposChequeServico1;
    procedure HabilDesabCamposChequeServico;
    procedure AbrirBusca;
    procedure ExibirFormasPgto;
    procedure HabDesabCampos;
    var
      xCondPag:string;
      xCred_disp, xCred_Util,xCred_Util_pec,xCred_Util_ser:currency;
      xId_titulo_pec,xId_titulo_ser:integer;
    public
    { Public declarations }
  end;
var
  OFI_FM_M_FET: TOFI_FM_M_FET;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FPG, OFI_RN_M_FEV, OFI_RN_M_ORV, enConstantes,
  OFI_UN_M_ORV_CAN, OFI_UN_M_FEV_OPC, OFI_UN_M_FEV;

procedure TOFI_FM_M_FET.acAdicionaExecute(Sender: TObject);
begin
  inherited;
{  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
  cbbCondPag.SetFocus;  }
end;

procedure TOFI_FM_M_FET.acAlterarExecute(Sender: TObject);
begin

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de parâmetros.');
      abort;
    end;

  dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString);
  if (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PJ').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PJ').AsString = '') then
    begin
       ShowMessage('Tipo de movimento de estoque selecionado na tela de parâmetros deve ter os CFOPs preenchidos.');
        abort;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger in [2,3,4]) then
     begin
       ShowMessage('Alteração não permitida.');
       exit;
     end;

  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  while (not dmgeral.OFI_CD_M_ORV_ITE.EOF) do
    begin
      if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
        begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') and
              (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean)) then
            begin
              if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = true) and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '')) then
                begin
                  ShowMessage('Existe item em que o campo "Mecânico" e "Terceiro" deve ser preenchido.');
                  exit;
                end
              else
                begin
                  ShowMessage('Existe item em que o campo "Mecânico" deve ser preenchido.');
                  exit;
                end;
            end
          else
            begin
              if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = true) and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '')) then
                begin
                  ShowMessage('Existe item em que o campo "Terceiro" deve ser preenchido.');
                  exit;
                end;
            end;
          end;
       dmGeral.OFI_CD_M_ORV_ITE.Next;
    end;



  xCred_disp := 0;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
    begin
     inherited;

     OFI_FM_M_FEV_OPC := TOFI_FM_M_FEV_OPC.Create(Self);
     OFI_FM_M_FEV_OPC.ShowModal;
     FreeAndNil(OFI_FM_M_FEV_OPC);

     HabDesabCampos;

     cbbCondPag.SetFocus;
     xCred_disp := dmGeral.BusSaldoCreCli(dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString);
     xCred_Util := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency;
     txtCredDisp.Text := FormatCurr('0.00',xCred_disp);

     if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) then
       begin
         if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').IsNull) then
            begin
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
            end;
         if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').IsNull) then
            begin
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
            end;
         xCred_Util_Ser := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;
         xCred_Util_pec := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency;
       end;
     btnImprimirEspelho.Enabled := false;
     btnReabertura.Enabled := false;
     btmCancelamento.Enabled := false;
    end;
end;

procedure TOFI_FM_M_FET.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
     begin
       inherited;
       dbGrid.SetFocus;
       txtCredDisp.Text := '';
       xcred_disp := 0;
       btnImprimirEspelho.Enabled := true;
       btnReabertura.Enabled := true;
       btmCancelamento.Enabled := true;

       HabDesabCampos;
     end
  else
     begin
      // cbbCondPag.SetFocus;
     end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

{procedure  TOFI_FM_M_FEV.HabilDesabCamposCheque;
begin
   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').Text);

   lblBanco.Visible := false;
   lblAgen.Visible := false;
   lblConta.Visible := false;
   lblCheq.Visible := false;
   lblEmit.Visible := false;

   txtBancoPecSer.Visible := false;
   txtAgenciaPecSer.Visible := false;
   txtContaPecSer.Visible := false;
   txtChequePecSer.Visible := false;
   txtEmitentePecSer.Visible := false;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)  then
     begin
       lblBanco.Visible := true;
       lblAgen.Visible := true;
       lblConta.Visible := true;
       lblCheq.Visible := true;
       lblEmit.Visible := true;

       txtBancoPecSer.Visible := true;
       txtAgenciaPecSer.Visible := true;
       txtContaPecSer.Visible := true;
       txtChequePecSer.Visible := true;
       txtEmitentePecSer.Visible := true;

       txtContaPecSer.Enabled := true;
        if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
          begin
           txtContaPecSer.Enabled := false;
          end;
     end;
end;  }


procedure TOFI_FM_M_FET.HabDesabCampos;
begin

  gbCredito.Visible         := true;
  lblTipoItem.Visible       := true;
  cbbTitPecaServico.Visible := true;
  tsServicos.TabVisible     := true;
  tsPecSer.Caption          := 'Peças';
  gbCredito.Top             := 84;
  gbCredito.Left            := 678;
  lblCred.Visible           := true;
  txtCredGer.Visible        := true;


  if dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').text <> '' then
     begin
       if dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = false then
          begin
            gbCredito.Visible         := false;
            lblTipoItem.Visible       := false;
            cbbTitPecaServico.Visible := false;
            tsServicos.TabVisible     := false;
            tsPecSer.Caption          := '';
          end;

       if dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = true then
          begin
            gbCredito.Top      := 191;
            gbCredito.Left     := 686;
            lblCred.Visible    := false;
            txtCredGer.Visible := false;
          end;
     end;
end;

procedure  TOFI_FM_M_FET.HabilDesabCamposCheque;
begin
   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').Text);


   txtBancoPecSer.Enabled := false;
   txtAgenciaPecSer.Enabled := false;
   txtContaPecSer.Enabled := false;
   txtChequePecSer.Enabled := false;
   txtEmitentePecSer.Enabled := false;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)  then
     begin
       txtBancoPecSer.Enabled := true;
       txtAgenciaPecSer.Enabled := true;
       txtContaPecSer.Enabled := true;
       txtChequePecSer.Enabled := true;
       txtEmitentePecSer.Enabled := true;

       txtContaPecSer.Enabled := true;
        if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
          begin
           txtContaPecSer.Enabled := false;
          end;
     end;
end;


procedure  TOFI_FM_M_FET.HabilDesabCamposChequeServico;
begin
   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').Text);

   txtBancoSer.Enabled := false;
   txtAgenciaSer.Enabled := false;
   txtContaSer.Enabled := false;
   txtChequeSer.Enabled := false;
   txtEmitenteSer.Enabled := false;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)  then
     begin
       txtBancoSer.Enabled := true;
       txtAgenciaSer.Enabled := true;
       txtContaSer.Enabled := true;
       txtChequeSer.Enabled := true;
       txtEmitenteSer.Enabled := true;

       txtContaSer.Enabled := true;
        if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
          begin
           txtContaSer.Enabled := false;
          end;
     end;
end;

{procedure  TOFI_FM_M_FEV.HabilDesabCamposChequeServico;
begin
   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').Text);

   lblBancoSer.Visible := false;
   lblAgenciaSer.Visible := false;
   lblContaSer.Visible := false;
   lblChequeSer.Visible := false;
   lblEmitenteSer.Visible := false;

   txtBancoSer.Visible := false;
   txtAgenciaSer.Visible := false;
   txtContaSer.Visible := false;
   txtChequeSer.Visible := false;
   txtEmitenteSer.Visible := false;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)  then
     begin
       lblBancoSer.Visible := true;
       lblAgenciaSer.Visible := true;
       lblContaSer.Visible := true;
       lblChequeSer.Visible := true;
       lblEmitenteSer.Visible := true;

       txtBancoSer.Visible := true;
       txtAgenciaSer.Visible := true;
       txtContaSer.Visible := true;
       txtChequeSer.Visible := true;
       txtEmitenteSer.Visible := true;

       txtContaSer.Enabled := true;
        if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = False) then
          begin
           txtContaSer.Enabled := false;
          end;
     end;
end;}


procedure TOFI_FM_M_FET.pnlTitExit(Sender: TObject);
begin
  inherited;
   if (btnAddTitPecSer.Focused) or (dgTitPecSer.Focused) or
     (not dgTitPecSerIButton.Enabled) then
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

        dmGeral.OFI_CD_M_ORV_TIT.Cancel;
        if not dmGeral.OFI_CD_M_ORV_TIT.IsEmpty then
           dmGeral.OFI_CD_M_ORV_TIT.edit;
        finally
           pnlTit.Enabled := false;
        end;
      end;
end;

procedure TOFI_FM_M_FET.pnlTitSerExit(Sender: TObject);
begin
  inherited;
  if (btnAddTitSer.Focused) or (dgTitSer.Focused) or
     (not dgTitSerIButton.Enabled) then
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

        dmGeral.OFI_CD_M_ORV_TIT_SER.Cancel;
        if not dmGeral.OFI_CD_M_ORV_TIT_SER.IsEmpty then
           dmGeral.OFI_CD_M_ORV_TIT_SER.edit;
        finally
           pnlTitSer.Enabled := false;
        end;
      end;
end;

procedure TOFI_FM_M_FET.acExcluirExecute(Sender: TObject);
begin
  inherited;
//   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
end;

procedure TOFI_FM_M_FET.acGravarExecute(Sender: TObject);
var
  codigo: string;
  cred_disp_atual:currency;
begin
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de parâmetros.');
      abort;
    end;

  dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString);
  if (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PJ').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PJ').AsString = '') then
    begin
       ShowMessage('Tipo de movimento de estoque selecionado na tela de parâmetros deve ter os CFOPs preenchidos.');
        abort;
    end;



  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
         OfiVerificaCamposTitulos;

         if (OfiVerificarVlrTituloFev = False) then
           begin
            // ShowMessage('A soma dos valores dos títulos com o crédito utilizado não é igual ao valor total da ordem de serviço');
             btnAddTitPecSer.SetFocus;
             exit;
           end;

         cred_disp_atual := dmGeral.BusSaldoCreCli(dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString);
         if ((xCred_disp > cred_disp_atual) and (cred_disp_atual < (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency - xCred_util))) then
           begin
             ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
             xcred_disp       := cred_disp_atual;
             txtCredDisp.Text :=  FormatCurr('0.00',xCred_disp);
             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency := xCred_util;
             if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = False) then
                begin
                  OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency);
                  txtCredGer.SetFocus;
                end;

             if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) then
                 begin
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := xCred_util_pec;
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency := xCred_util_ser;
                   OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency);
                   OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT_SER,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency);
                   txtCredPecas.SetFocus;
                 end;
             exit;
           end;

         {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
            begin
             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency :=
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency +
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;
            end; }

         dmGeral.OFI_CD_M_ORV.FieldByName('DTA_FECHAMENTO').AsDateTime := xDataSis;
         dmGeral.OFI_CD_M_ORV.FieldByName('HOR_FECHAMENTO').AsDateTime := Time();
         dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 2;
         codigo := dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsString;
         DmGeral.Grava(dmGeral.OFI_CD_M_ORV);
         inherited;
         dmGeral.OFI_CD_M_ORV.Close;
         dmGeral.OFI_CD_M_ORV.Data :=
                dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, codigo,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'3','2']));
         AbrirBusca;
         txtCredDisp.Text := '';
         xcred_disp := 0;
         btnImprimirEspelho.Enabled := true;
         btnReabertura.Enabled      := true;
         btmCancelamento.Enabled    := true;

         HabDesabCampos;
     end
  else
     begin
       btnAddTitPecSer.SetFocus;
     end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_FET.AbrirBusca;
begin
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(1,'%');
end;

procedure TOFI_FM_M_FET.btmCancelamentoClick(Sender: TObject);
begin
  inherited;
   if (dmGeral.OFI_CD_M_ORV.RecordCount > 0) then
     begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger in [0,1,2]) then
         begin
           if MessageDlg('Deseja realmente cancelar ordem de serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             begin
              OFI_FM_M_ORV_CAN := TOFI_FM_M_ORV_CAN.Create(Self);
              OFI_FM_M_ORV_CAN.xFormCall := 'OFI_FM_M_FET';
              OFI_FM_M_ORV_CAN.Show;

              {dmgeral.OFI_CD_M_ORV.edit;
              dmgeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 4;
              dmgeral.OFI_CD_M_ORV.Post;
              dmGeral.OFI_CD_M_ORV.ApplyUpdates(0);
              ShowMessage('Cancelado!');  }
             end;
         end
       else
         begin
            ShowMessage('Ordem de serviço não pode ser cancelado.');
         end;
     end;
end;

procedure TOFI_FM_M_FET.BtnaddTitPecSerClick(Sender: TObject);
begin
  inherited;
  pnlTit.Enabled  := True;
  dmGeral.OFI_CD_M_ORV_TIT.Insert;
  cbbFormPagPecSer.SetFocus;
end;

procedure TOFI_FM_M_FET.btnAddTitSerClick(Sender: TObject);
begin
  inherited;
  pnlTitSer.Enabled  := True;
  dmGeral.OFI_CD_M_ORV_TIT_SER.Insert;
  cbbFormaPagSer.SetFocus;
end;

procedure TOFI_FM_M_FET.btnFiltroClick(Sender: TObject);
begin
  inherited;
    Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.OFI_CD_M_ORV.Close;
    dmGeral.OFI_CD_M_ORV.Data :=
    dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'3','2']));
  finally
     Screen.Cursor := crDefault;
  end;

  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_FET.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  TitPeca: TfrxmemoView;
begin
  inherited;
  if not dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
        codigo := dmGeral.OFI_CD_M_ORVid_ordem.text;

        dmGeral.OFI_CD_R_ORV.Close;
        dmGeral.OFI_CD_R_ORV.Data :=
        dmGeral.OFI_CD_R_ORV.DataRequest(VarArrayOf([codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FR_M_FEV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCliente(0,dmGeral.OFI_CD_R_ORV.FieldByName('ID_CLIENTE').AsString);

        OFI_FR_M_FEV.Variables['ft_profissao'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('PROFISSAO').AsString);
        OFI_FR_M_FEV.Variables['ft_email']     :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString);

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_FET.Name,xCodLme,xRevLme,nil);
        OFI_FR_M_FEV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FR_M_FEV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FR_M_FEV.Variables['Opcoes'] :=  QuotedStr('');

        TitPeca := TfrxMemoView (OFI_FR_M_FEV.FindComponent('frxTitPec'));
        TitPeca.Text := 'Títulos';
        if not dmGeral.OFI_CD_R_ORV_TIT_SER.IsEmpty then
           begin
             TitPeca.Text := 'Títulos(peça)';
           end;

        OFI_FR_M_FEV.PrepareReport();
        OFI_FR_M_FEV.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TOFI_FM_M_FET.btnReaberturaClick(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORV.RecordCount > 0) then
     begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 2) then
         begin
            dmgeral.OFI_CD_M_ORV.edit;
            dmgeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 1;
            dmgeral.OFI_CD_M_ORV.Post;
            dmGeral.OFI_CD_M_ORV.ApplyUpdates(0);
            ShowMessage('Reaberto!');
         end
       else
         begin
            ShowMessage('Ordem de serviço não pode ser reaberto.');
         end;
     end;
  btnIncluir.Enabled := false;
end;

procedure TOFI_FM_M_FET.cbbCondPagEnter(Sender: TObject);
begin
  inherited;
  xCondPag := dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString;
  dmGeral.BusCondPgto(1,'%');
  cbbCondPag.DropDown;
end;

procedure TOFI_FM_M_FET.cbbCondPagExit(Sender: TObject);
var
 id_categoria:Integer;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição de Pagamento" deve ser preenchido.');
       cbbCondPag.SetFocus;
       Exit;
     end;

  dmGeral.BusCondPgto(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de Pagamento não encontrado.');
       cbbCondPag.SetFocus;
       Exit;
     end;

  if (xCondPag <> dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString) then
     begin
       dmGeral.OFI_CD_M_ORV_ITE.Cancel;
       if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
         begin
           if MessageDlg('Se deseja realmente refazer o preço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := nil;
                dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := nil;
                dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;

                dmgeral.BusVeiculo(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString);
                id_categoria:= 0;
                if dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
                  id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;
                dmGeral.OFI_CD_M_ORV_ITE.First;
                while(not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
                  begin
                    if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
                      begin
                       dmGeral.OFI_CD_M_ORV_ITE.Edit;
                       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
                       {dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                                 dmGeral.OFI_CD_M_ORV_ITE,false,false);}

                       dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                          dmGeral.OFI_CD_M_ORV_ITE,false,false,0,0,id_categoria);
                       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                       dmGeral.OFI_CD_M_ORV_ITE.FieldByname('PER_DESCONTO').AsCurrency := 0;
                       OFI_RN_M_ORV.OfiOrvCalcTotalItem;
                       dmGeral.OFI_CD_M_ORV_ITE.Post;
                      end;
                   dmGeral.OFI_CD_M_ORV_ITE.Next;
                  end;

                dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := dmGeral.OFI_CD_M_ORV_ITEqtdeChange;
                dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_ORV_ITEvlr_unitarioChange;
                dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;

                dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
                dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
                dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
                dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
                dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
                dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;

                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;

                dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
                dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
                dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
                dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
                dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
                dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;

                OfiCalculaVlrTotaisOrv;
                xCondPag := dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString;
              end
           else
              begin
                //dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString := xCondPag;
               dmGeral.BusCondPgto(1,'%');
              end;
           xCondPag := dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString;
         end;
     end;
end;

procedure TOFI_FM_M_FET.cbbFormaPagSerEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(1,'%');
      end;
  cbbFormaPagSer.DropDown;


 { dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagSer.DropDown;}
end;

procedure TOFI_FM_M_FET.cbbFormaPagSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if btnAddTitSer.Focused then
     exit;

  if dgTitSer.Focused then
     exit;

  if not dgTitSerIButton.Enabled then
     exit;

  if dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').Text = '' then
     begin
       ShowMessage('O campo "Forma de Pagamento" deve ser preenchido.');
       cbbFormaPagSer.SetFocus;
       Exit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de Pagamento não encontrado.');
       cbbFormaPagSer.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
     begin
       ShowMessage('Forma de Pagamento não pode ser tipo crédito.');
       cbbFormaPagSer.SetFocus;
       exit;
     end;

     dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

   if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString <> '6') then
     begin
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_BANCO').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_AGENCIA').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_CONTA').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').AsInteger := 0;
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_EMITENTE').AsString := '';
     end;

   if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '6')  then
      begin
        if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_CONTA').IsNull) or
           (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_CONTA').AsString = '') then
          begin
            dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_CONTA').AsInteger := 0;
          end;
        if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').IsNull) or
           (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').AsString = '') then
          begin
            dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').AsInteger := 0;
          end;
      end;
   HabilDesabCamposChequeServico;
end;

procedure TOFI_FM_M_FET.cbbFormPagPecSerEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(1,'%');
      end;
  cbbFormPagPecSer.DropDown;


  {dmGeral.BusFormaPgtos(1,'%');
  cbbFormPagPecSer.DropDown;}
end;

procedure TOFI_FM_M_FET.cbbFormPagPecSerExit(Sender: TObject);
begin
  inherited;


  if dmGeral.OFI_CD_M_ORV_TIT.FieldByName('id_forma_pag').Text = '' then
     begin
        if btnCancelar.Focused or
           btnGrava.Focused then
           begin
             Exit;
           end;

        if btnAddTitPecSer.Focused then
            exit;

        if dgTitPecSer.Focused then
            exit;

        if not dgTitPecSerIButton.Enabled then
            exit;

         if (txtDiasPecSer.Focused) or (dpkVencimentoPecSer.Focused) or
             (txtValorPecSer.Focused) or (txtBancoPecSer.Focused) or
             (txtAgenciaPecSer.Focused) or (txtContaPecSer.Focused) or
             (txtChequePecSer.Focused) or (txtEmitentePecSer.Focused) then
             begin
                ShowMessage('O campo "Forma de Pagamento" deve ser prenchido.');
                cbbFormPagPecSer.SetFocus;
                Exit;
             end
         else
             begin
               pnlTit.Enabled := false;
               exit;
             end;
     end
  else
     begin
       if dmGeral.OFI_CD_M_ORV_TIT.state in [dsBrowse] then
          dmGeral.OFI_CD_M_ORV_TIT.edit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de Pagamento não encontrado.');
       cbbFormPagPecSer.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
     begin
       ShowMessage('Forma de Pagamento não pode ser tipo crédito.');
       cbbFormPagPecSer.SetFocus;
       exit;
     end;

     dmGeral.OFI_CD_M_ORV_TIT.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

   if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString <> '6') then
     begin
       dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsString := '';
       dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger := 0;
     end;

   if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '6')  then
      begin
        if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').IsNull) or
           (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsString = '') then
          begin
            dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsInteger := 0;
          end;
        if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').IsNull) or
           (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsString = '') then
          begin
            dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger := 0;
          end;
      end;

   HabilDesabCamposCheque;
end;

procedure TOFI_FM_M_FET.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex in [0,4] then
    begin
     txtPesquisa.NumbersOnly := true;
     end
  else
    begin
     txtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_M_FET.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 0) then
     begin
       AFont.Color := clBlue;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 2) then
     begin
       AFont.Color := clOlive;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 3) then
     begin
       AFont.Color := clGreen;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 4) then
     begin
       AFont.Color := clRed;
     end;

end;

procedure TOFI_FM_M_FET.dgTitPecSerIButtonClick(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
  try
     dgTitPecSerIButton.Enabled := false;
     if dmGeral.OFI_CD_M_ORV_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString);
     if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
        begin
          if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) then
             begin
               total_cred := (xCred_Disp + xcred_util) - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency :=
                        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;
             end;
          if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = False) then
             begin
               total_cred := xCred_Disp + xcred_util;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency := 0;
             end;
         txtCredDisp.Text := FormatCurr('0.00',total_cred);
        end;
     dmGeral.OFI_CD_M_ORV_TIT.Delete;
     dmGeral.OFI_CD_M_ORV_TIT.Edit;
  finally
    dgTitPecSerIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_FET.dgTitPecSerMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTit.Enabled = false then
     pnlTit.Enabled := true;

  dmGeral.OFI_CD_M_ORV_TIT.cancel;

  if dmGeral.OFI_CD_M_ORV_TIT.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_TIT.Append;
       pnlTit.Enabled := true;
       cbbFormPagPecSer.SetFocus;
     end
  else
    begin
      dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString);
      pnlTit.Enabled := false;
      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString <> '7') then
        begin
         dmGeral.OFI_CD_M_ORV_TIT.Edit;
         pnlTit.Enabled := true;
         txtDiasPecSer.SetFocus;
        end;
    end;
end;

procedure TOFI_FM_M_FET.dgTitPecSerRowChanged(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORV_TIT.RecordCount > 0) then
     begin
       HabilDesabCamposCheque;
     end;

  ExibirFormasPgto;
end;

procedure TOFI_FM_M_FET.dgTitSerIButtonClick(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
   try
     dgTitSerIButton.Enabled := false;
     if dmGeral.OFI_CD_M_ORV_TIT_SER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').AsString);
     if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
        begin
          if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) then
             begin
               total_cred := (xCred_Disp + xcred_util) - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency :=
                        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency;
               txtCredDisp.Text := FormatCurr('0.00',total_cred);
             end;

        end;
     dmGeral.OFI_CD_M_ORV_TIT_SER.Delete;
     dmGeral.OFI_CD_M_ORV_TIT_SER.Edit;
  finally
    dgTitSerIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_FET.dgTitSerMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTitSer.Enabled = false then
     pnlTitSer.Enabled := true;

  dmGeral.OFI_CD_M_ORV_TIT_SER.cancel;

  if dmGeral.OFI_CD_M_ORV_TIT_SER.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_TIT_SER.Append;
       pnlTitSer.Enabled := true;
       cbbFormaPagSer.SetFocus;
     end
  else
    begin
      dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').AsString);
      pnlTitSer.Enabled := false;
      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString <> '7') then
        begin
         dmGeral.OFI_CD_M_ORV_TIT_SER.Edit;
         pnlTitSer.Enabled := true;
         txtDiasSer.SetFocus;
        end;
    end;
end;

procedure TOFI_FM_M_FET.dgTitSerRowChanged(Sender: TObject);
begin
  inherited;
   if (dmGeral.OFI_CD_M_ORV_TIT_SER.RecordCount > 0) then
     begin
       HabilDesabCamposChequeServico;
     end;

   ExibirFormasPgto;
end;

procedure TOFI_FM_M_FET.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(1,'%');
      end;
end;

procedure TOFI_FM_M_FET.dpkVencimentoPecSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if BtnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dgTitPecSer.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       dpkVencimentoPecSer.SetFocus;
       abort;
     end;

  if (abs(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
     begin
        dpkVencimentoPecSer.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data de emissão.');
        abort;
     end;

   if dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').Value :=
          dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsVariant;
     end;
end;

procedure TOFI_FM_M_FET.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  FreeAndNil(OFI_FM_M_FET);
end;

procedure TOFI_FM_M_FET.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  dmGeral.OFI_CD_M_ORV.Data := dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, '','','3','2']));
  dmGeral.OFI_CD_M_ORV.Open;

  AbrirBusca;
  xCondPag := '';
  xcred_disp := 0;
  txtPesquisa.SetFocus;

  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;



  // Comentado por Maxsuel em 06/10/2016, pois este campo NFE_SEPARA_PROD_SERV, passou a existir
  // na própria ordem de serviço, para que o usuário tenha o poder de decisão.

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False) then
     begin
       gbCredito.Visible := false;
       lblTipoItem.Visible := false;
       cbbTitPecaServico.Visible := false;
       tsServicos.TabVisible := false;
       tsPecSer.Caption := '';
     end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
    begin
      gbCredito.Top := 191;
      gbCredito.Left := 686;
      lblCred.Visible := false;
      txtCredGer.Visible := false;
    end; }

end;

procedure TOFI_FM_M_FET.txtAgenciaPecSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

    if btnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused or txtValorPecSer.Focused or txtBancoPecSer.Focused then
     begin
       exit;
     end;

   if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString = '') then
      begin
        ShowMessage('O campo "Agência" deve ser preenchido.');
        txtAgenciaPecSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtAgenciaSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

    if btnaddTitSer.Focused or cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dpkVencimentoSer.Focused or
     dgTitSer.Focused or txtValorSer.Focused or txtBancoSer.Focused then
     begin
       exit;
     end;

   if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_AGENCIA').AsString = '') then
      begin
        ShowMessage('O campo "Agência" deve ser preenchido.');
        txtAgenciaSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtBancoPecSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if btnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused or txtValorPecSer.Focused then
     begin
       exit;
     end;

   if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString = '') then
      begin
        ShowMessage('O campo "Banco" deve ser preenchido.');
        txtBancoPecSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtBancoSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if btnaddTitSer.Focused or cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dpkVencimentoSer.Focused or
     dgTitSer.Focused or txtValorSer.Focused then
     begin
       exit;
     end;

   if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_BANCO').AsString = '') then
      begin
        ShowMessage('O campo "Banco" deve ser preenchido.');
        txtBancoSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtChequePecSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused or txtValorPecSer.Focused or txtBancoPecSer.Focused or
     txtAgenciaPecSer.Focused or txtContaPecSer.Focused then
     begin
       exit;
     end;


   if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsString = '') then
      begin
        ShowMessage('O campo "Nº Cheque" deve ser preenchido.');
        txtChequePecSer.SetFocus;
        exit;
      end;

   {OFI_RN_M_FEV.OfiVerificarDadosChequeFev;
   HabilDesabCamposCheque;
   pnlTit.Enabled := true;
   txtEmitente.SetFocus;}
end;

procedure TOFI_FM_M_FET.txtChequeSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnaddTitSer.Focused or cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dpkVencimentoSer.Focused or
     dgTitSer.Focused or txtValorSer.Focused or txtBancoSer.Focused or
     txtAgenciaSer.Focused or txtContaSer.Focused then
     begin
       exit;
     end;


   if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').AsString = '') then
      begin
        ShowMessage('O campo "Nº Cheque" deve ser preenchido.');
        txtChequeSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtContaPecSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused or txtValorPecSer.Focused or txtBancoPecSer.Focused or txtAgenciaPecSer.Focused then
     begin
       exit;
     end;

    if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsString = '') then
      begin
        ShowMessage('O campo "Conta" deve ser preenchido.');
        txtContaPecSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtContaSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnaddTitSer.Focused or cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dpkVencimentoSer.Focused or
     dgTitSer.Focused or txtValorSer.Focused or txtBancoSer.Focused or txtAgenciaSer.Focused then
     begin
       exit;
     end;

    if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_CONTA').AsString = '') then
      begin
        ShowMessage('O campo "Conta" deve ser preenchido.');
        txtContaSer.SetFocus;
        exit;
      end;
end;

procedure TOFI_FM_M_FET.txtCredGerExit(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  total_cred :=  xCred_Disp + xcred_util;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').IsNull) or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency < 0) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency := 0;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency > total_cred) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       txtCredGer.SetFocus;
       exit;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency >
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency) then
     begin
       ShowMessage('O valor de crédito não pode ser maior que o valor total da ordem de serviço.');
       txtCredGer.SetFocus;
       exit;
     end;

   OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency);
   txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency);
end;

procedure TOFI_FM_M_FET.txtCredPecasExit(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;
  total_cred :=  xCred_Disp + xcred_util;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').IsNull) or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency < 0) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency >
      (total_cred - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       txtCredPecas.SetFocus;
       exit;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency >
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency +
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utilizado para peças não pode ser maior que a soma do valor líquido dos mesmos e das despesas.');
       txtCredPecas.SetFocus;
       exit;
     end;

  OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency);

  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency :=
                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency +
                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;

  txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency);
end;

procedure TOFI_FM_M_FET.txtCredServicoExit(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  total_cred :=  xCred_Disp + xCred_util;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').IsNull) or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency < 0) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency >
      (total_cred - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       txtCredServico.SetFocus;
       exit;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency >
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utlizado para serviços não pode ser maior que o valor líquido dos mesmos.');
       txtCredServico.SetFocus;
       exit;
     end;

  OfiInserirTitNotaCreditoFev(dmGeral.OFI_CD_M_ORV_TIT_SER,dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency);
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency :=
                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency +
                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency;

  txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency);
end;

procedure TOFI_FM_M_FET.txtDiasPecSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if BtnaddTitPecSer.Focused or cbbFormPagPecSer.Focused or dgTitPecSer.Focused then
     begin
       abort;
     end;

  if dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').IsNull or
     (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsCurrency := 0;
    end;

  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsInteger;
end;

procedure TOFI_FM_M_FET.txtDiasSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if BtnaddTitSer.Focused or cbbFormaPagSer.Focused or dgTitSer.Focused then
     begin
       abort;
     end;

  if dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').IsNull or
     (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').AsCurrency := 0;
    end;

  dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').AsInteger;
end;

procedure TOFI_FM_M_FET.txtEmitentePecSerExit(Sender: TObject);
 var
  id_titulo: string;
  cheValido:Boolean;
begin
  inherited;
  { if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;  }

    if cbbFormPagPecSer.Focused or txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused or txtValorPecSer.Focused or txtBancoPecSer.Focused or
     txtAgenciaPecSer.Focused or txtContaPecSer.Focused or txtChequePecSer.Focused then
     begin
       exit;
     end;

    if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_EMITENTE').AsString = '') then
      begin
        ShowMessage('O campo "Emitente" deve ser preenchido.');
        txtEmitentePecSer.SetFocus;
        exit;
      end;

   OFI_RN_M_FEV.OfiVerificarDadosChequeFev(dmGeral.OFI_CD_M_ORV_TIT,dmGeral.OFI_CD_M_ORV_TIT_SER,cheValido);

   if (cheValido = False) then
     begin
       HabilDesabCamposCheque;
       pnlTit.Enabled := true;
       txtBancoPecSer.SetFocus;
       ShowMessage('Dados do cheque inválido.');
       exit;
     end;

   id_titulo := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_TITULO').AsString;
   dmGeral.OFI_CD_M_ORV_TIT.Post;
   pnlTit.Enabled := false;
   btnaddTitPecSer.SetFocus;
   dmGeral.OFI_CD_M_ORV_TIT.locate('ID_TITULO',id_titulo,[]);
end;

procedure TOFI_FM_M_FET.txtEmitenteSerExit(Sender: TObject);
 var
  id_titulo: string;
  cheValido:Boolean;
begin
  inherited;
   if cbbFormaPagSer.Focused or txtDiasSer.Focused or dpkVencimentoSer.Focused or
     {dgTitSer.Focused or} txtValorSer.Focused or txtBancoSer.Focused or
     txtAgenciaSer.Focused or txtContaSer.Focused or txtChequeSer.Focused then
     begin
       exit;
     end;

    if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_EMITENTE').AsString = '') then
      begin
        ShowMessage('O campo "Emitente" deve ser preenchido.');
        txtEmitenteSer.SetFocus;
        exit;
      end;


   OFI_RN_M_FEV.OfiVerificarDadosChequeFev(dmGeral.OFI_CD_M_ORV_TIT_SER,dmGeral.OFI_CD_M_ORV_TIT,cheValido);

   if (cheValido = False) then
     begin
       HabilDesabCamposChequeServico;
       pnlTitSer.Enabled := true;
       txtBancoSer.SetFocus;
       ShowMessage('Dados do cheque inválido.');
       exit;
     end;

   id_titulo := dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_TITULO').AsString;
   dmGeral.OFI_CD_M_ORV_TIT_SER.Post;
   pnlTitSer.Enabled := false;
   btnaddTitSer.SetFocus;
   dmGeral.OFI_CD_M_ORV_TIT_SER.locate('ID_TITULO',id_titulo,[]);
end;

procedure TOFI_FM_M_FET.txtFpgEntradaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  // Busca as formas de pagamento a vista
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, 0]));
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Open; // Precisa do Open

   PSQ_FM_X_FPG.xOrigemPsqFpg := '1';

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtFpgEntrada.SetFocus;
       txtFpgEntrada.Text :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TOFI_FM_M_FET.txtFpgEntradaEnter(Sender: TObject);
begin
  inherited;
  {if  (dmgeral.OFI_CD_M_ORVvlr_despesas.text > dmgeral.OFI_CD_M_ORVvlr_credito.Text)or
      (dmgeral.OFI_CD_M_ORVvlr_despesas.text = dmgeral.OFI_CD_M_ORVvlr_credito.Text) then
      begin
         dmgeral.OFI_CD_M_ORVvlr_total.AsFloat:= dmgeral.OFI_CD_M_ORVvlr_despesas.AsFloat - dmgeral.OFI_CD_M_ORVvlr_credito.AsFloat;
      end
  else
      begin
        dmgeral.OFI_CD_M_ORVvlr_total.AsFloat:= 0;
        dmgeral.OFI_CD_M_ORVvlr_credito.AsFloat:= dmgeral.OFI_CD_M_ORVvlr_credito.AsFloat - dmgeral.OFI_CD_M_ORVvlr_despesas.AsFloat;
      end;  }

end;

procedure TOFI_FM_M_FET.txtFpgEntradaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtFpgEntrada.text) <> '') and
     (txtFpgEntrada.Text <> '0') then
     begin
        dmGeral.BusFormaPgtos(0,txtFpgEntrada.Text);
        if (not dmGeral.BUS_CD_C_FPG.IsEmpty) then
           begin
            if (dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> 0) then
              begin
               ShowMessage('Forma de Pagamento deve ser do tipo a vista.');
               txtFpgEntrada.SetFocus;
               exit;
              end;
           end
        else
          begin
            ShowMessage('Forma de Pagamento não encontrado.');
            txtFpgEntrada.SetFocus;
            exit;
          end;
     end
  else
     begin
      // txtVlrEntrada.Text := '';
     end;
end;

procedure TOFI_FM_M_FET.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
           dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
     begin
         // Busca as formas de pagamento a vista
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                  VarArrayOf([2, 0]));


         PSQ_FM_X_FPG.xOrigemPsqFpg := '1';
     end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
         // Busca as formas de pagamento a prazo
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
              PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                   VarArrayOf([2, 1]));

         PSQ_FM_X_FPG.xOrigemPsqFpg := '2';
     end;

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;



 { PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free; }
end;

procedure TOFI_FM_M_FET.txtGerFpgExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if ((trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0')) then
     begin
        dmGeral.BusFormaPgtos(0,txtGerFpg.Text);
        if (not dmGeral.BUS_CD_C_FPG.IsEmpty) then
           begin
             dmGeral.BUS_CD_C_CPG.Close;
             dmGeral.BUS_CD_C_CPG.Data :=
             dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString]));

            if (dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger) then
              begin
               if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 0) then
                  begin
                   ShowMessage('Forma de Pagamento deve ser do tipo a vista.');
                   txtFpgEntrada.SetFocus;
                    exit;
                  end;
               if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1) then
                  begin
                   ShowMessage('Forma de Pagamento deve ser do tipo a prazo.');
                   txtFpgEntrada.SetFocus;
                   exit;
                  end;
              end;
           end
        else
          begin
            ShowMessage('Forma de Pagamento não encontrado.');
            txtFpgEntrada.SetFocus;
            exit;
          end;
     end
  else
     begin
      // txtQtdeParc.Text := '0';
     end;
end;

procedure TOFI_FM_M_FET.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_FET.txtQtdeParcExit(Sender: TObject);
var
  valor:Currency;
begin
  inherited;


  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser preenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;

  {
  valor := 0;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False) then
     begin
       valor := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
     begin
       if (cbbTitPecaServico.ItemIndex = 0) then
         begin
           valor := (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency);
         end;
       if (cbbTitPecaServico.ItemIndex = 1) then
         begin
           valor := (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency);
         end;
     end;



  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False)  or
      ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) and
       (cbbTitPecaServico.ItemIndex = 0))) then
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False) then
          begin
            if (valor = 0) then
              begin
                ShowMessage('Valor Total não informado.');
                 txtGerFpg.text   := '';
                 txtQtdeParc.text := '0';
                exit;
              end;


          end;

       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
          begin
            if (valor = 0) then
              begin
                ShowMessage('A soma do valor do produto líquido e das despesas é zero.');
                txtGerFpg.text   := '';
                txtQtdeParc.text := '0';
                exit;
              end;


          end;

       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := nil;
       dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), valor, dmGeral.OFI_CD_M_ORV_TIT,4);
       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := dmGeral.OFI_CD_M_ORV_TITBeforePost;

       txtGerFpg.text   := '';
       txtQtdeParc.text := '0';
       pcTitulos.TabIndex := 0;
       BtnaddTitPecSer.SetFocus;
     end;

  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) and
     (cbbTitPecaServico.ItemIndex = 1)) then
     begin
       if (valor = 0) then
          begin
           ShowMessage('Valor total líquido dos serviços é zero.');
           txtGerFpg.text   := '';
           txtQtdeParc.text := '0';
           exit;
          end;



       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := nil;
       dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), valor, dmGeral.OFI_CD_M_ORV_TIT_SER,4);
       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := dmGeral.OFI_CD_M_ORV_TIT_SERBeforePost;
       txtGerFpg.text   := '';
       txtQtdeParc.text := '0';
       pcTitulos.TabIndex := 1;
       BtnaddTitSer.SetFocus;
     end;
       }

end;

procedure TOFI_FM_M_FET.txtValorPecSerExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbFormPagPecSer.Focused or
     txtDiasPecSer.Focused or dpkVencimentoPecSer.Focused or
     dgTitPecSer.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtValorPecSer.SetFocus;
       abort;
     end;

  if txtBancoPecSer.CanFocus then
    begin
      txtBancoPecSer.SetFocus;
    end
  else
    begin
     id_titulo := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_TITULO').AsString;
      dmGeral.OFI_CD_M_ORV_TIT.Post;
      pnlTit.Enabled := false;
      btnaddTitPecSer.SetFocus;
      dmGeral.OFI_CD_M_ORV_TIT.locate('ID_TITULO',id_titulo,[]);
    end;


end;

procedure TOFI_FM_M_FET.txtValorSerExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dpkVencimentoSer.Focused {or
     dgTitSer.Focused} then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtValorSer.SetFocus;
       abort;
     end;

  if txtBancoSer.CanFocus then
    begin
      txtBancoSer.SetFocus;
    end
  else
    begin
     id_titulo := dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_TITULO').AsString;
      dmGeral.OFI_CD_M_ORV_TIT_SER.Post;
      pnlTitSer.Enabled := false;
      btnaddTitSer.SetFocus;
      dmGeral.OFI_CD_M_ORV_TIT_SER.locate('ID_TITULO',id_titulo,[]);
    end;
end;

procedure TOFI_FM_M_FET.dpkVencimentoSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if BtnaddTitSer.Focused or cbbFormaPagSer.Focused or
     txtDiasSer.Focused or dgTitSer.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       dpkVencimentoSer.SetFocus;
       abort;
     end;

   if dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').Value :=
          dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsVariant;
     end;
end;

procedure TOFI_FM_M_FET.txtVlrEntradaExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtFpgEntrada.text) = '') or
     (txtFpgEntrada.Text = '0')) and
     ((trim(txtVlrEntrada.text) <> '') and
      (txtVlrEntrada.Value <> 0)) then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser preenchido.');
       abort;
     end;



  if (trim(txtVlrEntrada.text) = '') or
     (txtVlrEntrada.value = 0) then
     begin
       txtFpgEntrada.Text := '';
       exit;
     end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency = 0 then
     begin
       ShowMessage('Valor Total não informado.');
       txtFpgEntrada.text := '';
       txtVlrEntrada.Text := '0';
       exit;
     end;

  if ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) and
     (cbbTitPecaServico.ItemIndex = 0)) then
      begin
         if ((dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
              dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency) = 0) then
           begin
              ShowMessage('O valor da soma do valor líquido dos produtos e das despesas é zero.');
              txtFpgEntrada.text := '';
              txtVlrEntrada.Text := '0';
              exit;
           end;
      end;

  if ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) and
     (cbbTitPecaServico.ItemIndex = 1)) then
      begin
        if ((dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency) = 0) then
          begin
            ShowMessage('Valor líquido dos serviços é zero.');
            txtFpgEntrada.text := '';
            txtVlrEntrada.Text := '0';
            exit;
          end;
      end;

  {if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency =
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency) then
     begin
       ShowMessage('Vlr. Crédito utilizado é igual ao valor total da ordem de serviço.');
       exit;
     end;}


  if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;

  {if txtVlrEntrada.value > valor then
     begin
       ShowMessage('O campo "Valor" não pode ser maior que a diferença entre o valor total e o valor de crédito.');
       txtVlrEntrada.SetFocus;
       abort;
     end; }
  if  ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = False) or
      ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) and (cbbTitPecaServico.ItemIndex = 0))) then
      begin
       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := nil;
       dmGeral.GerarFPG_Entrada(5,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.OFI_CD_M_ORV_TIT);
       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := dmGeral.OFI_CD_M_ORV_TITBeforePost;
       pcTitulos.TabIndex := 0;
      end;

  if  (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = True) and (cbbTitPecaServico.ItemIndex = 1) then
      begin
       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := nil;
       dmGeral.GerarFPG_Entrada(5,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.OFI_CD_M_ORV_TIT_SER);
       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := dmGeral.OFI_CD_M_ORV_TIT_SERBeforePost;
       pcTitulos.TabIndex := 1;
      end;

  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
  txtGerFpg.SetFocus;
end;

procedure TOFI_FM_M_FET.txtVlrParcelaExit(Sender: TObject);
var
  valor:Currency;
begin
  inherited;


  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser preenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;


  if (trim(txtVlrParcela.text) = '') or
     (txtVlrParcela.value = 0) then
     begin
       txtGerFpg.Text := '';
       exit;
     end;



  {valor := 0;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False) then
     begin
       valor := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
     begin
       if (cbbTitPecaServico.ItemIndex = 0) then
         begin
           valor := (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency);
         end;
       if (cbbTitPecaServico.ItemIndex = 1) then
         begin
           valor := (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency);
         end;
     end; }

   valor := txtVlrParcela.value;


  if ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = False)  or
      ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) and
       (cbbTitPecaServico.ItemIndex = 0))) then
     begin
       {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = False) then
          begin
            if (valor = 0) then
              begin
                ShowMessage('Valor Total não informado.');
                 txtGerFpg.text   := '';
                 txtQtdeParc.text := '0';
                exit;
              end;
          end;

       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True) then
          begin
            if (valor = 0) then
              begin
                ShowMessage('A soma do valor do produto líquido e das despesas é zero.');
                txtGerFpg.text   := '';
                txtQtdeParc.text := '0';
                exit;
              end;
          end; }

       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := nil;
       dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), valor, dmGeral.OFI_CD_M_ORV_TIT,4);
       dmGeral.OFI_CD_M_ORV_TIT.BeforePost := dmGeral.OFI_CD_M_ORV_TITBeforePost;

       txtGerFpg.text   := '';
       txtQtdeParc.text := '0';
       txtVlrParcela.Text := '0';
       pcTitulos.TabIndex := 0;
       BtnaddTitPecSer.SetFocus;
     end;

  if ((dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean  = True) and
     (cbbTitPecaServico.ItemIndex = 1)) then
     begin
      { if (valor = 0) then
          begin
           ShowMessage('Valor total líquido dos serviços é zero.');
           txtGerFpg.text   := '';
           txtQtdeParc.text := '0';
           exit;
          end;   }

       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := nil;
       dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), valor, dmGeral.OFI_CD_M_ORV_TIT_SER,4);
       dmGeral.OFI_CD_M_ORV_TIT_SER.BeforePost := dmGeral.OFI_CD_M_ORV_TIT_SERBeforePost;
       txtGerFpg.text   := '';
       txtQtdeParc.text := '0';
       txtVlrParcela.Text := '0';
       pcTitulos.TabIndex := 1;
       BtnaddTitSer.SetFocus;
     end;
end;

end.
