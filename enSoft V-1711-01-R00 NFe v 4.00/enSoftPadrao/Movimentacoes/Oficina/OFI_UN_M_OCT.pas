unit OFI_UN_M_OCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel,uProxy, Vcl.ComCtrls, vcl.wwriched,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, Datasnap.DBClient, enFunc;

type
  TOFI_FM_M_OCT = class(TPAD_FM_X_PAD)
    lblNumeroOrcamento: TLabel;
    txtNumeroOrcamento: TwwDBEdit;
    lblDataOrcamento: TLabel;
    dpkDataOrcamento: TJvDBDateEdit;
    lblValidade: TLabel;
    dpkValidade: TJvDBDateEdit;
    lblCliente: TLabel;
    txtNomeCliente: TwwDBEdit;
    lblPlaca: TLabel;
    lblKmAutal: TLabel;
    txtKmAtual: TwwDBEdit;
    txtVeiculoDescricao: TDBEdit;
    cbbAnalista: TwwDBLookupCombo;
    lblAnalista: TLabel;
    txtVlrServicos: TwwDBEdit;
    txtVlrProduto: TwwDBEdit;
    txtVlrTerceiro: TwwDBEdit;
    txtDescServico: TwwDBEdit;
    txtDescProduto: TwwDBEdit;
    txtVlrTotal1: TwwDBEdit;
    lblVlrServicos: TLabel;
    lblDescProduto: TLabel;
    lblDescServico: TLabel;
    lblVlrProduto: TLabel;
    lblVlrTerceiro: TLabel;
    lblVlrTotal: TLabel;
    gbItens: TGroupBox;
    pnlItens: TPanel;
    lblItem: TLabel;
    lblQtdeItens: TLabel;
    lblVlrUnitarioItens: TLabel;
    lblVlrTotalItens: TLabel;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtVlrTotal: TwwDBEdit;
    txtItemDescricao: TDBEdit;
    dgItens: TwwDBGrid;
    btnAddItens: TBitBtn;
    dsoIte: TwwDataSource;
    txtBuscaItem: TJvDBComboEdit;
    dgItensIButton: TwwIButton;
    txtChassi: TJvDBComboEdit;
    txtIdCliente: TJvDBComboEdit;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    lblCondicaoPagamento: TLabel;
    lblReclamacaoCliente: TLabel;
    OFI_XL_M_OCV: TfrxXLSExport;
    OFI_FR_M_OCV: TfrxReport;
    OFI_PD_M_OCV: TfrxPDFExport;
    OFI_DB_M_OCV: TfrxDBDataset;
    OFI_DB_M_OCV_PRO: TfrxDBDataset;
    txtReclamacao: TwwDBEdit;
    btnImprimirEspelho: TBitBtn;
    OFI_DB_M_OCV_SER: TfrxDBDataset;
    txtCnpjCpf: TwwDBEdit;
    lblCnpjCpf: TLabel;
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    OFI_CD_R_OCV: TClientDataSet;
    OFI_CD_R_OCVid_orcamento: TIntegerField;
    OFI_CD_R_OCVid_empresa: TIntegerField;
    OFI_CD_R_OCVplaca: TWideStringField;
    OFI_CD_R_OCVkm_atual: TIntegerField;
    OFI_CD_R_OCVdta_orcamento: TDateField;
    OFI_CD_R_OCVdta_validade: TDateField;
    OFI_CD_R_OCVid_cliente: TIntegerField;
    OFI_CD_R_OCVnome_cliente: TWideStringField;
    OFI_CD_R_OCVid_funcionario: TIntegerField;
    OFI_CD_R_OCVid_analista: TIntegerField;
    OFI_CD_R_OCVid_condicao_pag: TIntegerField;
    OFI_CD_R_OCVvlr_servicos: TFMTBCDField;
    OFI_CD_R_OCVvlr_produtos: TFMTBCDField;
    OFI_CD_R_OCVvlr_terceiro: TFMTBCDField;
    OFI_CD_R_OCVdes_servicos: TFMTBCDField;
    OFI_CD_R_OCVdes_produtos: TFMTBCDField;
    OFI_CD_R_OCVvlr_total: TFMTBCDField;
    OFI_CD_R_OCVstatus: TIntegerField;
    OFI_CD_R_OCVint_nomefuc: TWideStringField;
    OFI_CD_R_OCVint_nomeana: TWideStringField;
    OFI_CD_R_OCVint_nomecpg: TWideStringField;
    OFI_CD_R_OCVint_nomevei: TWideStringField;
    OFI_CD_R_OCVobs: TWideStringField;
    OFI_CD_R_OCVBUS_SQ_R_OCV_SER: TDataSetField;
    OFI_CD_R_OCVBUS_SQ_R_OCV_PRO: TDataSetField;
    OFI_CD_R_OCV_PRO: TClientDataSet;
    OFI_CD_R_OCV_PROid_orcamento: TIntegerField;
    OFI_CD_R_OCV_PROid_sequencia: TIntegerField;
    OFI_CD_R_OCV_PROid_item: TIntegerField;
    OFI_CD_R_OCV_PROid_busca_item: TWideStringField;
    OFI_CD_R_OCV_PROqtde: TFloatField;
    OFI_CD_R_OCV_PROvlr_unitario: TFMTBCDField;
    OFI_CD_R_OCV_PROvlr_bruto: TFMTBCDField;
    OFI_CD_R_OCV_PROper_desconto: TFloatField;
    OFI_CD_R_OCV_PROvlr_desconto: TFMTBCDField;
    OFI_CD_R_OCV_PROvlr_liquido: TFMTBCDField;
    OFI_CD_R_OCV_PROid_terceiro: TIntegerField;
    OFI_CD_R_OCV_PROint_nomeite: TWideStringField;
    OFI_CD_R_OCV_PROint_nomeund: TWideStringField;
    OFI_CD_R_OCV_PROint_nomeapl: TWideStringField;
    OFI_CD_R_OCV_PROint_nomeref: TWideStringField;
    OFI_CD_R_OCV_PROint_nometer: TWideStringField;
    OFI_CD_R_OCV_PROint_tipo_item: TIntegerField;
    OFI_CD_R_OCV_PROvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OCV_SER: TClientDataSet;
    OFI_CD_R_OCV_SERid_orcamento: TIntegerField;
    OFI_CD_R_OCV_SERid_sequencia: TIntegerField;
    OFI_CD_R_OCV_SERid_item: TIntegerField;
    OFI_CD_R_OCV_SERid_busca_item: TWideStringField;
    OFI_CD_R_OCV_SERqtde: TFloatField;
    OFI_CD_R_OCV_SERvlr_unitario: TFMTBCDField;
    OFI_CD_R_OCV_SERvlr_bruto: TFMTBCDField;
    OFI_CD_R_OCV_SERper_desconto: TFloatField;
    OFI_CD_R_OCV_SERvlr_desconto: TFMTBCDField;
    OFI_CD_R_OCV_SERvlr_liquido: TFMTBCDField;
    OFI_CD_R_OCV_SERid_terceiro: TIntegerField;
    OFI_CD_R_OCV_SERint_nomeite: TWideStringField;
    OFI_CD_R_OCV_SERint_nomeund: TWideStringField;
    OFI_CD_R_OCV_SERint_nomeapl: TWideStringField;
    OFI_CD_R_OCV_SERint_nomeref: TWideStringField;
    OFI_CD_R_OCV_SERint_nometer: TWideStringField;
    OFI_CD_R_OCV_SERint_tipo_item: TIntegerField;
    OFI_CD_R_OCV_SERvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OCV_SERnome_ite: TWideStringField;
    OFI_CD_R_OCV_PROnome_ite: TWideStringField;
    pmOcv: TPopupMenu;
    Cancelaroramento1: TMenuItem;
    Cancelaroramentosvencidos1: TMenuItem;
    btnCancelamento: TButton;
    OFI_CD_R_OCVtipo_orcamento: TIntegerField;
    OFI_CD_R_OCVchassi: TWideStringField;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtidClienteButtonClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acGravarExecute(Sender: TObject);
    procedure txtidClienteExit(Sender: TObject);
    procedure cbbAnalistaEnter(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbAnalistaExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    //procedure txtVlrDescExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure txtChassiButtonClick(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dpkValidadeExit(Sender: TObject);
    procedure txtNomeClienteExit(Sender: TObject);
    procedure txtChassiExit(Sender: TObject);
    procedure txtKmAtualExit(Sender: TObject);
    //procedure txtDescExit(Sender: TObject);
    procedure txtVlrDescEnter(Sender: TObject);
    procedure txtDescEnter(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure txtCnpjCpfExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtDescServicoExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtDescServicoEnter(Sender: TObject);
    procedure Cancelaroramento1Click(Sender: TObject);
    procedure Cancelaroramentosvencidos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure AbrirBusca;
    procedure HabilitarDesabCampos(Ativar:Boolean);
    var
      xbusca_item: String;
      xPercDescPerm: Currency;
      permiteAltVlrUnit:Boolean;
  public
    { Public declarations }
  end;

var
  OFI_FM_M_OCT: TOFI_FM_M_OCT;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_ITE, PSQ_UN_X_VEI, OFI_RN_M_OCV,
  enConstantes, OFI_UN_M_OCV_CAN, OFI_UN_M_OCV;


procedure TOFI_FM_M_OCT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_OCV);
  dpkValidade.SetFocus;
  btnImprimirEspelho.Enabled := false;
  btnCancelamento.Enabled    := false;

  dmGeral.OFI_CD_M_OCV.FieldByName('tipo_orcamento').AsInteger := 2; // Tratores
end;

procedure TOFI_FM_M_OCT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_OCV) then
    begin
        inherited;
         HabilitarDesabCampos(false);
         btnImprimirEspelho.Enabled := false;
         btnCancelamento.Enabled    := false;
        pnlItens.Enabled := False;
        dpkValidade.SetFocus;
    end;
