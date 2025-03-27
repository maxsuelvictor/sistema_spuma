unit PCP_UN_M_OPR_REQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.Buttons, Vcl.DBCtrls, JvDBControls, JvExMask,
  JvToolEdit, Vcl.Mask, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, frxExportPDF,
  frxClass, frxExportXLS, frxDBSet, Datasnap.DBClient;

type
  TPCP_FM_M_OPR_REQ = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtRespNome: TDBText;
    Label53: TLabel;
    txtControle: TwwDBEdit;
    dtaEmissao: TJvDBDateEdit;
    txtResponsavel: TJvDBComboEdit;
    txtCodRev: TDBEdit;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    txtDescItem: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    txtUnidade: TDBText;
    Label7: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtQtde: TwwDBEdit;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    dsoIte: TwwDataSource;
    cbbSetor: TwwDBLookupCombo;
    btnImprimirRequisicao: TBitBtn;
    pmCancelarReq: TPopupMenu;
    Cancelar1: TMenuItem;
    Panel2: TPanel;
    Label4: TLabel;
    Panel5: TPanel;
    pmCancelarIte: TPopupMenu;
    CancelarIte: TMenuItem;
    Label5: TLabel;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Panel1: TPanel;
    PCP_DB_M_OPR_REQ: TfrxDBDataset;
    PCP_DB_M_OPR_REQ_ITE: TfrxDBDataset;
    PCP_XL_M_OPR_REQ: TfrxXLSExport;
    PCP_PD_M_OPR_REQ: TfrxPDFExport;
    PCP_FR_M_OPR_REQ: TfrxReport;
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeExit(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure acAdicionaExecute(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure txtLoteEnter(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure CancelarIteClick(Sender: TObject);
    procedure grdItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdItensDblClick(Sender: TObject);
    procedure btnImprimirRequisicaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    var
      xbusca_item: String;
      QtdeAnt : Currency;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPR_REQ: TPCP_FM_M_OPR_REQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FUN, uDmSgq, enConstantes;

procedure TPCP_FM_M_OPR_REQ.AbrirBuscas;
begin
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusSetor(1,'%')
end;

procedure TPCP_FM_M_OPR_REQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_M_OPR_REQ);

  pnItens.Enabled := false;
  btnImprimirRequisicao.Enabled := False;
  btn_Add_Itens.SetFocus;
end;

procedure TPCP_FM_M_OPR_REQ.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean then
    begin
      Showmessage('Requisição cancelada.');
      exit;
    end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_M_OPR_REQ) then
     begin
       inherited;
       btnImprimirRequisicao.Enabled := False;
       pnItens.Enabled := False;
       btn_Add_Itens.SetFocus;
     end;
end;

procedure TPCP_FM_M_OPR_REQ.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_M_OPR_REQ) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnImprimirRequisicao.Enabled := True;
       AbrirBuscas;
     end
  else
     begin
       btnImprimirRequisicao.Enabled := False;
     end;
end;

procedure TPCP_FM_M_OPR_REQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmSgq.PCP_CD_M_OPR_REQ.FieldByName('id_opr_req').AsString;
  DmGeral.Grava(dmSgq.PCP_CD_M_OPR_REQ);
  inherited;
  dmSgq.PCP_CD_M_OPR_REQ.Close;
  dmSgq.PCP_CD_M_OPR_REQ.Data :=
  dmSgq.PCP_CD_M_OPR_REQ.DataRequest(
          VarArrayOf([0, dmGeral.PCP_CD_M_OPRid_opr.Text,codigo]));
  AbrirBuscas;
  btnImprimirRequisicao.Enabled := True;
end;

procedure TPCP_FM_M_OPR_REQ.Atualizar_xBusca;
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

procedure TPCP_FM_M_OPR_REQ.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_M_OPR_REQ.Close;
    dmSgq.PCP_CD_M_OPR_REQ.Data :=
      dmSgq.PCP_CD_M_OPR_REQ.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.PCP_CD_M_OPRid_opr.Text, txtPesquisa.Text]));
  finally
    Screen.Cursor := crDefault;
    btnImprimirRequisicao.Enabled := True;
  end;
end;

