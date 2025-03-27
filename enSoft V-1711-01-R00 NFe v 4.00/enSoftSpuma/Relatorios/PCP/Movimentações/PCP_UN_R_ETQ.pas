unit PCP_UN_R_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Datasnap.DBClient, JvToolEdit,
  JvDBControls, vcl.Wwdbedit, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ComCtrls, Vcl.Mask, JvExMask, vcl.wwdblook, ppParameter,
  ppDesignLayer, ppBands, ppClass, ppCtrls, ppBarCod, myChkBox, ppStrtch,
  ppRegion, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, Vcl.ImgList, JvExExtCtrls, JvExtComponent, JvPanel, dxGDIPlusClasses;

type
  TPCP_FM_R_ETQ = class(TPAD_FM_X_REL)
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItensID_ITEM: TIntegerField;
    cdsItensID_BUSCA_ITEM: TStringField;
    cdsItensINT_ID_UND_VENDA: TStringField;
    cdsItensDESCRICAO: TStringField;
    cdsItensSequencia: TStringField;
    cdsItensDTA_FABRICACAO: TDateField;
    cdsItensCODIGO_BARRA: TStringField;
    cdsItensID_COR: TIntegerField;
    cdsItensID_TAMANHO: TIntegerField;
    cdsItensINT_NOMECOR: TStringField;
    cdsItensINT_NOMETAM: TStringField;
    cdsItensMEDIDA: TStringField;
    cdsItensDAD_ESPUMA_1: TStringField;
    cdsItensDAD_ESPUMA_2: TStringField;
    cdsItensDAD_ESPUMA_3: TStringField;
    PCP_DS_M_ETQ: TDataSource;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetassequencia: TIntegerField;
    cdsEtiquetasclassificacao: TStringField;
    cdsEtiquetasmedidas: TStringField;
    cdsEtiquetasdata_fabricacao: TDateField;
    cdsEtiquetasetiq_espuma1: TStringField;
    cdsEtiquetasetiq_espuma2: TStringField;
    cdsEtiquetasetiq_espuma3: TStringField;
    cdsEtiquetasmadeira: TStringField;
    cdsEtiquetasetiq_revestimento1: TStringField;
    cdsEtiquetasetiq_revestimento2: TStringField;
    cdsEtiquetasetiq_revestimento3: TStringField;
    cdsEtiquetasetiq_recomendacoes_1: TStringField;
    cdsEtiquetasetiq_recomendacoes_2: TStringField;
    cdsEtiquetasetiq_modelo: TStringField;
    PCP_RP_M_ETQ1_S_MSG: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList2: TppParameterList;
    PCP_RP_M_ETQ2: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLine4: TppLine;
    ppDBText19: TppDBText;
    ppimgEtq2: TppImage;
    ppDBText13: TppDBText;
    ppLabel2: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel14: TppLabel;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppDBText15: TppDBText;
    ppImage4: TppImage;
    ppDBText14: TppDBText;
    ppLabel12: TppLabel;
    ppLabel17: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    PCP_RP_M_ETQ3: TppReport;
    ppDetailBand3: TppDetailBand;
    ppShape1: TppShape;
    pprg_Dados1_IET_3: TppRegion;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppShape5: TppShape;
    ppLine2: TppLine;
    pprg_Dados2_IET_3: TppRegion;
    ppDBText21: TppDBText;
    ppLabel19: TppLabel;
    ppDBText22: TppDBText;
    ppLabel22: TppLabel;
    ppLabel16: TppLabel;
    pplb_AvisoRemocao1_ETQ_3: TppLabel;
    ppImage3: TppImage;
    ppLabel20: TppLabel;
    pprg_Revestimento_IET_3: TppRegion;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel25: TppLabel;
    ppdb_Recomendacao1_IET_3: TppDBText;
    ppdb_Recomendacao2_IET_3: TppDBText;
    ppimgEtq3: TppImage;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    cdsItensSOBRE_MEDIDA: TBooleanField;
    PCP_DBP_M_ETQ: TppDBPipeline;
    BUS_DS_M_FTE_ETQ: TDataSource;
    BUS_DBP_M_FTE_ETQ: TppDBPipeline;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    pplb_codigo_rev2: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    pplb_AvisoRemocao2_ETQ_3: TppLabel;
    pplb_codigo_rev3: TppLabel;
    cdsEtiquetasCODIGO_BARRA: TStringField;
    pplb_AvisoRemocao2: TppLabel;
    pcDados: TPageControl;
    TabSheet1: TTabSheet;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    lblItem: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    txtItemDescricao: TDBText;
    Label13: TLabel;
    txtUnidade: TDBText;
    Label4: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    deDataFab: TJvDBDateEdit;
    txtQtde: TEdit;
    btn_Add_Itens: TBitBtn;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    pnlDadosSobMed: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtSobMedida: TwwDBEdit;
    txtSobLinha1: TwwDBEdit;
    txtSobLinha2: TwwDBEdit;
    txtSobLinha3: TwwDBEdit;
    rgTipoImpressao: TRadioGroup;
    Label2: TLabel;
    txtIdOpr: TJvComboEdit;
    cdsItensID_FTE_ETQ: TIntegerField;
    Label1: TLabel;
    txtItemOri: TJvDBComboEdit;
    cdsItensID_ITEM_ORIG: TStringField;
    cdsItensDESC_ITEM_ORIG: TStringField;
    txtItemDescOrig: TDBText;
    cdsEtiquetasnome_selo: TStringField;
    PCP_RP_M_ETQ4: TppReport;
    ppDetailBand4: TppDetailBand;
    ppShape8: TppShape;
    pprg_Dados1_IET_4: TppRegion;
    ppLabel4: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel18: TppLabel;
    ppDBText32: TppDBText;
    ppShape9: TppShape;
    ppLine3: TppLine;
    pprg_Dados2_IET_4: TppRegion;
    ppDBText33: TppDBText;
    ppLabel24: TppLabel;
    ppDBText38: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    pplb_AvisoRemocao1_ETQ_4: TppLabel;
    ppImage44: TppImage;
    ppLabel29: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    pplb_AvisoRemocao2_ETQ_4: TppLabel;
    pprg_Revestimento_IET_4: TppRegion;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel31: TppLabel;
    ppdb_Recomendacao1_IET_4: TppDBText;
    ppdb_Recomendacao2_IET_4: TppDBText;
    ppimgEtq4: TppImage;
    pplb_codigo_rev4: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    PCP_RP_M_ETQ5: TppReport;
    ppParameterList5: TppParameterList;
    ppDetailBand5: TppDetailBand;
    ppShape7: TppShape;
    ppLine5: TppLine;
    ppimgEtq5: TppImage;
    ppDBText48: TppDBText;
    ppLabel23: TppLabel;
    ppDBText49: TppDBText;
    ppLabel28: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppImage2: TppImage;
    ppDBText51: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    pplb_codigo_rev5: TppLabel;
    pplb_AvisoRemocao5: TppLabel;
    ppDBText55: TppDBText;
    ppDBText46: TppDBText;
    ppLabel39: TppLabel;
    ppDBText47: TppDBText;
    ppDBText50: TppDBText;
    ppDBText52: TppDBText;
    ppShape10: TppShape;
    ppimgInmetroEtq5: TppImage;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppReport1: TppReport;
    ppRegion1: TppRegion;
    ppShape4: TppShape;
    pprg_Dados1: TppRegion;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    pprg_Dados2: TppRegion;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    pplb_SAC: TppDBText;
    pplb_Contatos: TppDBText;
    pplb_AvisoRemocao: TppLabel;
    ppLabel3: TppLabel;
    pprg_Revestimento: TppRegion;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppimgEtq1: TppImage;
    pplb_codigo_rev1: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    cdsEtiquetasmsg_etq1: TStringField;
    cdsEtiquetasmsg_etq2: TStringField;
    cdsEtiquetasmsg_etq3: TStringField;
    cdsEtiquetasmsg_etq4: TStringField;
    cdsEtiquetasmsg_etq5: TStringField;
    ppDBText53: TppDBText;
    ppLabel5: TppLabel;
    ppDBText54: TppDBText;
    cdsEtiquetasdesc_uso: TStringField;
    cdsEtiquetasmsg_etq6: TStringField;
    PCP_RP_M_ETQ1_C_MSG: TppReport;
    ppDetailBand6: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape11: TppShape;
    ppLine6: TppLine;
    ppDBBarCode1: TppDBBarCode;
    pplb_codigo_rev1_c_msg: TppLabel;
    ppimgEtq1_c_msg: TppImage;
    pprg_Dados1_c_msg: TppRegion;
    ppLabel38: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppShape13: TppShape;
    pprg_Dados2_c_msg: TppRegion;
    ppDBText60: TppDBText;
    ppLabel40: TppLabel;
    ppDBText61: TppDBText;
    ppLabel41: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    pplb_AvisoRemocao_c_msg: TppLabel;
    ppLabel43: TppLabel;
    ppDBText65: TppDBText;
    ppLabel44: TppLabel;
    ppDBText66: TppDBText;
    pprg_Revestimento_c_msg: TppRegion;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLabel45: TppLabel;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList7: TppParameterList;
    cdsEtiquetasmsg_etq7: TStringField;
    ppDBText76: TppDBText;
    ppLabel9: TppLabel;
    ppDBText77: TppDBText;
    ppLabel10: TppLabel;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLabel37: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel30: TppLabel;
    ppDBText83: TppDBText;
    ppDBText85: TppDBText;
    ppDBText84: TppDBText;
    ppShape12: TppShape;
    ppShape14: TppShape;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLabel32: TppLabel;
    ppLabel42: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppDBText16: TppDBText;
    ppDBText56: TppDBText;
    ppDBText70: TppDBText;
    ppShape6: TppShape;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure txtEtiquetasButtonClick(Sender: TObject);
    procedure deDataFabExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure txtSobLinha3Exit(Sender: TObject);
    procedure txtItemOriButtonClick(Sender: TObject);
    procedure txtItemOriExit(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure ChamarDadosSobMed;
    procedure LimparCampos;
    procedure GerarEtiquetasDoItem;
    function  TestarCampos:Boolean;
    procedure PreencheCondicao;
    procedure ExibirRelatorio(const TipoRelatorio: integer);
    function GerarCodigoBarra(const id_prod,id_item,sequencia: string): String;
    var
       xbusca_item: String;
       xCodFteEtq, xModEtq : String;
       xImprimeSelo,xImprimeMsqEtq: Boolean;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_ETQ: TPCP_FM_R_ETQ;

implementation

{$R *.dfm}

uses PSQ_UN_X_ITE, uDmGeral, PSQ_UN_X_ETQ, uDmSgq;

procedure TPCP_FM_R_ETQ.Atualizar_xBusca;
begin
   if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
     if xbusca_item = 'ID_ITEM' then
        begin
          lblItem.Caption := '<F7> Cód. fábrica';
          xbusca_item := 'COD_FABRICA';
        end
     else if xbusca_item = 'COD_FABRICA' then
        begin
          lblItem.Caption := '<F7> Cód. barra';
          xbusca_item := 'COD_BARRA';
        end
     else if xbusca_item = 'COD_BARRA' then
        begin
          lblItem.Caption := '<F7> Cód. item';
          xbusca_item := 'ID_ITEM';
        end;

end;

procedure TPCP_FM_R_ETQ.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
       cdsItens.Cancel;

       ExibirRelatorio(1);

       cdsItens.Edit;
     end;

end;

procedure TPCP_FM_R_ETQ.btnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPCP_FM_R_ETQ.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  cdsItens.Insert;

  txtQtde.Text := '0';
  txtBuscaItem.SetFocus;
end;

procedure TPCP_FM_R_ETQ.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_R_ETQ.cbbCorExit(Sender: TObject);
begin
  inherited;
  cdsItens.FieldByName('INT_NOMECOR').text := '';

  if trim(cdsItens.FieldByName('ID_COR').Text) <> '' then
     begin
        dmGeral.BusCor(0,cdsItens.FieldByName('ID_COR').Text);
        if dmGeral.BUS_CD_C_COR.IsEmpty then
           begin
             Showmessage('Cor não encontrada.');
             cdsItens.FieldByName('ID_COR').Text := '';
             cbbCor.SetFocus;
             exit;
           end;
        cdsItens.FieldByName('INT_NOMECOR').text :=
                dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;

  ChamarDadosSobMed;

  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_R_ETQ.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_R_ETQ.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  cdsItens.FieldByName('INT_NOMETAM').text := '';

  if trim(cdsItens.FieldByName('ID_TAMANHO').Text) <> '' then
     begin
        dmGeral.BusCor(0,cdsItens.FieldByName('ID_TAMANHO').Text);
        if dmGeral.BUS_CD_C_TAM.IsEmpty then
           begin
             Showmessage('Tamanho não encontrado.');
             cdsItens.FieldByName('ID_TAMANHO').Text := '';
             cbbTamanho.SetFocus;
             exit;
           end;
        cdsItens.FieldByName('INT_NOMETAM').text :=
                dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     ChamarDadosSobMed;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_R_ETQ.ChamaCorTamanho;
begin
  dmGeral.BusItens(0,cdsItens.FieldByName('ID_ITEM').Text);

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        ChamarDadosSobMed;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 136;
            pnlCorTamanho.Top := 5;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 136;
                  pnlCorTamanho.Top   := 5;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 136;
                  pnlCorTamanho.Top := 5;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_R_ETQ.ChamarDadosSobMed;
begin
  pnlDadosSobMed.Visible := false;
  if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
      begin
        pnlDadosSobMed.Left  := 136;
        pnlDadosSobMed.Top   := 5;
        pnlDadosSobMed.Width := 579;

        pnlDadosSobMed.Visible := true;
        txtItemOri.SetFocus;
      end
  else
    txtQtde.SetFocus;
end;

procedure TPCP_FM_R_ETQ.deDataFabExit(Sender: TObject);
begin
  inherited;
  if btnImprimir.Focused or
     btnSair.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or  txtQtde.Focused or
     grdItens.Focused then
     begin
       exit;
     end;

  if trim(cdsItens.FieldByName('DTA_FABRICACAO').text) = '' then
     begin
       ShowMessage('O campo "Data de fabricação" deve ser preenchido.');
       deDataFab.SetFocus;
       exit;
     end;
  GerarEtiquetasDoItem;
  //cdsItens.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
end;

procedure TPCP_FM_R_ETQ.ExibirRelatorio(const TipoRelatorio: integer);
var
  lCodFteEtq, lNomeLayoutEtq: String;
begin

  if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
     begin
       //lCodFteEtq := cdsItens.FieldByName('ID_FTE_ETQ').AsString;
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, cdsItens.FieldByName('ID_ITEM_ORIG').Text]));
       lCodFteEtq := dmGeral.BUS_CD_C_ITEint_fteetq.Text;
       xImprimeSelo := dmGeral.BUS_CD_C_ITEint_impselo.AsBoolean;
     end
  else
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, cdsItens.FieldByName('ID_ITEM').Text]));
       lCodFteEtq := dmGeral.BUS_CD_C_ITEint_fteetq.Text;
       xImprimeSelo := dmGeral.BUS_CD_C_ITEint_impselo.AsBoolean;
     end;

  lNomeLayoutEtq := '';

  dmSgq.BUS_CD_M_FTE_ETQ.Close;
  dmSgq.BUS_CD_M_FTE_ETQ.Data :=
        dmSgq.BUS_CD_M_FTE_ETQ.DataRequest(VarArrayOf([0, lCodFteEtq]));

  dmGeral.BUS_PR_X_FTE_MOD_ETQ;
  if dmGeral.BUS_CD_X_FTE_MOD_ETQ.Locate('CODIGO', dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('MODELO_ETQ').Text,[]) then
     begin
       lNomeLayoutEtq :=  dmGeral.BUS_CD_X_FTE_MOD_ETQDESCRICAO.Text;
     end;
  dmGeral.BUS_CD_X_FTE_MOD_ETQ.close;


  if lNomeLayoutEtq <> '' then
     begin
       cdsEtiquetas.EmptyDataSet;
       cdsItens.First;
       while not cdsItens.Eof do
          begin
             if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
                dmGeral.BusItens(0, cdsItens.FieldByName('ID_ITEM_ORIG').Text)
             else
                dmGeral.BusItens(0, cdsItens.FieldByName('ID_ITEM').Text);

            dmgeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').Text);

            cdsEtiquetas.Insert;

            if trim(dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text) <> '' then
               begin
                 if not (FileExists(ExtractFilePath(Application.ExeName)+'emp'+
                                    dmGeral.CAD_CD_C_PARid_empresa.text+'\'+dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text)) then
                    begin
                      ShowMessage('O selo do inmetro do item: ' + dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').Text + ', não foi encontrado.');
                      cdsEtiquetas.cancel;
                      dmGeral.BUS_CD_C_ITE.close;
                      dmGeral.BUS_CD_C_GRU.Close;
                      abort;
                    end;
               end;

            cdsEtiquetas.FieldByName('nome_selo').AsString            := dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text;

            dmSgq.BusClassEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_CLASSIFICACAO_PRO').Text);
            dmSgq.BusUsoEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('etiq_id_cue').Text);

            cdsEtiquetas.FieldByName('classificacao').AsString        :=
                   dmSgq.BUS_CD_C_CLE.FieldByName('DESCRICAO').Text;
            dmSgq.BUS_CD_C_CLE.close;

            cdsEtiquetas.FieldByName('desc_uso').AsString        :=
                   dmSgq.BUS_CD_C_CUE.FieldByName('DESCRICAO').Text;
            dmSgq.BUS_CD_C_CUE.close;

            cdsEtiquetas.FieldByName('etiq_modelo').AsString          :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MODELO').Text;
            if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
               begin
                 cdsEtiquetas.FieldByName('medidas').AsString              :=
                    cdsItensMEDIDA.Text;
                 cdsEtiquetas.FieldByName('etiq_espuma1').AsString         :=
                    cdsItensDAD_ESPUMA_1.Text;
                 cdsEtiquetas.FieldByName('etiq_espuma2').AsString         :=
                    cdsItensDAD_ESPUMA_2.Text;
                 cdsEtiquetas.FieldByName('etiq_espuma3').AsString         :=
                    cdsItensDAD_ESPUMA_3.Text;
               end
            else
               begin
                 cdsEtiquetas.FieldByName('medidas').AsString              :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MEDIDAS').Text;
                 cdsEtiquetas.FieldByName('etiq_espuma1').AsString         :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA1').Text;
                 cdsEtiquetas.FieldByName('etiq_espuma2').AsString         :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA2').Text;
                 cdsEtiquetas.FieldByName('etiq_espuma3').AsString         :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA3').Text;
               end;

            cdsEtiquetas.FieldByName('madeira').AsString              :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MADEIRA').Text;
            cdsEtiquetas.FieldByName('etiq_revestimento1').AsString   :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO1').Text;
            cdsEtiquetas.FieldByName('etiq_revestimento2').AsString   :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO2').Text;
            cdsEtiquetas.FieldByName('etiq_revestimento3').AsString   :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO3').Text;
            cdsEtiquetas.FieldByName('etiq_recomendacoes_1').AsString :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_1').Text;
            cdsEtiquetas.FieldByName('etiq_recomendacoes_2').AsString :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_2').Text;

            cdsEtiquetas.FieldByName('codigo_barra').AsString :=
                   cdsItensCODIGO_BARRA.Text;
            cdsEtiquetas.FieldByName('data_fabricacao').AsString :=
                   cdsItensDTA_FABRICACAO.Text;


            if dmGeral.BUS_CD_C_ITE.FieldByName('int_impmsgetq').AsBoolean then
               begin
                  cdsEtiquetas.FieldByName('msg_etq1').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq1').Text;
                  cdsEtiquetas.FieldByName('msg_etq2').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq2').Text;
                  cdsEtiquetas.FieldByName('msg_etq3').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq3').Text;
                  cdsEtiquetas.FieldByName('msg_etq4').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq4').Text;
                  cdsEtiquetas.FieldByName('msg_etq5').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq5').Text;
                  cdsEtiquetas.FieldByName('msg_etq6').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq6').Text;
                  cdsEtiquetas.FieldByName('msg_etq7').AsString :=
                      dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq7').Text;
               end;

            cdsEtiquetas.Post;

            cdsItens.Next;
          end;
       cdsItens.First;
       dmGeral.BUS_CD_C_GRU.Close;

     if lNomeLayoutEtq = 'Etiquetas - Colchão padrão' then
        begin
           if (not cdsEtiquetas.IsEmpty) then
                begin
                  if not xImprimeMsqEtq then   // Se imprime sem a mensagem
                     begin
                        ppimgEtq1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');

                        case TipoRelatorio of
                           1:
                             begin
                               PCP_RP_M_ETQ1_S_MSG.DeviceType := 'Screen';
                             end;
                           2:
                             begin
                               PCP_RP_M_ETQ1_S_MSG.DeviceType := 'Printer';
                             end;
                        end;
                        PCP_RP_M_ETQ1_S_MSG.PrintReport;
                     end
                  else
                     begin
                        // se imprime com a mensagem

                        ppimgEtq1_c_msg.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');

                        case TipoRelatorio of
                           1:
                             begin
                               PCP_RP_M_ETQ1_C_MSG.DeviceType := 'Screen';
                             end;
                           2:
                             begin
                               PCP_RP_M_ETQ1_C_MSG.DeviceType := 'Printer';
                             end;
                        end;
                        PCP_RP_M_ETQ1_C_MSG.PrintReport;
                     end;
                end
             else
                begin
                  ShowMessage('Nenhum registro encontrado!');
                  btnImprimir.SetFocus;
                  exit;
                end;
        end;
     if lNomeLayoutEtq = 'Etiquetas - Colchão baby' then
        begin
           if (not cdsEtiquetas.IsEmpty) then
                begin
                  ppimgEtq2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');
                  case TipoRelatorio of
                     1:
                       begin
                         PCP_RP_M_ETQ2.DeviceType := 'Screen';
                       end;
                     2:
                       begin
                         PCP_RP_M_ETQ2.DeviceType := 'Printer';
                       end;
                  end;
                  PCP_RP_M_ETQ2.PrintReport;
                end
             else
                begin
                  ShowMessage('Nenhum registro encontrado!');
                  btnImprimir.SetFocus;
                  exit;
                end;
        end;

     if lNomeLayoutEtq = 'Etiquetas - Colchão bordado' then
        begin
           if (not cdsEtiquetas.IsEmpty) then
                begin
                  //if xImprimeSelo then
                  if xImprimeMsqEtq then
                     begin
                        ppimgEtq3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');

                        {if trim(cdsEtiquetas.FieldByName('nome_selo').text) = '' then
                           begin
                             ShowMessage('Não foi encontrado o nome do selo no grupo do item.');
                             abort;
                           end;

                        if not FileExists(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text) then
                           begin
                             ShowMessage('O selo do Inmetro não foi encontrado no caminho especificado: ' + #13 +
                                          ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text);
                             abort;
                           end;   }
                        case TipoRelatorio of
                           1:
                             begin
                               PCP_RP_M_ETQ3.DeviceType := 'Screen';
                             end;
                           2:
                             begin
                               PCP_RP_M_ETQ3.DeviceType := 'Printer';
                             end;
                        end;
                        PCP_RP_M_ETQ3.PrintReport;
                     end
                  else
                     begin
                        ppimgEtq4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');
                        case TipoRelatorio of
                           1:
                             begin
                               PCP_RP_M_ETQ4.DeviceType := 'Screen';
                             end;
                           2:
                             begin
                               PCP_RP_M_ETQ4.DeviceType := 'Printer';
                             end;
                        end;

                        PCP_RP_M_ETQ4.PrintReport;
                     end;
                end
             else
                begin
                  ShowMessage('Nenhum registro encontrado!');
                  btnImprimir.SetFocus;
                  exit;
                end;
        end;

     if lNomeLayoutEtq = 'Etiquetas - Colchão colchonete' then
        begin
           if (not cdsEtiquetas.IsEmpty) then
                begin
                  if not xImprimeSelo then
                     begin
                       ShowMessage('Para etiqueta "Colchonete" o grupo do item deve estar configurado para imprimir o selo do inmetro.');
                       exit;
                     end;



                  ppimgEtq5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\LogoEmpresaEtq.jpg');

                  if trim(cdsEtiquetas.FieldByName('nome_selo').text) = '' then
                     begin
                       ShowMessage('Não foi encontrado o nome do selo no grupo do item.');
                       abort;
                     end;

                  if not FileExists(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text) then
                     begin
                       ShowMessage('O selo do Inmetro não foi encontrado no caminho especificado: ' + #13 +
                                    ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text);
                       abort;
                     end;
                  case TipoRelatorio of
                     1:
                       begin
                         PCP_RP_M_ETQ5.DeviceType := 'Screen';
                       end;
                     2:
                       begin
                         PCP_RP_M_ETQ5.DeviceType := 'Printer';
                       end;
                  end;
                  PCP_RP_M_ETQ5.PrintReport;

                end
             else
                begin
                  ShowMessage('Nenhum registro encontrado!');
                  btnImprimir.SetFocus;
                  exit;
                end;
        end;

     end;
end;

procedure TPCP_FM_R_ETQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_ETQ);
end;

procedure TPCP_FM_R_ETQ.FormShow(Sender: TObject);
begin
  inherited;

  // CRIANDO TABELA FILIAL EM MEMÓRIA
  cdsItens.Close;
  cdsItens.CreateDataSet;
  cdsItens.Insert;

  cdsEtiquetas.Close;
  cdsEtiquetas.CreateDataSet;

  pnItens.Enabled := False;
  LimparCampos;

  Atualizar_xBusca;
  txtIdOpr.SetFocus;
end;

function TPCP_FM_R_ETQ.GerarCodigoBarra(const id_prod,id_item,sequencia: String): String;
var
  CodProd, CodItem, CodSeq: String;
  tam: integer;
  i: integer;
begin
  tam := length(id_prod);
  CodProd := id_prod;
  while not (tam = 7) do
    begin
      CodProd := '0' + CodProd;
      inc(tam);
    end;

  tam := length(id_item);
  CodItem := id_item;
  while not (tam = 7) do
    begin
      CodItem := '0' + CodItem;
      inc(tam);
    end;

  tam := length(sequencia);
  CodSeq := sequencia;
  while not (tam = 3) do
    begin
      CodSeq := '0' + CodSeq;
      inc(tam);
    end;
  result := CodProd + CodItem + CodSeq;
end;

procedure TPCP_FM_R_ETQ.GerarEtiquetasDoItem;
var
  Item, ItemOrig, IdBuscaItem, Und, Descricao, DescItemOrig, IdCor,
  DescCor, IdTam, DescTam, DtaFab,
  Medida, Esp1,Esp2,Esp3, IdFteEtq: String;
  Qtde,Seq: integer;
  SobMed: Boolean;
  i: Integer;
begin

  Seq := 0;

  Item        := cdsItensID_ITEM.AsString;
  IdBuscaItem := cdsItensID_BUSCA_ITEM.AsString;
  Und         := cdsItensINT_ID_UND_VENDA.AsString;
  Descricao   := cdsItensDESCRICAO.AsString;
  DtaFab      := cdsItensDTA_FABRICACAO.AsString;
  IdCor       := cdsItensID_COR.AsString;
  DescCor     := cdsItensINT_NOMECOR.AsString;
  IdTam       := cdsItensID_TAMANHO.AsString;
  DescTam     := cdsItensINT_NOMETAM.AsString;

  Qtde        := StrToInt(txtQtde.Text);

  Medida      := cdsItensMEDIDA.AsString;
  Esp1        := cdsItensDAD_ESPUMA_1.AsString;
  Esp2        := cdsItensDAD_ESPUMA_2.AsString;
  Esp3        := cdsItensDAD_ESPUMA_3.AsString;
  SobMed      := cdsItensSOBRE_MEDIDA.AsBoolean;
  IdFteEtq    := cdsItensID_FTE_ETQ.AsString;

  ItemOrig     := cdsItensID_ITEM_ORIG.AsString;
  DescItemOrig := cdsItensDESC_ITEM_ORIG.AsString;

  cdsItens.Cancel;

  for i := 1 to Qtde do
    begin
      cdsItens.Insert;
      cdsItensID_ITEM.AsString          := Item;
      cdsItensID_BUSCA_ITEM.AsString    := IdBuscaItem;
      cdsItensINT_ID_UND_VENDA.AsString := Und;
      cdsItensDESCRICAO.AsString        := Descricao;
      cdsItensDTA_FABRICACAO.AsString   :=  DtaFab;
      cdsItensID_COR.AsString           :=  IdCor;
      cdsItensINT_NOMECOR.AsString      := DescCor;
      cdsItensID_TAMANHO.AsString       := IdTam;
      cdsItensINT_NOMETAM.AsString      := DescTam;
      cdsItensMEDIDA.AsString           := Medida;
      cdsItensDAD_ESPUMA_1.AsString     := Esp1;
      cdsItensDAD_ESPUMA_2.AsString     := Esp2;
      cdsItensDAD_ESPUMA_3.AsString     := Esp3;
      cdsItensSOBRE_MEDIDA.AsBoolean    := SobMed;
      cdsItensID_FTE_ETQ.AsString       := IdFteEtq;

      cdsItensID_ITEM_ORIG.AsString     := ItemOrig;
      cdsItensDESC_ITEM_ORIG.AsString   := DescItemOrig;

      cdsItensSequencia.AsInteger       := i;
      cdsItensCODIGO_BARRA.AsString     := GerarCodigoBarra(txtIdOpr.Text,cdsItensID_ITEM.AsString,cdsItensSequencia.AsString);
      cdsItens.Post;
    end;

end;

procedure TPCP_FM_R_ETQ.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if cdsItens.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     cdsItens.Delete;

     if cdsItens.IsEmpty then
        begin
          xCodFteEtq := '';
          xImprimeMsqEtq := false;
          xImprimeSelo := false;
        end;

     cdsItens.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_R_ETQ.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  cdsItens.cancel;

  if cdsItens.IsEmpty then
     begin
       cdsItens.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
    begin
      cdsItens.Edit;
      pnItens.Enabled := true;
      txtQtde.SetFocus;
    end;
end;

procedure TPCP_FM_R_ETQ.LimparCampos;
begin
  txtIdOpr.Text     := '';
  txtQtde.Text      := '';

end;

procedure TPCP_FM_R_ETQ.pnItensExit(Sender: TObject);
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

        if btnImprimir.Focused then
           begin
          //   acCancelarExecute(acCancelar);
             exit;
           end;
        if btnSair.Focused  then
           begin
          //    acGravarExecute(acGravar);
              exit;
           end;

        cdsItens.Cancel;
        cdsItens.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TPCP_FM_R_ETQ.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  pplb_codigo_rev2.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);

  pplb_AvisoRemocao2.Caption := '>>> ' +  dmSgq.BUS_CD_M_FTE_ETQinf_remocao.AsString + ' <<<';