end;

procedure TOFI_FM_M_OCT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_OCV) then
     begin
       inherited;
       HabilitarDesabCampos(true);
       btnImprimirEspelho.Enabled := true;
         btnCancelamento.Enabled    := true;
       dbGrid.SetFocus;
     end
  else
     begin
       txtNumeroOrcamento.SetFocus;
     end;
end;

procedure TOFI_FM_M_OCT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  if dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger = 2 then
    begin
      Showmessage('Orçamentos cancelados não poder ser excluidos.');
      exit;
    end;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_OCV);
end;

procedure TOFI_FM_M_OCT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       codigo := dmGeral.OFI_CD_M_OCV.FieldByName('ID_ORCAMENTO').AsString;
       DmGeral.Grava(dmGeral.OFI_CD_M_OCV);
       inherited;
       HabilitarDesabCampos(true);
       btnImprimirEspelho.Enabled := true;
       btnCancelamento.Enabled    := true;
       dmGeral.OFI_CD_M_OCV.Close;
       dmGeral.OFI_CD_M_OCV.Data :=
       dmGeral.OFI_CD_M_OCV.DataRequest(VarArrayOf([0, codigo,'2']));
     end
   else
     begin
        dpkValidade.SetFocus;
     end;
end;

procedure TOFI_FM_M_OCT.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
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

