unit FAT_UN_M_NFE_IQM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, Vcl.ComCtrls,
  vcl.wwcheckbox, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFAT_FM_M_NFE_IQM = class(TPAD_FM_X_PAD)
    txtFornecedor: TDBMemo;
    lblFornecedor: TLabel;
    txtFornecedorDescricao: TDBMemo;
    lblNotaFiscal: TLabel;
    txtNotaFiscal: TDBMemo;
    lblEntrada: TLabel;
    txtEntrada: TDBMemo;
    dgItens: TwwDBGrid;
    dsNfeItens: TwwDataSource;
    dsNfeItensIqm: TwwDataSource;
    lblDoisCliques: TLabel;
    dsNfeItensIqmAna: TwwDataSource;
    pnlDataGrid2: TPanel;
    pnlDataGrid3: TPanel;
    dgIqm: TwwDBGrid;
    pnlDataGrid4: TPanel;
    dgAna: TwwDBGrid;
    gbInspacao: TGroupBox;
    lblData: TLabel;
    lblResultadoFinal: TLabel;
    Label2: TLabel;
    lblNLoteFabricante: TLabel;
    lblNLaudo: TLabel;
    lblNLoteInterno: TLabel;
    lblDataCertificado: TLabel;
    lblPreservacao: TLabel;
    lblQtdePedidoNotaFiscal: TLabel;
    lblCertificadoQualidade: TLabel;
    lblQualidade: TLabel;
    Label1: TLabel;
    txtPreservProd: TDBRadioGroup;
    TxtQualidade: TDBRadioGroup;
    txtCertQualid: TDBRadioGroup;
    txtQtdPedNfe: TDBRadioGroup;
    dpkDataInspecao: TJvDBDateEdit;
    txtDemerito: TDBMemo;
    txtNLoteFabricante: TDBMemo;
    txtNLoteInterno: TDBMemo;
    txtResultadoFinal: TEdit;
    txtCondComerc: TDBRadioGroup;
    dpkDataCertificado: TJvDBDateEdit;
    txtNLaudo: TDBMemo;
    gbTratamento: TGroupBox;
    Label3: TLabel;
    lblRelatosOcorrencia: TLabel;
    lblLoteRecebido: TLabel;
    lblQtdeNC: TLabel;
    lblDisposicao: TLabel;
    lblExecutadoPor: TLabel;
    lblGerendeAprovou: TLabel;
    lblDataTratamento: TLabel;
    lblFinalizadoEm: TLabel;
    lblTextos: TLabel;
    Label5: TLabel;
    lblEncontrado: TLabel;
    lblComentarios: TLabel;
    txtOrigem: TDBMemo;
    txtRelatosOcorrencia: TDBMemo;
    txtLoteRecebido: TDBMemo;
    txtQtdeNC: TDBMemo;
    cbbDisposicao: TwwDBLookupCombo;
    cbbExecutadoPor: TwwDBLookupCombo;
    cbbGerenteAprovou: TwwDBLookupCombo;
    deDtaAprovacao: TJvDBDateEdit;
    deDtaFinalizado: TJvDBDateEdit;
    txtEspecificado: TDBMemo;
    txtEncontrado: TDBMemo;
    txtComentarios: TDBMemo;
    cbPlanoAcao: TDBCheckBox;
    Label4: TLabel;
    Label6: TLabel;
    dgAnaIButton: TwwIButton;
    btnImprimirPlano: TBitBtn;
    FAT_XL_M_NFE: TfrxXLSExport;
    FAT_PD_M_NFE: TfrxPDFExport;
    FAT_DB_M_NFE_ITE_IQM: TfrxDBDataset;
    FAT_DB_M_NFE_ITE_IQM_ANA: TfrxDBDataset;
    FAT_DB_M_NFE_ITE: TfrxDBDataset;
    FAT_DB_M_NFE: TfrxDBDataset;
    FAT_FR_M_NFE_IQM: TfrxReport;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure dgItensDblClick(Sender: TObject);
    procedure txtCondComercClick(Sender: TObject);
    procedure txtPreservProdClick(Sender: TObject);
    procedure txtQtdPedNfeClick(Sender: TObject);
    procedure txtCertQualidClick(Sender: TObject);
    procedure TxtQualidadeClick(Sender: TObject);
    procedure dgItensCellChanged(Sender: TObject);
    procedure cbbDisposicaoEnter(Sender: TObject);
    procedure cbbGerenteAprovouEnter(Sender: TObject);
    procedure cbbExecutadoPorEnter(Sender: TObject);
    procedure cbPlanoAcaoClick(Sender: TObject);
    procedure dgAnaDblClick(Sender: TObject);
    procedure dgAnaIButtonClick(Sender: TObject);
    procedure btnImprimirPlanoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure ExcInspecaoItem;
    procedure AcoesPosTestes;
    function  AltResultRecebimento:String;
    procedure PreencherCampoOrigem;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_NFE_IQM: TFAT_FM_M_NFE_IQM;