//  bcCodBarraBaby.Data := cdsEtiquetasCODIGO_BARRA.Text;
  if cdsEtiquetasclassificacao.text <> '' then
     begin
       { if cdsEtiquetasclassificacao.AsInteger = 0 then
           begin
             mcb_Simples2.Checked := true;
             mcb_Composto2.Checked := false;
           end
        else
           begin
             mcb_Simples2.Checked  := false;
             mcb_Composto2.Checked := true;
           end;  }
     end;
end;

procedure TPCP_FM_R_ETQ.ppDetailBand2BeforePrint(Sender: TObject);
begin
  inherited;

  pplb_codigo_rev1.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);

  pplb_AvisoRemocao.Caption := '>>> ' + dmSgq.BUS_CD_M_FTE_ETQinf_remocao.AsString + ' <<<';

  //mcb_SimpCompEtq1.Top := 94.984;
  if cdsEtiquetasclassificacao.text <> '' then
     begin

        {case cdsEtiquetasclassificacao.AsInteger of
           0:
            begin
             pplbClassEtq1.Caption := 'Simples';
            end;
           1:
            begin
              pplbClassEtq1.Caption := 'Composto';
            end;
           2:
            begin
              pplbClassEtq1.Caption := 'Simples Misto';
            end;
        end;}
     end;

   if trim(cdsEtiquetasetiq_espuma3.Text) <> '' then
      begin
        pprg_Dados1.Width       := 22.225;
        pprg_Revestimento.Left  := 38.894;

        if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
           begin
             pprg_Revestimento.Width  := 20.638;
             // pprg_Dados2.Left := 45.244;
             pprg_Dados2.Left         := 59.267;
           end
         else
           begin
              if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                 begin
                   pprg_Revestimento.Width  := 15.61;
                   // pprg_Dados2.Left := 45.244;
                   pprg_Dados2.Left := 54.504;
                 end
               else
                 begin
                   if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                      begin
                        pprg_Revestimento.Width  := 6.879;
                        pprg_Dados2.Left := 45.773;
                      end
                 end;
           end;
      end
   else
      begin
        if trim(cdsEtiquetasetiq_espuma2.Text) <> '' then
           begin
             pprg_Dados1.Width       := 16.933;
             pprg_Revestimento.Left  := 34.131;

             if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                begin
                  pprg_Revestimento.Width  := 20.638;
                   // pprg_Dados2.Left := 45.244;
                  pprg_Dados2.Left         := 54.769;
                end
             else
                 if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                     begin
                        pprg_Revestimento.Width  := 15.61;
                        pprg_Dados2.Left         := 49.477;
                     end
                 else
                     begin
                       if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                          begin
                            pprg_Revestimento.Width  := 10.848;
                            pprg_Dados2.Left := 32.808;
                          end
                     end;
           end
        else
           begin
             if trim(cdsEtiquetasetiq_espuma1.Text) <> '' then
                begin
                  pprg_Dados1.Width       := 12.171;
                  pprg_Revestimento.Left  := 29.369;

                  if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                     begin
                       pprg_Revestimento.Width  := 20.638;
                       // pprg_Dados2.Left := 45.244;
                       pprg_Dados2.Left         := 49.742;
                     end
                   else
                      if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                         begin
                            pprg_Revestimento.Width  := 15.61;
                            pprg_Dados2.Left := 44.979;
                         end
                       else
                         begin
                           if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                              begin
                                pprg_Revestimento.Width  := 10.848;
                                pprg_Dados2.Left := 40.217;
                              end
                         end;
                end;
           end;
      end;