procedure TPCP_FM_M_OPR_REQ.btnImprimirRequisicaoClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmSgq.PCP_CD_M_OPR_REQ.IsEmpty then
    begin
      //dmSgq.PCP_CD_M_OPR_REQ_ITE.IndexFieldNames := 'int_nomestr';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_REQ.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      PCP_FR_M_OPR_REQ.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
      PCP_FR_M_OPR_REQ.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
      PCP_FR_M_OPR_REQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      PCP_FR_M_OPR_REQ.PrepareReport();
      PCP_FR_M_OPR_REQ.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhuma requisição selecionada!');
      exit;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  try
    dmSgq.PCP_CD_M_OPR_REQ.BeforePost := nil;

  pnItens.Enabled  := true;
  txtBuscaItem.Enabled := true;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.Insert;
  txtBuscaItem.SetFocus;
  finally
    dmSgq.PCP_CD_M_OPR_REQ.BeforePost := dmSgq.PCP_CD_M_OPR_REQBeforePost;
  end;
end;

procedure TPCP_FM_M_OPR_REQ.Cancelar1Click(Sender: TObject);
var
cont: integer;
begin
  cont := 0;
  inherited;
  if dmSgq.PCP_CD_M_OPR_REQ.IsEmpty then
    begin
      Showmessage('Nenhuma requisição encontrada.');
      exit;
    end;

  if dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean then
    begin
      Showmessage('Requisição já esta cancelada.');
      exit;
    end;

  {dmgeral.BUS_CD_M_SOL.Close;
  dmgeral.BUS_CD_M_SOL.Data :=
    dmgeral.BUS_CD_M_SOL.DataRequest(
      VarArrayOf([93,dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR').text,
        dmSgq.PCP_CD_M_OPR_REQ.FieldByName('ID_OPR_REQ').text]));

  if  dmgeral.BUS_CD_M_SOLstatus.Text = '1' then
    begin
      Showmessage('Não é possivel cancelar requisições importadas.');
      exit;
    end;}

  dmSgq.PCP_CD_M_OPR_REQ_ITE.First;
  while dmSgq.PCP_CD_M_OPR_REQ_ITE.Eof do
    begin
      if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde_atendida').AsCurrency > 0  then
       begin
         cont := 1;
         dmSgq.PCP_CD_M_OPR_REQ_ITE.Last;
       end;
      dmSgq.PCP_CD_M_OPR_REQ_ITE.Next;
    end;

  if cont = 0 then
    begin
      dmSgq.PCP_CD_M_OPR_REQ.Edit;
      dmSgq.PCP_CD_M_OPR_REQ.FieldByName('dta_canc').AsDateTime := xDataSis;
      dmSgq.PCP_CD_M_OPR_REQ.FieldByName('hor_canc').AsDateTime := xHoraSis;
      dmSgq.PCP_CD_M_OPR_REQ.FieldByName('id_funcionario_canc').AsInteger := xFuncionario;
      dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean := True;

      dmgeral.BusFuncionario(0,IntToStr(xFuncionario));

      dmSgq.PCP_CD_M_OPR_REQ.FieldByName('int_nomefuncanc').AsString :=
        dmgeral.BUS_CD_C_FUN.FieldByName('nome').AsString;

      DmGeral.Grava(dmSgq.PCP_CD_M_OPR_REQ);
    end
  else
    begin
      showmessage('Cancelamento não permitido.'+#13+'Requisição com baixa.');
    end;
end;

procedure TPCP_FM_M_OPR_REQ.CancelarIteClick(Sender: TObject);
var
id_Item,id_cor,id_tam: integer;
begin
  inherited;
  if dmSgq.PCP_CD_M_OPR_REQ_ITE.IsEmpty then
    begin
      Showmessage('Nenhuma requisição encontrada.');
      exit;
    end;

  id_item := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_item').AsInteger;
  id_cor  := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsInteger;
  id_tam  := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_tamanho').AsInteger;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.First;
  while not dmSgq.PCP_CD_M_OPR_REQ_ITE.Eof do
    begin
      if (dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_item').AsInteger = id_item) and
        (dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsInteger = id_cor) and
        (dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_tamanho').AsInteger = id_tam)  then
        begin
          if dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean then
            begin
              Showmessage('Item já esta cancelado.');
              exit;
            end;

          if (dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde_atendida').AsCurrency = 0)  then
            begin
              dmSgq.PCP_CD_M_OPR_REQ_ITE.Edit;
              dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('dta_canc').AsDateTime := xDataSis;
              dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('hor_canc').AsDateTime := xHoraSis;
              dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_funcionario_canc').AsInteger := xFuncionario;
              dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean := True;

              dmgeral.BusFuncionario(0,IntToStr(xFuncionario));

              dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomefuncanc').AsString :=
                dmgeral.BUS_CD_C_FUN.FieldByName('nome').AsString;

              dmSgq.PCP_CD_M_OPR_REQ_ITE.Post;
            end
          else
            begin
              showmessage('Cancelamento não permitido.'+#13+'Requisição com baixa.');
            end;
        end;
      dmSgq.PCP_CD_M_OPR_REQ_ITE.Next;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_OPR_REQ.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_M_OPR_REQ.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_OPR_REQ.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_OPR_REQ.cbbSetorExit(Sender: TObject);
var
QtdeRegLotEst,QtdeRegCont,seq:integer;
SldQtde,Qtde,Qtde_Atendida : Currency;
id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote,id_setor,situacao: string;
begin
  inherited;
  try
    pnItens.OnExit := nil;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_setor').AsString = '') then
    begin
      cbbSetor.SetFocus;
      abort;
    end;

  if txtBuscaItem.Focused or txtqtde.Focused or
     grdItens.Focused then
     begin
       exit;
     end;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.State in [dsEdit] then
    begin
      dmgeral.BUS_CD_M_LOT_EST.Close;
      dmgeral.BUS_CD_M_LOT_EST.Data :=
        dmgeral.BUS_CD_M_LOT_EST.DataRequest(
          VarArrayOf([0, dmgeral.PCP_CD_M_OPRid_almoxarifado.Text,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_item').AsCurrency,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsCurrency,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_tamanho').AsCurrency]));

    dmgeral.BUS_CD_M_LOT_EST.First;
    while not dmgeral.BUS_CD_M_LOT_EST.Eof do
      begin
        if dmgeral.BUS_CD_M_LOT_EST.FieldByName('num_lote').AsString =
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('num_lote').AsString then
          begin
            if (QtdeAnt < dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde').AsCurrency) and
             ((dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde').AsCurrency - QtdeAnt) >
              dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency) then
              begin
                showmessage('Lote com saldo insuficiente!');
                abort;
              end
            else
              begin
                dmSgq.PCP_CD_M_OPR_REQ_ITE.Post;
              end;
          end;
        dmgeral.BUS_CD_M_LOT_EST.Next;
      end;
    end
  else
    begin
      id_item       := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsString;
      id_busca_item := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
      desc          := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').AsString;
      und           := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').AsString;
      id_cor        := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').AsString;
      id_tamanho    := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').AsString;
      num_lote      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('NUM_LOTE').AsString;
      desc_cor      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').AsString;
      desc_tam      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').AsString;
      Qtde_Atendida := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('Qtde_Atendida').AsCurrency;
      id_setor      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_setor').AsString;
      situacao      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString;

      dmgeral.BUS_CD_M_LOT_EST.Close;
      dmgeral.BUS_CD_M_LOT_EST.Data :=
        dmgeral.BUS_CD_M_LOT_EST.DataRequest(
          VarArrayOf([0, dmgeral.PCP_CD_M_OPRid_almoxarifado.Text,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_item').AsCurrency,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsCurrency,
            dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_tamanho').AsCurrency]));

      QtdeRegLotEst := dmgeral.BUS_CD_M_LOT_EST.RecordCount;
      QtdeRegCont   := 0;

      SldQtde :=  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde').AsCurrency;
      Qtde := 0;

      dmSgq.PCP_CD_M_OPR_REQ_ITE.Cancel;

      while SldQtde > 0 do
        begin
          inc(QtdeRegCont);
          if (QtdeRegLotEst > 0) and (QtdeRegCont <= QtdeRegLotEst) then
            begin
              if SldQtde <= dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency then
                begin
                  if SldQtde = dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency then
                    Qtde := dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency;

                  if SldQtde <= dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency then
                    Qtde := SldQtde;
                  SldQtde := 0;
                end
              else
                begin
                  SldQtde := SldQtde -  dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency;
                  Qtde := dmgeral.BUS_CD_M_LOT_EST.FieldByName('qtde_disp').AsCurrency;
                end;
              num_lote := dmgeral.BUS_CD_M_LOT_EST.FieldByName('num_lote').AsString;
            end
          else
            begin
              Qtde := SldQtde;
              num_lote := '';
              SldQtde := 0;
            end;

          dmSgq.PCP_CD_M_OPR_REQ_ITE.Insert;
          {dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_opr').AsInteger := IdOpr;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_opr_req').AsInteger :=
             dmSgq.PCP_CD_M_OPR_REQ.FieldByName('id_opr_req').AsInteger;

          Inc(seq);

          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_opr_req_ite').AsInteger  := Seq;}
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_item').AsString         := id_item;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsString          := id_cor;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_tamanho').AsString      := id_tamanho;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_busca_item').AsString   := id_busca_item;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_setor').AsString        := id_setor;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString        := situacao;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').AsString     := desc;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').AsString    := und;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').AsString     := desc_cor;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').AsString     := desc_tam;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde').AsCurrency          := Qtde;

          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('num_lote').AsString            := num_lote;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('gerado_automatico').AsBoolean  := False;

          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('qtde_atendida').AsCurrency  := qtde_atendida;
          dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean := False;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.Post;

          dmgeral.BUS_CD_M_LOT_EST.Next;
        end;
    end;

  //dmSgq.PCP_CD_M_OPR_REQ_ITE.Post;
  pnItens.Enabled := false;
  finally
    pnItens.OnExit :=pnItensExit;
  end;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TPCP_FM_M_OPR_REQ.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_OPR_REQ.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 117;
            pnlCorTamanho.Top := 9;
            pnlCorTamanho.Width := 258;

            lblCor.Left         := 131;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 131;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 117;
                  pnlCorTamanho.Top   := 9;
                  pnlCorTamanho.Width := 124;
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
                  pnlCorTamanho.Left := 117;
                  pnlCorTamanho.Top := 9;
                  pnlCorTamanho.Width := 124;
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

procedure TPCP_FM_M_OPR_REQ.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if not dmSgq.PCP_CD_M_OPR_REQcancelado.AsBoolean then
     begin
       AFont.Color := clblack;
     end
  else
    begin
      AFont.Color := clred;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_M_OPR_REQ.Close;
  FreeAndNil(PCP_FM_M_OPR_REQ);
end;

procedure TPCP_FM_M_OPR_REQ.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_M_OPR_REQ.Close;
  dmSgq.PCP_CD_M_OPR_REQ.Data :=
  dmSgq.PCP_CD_M_OPR_REQ.DataRequest(
          VarArrayOf([3, dmGeral.PCP_CD_M_OPRid_opr.Text, '%']));

  btnImprimirRequisicao.Enabled := True;
  AbrirBuscas;

  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',12,8);
end;

procedure TPCP_FM_M_OPR_REQ.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar_xBusca;
  txtPesquisa.SetFocus;
end;

procedure TPCP_FM_M_OPR_REQ.grdItensCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if not dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean then
    begin
      if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '1' then
        AFont.Color := clBlack;

      if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '2' then
        AFont.Color := clMaroon;

      if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '3' then
        AFont.Color := clBlue;
    end
  else
    begin
      AFont.Color := clred;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.grdItensDblClick(Sender: TObject);
begin
  inherited;
  if dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean then
    begin
      Showmessage('Item cancelado.');
      exit;
    end;

  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.cancel;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.IsEmpty then
     begin
       dmSgq.PCP_CD_M_OPR_REQ_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
    begin
      dmSgq.PCP_CD_M_OPR_REQ_ITE.Edit;
      pnItens.Enabled := true;

      dmSgq.BUS_CD_M_OPR_REQ.Close;
      dmSgq.BUS_CD_M_OPR_REQ.Data :=
        dmSgq.BUS_CD_M_OPR_REQ.DataRequest(
          VarArrayOf([0, dmGeral.PCP_CD_M_OPRid_opr.Text,  dmSgq.PCP_CD_M_OPR_REQid_opr_req.Text]));

      if (dmGeral.LocalizarRegItem(dmSgq.BUS_CD_M_OPR_REQ_ITE,PCP_FM_M_OPR_REQ.Name,dmSgq.PCP_CD_M_OPR_REQ_ITEid_item.Text,
        dmSgq.PCP_CD_M_OPR_REQ_ITEid_cor.Text,dmSgq.PCP_CD_M_OPR_REQ_ITEid_tamanho.Text,'',dmSgq.PCP_CD_M_OPR_REQ_ITEnum_lote.Text)) and
      (not dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean) then
        begin
          QtdeAnt := dmSgq.BUS_CD_M_OPR_REQ_ITEqtde.AsCurrency;
        end;

       txtQtde.SetFocus;
    end;
end;

procedure TPCP_FM_M_OPR_REQ.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdItensIButton.Enabled := false;
     if dmSgq.PCP_CD_M_OPR_REQ_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmSgq.PCP_CD_M_OPR_REQ_ITE.Delete;
     dmSgq.PCP_CD_M_OPR_REQ_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_M_OPR_REQ.pnItensExit(Sender: TObject);
begin
  inherited;
  if (cbbCor.Focused) or (cbbTamanho.Focused) or
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

        dmSgq.PCP_CD_M_OPR_REQ_ITE.Cancel;
        //dmSgq.PCP_CD_M_OPR_REQ_ITE.edit;

        finally
           pnItens.Enabled := false;
           txtQtde.OnEnter := txtQtdeEnter;
        end;
      end;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TPCP_FM_M_OPR_REQ.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  xFormRespPSQ_ITE := PCP_FM_M_OPR_REQ.Name;
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_OPR_REQ.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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

       if (txtQtde.Focused) or (cbbSetor.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             //pnItens.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmSgq.PCP_CD_M_OPR_REQ_ITE.state in [dsBrowse] then
          dmSgq.PCP_CD_M_OPR_REQ_ITE.edit;
     end;


  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').Text := '';
  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').Text  := '';

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
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').Text := '';
       dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').Text  := '';
       exit;
     end;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').Text       :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').Text   :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
   pnItens.onExit := nil;

   if dmSgq.PCP_CD_M_OPR_REQ_ITE.State in [dsInsert] then
    begin
      ChamaCorTamanho;
    end;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TPCP_FM_M_OPR_REQ.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TPCP_FM_M_OPR_REQ.txtLoteEnter(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
  inherited;

end;

procedure TPCP_FM_M_OPR_REQ.txtLoteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
end;

procedure TPCP_FM_M_OPR_REQ.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_OPR_REQ.txtQtdeEnter(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
  try
    txtqtde.OnExit := nil;
    pnItens.OnExit := nil;

  if dmSgq.PCP_CD_M_OPR_REQ_ITE.State in [dsInsert] then
    begin
     pnItens.Enabled := true;

     id_item       := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsString;
     id_busca_item := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
     desc          := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').AsString;
     und           := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').AsString;
     id_cor        := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_COR').AsString;
     id_tamanho    := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').AsString;
     //num_lote      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('NUM_LOTE').AsString;
     desc_cor      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').AsString;
     desc_tam      := dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').AsString;

     dmSgq.PCP_CD_M_OPR_REQ_ITE.Cancel;

     if (dmGeral.LocalizarRegItem(dmSgq.PCP_CD_M_OPR_REQ_ITE,PCP_FM_M_OPR_REQ.Name,id_item,id_cor,id_tamanho,'','')) and
      (not dmSgq.PCP_CD_M_OPR_REQ_ITEcancelado.AsBoolean) then
        begin
          ShowMessage('Item já inserido na Requisição.');
          dmSgq.PCP_CD_M_OPR_REQ_ITE.Insert;
          txtBuscaItem.SetFocus;
          exit;
        end
     else
        begin
          dmSgq.PCP_CD_M_OPR_REQ_ITE.Insert;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsString           := id_item;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_nomeite').AsString       := desc;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('int_undvenda').AsString      := und;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('id_cor').AsString            := id_cor;
          //dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('NUM_LOTE').AsString          := num_lote;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMECOR').AsString       := desc_cor;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('INT_NOMETAM').AsString       := desc_tam;
          dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsString              := '0';

          dmGeral.BUS_CD_C_ITE.close;
          dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('ID_ITEM').AsString]));
        end;
    end;
  finally
    txtqtde.OnExit := txtQtdeExit;
    pnItens.OnExit := pnItensExit;
  end;
  txtQtde.OnEnter := nil;
  PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
  txtQtde.SetFocus;
end;

procedure TPCP_FM_M_OPR_REQ.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValQtde(dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
  if dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsFloat < dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE_ATENDIDA').AsFloat then
     begin
       Showmessage('Qtde não pode ser inferior a quantidade já atendida!'+#13+
        'Qdte Atendida : '+dmSgq.PCP_CD_M_OPR_REQ_ITE.FieldByName('QTDE').AsString);
       txtQtde.SetFocus;
       abort;
     end;


  txtQtde.OnEnter := txtQtdeEnter;
end;

end.