implementation

{$R *.dfm}

uses uDmGeral,uProxy,UApplayClassProxy, FAT_UN_M_NFE_ANA,
  FAT_RN_M_NFE, uDmSgq;

procedure TFAT_FM_M_NFE_IQM.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario3(1,'%');
  dmSgq.BusDisposicao(1,'%');
end;

procedure TFAT_FM_M_NFE_IQM.acAdicionaExecute(Sender: TObject);
begin
  //inherited;
  ShowMessage('Para inspecionar o item, localize a nota fiscal, clique em alterar e depois dê dois cliques no item desejado no grid ao lado.');
end;

procedure TFAT_FM_M_NFE_IQM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       //pcDados.Enabled := false;
       if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
          begin
            txtResultadoFinal.Text := AltResultRecebimento;
          end;
     end;
end;

procedure TFAT_FM_M_NFE_IQM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       //pcDados.Enabled := false;
       dbGrid.SetFocus;
     end
   else
     begin

       if txtNLoteFabricante.CanFocus then
          txtNLoteFabricante.SetFocus
       else
          begin
            if txtRelatosOcorrencia.CanFocus then
               txtRelatosOcorrencia.SetFocus;
          end;
     end;
end;

procedure TFAT_FM_M_NFE_IQM.acExcluirExecute(Sender: TObject);
begin

  if FAT_CD_M_NFE_ITE_IQM_TesPermExclusao  then
     begin
       if MessageDlg('Confirma a exclusão da inspeção do item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            ExcInspecaoItem;
            inherited;
          end;
     end;

end;

procedure TFAT_FM_M_NFE_IQM.acGravarExecute(Sender: TObject);
var
  codigo, id_sequencia: String;
begin
  if FAT_CD_M_NFE_ITE_IQM_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin

             codigo := dmGeral.FAT_CD_M_IQM.FieldByName('ID_IQM').AsString;
             id_sequencia := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_sequencia').AsString;

             //AcoesPosTestes;

             DmGeral.FAT_CD_M_NFE.Edit;
             DmGeral.FAT_CD_M_NFEsituacao_inspecao.AsInteger := FAT_CD_M_IQM_ITE_AtuSitInspNF;

             DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
             inherited;

             dmGeral.FAT_CD_M_IQM.Close;
             dmGeral.FAT_CD_M_IQM.Data :=
             dmGeral.FAT_CD_M_IQM.DataRequest(
                     VarArrayOf([0,codigo]));

             if not dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
                    dmGeral.FAT_CD_M_IQM_ITE.locate('id_sequencia',id_sequencia,[]);

             AbrirBuscas;
             //pcDados.Enabled    := false;
             //pcDados.ActivePage := tsInspecao;
           end
        else
           begin
             if txtNLoteFabricante.CanFocus then
                txtNLoteFabricante.SetFocus
             else
                begin
                  if txtRelatosOcorrencia.CanFocus then
                     txtRelatosOcorrencia.SetFocus;
                end;
           end;
     end
  else
     begin
       if txtNLoteFabricante.CanFocus then
          txtNLoteFabricante.SetFocus
       else
          begin
            if txtRelatosOcorrencia.CanFocus then
               txtRelatosOcorrencia.SetFocus;
          end;
     end;
end;

procedure TFAT_FM_M_NFE_IQM.AcoesPosTestes;
begin

end;

function TFAT_FM_M_NFE_IQM.AltResultRecebimento: String;
begin
  result := '';

  if not dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       if (txtCondComerc.ItemIndex  = 1) and
          (txtQtdPedNfe.itemIndex   = 1) and
          (TxtQualidade.ItemIndex   = 1) and
          (txtPreservProd.ItemIndex = 1) and
          (txtCertQualid.ItemIndex  = 1) then
           begin
             if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger := 1;
                end;
             result := 'Aprovado';
           end
        else
           begin
             if (txtCondComerc.ItemIndex   = 0) or
                (txtQtdPedNfe.itemIndex    = 0) or
                (TxtQualidade.ItemIndex    = 0) or
                (txtPreservProd.ItemIndex  = 0) or
                (txtCertQualid.ItemIndex   = 0) then
                begin
                  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
                     begin
                       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger := 0;
                     end;
                   Result := 'Reprovado';
                end;
           end;

        if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
           begin
              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger := 0;

              if (txtCondComerc.ItemIndex = 0)  then
                  begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;
                  end;
              if (txtQtdPedNfe.itemIndex = 0)      then
                  begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                  end;
              if (TxtQualidade.ItemIndex = 0)      then
                  begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                  end;

              if (txtPreservProd.ItemIndex = 0)   then
                  begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                  end;

              if (txtCertQualid.ItemIndex = 0) then
                  begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;
                  end;
           end;
     end;
end;

procedure TFAT_FM_M_NFE_IQM.btnImprimirPlanoClick(Sender: TObject);
var
  PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
      begin
        dmGeral.BUS_CD_C_ITE.Close;
        dmGeral.BUS_CD_C_ITE.Data :=
                    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_ITEM').AsString]));

        FAT_FR_M_NFE_IQM.Variables['CodFabrica'] := QuotedStr(dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString);
        FAT_FR_M_NFE_IQM.Variables['Contato']    := QuotedStr(dmGeral.BUS_CD_C_REP.FieldByName('NOME').AsString);

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(FAT_FR_M_NFE_IQM.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        FAT_FR_M_NFE_IQM.PrepareReport();
        FAT_FR_M_NFE_IQM.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_NFE_IQM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    { index:
    0-tipo_nf,Controle (ID_FISCAL)           0  Controle
    1-tipo_nf,Numero                         1  Número
    2-tipo_nf,Cliente
    3-tipo_nf,Fornecedor                     2  Fornecedor
    4-tipo_nf,Situação_doc
    5-tipo_nf,Modelo                         3  Modelo
    6-tipo_nf,Tipo Estoque                   4  Tipo de estoque
    7-tipo_nf,Data Documento                 5  Data documento
    8-tipo_nf,Data Emissao                   6  Emissão
    9-tipo_nf, id_pedido_venda
    10-tipo_nf, Descrição tipo de estoque    7  Tipo de estoque}

  if cbbPesquisa.ItemIndex = 2 then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+1,'E',txtPesquisa.Text]));
     end;

  if (cbbPesquisa.ItemIndex > 2) and (cbbPesquisa.ItemIndex < 7) then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+2,'E',txtPesquisa.Text]));
     end
  else
     begin
       if cbbPesquisa.ItemIndex < 2 then
          begin
            dmGeral.FAT_CD_M_NFE.Close;
            if (cbbPesquisa.ItemIndex = 0) and (trim(txtPesquisa.Text) = '') then
                dmGeral.FAT_CD_M_NFE.DataRequest(
                        VarArrayOf([0,'']))
            else
                dmGeral.FAT_CD_M_NFE.Data :=
                    dmGeral.FAT_CD_M_NFE.DataRequest(
                            VarArrayOf([cbbPesquisa.ItemIndex,'E',txtPesquisa.Text]));
          end;
       if cbbPesquisa.ItemIndex = 7 then
          begin
             dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex+3,'E',txtPesquisa.Text]));
          end;
     end;

   txtResultadoFinal.Text := AltResultRecebimento;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_NFE_IQM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  {  0-Controle
     1-Número
     2-Fornecedor
     3-Modelo
     4-Tipo de estoque
     5-Data documento
     6-Emissão
    }

  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1,4] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_NFE_IQM.cbPlanoAcaoClick(Sender: TObject);