end;

procedure TPCP_FM_R_ETQ.ppDetailBand3BeforePrint(Sender: TObject);
begin
  inherited;

  pplb_codigo_rev3.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);


  pplb_AvisoRemocao1_ETQ_3.Caption := '>>> ' + copy(dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,1,25)  + ' <<<';
  pplb_AvisoRemocao2_ETQ_3.Caption := '>>> ' + copy(dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,26,30) + ' <<<';

  //ppimgInmetroEtq3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text);

  if cdsEtiquetasclassificacao.text <> '' then
     begin
        {cboxComposicaoIET_3.Top := 144.462;
        if cdsEtiquetasclassificacao.AsInteger = 0 then
           begin
             pplb_TipoComposicao_IET_3.Caption := 'Simples';
             //mcb_Simples_IET_3.Checked := true;
             //mcb_Composto_IET_3.Checked := false;
           end;
        if cdsEtiquetasclassificacao.AsInteger = 1 then
           begin
             pplb_TipoComposicao_IET_3.Caption := 'Composto';
             //mcb_Simples_IET_3.Checked  := false;
             //mcb_Composto_IET_3.Checked := true;
           end;
        if cdsEtiquetasclassificacao.AsInteger = 2 then
           begin
             pplb_TipoComposicao_IET_3.Caption := 'Simples Misto';
             cboxComposicaoIET_3.Top := 135.464;
             //mcb_Simples_IET_3.Checked  := false;
             //mcb_Composto_IET_3.Checked := true;
           end; }
     end;

   if trim(cdsEtiquetasetiq_espuma3.Text) <> '' then
      begin
        pprg_Dados1_IET_3.Width       := 22.225;
        pprg_Revestimento_IET_3.Left  := 36.777; //38.894;

        if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
           begin
             pprg_Revestimento_IET_3.Width  := 20.638;
             // pprg_Dados2.Left := 45.244;
             pprg_Dados2_IET_3.Left         := 57.415; //59.267;
           end
         else
           begin
              if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                 begin
                   pprg_Revestimento_IET_3.Width  := 15.61;
                   // pprg_Dados2.Left := 45.244;
                   pprg_Dados2_IET_3.Left := 50.8;//54.504;
                 end
               else
                 begin
                   if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                      begin
                        pprg_Revestimento_IET_3.Width  := 6.879;
                        pprg_Dados2_IET_3.Left := 45.923; //45.773;
                      end
                 end;
           end;
      end
   else
      begin
        if trim(cdsEtiquetasetiq_espuma2.Text) <> '' then
           begin
             pprg_Dados1_IET_3.Width       := 16.933;
             pprg_Revestimento_IET_3.Left  := 32.014; //34.131;

             if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                begin
                  pprg_Revestimento_IET_3.Width  := 20.638;
                   // pprg_Dados2.Left := 45.244;
                  pprg_Dados2_IET_3.Left         := 52.652; //54.769;
                end
             else
                 if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                     begin
                        pprg_Revestimento_IET_3.Width  := 15.61;
                        pprg_Dados2_IET_3.Left         := 47.36; //49.477;
                     end
                 else
                     begin
                       if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                          begin
                            pprg_Revestimento_IET_3.Width  := 10.848;
                            pprg_Dados2_IET_3.Left := 30.781; //32.808;
                          end
                     end;
           end
        else
           begin
             if trim(cdsEtiquetasetiq_espuma1.Text) <> '' then
                begin
                  pprg_Dados1_IET_3.Width       := 12.171;
                  pprg_Revestimento_IET_3.Left  :=  27.252; //29.369;

                  if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                     begin
                       pprg_Revestimento_IET_3.Width  := 20.638;
                       // pprg_Dados2.Left := 45.244;
                       pprg_Dados2_IET_3.Left         := 47.625; // 49.742;
                     end
                   else
                      if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                         begin
                            pprg_Revestimento_IET_3.Width  := 15.61;
                            pprg_Dados2_IET_3.Left := 42.862; // 44.979;
                         end
                       else
                         begin
                           if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                              begin
                                pprg_Revestimento_IET_3.Width  := 10.848;
                                pprg_Dados2_IET_3.Left := 38.1;//40.217;
                              end
                         end;
                end;
           end;
      end;