procedure  TOFI_FM_M_OCT.HabilitarDesabCampos(Ativar:Boolean);
begin
  txtIdCliente.Enabled := Ativar;
  txtNomeCliente.Enabled := Ativar;
  txtChassi.Enabled := Ativar;
end;

procedure TOFI_FM_M_OCT.AbrirBusca;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));
   dmGeral.BusCondPgto(1,'%');
end;


procedure TOFI_FM_M_OCT.btnAddItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled  := True;

  dmGeral.OFI_CD_M_OCV_ITEqtde.OnChange := nil;
  dmGeral.OFI_CD_M_OCV_ITEvlr_unitario.OnChange := nil;
 // dmGeral.OFI_CD_M_OCV_ITEper_desconto.OnChange := nil;
 // dmGeral.OFI_CD_M_OCV_ITEvlr_desconto.OnChange := nil;
  dmGeral.OFI_CD_M_OCV_ITEid_item.OnChange := nil;

  dmGeral.OFI_CD_M_OCV.BeforePost := nil;

  dmGeral.OFI_CD_M_OCV_ITE.Insert;

  dmGeral.OFI_CD_M_OCV_ITEqtde.OnChange := dmGeral.OFI_CD_M_OCV_ITEqtdeChange;
  dmGeral.OFI_CD_M_OCV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_OCV_ITEvlr_unitarioChange;
  //dmGeral.OFI_CD_M_OCV_ITEper_desconto.OnChange := dmGeral.OFI_CD_M_OCV_ITEper_descontoChange;
  //dmGeral.OFI_CD_M_OCV_ITEvlr_desconto.OnChange := dmGeral.OFI_CD_M_OCV_ITEvlr_descontoChange;
  dmGeral.OFI_CD_M_OCV_ITEid_item.OnChange := dmGeral.OFI_CD_M_OCV_ITEid_itemChange;
  dmGeral.OFI_CD_M_OCV.BeforePost := dmGeral.OFI_CD_M_OCVBeforePost;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;
end;

procedure TOFI_FM_M_OCT.btnFiltroClick(Sender: TObject);
var
  index:integer;
begin
   index := 0;
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      index := 0;
    end;
  if (cbbPesquisa.ItemIndex = 1) then
    begin
      index := 3;
    end;
  if (cbbPesquisa.ItemIndex = 2) then
    begin
      index := 2;
    end;
  if (cbbPesquisa.ItemIndex = 3) then
    begin
      index := 5;
    end;
   if (cbbPesquisa.ItemIndex = 4) then
    begin
      index := 4;
    end;
   if (cbbPesquisa.ItemIndex = 5) then
    begin
      index := 1;
    end;


   Screen.Cursor := crHourGlass;
  try
    inherited;
    if (index = 0)  then
       begin
         dmGeral.OFI_CD_M_OCV.Close;
         dmGeral.OFI_CD_M_OCV.Data :=
         dmGeral.OFI_CD_M_OCV.DataRequest(
            VarArrayOf([index,trim(txtPesquisa.Text),'2']));
       end
    else
       begin
         dmGeral.OFI_CD_M_OCV.Close;
         dmGeral.OFI_CD_M_OCV.Data :=
         dmGeral.OFI_CD_M_OCV.DataRequest(
            VarArrayOf([index,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString , trim(txtPesquisa.Text),'2']));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_OCT.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.OFI_CD_M_OCV.IsEmpty then
      begin
        codigo := dmGeral.OFI_CD_M_OCVid_orcamento.text;

        OFI_CD_R_OCV.Close;
        OFI_CD_R_OCV.Data :=
        OFI_CD_R_OCV.DataRequest(VarArrayOf([0,codigo]));


        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FR_M_OCV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        // OFI_FR_M_OCV.Variables['ft_telfixo'] :=  QuotedStr('');
          dmGeral.BusCliente(0,OFI_CD_R_OCV.FieldByName('ID_CLIENTE').AsString);
         if (not dmGeral.BUS_CD_C_CLI.IsEmpty) {and (not dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').IsNull)} then
          begin
            OFI_FR_M_OCV.Variables['ft_telfixo']  :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString);
            OFI_FR_M_OCV.Variables['ft_telmovel'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_MOVEL').AsString);
            OFI_FR_M_OCV.Variables['ft_email']    :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString);
          end;
        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_OCT.Name,xCodLme,xRevLme,nil);
        OFI_FR_M_OCV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FR_M_OCV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FR_M_OCV.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FR_M_OCV.PrepareReport();
        OFI_FR_M_OCV.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TOFI_FM_M_OCT.Cancelaroramento1Click(Sender: TObject);