begin
  inherited;
 

 { if not dmGeral.FAT_CD_M_NFE_ITE_IQM_ANA.IsEmpty then
    begin
      if not dmGeral.FAT_CD_M_NFE_ITE_IQMplano_acao_forn.AsBoolean then
         begin
           if cbPlanoAcao.CanFocus then
              begin
                 ShowMessage('O campo "Necessário plano de ação" não pode ser "Não" pois já existe plano de ação criado.');
                 cbPlanoAcao.Checked := true;
                 cbPlanoAcao.SetFocus;
                 abort;
              end;
         end;
    end;     }
end;

procedure TFAT_FM_M_NFE_IQM.dgAnaDblClick(Sender: TObject);
begin
  inherited;
  //dmGeral.FAT_CD_M_NFE_ITE_IQM_ANA.Cancel;

  dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       ShowMessage('Não existe inspeção para o item.');
       exit;
     end;

  if not dmGeral.FAT_CD_M_IQM_ITE.FieldByName('plano_acao_forn').AsBoolean then
     begin
       ShowMessage('Inspeção não necessita plano de ação para o fornecedor');
       exit;
     end;

  FAT_FM_M_NFE_ANA := TFAT_FM_M_NFE_ANA.CREATE(SELF);

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Insert;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ESPECIFICADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ESPECIFICADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ENCONTRADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ENCONTRADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('SITUACAO_ANALISE').AsInteger := 0;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_TOTAL').AsFloat         := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('PERC_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Edit;
     end;
  FAT_FM_M_NFE_ANA.ShowModal;
  FAT_FM_M_NFE_ANA.Free;