end;

procedure TPCP_FM_R_ETQ.ppDetailBand4BeforePrint(Sender: TObject);
begin
  inherited;

  pplb_codigo_rev4.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);


  pplb_AvisoRemocao1_ETQ_4.Caption := '>>> ' + copy(dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,1,25)  + ' <<<';
  pplb_AvisoRemocao2_ETQ_4.Caption := '>>> ' + copy(dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,26,30) + ' <<<';

  if cdsEtiquetasclassificacao.text <> '' then
     begin
        {if cdsEtiquetasclassificacao.AsInteger = 0 then
           begin
             pplb_TipoComposicao_IET_4.Caption := 'Simples';
           end
        else
           begin
             pplb_TipoComposicao_IET_4.Caption := 'Composto';
           end;  }
     end;

   if trim(cdsEtiquetasetiq_espuma3.Text) <> '' then
      begin
        pprg_Dados1_IET_4.Width       := 22.225;
        pprg_Revestimento_IET_4.Left  := 36.777; //38.894;

        if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
           begin
             pprg_Revestimento_IET_4.Width  := 20.638;
             pprg_Dados2_IET_4.Left         := 57.415; //59.267;
           end
         else
           begin
              if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                 begin
                   pprg_Revestimento_IET_4.Width  := 15.61;
                   pprg_Dados2_IET_4.Left := 50.8;//54.504;
                 end
               else
                 begin
                   if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                      begin
                        pprg_Revestimento_IET_4.Width  := 6.879;
                        pprg_Dados2_IET_4.Left := 45.923; //45.773;
                      end
                 end;
           end;
      end
   else
      begin
        if trim(cdsEtiquetasetiq_espuma2.Text) <> '' then
           begin
             pprg_Dados1_IET_4.Width       := 16.933;
             pprg_Revestimento_IET_4.Left  := 32.014; //34.131;

             if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                begin
                  pprg_Revestimento_IET_4.Width  := 20.638;
                  pprg_Dados2_IET_4.Left         := 52.652; //54.769;
                end
             else
                 if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                     begin
                        pprg_Revestimento_IET_4.Width  := 15.61;
                        pprg_Dados2_IET_4.Left         := 47.36; //49.477;
                     end
                 else
                     begin
                       if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                          begin
                            pprg_Revestimento_IET_4.Width  := 10.848;
                            pprg_Dados2_IET_4.Left := 30.781; //32.808;
                          end
                     end;
           end
        else
           begin
             if trim(cdsEtiquetasetiq_espuma1.Text) <> '' then
                begin
                  pprg_Dados1_IET_4.Width       := 12.171;
                  pprg_Revestimento_IET_4.Left  :=  27.252; //29.369;

                  if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                     begin
                       pprg_Revestimento_IET_4.Width  := 20.638;
                       pprg_Dados2_IET_4.Left         := 47.625; // 49.742;
                     end
                   else
                      if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                         begin
                            pprg_Revestimento_IET_4.Width  := 15.61;
                            pprg_Dados2_IET_4.Left := 42.862; // 44.979;
                         end
                       else
                         begin
                           if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                              begin
                                pprg_Revestimento_IET_4.Width  := 10.848;
                                pprg_Dados2_IET_4.Left := 38.1;//40.217;
                              end
                         end;
                end;
           end;
      end;