begin
  inherited;
  if  dmGeral.OFI_CD_M_OCV.IsEmpty then
      begin
        ShowMessage('Nenhum orçamento foi selecionado.');
        exit;
      end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger in [1]) then
      begin
        ShowMessage('Este orçamento já foi importado.');
        exit;
      end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger in [2]) then
      begin
        ShowMessage('Este orçamento já foi cancelado.');
        exit;
      end;
  OFI_FM_M_OCV_CAN := TOFI_FM_M_OCV_CAN.Create(Self);
  OFI_FM_M_OCV_CAN.Show;
end;

procedure TOFI_FM_M_OCT.Cancelaroramentosvencidos1Click(Sender: TObject);
var
  registros: String;
begin
  inherited;

  if Dc_MessageDlgCheck('Deseja realmente cancelar os orçamentos vencidos?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
         dmGeral.OFI_CD_M_OCV.Close;
         dmGeral.OFI_CD_M_OCV.Data :=
         dmGeral.OFI_CD_M_OCV.DataRequest(
            VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'2']));

       if dmGeral.OFI_CD_M_OCV.IsEmpty then
          begin
            ShowMessage('Nenhum orçamento foi selecionado.');
            exit;
          end
       else
          begin
            Screen.Cursor := crHourGlass;
            try
              dmGeral.OFI_CD_M_OCV.BeforePost := nil;
              registros := inttostr(dmgeral.OFI_CD_M_OCV.recordCount);
              dmgeral.OFI_CD_M_OCV.First;
              while not dmgeral.OFI_CD_M_OCV.eof do
                 begin
                   dmgeral.OFI_CD_M_OCV.edit;
                   dmgeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger      := 2;
                   dmgeral.OFI_CD_M_OCV.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
                   dmgeral.OFI_CD_M_OCV.FieldByName('CAN_DATA').AsDateTime   := xDataSis;
                   dmgeral.OFI_CD_M_OCV.FieldByName('CAN_HORA').AsDateTime   := xHoraSis;
                   dmgeral.OFI_CD_M_OCV.FieldByName('CAN_MOTIVO').AsString   := 'Cancelamento de orçamento vencido';

                   dmgeral.OFI_CD_M_OCV.Post;
                   dmgeral.OFI_CD_M_OCV.Next;
                 end;

                try
                   if dmgeral.OFI_CD_M_OCV.ApplyUpdates(0) = 0 then
                      begin
                        ShowMessage('Qtde de orçamentos cancelados: ' + registros +'!');
                      end;
                except
                   on e: exception do
                      begin
                        ShowMessage('Erro: ' + e.Message);
                        abort;
                      end;
                end;
            finally
               Screen.Cursor := crDefault;
               dmGeral.OFI_CD_M_OCV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;
            end;
          end;
     end;
end;

procedure TOFI_FM_M_OCT.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));
  cbbAnalista.DropDown;
end;