end;

procedure TFAT_FM_M_NFE_IQM.dgAnaIButtonClick(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_IQM_ITE.Cancel;
  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       ShowMessage('Não existe inspeção para o item.');
       exit;
     end;

  dmGeral.FAT_CD_M_IQM_ITE_ANA.Cancel;
  if dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
     begin
       ShowMessage('Não existe plano de ação para para o item.');
       exit;
     end;

  Botoes(dsNfeItensIqmAna.DataSet,4,dmGeral.FAT_CD_M_IQM_ITE_ANA);
end;

procedure TFAT_FM_M_NFE_IQM.dgItensCellChanged(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
end;

procedure TFAT_FM_M_NFE_IQM.dgItensDblClick(Sender: TObject);
begin
  inherited;


  dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Insert;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Edit;
     end;

  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert] then
     begin
       dmGeral.FAT_CD_M_IQM_ITEid_responsavel.AsInteger         := xFuncionario;
       dmGeral.FAT_CD_M_IQM_ITEnro_lote_fabric_produto.AsString := '0';
       dmGeral.FAT_CD_M_IQM_ITEcert_data.AsDateTime             := xDataSis;
       dmGeral.FAT_CD_M_IQM_ITEplano_acao_forn.AsBoolean        := false;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CERT_NUMERO').AsString    := ' ';
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger      := 0;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat          := 0;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat     := 0;
     end;

  txtNLoteFabricante.SetFocus;
end;

procedure TFAT_FM_M_NFE_IQM.ExcInspecaoItem;
var
  Obj:TSMClient;
begin
  try

  dmGeral.FAT_CD_M_IQM_ITE.Delete;

  Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);

  TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_NFE]);

  finally
     Obj.Free;
     dmGeral.FAT_CD_M_NFE.Close;
     dmGeral.FAT_CD_M_NFE.Open;
  end;
end;

procedure TFAT_FM_M_NFE_IQM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(FAT_FM_M_NFE_IQM);
end;

procedure TFAT_FM_M_NFE_IQM.FormShow(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));
  AbrirBuscas;

  cbbPesquisa.ItemIndex := 1;
  cbbPesquisaChange(self);
end;

procedure TFAT_FM_M_NFE_IQM.PreencherCampoOrigem;
var
  lTexto: String;
begin
  if txtCondComerc.ItemIndex = 0 then
     begin
       lTexto := 'Condições comerciais;';
     end;
  if txtQtdPedNfe.itemIndex = 0 then
     begin
       lTexto := lTexto + ' Quantidade;';
     end;
  if TxtQualidade.ItemIndex = 0 then
     begin
       lTexto := lTexto + ' Qualidade;';
     end;
  if txtPreservProd.ItemIndex = 0 then
     begin
       lTexto := lTexto + ' Preservação do produto;';
     end;
  if txtCertQualid.ItemIndex = 0 then
     begin
       lTexto := lTexto + ' Certificado da qualidade;';
     end;

  dmGeral.FAT_CD_M_IQM_ITEorigem.Text := lTexto;
end;

procedure TFAT_FM_M_NFE_IQM.txtCertQualidClick(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
  PreencherCampoOrigem;

end;

procedure TFAT_FM_M_NFE_IQM.txtCondComercClick(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_NFE_IQM.cbbDisposicaoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusDisposicao(1,'%');
  cbbDisposicao.DropDown;
end;

procedure TFAT_FM_M_NFE_IQM.cbbExecutadoPorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbExecutadoPor.DropDown;
end;

procedure TFAT_FM_M_NFE_IQM.cbbGerenteAprovouEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbGerenteAprovou.DropDown;
end;

procedure TFAT_FM_M_NFE_IQM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       btnFiltroClick(self);
     end;
end;

procedure TFAT_FM_M_NFE_IQM.txtPreservProdClick(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
  PreencherCampoOrigem;

end;

procedure TFAT_FM_M_NFE_IQM.txtQtdPedNfeClick(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
  PreencherCampoOrigem;

end;

procedure TFAT_FM_M_NFE_IQM.TxtQualidadeClick(Sender: TObject);
begin
  inherited;
  txtResultadoFinal.Text := AltResultRecebimento;
  PreencherCampoOrigem;
  
end;

end.