end;

procedure TPCP_FM_R_ETQ.ppDetailBand5BeforePrint(Sender: TObject);
begin
  inherited;
   pplb_codigo_rev5.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);


   pplb_AvisoRemocao5.Caption := '>>> ' + dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString  + ' <<<';
  //pplb_AvisoRemocao5.Caption := '>>> ' + copy(dmGeral.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,1,25)  + ' <<<';
  // pplb_AvisoRemocao5_ETQ_5.Caption := '>>> ' + copy(dmGeral.BUS_CD_M_FTE_ETQ.FieldByName('inf_remocao').AsString,26,30) + ' <<<';

  ppimgInmetroEtq5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+cdsEtiquetas.FieldByName('nome_selo').text);

  if cdsEtiquetasclassificacao.text <> '' then
     begin
        {if cdsEtiquetasclassificacao.AsInteger = 0 then
           begin
             mcb_Simples5.Checked := true;
             mcb_Composto5.Checked := false;
           end
        else
           begin
             mcb_Simples5.Checked  := false;
             mcb_Composto5.Checked := true;
           end;}
     end;

  {if cdsEtiquetasclassificacao.text <> '' then
     begin
        if cdsEtiquetasclassificacao.AsInteger = 0 then
           begin
             pplb_TipoComposicao_IET_5.Caption := 'Simples';
             //mcb_Simples_IET_3.Checked := true;
             //mcb_Composto_IET_3.Checked := false;
           end
        else
           begin
             pplb_TipoComposicao_IET_3.Caption := 'Composto';
             //mcb_Simples_IET_3.Checked  := false;
             //mcb_Composto_IET_3.Checked := true;
           end;
     end;}

   {if trim(cdsEtiquetasetiq_espuma3.Text) <> '' then
      begin
        pprg_Dados1_IET_3.Width       := 22.225;
        pprg_Revestimento_IET_3.Left  := 36.777; //38.894;

        if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
           begin
             pprg_Revestimento_IET_3.Width  := 20.638;
             // pprg_Dados2.Left := 45.244;
             pprg_Dados2_IET_3.Left         := 57.415; //59.267;
           end
         else
           begin
              if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                 begin
                   pprg_Revestimento_IET_3.Width  := 15.61;
                   // pprg_Dados2.Left := 45.244;
                   pprg_Dados2_IET_3.Left := 50.8;//54.504;
                 end
               else
                 begin
                   if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                      begin
                        pprg_Revestimento_IET_3.Width  := 6.879;
                        pprg_Dados2_IET_3.Left := 45.923; //45.773;
                      end
                 end;
           end;
      end
   else
      begin
        if trim(cdsEtiquetasetiq_espuma2.Text) <> '' then
           begin
             pprg_Dados1_IET_3.Width       := 16.933;
             pprg_Revestimento_IET_3.Left  := 32.014; //34.131;

             if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                begin
                  pprg_Revestimento_IET_3.Width  := 20.638;
                   // pprg_Dados2.Left := 45.244;
                  pprg_Dados2_IET_3.Left         := 52.652; //54.769;
                end
             else
                 if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                     begin
                        pprg_Revestimento_IET_3.Width  := 15.61;
                        pprg_Dados2_IET_3.Left         := 47.36; //49.477;
                     end
                 else
                     begin
                       if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                          begin
                            pprg_Revestimento_IET_3.Width  := 10.848;
                            pprg_Dados2_IET_3.Left := 30.781; //32.808;
                          end
                     end;
           end
        else
           begin
             if trim(cdsEtiquetasetiq_espuma1.Text) <> '' then
                begin
                  pprg_Dados1_IET_3.Width       := 12.171;
                  pprg_Revestimento_IET_3.Left  :=  27.252; //29.369;

                  if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                     begin
                       pprg_Revestimento_IET_3.Width  := 20.638;
                       // pprg_Dados2.Left := 45.244;
                       pprg_Dados2_IET_3.Left         := 47.625; // 49.742;
                     end
                   else
                      if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                         begin
                            pprg_Revestimento_IET_3.Width  := 15.61;
                            pprg_Dados2_IET_3.Left := 42.862; // 44.979;
                         end
                       else
                         begin
                           if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                              begin
                                pprg_Revestimento_IET_3.Width  := 10.848;
                                pprg_Dados2_IET_3.Left := 38.1;//40.217;
                              end
                         end;
                end;
           end;
      end;  }