procedure TOFI_FM_M_OCT.cbbAnalistaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused or
      txtChassi.Focused or txtKmAtual.Focused or cbbCondicaoPagamento.Focused) then
    begin
      exit;
    end;

   dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMEANA').AsString := '';

  if dmGeral.OFI_CD_M_OCV.FieldByName('ID_ANALISTA').Text = '' then
     begin
       ShowMessage('O campo "Analista" deve ser prenchido.');
       cbbAnalista.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.OFI_CD_M_OCV.FieldByName('ID_ANALISTA').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Analista não cadastrado.');
       cbbAnalista.SetFocus;
       Exit;
     end;

    if (dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Analista inativo.');
       cbbAnalista.SetFocus;
       Exit;
     end;

  dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMEANA').AsString :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

procedure TOFI_FM_M_OCT.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPagamento.DropDown;
end;

procedure TOFI_FM_M_OCT.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;
    if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused or txtChassi.Focused or txtKmAtual.Focused) then
    begin
      exit;
    end;

  dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMECPG').AsString := '';

  if dmGeral.OFI_CD_M_OCV.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição de Pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;

  dmGeral.BusCondPgto(0,dmGeral.OFI_CD_M_OCV.FieldByName('ID_CONDICAO_PAG').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de Pagamento não cadastrado.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_CPG.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Condição de Pagamento inativo.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;


  dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMECPG').AsString :=
               dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.Cancel;
  if (dmGeral.OFI_CD_M_OCV_ITE.RecordCount > 0) then
     begin
       dmGeral.OFI_CD_M_OCV_ITEvlr_unitario.OnChange := nil;
       dmGeral.OFI_CD_M_OCV_ITEqtde.OnChange := nil;
       dmGeral.OFI_CD_M_OCV_ITE.AfterPost := nil;
       dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
       dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency :=0;
       dmGeral.OFI_CD_M_OCV_ITE.First;
       while(not dmGeral.OFI_CD_M_OCV_ITE.EOF) do
         begin
           dmGeral.OFI_CD_M_OCV_ITE.Edit;
           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
           dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_OCV.FieldByName('ID_CONDICAO_PAG').Text,
                            dmGeral.OFI_CD_M_OCV_ITE,false,false);
           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
           OFI_RN_M_OCV.OfiOcvCalcTotalItem;
           dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency :=
                   dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency +
                   dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

           if (pos(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
             begin
               dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                      dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency +
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;

           if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
               (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
             begin
                dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency :=
                       dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency +
                       dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;

           if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
             begin
               dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                      dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency +
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;
           dmGeral.OFI_CD_M_OCV_ITE.Post;
           dmGeral.OFI_CD_M_OCV_ITE.Next;
        end;

       dmGeral.OFI_CD_M_OCV_ITEqtde.OnChange := dmGeral.OFI_CD_M_OCV_ITEqtdeChange;
       dmGeral.OFI_CD_M_OCV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_OCV_ITEvlr_unitarioChange;
       dmGeral.OFI_CD_M_OCV_ITE.AfterPost := dmGeral.OFI_CD_M_OCV_ITEAfterPost;

       dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := nil;
       dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := nil;

       dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := 0;

       dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := dmGeral.OFI_CD_M_OCVdes_servicosChange;
       dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := dmGeral.OFI_CD_M_OCVdes_produtosChange;


     end;
end;


procedure TOFI_FM_M_OCT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if (cbbPesquisa.ItemIndex = 1) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
  if (cbbPesquisa.ItemIndex = 2) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
  if (cbbPesquisa.ItemIndex = 3) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
   if (cbbPesquisa.ItemIndex = 4) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
   if (cbbPesquisa.ItemIndex = 5) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TOFI_FM_M_OCT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
    if (dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger = 1) then
          begin
           AFont.Color := clGreen;
          end;
    if (dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger = 2) then
          begin
           AFont.Color := clRed;
          end;
end;

procedure TOFI_FM_M_OCT.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
      dgItensIButton.Enabled := false;
     if dmGeral.OFI_CD_M_OCV_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
       begin
         dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := nil;
         dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := 0;
         dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := dmGeral.OFI_CD_M_OCVdes_servicosChange;
       end
     else
       begin
        dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := nil;
        dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := dmGeral.OFI_CD_M_OCVdes_produtosChange;
       end;
     dmGeral.OFI_CD_M_OCV_ITE.Delete;
     dmGeral.OFI_CD_M_OCV_ITE.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_OCT.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = False then
     pnlItens.Enabled := True;

  dmGeral.OFI_CD_M_OCV_ITE.Cancel;

  if dmGeral.OFI_CD_M_OCV_ITE.IsEmpty then
     begin
       dmGeral.OFI_CD_M_OCV_ITE.Append;
       pnlItens.Enabled := True;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       txtBuscaItem.Enabled := false;
       dmGeral.OFI_CD_M_OCV_ITE.Edit;
       pnlItens.Enabled := True;
       //txtBuscaItem.SetFocus;
       txtQtde.SetFocus;
     end;
end;

procedure TOFI_FM_M_OCT.dpkValidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsString := '';
      exit;
    end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsString = '') then
    begin
      ShowMessage('O campo "Validade" deve ser preenchido.');
      dpkValidade.SetFocus;
      exit;
    end
  else
    begin
      if dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsDateTime <
        dmGeral.OFI_CD_M_OCV.FieldByName('DTA_ORCAMENTO').AsDateTime then
        begin
          ShowMessage('Data de validade não pode ser menor que a data do orçamento.');
          dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsString := '';
        end;
    end;
end;

procedure TOFI_FM_M_OCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_OCV.Close;
  FreeAndNil(OFI_FM_M_OCT);
end;

procedure TOFI_FM_M_OCT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F2) and (dmGeral.OFI_CD_M_OCV.state in [dsInsert,dsEdit]) then
    txtDescServico.SetFocus;
end;

procedure TOFI_FM_M_OCT.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_OCV.Close;
  dmGeral.OFI_CD_M_OCV.Data := dmGeral.OFI_CD_M_OCV.DataRequest(VarArrayOf([0,'']));
  dmGeral.OFI_CD_M_OCV.Open;

  AbrirBusca;



  pnlItens.Enabled := false;


  xbusca_item := '';
  Atualizar_xBusca;
  txtPesquisa.SetFocus;

  txtReclamacao.Color := clWhite;

  txtVeiculoDescricao.ReadOnly := true;
  txtVeiculoDescricao.Color := $00DADADA;

  txtVlrUnitario.Enabled := false;
  txtVlrUnitario.Color := $00DADADA;

  txtVlrServicos.ReadOnly := true;
  txtVlrServicos.Color := $00DADADA;

  txtVlrProduto.ReadOnly := true;
  txtVlrProduto.Color := $00DADADA;

  txtVlrTerceiro.ReadOnly := true;
  txtVlrTerceiro.Color := $00DADADA;

  txtVlrTotal1.ReadOnly := true;
  txtVlrTotal1.Color := $00DADADA;

   permiteAltVlrUnit:=false;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = True) then
    begin
      txtVlrUnitario.Enabled := true;
      txtVlrUnitario.Color := clWhite;
      permiteAltVlrUnit:=true;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = false) then
    begin
       dmGeral.BusFuncionario(0,xFuncionario.ToString(xFuncionario));
      if (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ALT_PRE_PRO').AsBoolean = True) then
        begin
         txtVlrUnitario.Enabled := true;
         txtVlrUnitario.Color := clWhite;
          permiteAltVlrUnit:=true;
        end;
    end;
end;

procedure TOFI_FM_M_OCT.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (dgItens.Focused) or
     (not dgItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             Exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              Exit;
           end;

        dmGeral.OFI_CD_M_OCV_ITE.Cancel;
        dmGeral.OFI_CD_M_OCV_ITE.Edit;

        finally
           pnlItens.Enabled := False;
        end;
      end;
end;

procedure TOFI_FM_M_OCT.txtidClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.OFI_CD_M_OCV.FieldByName('id_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;

           dmGeral.OFI_CD_M_OCV.FieldByName('nome_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TOFI_FM_M_OCT.txtidClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if dpkValidade.Focused then
    begin
      exit;
    end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('ID_CLIENTE').Text <> '') then
    begin
      dmGeral.OFI_CD_M_OCV.FieldByName('nome_cliente').Text := '';
      dmGeral.OFI_CD_M_OCV.FieldByName('doc_cnpj_cpf').Text := '';
      dmGeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, dmGeral.OFI_CD_M_OCV.FieldByName('ID_CLIENTE').Text]));

      if dmGeral.BUS_CD_C_CLI.IsEmpty then
        begin
         ShowMessage('Cliente não cadastrado.');
         txtIDCliente.SetFocus;
         Exit;
        end;

      if (dmGeral.BUS_CD_C_CLI.FieldByName('ATIVO').AsBoolean = False) then
         begin
           ShowMessage('Cliente inativo.');
           txtIDCliente.SetFocus;
           Exit;
         end;

      dmGeral.OFI_CD_M_OCV.FieldByName('nome_cliente').Text :=
                         dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
      dmGeral.OFI_CD_M_OCV.FieldByName('doc_cnpj_cpf').Text :=
                         dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;
      txtNomeCliente.ReadOnly := true;
      txtCnpjCpf.ReadOnly := true;
      txtChassi.SetFocus;
      exit;

    end;
    txtNomeCliente.ReadOnly := false;
    txtCnpjCpf.ReadOnly := false;
    txtNomeCliente.SetFocus;