end;

procedure TPCP_FM_R_ETQ.ppDetailBand6BeforePrint(Sender: TObject);
begin
  inherited;

  pplb_codigo_rev1_c_msg.Caption   := 'Cód.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString) +
                                '      Rev.: ' + trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);

  pplb_AvisoRemocao_c_msg.Caption := '>>> ' + dmSgq.BUS_CD_M_FTE_ETQinf_remocao.AsString + ' <<<';



   if trim(cdsEtiquetasetiq_espuma3.Text) <> '' then
      begin
        pprg_Dados1_c_msg.Width       := 22.225;
        pprg_Revestimento_c_msg.Left  := 38.894;

        if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
           begin
             pprg_Revestimento_c_msg.Width  := 20.638;
             // pprg_Dados2.Left := 45.244;
             pprg_Dados2_c_msg.Left         := 59.267;
           end
         else
           begin
              if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                 begin
                   pprg_Revestimento_c_msg.Width  := 15.61;
                   // pprg_Dados2.Left := 45.244;
                   pprg_Dados2_c_msg.Left := 54.504;
                 end
               else
                 begin
                   if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                      begin
                        pprg_Revestimento_c_msg.Width  := 6.879;
                        pprg_Dados2_c_msg.Left := 45.773;
                      end
                 end;
           end;
      end
   else
      begin
        if trim(cdsEtiquetasetiq_espuma2.Text) <> '' then
           begin
             pprg_Dados1_c_msg.Width       := 16.933;
             pprg_Revestimento_c_msg.Left  := 34.131;

             if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                begin
                  pprg_Revestimento_c_msg.Width  := 20.638;
                   // pprg_Dados2.Left := 45.244;
                  pprg_Dados2_c_msg.Left         := 54.769;
                end
             else
                 if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                     begin
                        pprg_Revestimento_c_msg.Width  := 15.61;
                        pprg_Dados2_c_msg.Left         := 49.477;
                     end
                 else
                     begin
                       if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                          begin
                            pprg_Revestimento_c_msg.Width  := 10.848;
                            pprg_Dados2.Left := 32.808;
                          end
                     end;
           end
        else
           begin
             if trim(cdsEtiquetasetiq_espuma1.Text) <> '' then
                begin
                  pprg_Dados1_c_msg.Width       := 12.171;
                  pprg_Revestimento_c_msg.Left  := 29.369;

                  if trim(cdsEtiquetasetiq_revestimento3.Text) <> '' then
                     begin
                       pprg_Revestimento_c_msg.Width  := 20.638;
                       // pprg_Dados2.Left := 45.244;
                       pprg_Dados2_c_msg.Left         := 49.742;
                     end
                   else
                      if trim(cdsEtiquetasetiq_revestimento2.Text) <> '' then
                         begin
                            pprg_Revestimento_c_msg.Width  := 15.61;
                            pprg_Dados2_c_msg.Left := 44.979;
                         end
                       else
                         begin
                           if trim(cdsEtiquetasetiq_revestimento1.Text) <> '' then
                              begin
                                pprg_Revestimento_c_msg.Width  := 10.848;
                                pprg_Dados2_c_msg.Left := 40.217;
                              end
                         end;
                end;
           end;
      end;
end;

procedure TPCP_FM_R_ETQ.PreencheCondicao;
begin

end;

function TPCP_FM_R_ETQ.TestarCampos: Boolean;
var
  mens: String;
begin
  mens := '';

  {if (trim(txtEtiquetas.Text) = '') or (txtEtiquetas.Text = '0') then
      begin
        mens := mens + '.Modelo de etiqueta ' + #13;
      end;}

  if (trim(txtIdOpr.Text) = '') or (txtIdOpr.Text = '0') then
      begin
        mens := mens + '.Ordem de produção ' + #13;
      end;

  cdsItens.Cancel;
  if (cdsItens.IsEmpty) then
      begin
        mens := mens + '.É preciso que informe pelo menos 1 item.' +#13;
        cdsItens.Insert;
      end;

  if trim(mens) <> '' then
     begin
       ShowMessage('Campos obrigatórios não preenchidos:' + #13 + mens);
       Result := False;
       exit;
     end
  else
     begin
       Result := True;
     end;
end;

procedure TPCP_FM_R_ETQ.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       cdsItens.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       cdsItens.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       cdsItens.FieldByName('descricao').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_R_ETQ.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  if cdsItens.IsEmpty then
     begin
       xCodFteEtq   := '';
       xImprimeMsqEtq := false;
       xImprimeSelo := false;
     end;
end;

procedure TPCP_FM_R_ETQ.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if cdsItens.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnImprimir.Focused or
          btnSair.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or (deDataFab.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
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
       if (trim(txtIdOpr.Text) = '') or (strtoint(txtIdOpr.Text) = 0)  then
          begin
            ShowMessage('O campo "Ordem de produção" deve ser preenchido.');
            cdsItens.FieldByName('ID_ITEM').Text         := '';
            cdsItens.FieldByName('ID_BUSCA_ITEM').Text   := '';
            cdsItens.FieldByName('DESCRICAO').Text := '';
            cdsItens.FieldByName('int_id_und_venda').Text  := '';
            abort;
          end;
       if cdsItens.state in [dsBrowse] then
          cdsItens.edit;
     end;


  cdsItens.FieldByName('descricao').Text := '';
  cdsItens.FieldByName('int_id_und_venda').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       cdsItens.FieldByName('descricao').Text := '';
       cdsItens.FieldByName('int_id_und_venda').Text  := '';
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger = 9 then
     begin
       ShowMessage('Não é permitido item de serviço.');
       txtBuscaItem.SetFocus;
       cdsItens.FieldByName('descricao').Text := '';
       cdsItens.FieldByName('int_id_und_venda').Text  := '';
       exit;
     end;

  cdsItens.FieldByName('ID_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  cdsItens.FieldByName('DESCRICAO').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  cdsItens.FieldByName('int_id_und_venda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean := false;

  if (cdsItens.FieldByName('ID_ITEM').Text =
      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) then
      begin
        cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean := true;
      end;

  if (trim(dmGeral.BUS_CD_C_ITEint_fteetq.Text) <> '')  and
     (trim(dmGeral.BUS_CD_C_ITEint_fteetq.Text) <> '0') then
      begin
        if xCodFteEtq = '' then
           begin
             xCodFteEtq   := dmGeral.BUS_CD_C_ITEint_fteetq.Text;
             xImprimeSelo := dmGeral.BUS_CD_C_ITEint_impselo.AsBoolean;
             xImprimeMsqEtq := dmGeral.BUS_CD_C_ITEint_impmsgetq.AsBoolean;
           end
        else
           begin
             if xCodFteEtq <> dmGeral.BUS_CD_C_ITEint_fteetq.Text then
                begin
                  ShowMessage('A etiqueta técnica deste item difere das demais já selecionada.');
                  txtBuscaItem.SetFocus;
                  cdsItens.FieldByName('descricao').Text := '';
                  cdsItens.FieldByName('int_id_und_venda').Text  := '';
                  dmGeral.BUS_CD_C_ITE.Close;
                  exit;
                end;

             if xImprimeMsqEtq <> dmGeral.BUS_CD_C_ITEint_impmsgetq.AsBoolean then
                begin
                  if xImprimeMsqEtq then
                     ShowMessage('É preciso que selecione item com a mesma configuração de grupo de estoque.' + #13+
                                 'O item selecionado imprime mensagem de "aviso" mas existe item já inserido que não imprime a mensagem de "Aviso".')
                  else
                     ShowMessage('É preciso que selecione item com a mesma configuração de grupo de estoque.' + #13+
                                 'O item selecionado não imprime mensagem de "aviso" mas existe item já inserido que imprime a mensagem de "Aviso".');
                  txtBuscaItem.SetFocus;
                  cdsItens.FieldByName('descricao').Text := '';
                  cdsItens.FieldByName('int_id_und_venda').Text  := '';
                  dmGeral.BUS_CD_C_ITE.Close;
                  exit;
                end;
           end;
      end
  else
     begin
       if not (cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean) then
          begin
             ShowMessage('No grupo de estoque deste item não foi encontrado o modelo da etiqueta técnica.');
             txtBuscaItem.SetFocus;
             cdsItens.FieldByName('descricao').Text := '';
             cdsItens.FieldByName('int_id_und_venda').Text  := '';
             dmGeral.BUS_CD_C_ITE.Close;
             exit;
          end;
     end;
  try
    pnItens.onExit := nil;
    ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;

end;

procedure TPCP_FM_R_ETQ.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TPCP_FM_R_ETQ.txtEtiquetasButtonClick(Sender: TObject);
begin
  inherited;
{  PSQ_FM_X_ETQ := TPSQ_FM_X_ETQ.Create(Self);
  PSQ_FM_X_ETQ.ShowModal;
  if not PSQ_FM_X_ETQ.BUS_DP_M_FTE_ETQ.IsEmpty then
     begin
       txtEtiquetas.Text  :=
          PSQ_FM_X_ETQ.BUS_DP_M_FTE_ETQ.FieldByName('COD_INT_ETQ').AsString;
       lblDescEtq.Caption :=
          PSQ_FM_X_ETQ.BUS_DP_M_FTE_ETQ.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;}
end;

procedure TPCP_FM_R_ETQ.txtItemOriButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       cdsItens.FieldByName('ID_ITEM_ORIG').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       cdsItens.FieldByName('descricao').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_R_ETQ.txtItemOriExit(Sender: TObject);
begin
  inherited;
 dmGeral.BUS_CD_C_ITE.Close;


  if cdsItens.FieldByName('ID_ITEM_ORIG').Text = '' then
     begin

       if btnImprimir.Focused or
          btnSair.Focused  then
          begin
            exit;
          end;

       //if btn_Add_Itens.Focused then
       //   exit;

       //if grdItens.Focused then
       //   exit;

       //if not grdItensIButton.Enabled then
       //    exit;

       if     (txtSobMedida.Focused) or (txtSobLinha1.Focused)
           or (txtSobLinha2.Focused) or (txtSobLinha3.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtItemOri.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             exit;
           end;
     end;


  cdsItens.FieldByName('DESC_ITEM_ORIG').Text := '';

  dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemOri.Text]));

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtItemOri.SetFocus;
       cdsItens.FieldByName('DESC_ITEM_ORIG').Text := '';
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger = 9 then
     begin
       ShowMessage('Não é permitido item de serviço.');
       txtItemOri.SetFocus;
       cdsItens.FieldByName('DESC_ITEM_ORIG').Text := '';
       exit;
     end;

  cdsItens.FieldByName('ID_ITEM_ORIG').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  cdsItens.FieldByName('DESC_ITEM_ORIG').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  if (trim(dmGeral.BUS_CD_C_ITEint_fteetq.Text) = '')  or
     (trim(dmGeral.BUS_CD_C_ITEint_fteetq.Text) = '0') then
     begin
       ShowMessage('No grupo de estoque deste item não foi encontrado o modelo da etiqueta técnica.');
       txtItemOri.SetFocus;
       cdsItens.FieldByName('DESC_ITEM_ORIG').Text := '';
       dmGeral.BUS_CD_C_ITE.Close;
       exit;
     end;

  if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
     begin
       cdsItensMEDIDA.Text :=
            dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MEDIDAS').Text;
       cdsItensDAD_ESPUMA_1.Text :=
            dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA1').Text;
       cdsItensDAD_ESPUMA_2.Text :=
            dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA2').Text;
       cdsItensDAD_ESPUMA_3.Text :=
            dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA3').Text;
     end;

  dmGeral.BUS_CD_C_ITE.Close;
end;

procedure TPCP_FM_R_ETQ.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnImprimir.Focused or
     btnSair.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or  txtQtde.Focused or
     grdItens.Focused then
     begin
       exit;
     end;

  if trim(txtQtde.text) = '' then
     begin
       ShowMessage('O campo "Qtde" deve ser preenchido.');
       txtQtde.SetFocus;
       exit;
     end;

  if not (dmGeral.TesValQtde(StrToFloat(txtQtde.text))) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
end;

procedure TPCP_FM_R_ETQ.txtSobLinha3Exit(Sender: TObject);
begin
  inherited;

  if txtItemOri.Focused   or
     txtSobMedida.Focused or
     txtSobLinha1.Focused or
     txtSobLinha2.Focused or
     txtSobLinha3.Focused then
     begin
       exit;
     end;
  pnlDadosSobMed.Visible := False;
  txtQtde.SetFocus;
end;

end.