end;

procedure TOFI_FM_M_OCT.txtKmAtualExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

   if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused or txtChassi.Focused) then
    begin
      exit;
    end;

  {if (dmGeral.OFI_CD_M_OCV.FieldByName('KM_ATUAL').AsString = '') then
    begin
      ShowMessage('O campo "Km Atual" deve ser preenchido.');
      txtPlaca.SetFocus;
      exit;
    end;  }
end;

procedure TOFI_FM_M_OCT.txtNomeClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

  if txtIdCliente.Focused or dpkValidade.Focused then
    begin
      exit;
    end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('NOME_CLIENTE').AsString = '') then
    begin
      ShowMessage('O nome do cliente deve ser preenchido.');
      txtIdCliente.SetFocus;
      exit;
    end;
end;

procedure TOFI_FM_M_OCT.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);

  if  dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsString<>'' then
      id_categ_vei := dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsInteger;

   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

            dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TOFI_FM_M_OCT.txtBuscaItemExit(Sender: TObject);
var
  id_categoria:Integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            Exit;
          end;

  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin


       if btnAddItens.Focused then
          Exit;

       if dgItens.Focused then
          Exit;

       if not dgItensIButton.Enabled then
          Exit;

       if (txtQtde.Focused) or (txtVlrUnitario.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser preenchido.');
             txtBuscaItem.SetFocus;
             Exit;
           end
       else
           begin
             pnlItens.Enabled := False;
             Exit;
           end;
     end
  else
     begin
       if dmGeral.OFI_CD_M_OCV_ITE.state in [dsBrowse] then
          dmGeral.OFI_CD_M_OCV_ITE.Edit;
     end;

  if trim(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').Text) = '0' then
     begin
       // dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := nil;
        dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsInteger := 0;

        //dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := dmGeral.OFI_CD_M_OCVdes_servicosChange;
        txtItemDescricao.ReadOnly := false;
        txtItemDescricao.Color := clWhite;
        txtItemDescricao.SetFocus;
        exit;
     end;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').AsString := '';
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('int_nomeite').AsString := '';
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString := '';
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString := '';
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString := '';
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';



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
       dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
       Exit;
     end;

  dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);

  // Inserido por Maxsuel Victor, 21/09/2016 conversado com Mariel
  // se o resultado for igual = 0, quer dizer que não foi encontrado

  if (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'00-04-09') = 0) then
      begin
        ShowMessage('O item só pode ser de grupo com tipo do item igual a: ' + #13 +
                    '- Mercadoria para Revenda;' + #13 +
                    '- Produto Acabado;' + #13 +
                    '- ou Serviço;');
        txtBuscaItem.SetFocus;
        dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
        exit;
      end;

  {if dmGeral.BUS_CD_C_GRU.IsEmpty or (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'07-08')<>0) then
    begin
      ShowMessage('Tipo de item não permitido.');
      txtBuscaItem.SetFocus;
      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
      exit;
    end;}

   if (dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
    begin
      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
         dmGeral.BUS_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean;
    end;


  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

   id_categoria:= 0;
    if  dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsString<>'' then
      id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsInteger;

  if (((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true) or
        (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OME').AsBoolean = true)) and
        (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString ='09')) then
        begin
            dmGeral.BUS_CD_C_ITE_CAT.Close;
            dmGeral.BUS_CD_C_ITE_CAT.Data :=
            dmGeral.BUS_CD_C_ITE_CAT.DataRequest(
                   VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,
                                  IntToStr(id_categoria)]));

            if ((dmGeral.BUS_CD_C_ITE_CAT.IsEmpty) or
               (dmGeral.BUS_CD_C_ITE_CAT.FieldByName('PRECO').AsString = '')) then
              begin
                ShowMessage('Preço do item não cadastrado para categoria do veículo.');
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('int_nomeite').Text := '';
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').Text := '';
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString  := '';
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString := '';
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString := '';
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
                txtBuscaItem.SetFocus;
                exit;
              end;

        end;




  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('APLICACAO').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('REFERENCIA').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

  dmGeral.OFI_CD_M_OCV_ITE.FieldByname('PER_DESCONTO').AsCurrency := 0;

  
  try
   pnlItens.onExit := nil;

  finally
     pnlItens.OnExit := pnlItensExit;
  end;
end;

procedure TOFI_FM_M_OCT.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;

   if (Key = vk_F2) then
     begin
       pnlItens.OnExit := nil;
       dmGeral.FAT_CD_M_PED_ITE.cancel;
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
       pnlItens.OnExit := pnlItensExit;
     end;
end;

procedure TOFI_FM_M_OCT.txtCnpjCpfExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

   if txtIdCliente.Focused or dpkValidade.Focused or txtNomeCliente.Focused then
    begin
      exit;
    end;

  if (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString = '') then
    begin
      ShowMessage('O campo "CNPJ/CPF" deve ser preenchido.');
      txtCnpjCpf.SetFocus;
      exit;
    end;

   if not (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length in [11,14]) then
     begin
       ShowMessage('CNPJ/CPF inválido.');
       txtCnpjCpf.SetFocus;
       exit;
     end;

   if (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length = 11) then
     begin
       if (enFunc.VerCPF(dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
         begin
            ShowMessage('CNPJ/CPF inválido.');
            txtCnpjCpf.SetFocus;
            exit;
         end;
     end;

    if (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length = 14) then
     begin
       if (enFunc.VerCNPJ(dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
         begin
            ShowMessage('CNPJ/CPF inválido.');
            txtCnpjCpf.SetFocus;
            exit;
         end;
     end;
end;

procedure TOFI_FM_M_OCT.txtDescEnter(Sender: TObject);
begin
  inherited;
   xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.OFI_CD_M_OCV_ITE);
end;

procedure TOFI_FM_M_OCT.txtDescServicoEnter(Sender: TObject);
begin
  inherited;
  dmgeral.OFI_CD_M_OCVdes_servicos.OnChange:= dmgeral.OFI_CD_M_OCVdes_servicosChange;
end;

procedure TOFI_FM_M_OCT.txtDescServicoExit(Sender: TObject);
begin
  inherited;

end;

{procedure TOFI_FM_M_OCV.txtDescExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

   if btnAddItens.Focused or txtQtde.Focused or txtBuscaItem.Focused then
     begin
       exit;
     end;

   if not (dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm)) then
     begin
       txtDesc.SetFocus;
       abort;
     end;
end;}

procedure TOFI_FM_M_OCT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_OCT.txtChassiButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
  PSQ_FM_X_VEI.ShowModal;
  if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
     begin
        dmGeral.OFI_CD_M_OCV.FieldByName('chassi').Text :=
                PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('chassi').AsString;

        dmGeral.OFI_CD_M_OCV.FieldByName('int_nomevei').Text :=
                PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('descricao').AsString;
     end;
   PSQ_FM_X_VEI.Free;
end;

procedure TOFI_FM_M_OCT.txtChassiExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

   if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused) then
    begin
      exit;
    end;

  if (trim(dmGeral.OFI_CD_M_OCV.FieldByName('CHASSI').AsString) = '') then
    begin
      ShowMessage('O campo "Chassi" deve ser preenchido.');
      txtChassi.SetFocus;
      exit;
    end;

   dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMEVEI').Text := '';

   dmGeral.BUS_CD_C_VEI.Close;
   dmGeral.BUS_CD_C_VEI.Data :=
   dmGeral.BUS_CD_C_VEI.DataRequest(VarArrayOf([4, trim(dmGeral.OFI_CD_M_OCV.FieldByName('CHASSI').Text)]));
   if (dmGeral.BUS_CD_C_VEI.IsEmpty) then
     begin
       ShowMessage('Trator não encontrado.');
       txtChassi.SetFocus;
       Exit;
     end;
   if (trim(dmGeral.BUS_CD_C_VEI.FieldByName('tipo').AsString) = '1') then
    begin
      dmGeral.OFI_CD_M_OCV.FieldByName('CHASSI').AsString :=
                             dmGeral.BUS_CD_C_VEI.FieldByName('CHASSI').AsString;
      dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMEVEI').Text :=
                dmGeral.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString;
    end
   else
    begin
      ShowMessage('O veiculo de ser do tipo Trator.');
      txtChassi.SetFocus;
      Exit;
    end;

end;

procedure TOFI_FM_M_OCT.txtQtdeEnter(Sender: TObject);
var
  id_item,id_busca_item,desc,referencia,tipo_item,und,aplicacao:String;
  ser_terceiro:Boolean;
  vlrdesc,perdesc,vlrunit:currency;
begin
  inherited;
  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('id_item').AsInteger <> 0 then
    begin
      if dmGeral.OFI_CD_M_OCV_ITE.State in [dsInsert] then
         begin
           pnlItens.Enabled := true;
           id_busca_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
           id_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').Text;
           desc := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').Text;
           aplicacao := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString;
          // id_cor := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_COR').Text;
           //id_tamanho := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_TAMANHO').AsString;
           referencia := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString;
           und := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString;
           ser_terceiro := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean;
           tipo_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString;
           vlrdesc := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
           perdesc := dmGeral.OFI_CD_M_OCV_ITE.FieldByname('PER_DESCONTO').AsCurrency;
           vlrUnit := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

           dmGeral.OFI_CD_M_OCV_ITE.Cancel;

           if dmGeral.LocalizarRegItem(dmGeral.OFI_CD_M_OCV_ITE,OFI_FM_M_OCT.Name,id_item,'0','0','','') then
              begin
                ShowMessage('Item já inserido no orçamento.');
                dmGeral.OFI_CD_M_OCV_ITE.Insert;
                txtBuscaItem.SetFocus;
                exit;
              end
           else
              begin
                dmGeral.OFI_CD_M_OCV_ITE.Insert;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').Text := id_item;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('int_nomeite').Text := desc;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('nome_ite').Text := desc;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString := aplicacao;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString := referencia;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString := und;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString := tipo_item;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean := ser_terceiro;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := vlrdesc;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByname('PER_DESCONTO').AsCurrency := perdesc;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := vlrUnit;
                dmGeral.OFI_CD_M_OCV_ITE.FieldByName('QTDE').AsString := '';
              end;
         end;
    end;
end;

procedure TOFI_FM_M_OCT.txtQtdeExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or dgItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;

  if txtVlrUnitario.CanFocus then
    begin
      txtVlrUnitario.SetFocus;
      exit;
    end;

  if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsInteger=0) and  (permiteAltVlrUnit=false) then
    begin
      txtVlrUnitario.Enabled := true;
      txtVlrUnitario.Color := clWhite;
      txtVlrUnitario.SetFocus;
      exit;
    end;

  seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('OFI_TB_M_OCV_ITE');
         seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  dmGeral.OFI_CD_M_OCV_ITE.Post;

  txtItemDescricao.ReadOnly := true;
  txtItemDescricao.Color := $00DADADA;
  pnlItens.Enabled := False;
  btnAddItens.SetFocus;
  dmGeral.OFI_CD_M_OCV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_OCT.txtVlrDescEnter(Sender: TObject);
begin
  inherited;
   xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.OFI_CD_M_OCV_ITE);
end;

{procedure TOFI_FM_M_OCV.txtVlrDescExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtBuscaItem.Focused or txtQtde.Focused or txtDesc.Focused then
     begin
       Exit;
     end;

  if not (dmGeral.TesValVlrDesconto(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                    dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency,xPercDescPerm)) then
     begin
     //  txtVlrDesc.SetFocus;
       abort;
     end;
  seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('OFI_TB_M_OCV_ITE');
         seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  dmGeral.OFI_CD_M_OCV_ITE.Post;

  pnlItens.Enabled := False;
  btnAddItens.SetFocus;
  dmGeral.OFI_CD_M_OCV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;  }

procedure TOFI_FM_M_OCT.txtVlrUnitarioExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or txtQtde.Focused or
     dgItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValVlrUnitario(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnitario.SetFocus;
       abort;
     end;

   if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
       dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
    begin
      ShowMessage('O campo "Valor unitário" é menor que o preço tabelado.');
    end;

   if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency >
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
      begin
        ShowMessage('O campo "Valor unitário" é maior que o preço tabelado.');
      end;

   seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('OFI_TB_M_OCV_ITE');
         seq_item := dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsString;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  dmGeral.OFI_CD_M_OCV_ITE.Post;

  pnlItens.Enabled := False;
  txtItemDescricao.ReadOnly := true;
  txtItemDescricao.Color := $00DADADA;
  if (permiteAltVlrUnit=false) then
    begin
      txtVlrUnitario.Enabled := false;
      txtVlrUnitario.Color := $00DADADA;
    end;

  btnAddItens.SetFocus;
  dmGeral.OFI_CD_M_OCV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

end.
