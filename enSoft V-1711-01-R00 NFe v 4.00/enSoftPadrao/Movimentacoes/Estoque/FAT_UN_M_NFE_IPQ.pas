unit FAT_UN_M_NFE_IPQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBGrids;

type
  TFAT_FM_M_NFE_IPQ = class(TForm)
    lblTitulo: TLabel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbGrid: TwwDBGrid;
    gdItens: TwwDBGrid;
    btnImporta: TButton;
    btnSair: TButton;
    dsIqm: TDataSource;
    dsCmpPedItens: TDataSource;
    Label2: TLabel;
    lblSelInspecao: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnImportaClick(Sender: TObject);
    procedure gdItensCellChanged(Sender: TObject);
  private
    {Private declarations }
     procedure ImpInspParaNfe;
     procedure ImpInspParaXML;
  public
    {Public declarations }
    var
      xRegistroSel: Boolean;
      xRegistroImport: Boolean;
      xOriChamada: integer; // 0 - Nota de Entrada  1 - Importação do XML
  end;

var
  FAT_FM_M_NFE_IPQ: TFAT_FM_M_NFE_IPQ;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,UApplayClassProxy, EST_UN_M_NFE,FAT_RN_M_NFE;

procedure TFAT_FM_M_NFE_IPQ.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFAT_FM_M_NFE_IPQ.btnImportaClick(Sender: TObject);
begin
  if dmGeral.BUS_CD_M_IQM.IsEmpty then
     begin
       ShowMessage('Nenhuma inspeção foi encontrada.');
       exit;
     end;

  if not xRegistroSel then
     begin
       showmessage('Nenhuma inspeção foi selecionada.');
       exit;
     end;

  xRegistroImport := false;

  if MessageDlg('Confirma importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if xOriChamada = 0 then
           ImpInspParaNfe;
        if xOriChamada = 1 then
           ImpInspParaXML;
     end;
end;

procedure TFAT_FM_M_NFE_IPQ.dbGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not dmGeral.BUS_CD_M_IQM.IsEmpty then
     begin
       xRegistroSel := true;

       lblSelInspecao.Caption := 'Inspeção selecionada: ' +
            dmGeral.BUS_CD_M_IQM.FieldByName('ID_IQM').AsString + ', Nro NF: ' +
            dmGeral.BUS_CD_M_IQM.FieldByName('NUMERO_NF').AsString;
     end;
end;

procedure TFAT_FM_M_NFE_IPQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if xRegistroImport = false then
     begin
       dmGeral.BUS_CD_M_IQM.Close;
     end;
end;

procedure TFAT_FM_M_NFE_IPQ.FormShow(Sender: TObject);
var
  i: integer;
begin

  xRegistroSel := false;
  xRegistroImport := false;

  btnImporta.SetFocus;

  if xOriChamada = 0 then // Nota Fiscal de Entrada
     begin
        dmGeral.BUS_CD_M_IQM.Close;
        dmGeral.BUS_CD_M_IQM.Data :=
                dmGeral.BUS_CD_M_IQM.DataRequest(
                        VarArrayOf([90,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsString,
                                       dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString]));
     end;

  if xOriChamada = 1 then // Importação de XML
     begin
        dmGeral.BusFornecedor(2,dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString);
        dmGeral.BUS_CD_M_IQM.Close;
        dmGeral.BUS_CD_M_IQM.Data :=
                dmGeral.BUS_CD_M_IQM.DataRequest(
                        VarArrayOf([90,dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,
                                       dmGeral.FAT_CD_M_XML.FieldByName('NOTA_FISCAL').AsString,
                                       dmGeral.FAT_CD_M_XML.FieldByName('SERIE').AsString]));
     end;

  dmGeral.AtualizarGridItens(gdItens,'int_nomeite',16,12);
end;

procedure TFAT_FM_M_NFE_IPQ.gdItensCellChanged(Sender: TObject);
var
  lColuna: Integer;
begin
end;

procedure TFAT_FM_M_NFE_IPQ.ImpInspParaNfe;
var
  SMPrincipal: TSMClient;
  lTotalMerc,lTotalFre: Currency;
begin

  lTotalMerc      := 0;
  lTotalFre       := 0;
  try
    dmGeral.FAT_CD_M_NFE_ITE.BeforePost   := nil;
  // --------------------------------------------------------------------

  dmGeral.BUS_CD_M_IQM_ITE.First;
  if not dmGeral.BUS_CD_M_IQM_ITE.IsEmpty then
     begin

       // Irá preencher a tabela de itens da nota fiscal
       while not dmGeral.BUS_CD_M_IQM_ITE.eof do
           begin
               if dmGeral.BUS_CD_M_IQMid_pedido_compra.AsInteger > 0 then
                  begin
                    dmGeral.BUS_CD_M_CMP_PED.Close;
                    dmGeral.BUS_CD_M_CMP_PED.Data :=
                    dmGeral.BUS_CD_M_CMP_PED.DataRequest(
                            VarArrayOf([0, dmGeral.BUS_CD_M_IQMid_pedido_compra.Text]));
                  end;

               dmGeral.FAT_CD_M_NFE_ITE.Insert;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               try
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
               finally
                 FreeAndNil(SMPrincipal);
               end;
               dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger     := dmGeral.BUS_CD_M_IQM_ITEid_sequencia.AsInteger;
               dmGeral.FAT_CD_M_NFE_ITEid_item.AsInteger                  := dmGeral.BUS_CD_M_IQM_ITEid_item.AsInteger;
               dmGeral.FAT_CD_M_NFE_ITEid_busca_item.text                 := dmGeral.BUS_CD_M_IQM_ITEid_busca_item.text;

               dmGeral.BUS_CD_C_ITE.Close;
               dmGeral.BUS_CD_C_ITE.Data :=
                       dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_IQM_ITEid_item.Text]));
               dmGeral.FAT_CD_M_NFE_ITEint_tipo_item.text := dmGeral.BUS_CD_C_ITEint_tipo_item.text;

               dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);

               dmGeral.BUS_PR_X_PIS_ENT;
               dmGeral.BUS_PR_X_COF_ENT;
               if dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2 then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString := '99';
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString := '99';
                  end
               else
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                            dmGeral.BUS_CD_C_ITE.FieldByName('INT_PIS_ENTRADA').AsString;
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                            dmGeral.BUS_CD_C_ITE.FieldByName('INT_COF_ENTRADA').AsString;
                  end;
               EST_FM_M_NFE.cbbCST_PIS_Entrada.Text := dmGeral.BUS_CD_X_PIS_ENT.FieldByName('DESCRICAO').AsString;
               EST_FM_M_NFE.cbbCST_PIS_Entrada.SetSelText(dmGeral.BUS_CD_X_PIS_ENT.FieldByName('DESCRICAO').AsString);
               EST_FM_M_NFE.cbbCST_COFINS_Entrada.Text := dmGeral.BUS_CD_X_COF_ENT.FieldByName('DESCRICAO').AsString;
               EST_FM_M_NFE.cbbCST_COFINS_Entrada.SetSelText(dmGeral.BUS_CD_X_COF_ENT.FieldByName('DESCRICAO').AsString);

               dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.text                     :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('INT_IPI_ENTRADA').AsString;

               dmGeral.BUS_CD_C_ITE.Close;

               dmGeral.FAT_CD_M_NFE_ITEint_desc_item.text                 := dmGeral.BUS_CD_M_IQM_ITEint_nomeite.text;
               dmGeral.FAT_CD_M_NFE_ITEint_und_venda.text                 := dmGeral.BUS_CD_M_IQM_ITEint_undcom.text;

               dmGeral.FAT_CD_M_NFE_ITEid_cor.text                        := dmGeral.BUS_CD_M_IQM_ITEid_cor.text;
               dmGeral.FAT_CD_M_NFE_ITEint_nomecor.text                   := dmGeral.BUS_CD_M_IQM_ITEint_nomecor.text;
               dmGeral.FAT_CD_M_NFE_ITEid_tamanho.text                    := dmGeral.BUS_CD_M_IQM_ITEid_tamanho.text;
               dmGeral.FAT_CD_M_NFE_ITEint_nometam.text                   := dmGeral.BUS_CD_M_IQM_ITEint_nometam.text;

               dmGeral.FAT_CD_M_NFE_ITEnum_lote.text                      := dmGeral.BUS_CD_M_IQM_ITEnum_lote.text;
               if dmGeral.FAT_CD_M_NFE_ITEid_cor.text = '' then
                  dmGeral.FAT_CD_M_NFE_ITEid_cor.asinteger                := 0;
               if dmGeral.FAT_CD_M_NFE_ITEid_tamanho.text = '' then
                  dmGeral.FAT_CD_M_NFE_ITEid_tamanho.asinteger            := 0;

               dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat                       := dmGeral.BUS_CD_M_IQM_ITEqtde.AsFloat;
               dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency          := 0;



               if dmGeral.BUS_CD_M_IQM_ITEid_sequencia_ite_cmp_ped.AsInteger > 0 then
                  begin
                    if dmGeral.BUS_CD_M_CMP_PED_ITE.Locate('ID_SEQUENCIA',dmGeral.BUS_CD_M_IQM_ITEid_sequencia_ite_cmp_ped.Text,[]) then
                       begin
                         dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency  := dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat *
                                                                               dmGeral.BUS_CD_M_CMP_PED_ITEvlr_unitario.AsCurrency;

                         dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency    := (dmGeral.BUS_CD_M_CMP_PED_ITEvlr_desconto.AsCurrency / dmGeral.BUS_CD_M_CMP_PED_ITEqtde.AsFloat) *
                                                                                  dmGeral.BUS_CD_M_IQM_ITEqtde.AsFloat;

                         dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency    := (dmGeral.BUS_CD_M_CMP_PED_ITEvlr_frete.AsCurrency / dmGeral.BUS_CD_M_CMP_PED_ITEqtde.AsFloat) *
                                                                                  dmGeral.BUS_CD_M_IQM_ITEqtde.AsFloat;
                         if dmGeral.BUS_CD_M_CMP_PED_ITEper_ipi.AsCurrency > 0 then
                            begin
                              dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.text          := '00';
                              dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency := dmGeral.BUS_CD_M_CMP_PED_ITEper_ipi.AsCurrency;
                            end
                         else
                            begin
                              dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.text          := '49';
                            end;
                       end;
                  end;



               lTotalMerc := lTotalMerc + dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency;
               lTotalFre  := lTotalFre + dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency;

               dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);

               CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);

               dmGeral.FAT_CD_M_NFE_ITE.Post;
               dmGeral.BUS_CD_M_IQM_ITE.Next;
           end;
     end;
  dmGeral.BUS_CD_M_IQM_ITE.First;


  dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency       := lTotalMerc;
  dmGeral.FAT_CD_M_NFEfre_valor.AsCurrency            := lTotalFre;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger :=
          dmGeral.BUS_CD_M_IQM.FieldByName('ID_IQM').AsInteger;
  if (not dmGeral.BUS_CD_M_CMP_PED.IsEmpty) then
    begin
      dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger :=
          dmGeral.BUS_CD_M_CMP_PED.FieldByName('IND_FRETE').AsInteger;
    end;
  finally
     dmGeral.FAT_CD_M_NFE_ITE.BeforePost := dmGeral.FAT_CD_M_NFE_ITEBeforePost;
     dmGeral.BUS_CD_M_CMP_PED.Close;
     dmGeral.BUS_CD_M_IQM.close;
  end;

  xRegistroImport := true;
  close;
end;

procedure TFAT_FM_M_NFE_IPQ.ImpInspParaXML;
var
  SMPrincipal: TSMClient;
  lTotalMerc: Currency;
begin

  // Processo utilizado pela tela de Importação de XML.

  try
  dmGeral.BUS_CD_M_IQM_ITE.First;
  if not dmGeral.BUS_CD_M_IQM_ITE.IsEmpty then
     begin
       // Irá preencher a tabela de itens da nota fiscal
       while not dmGeral.BUS_CD_M_IQM_ITE.eof do
           begin
             if not dmGeral.FAT_CD_M_XML_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO;ID_SEQUENCIA_ITE_IQM',
                             VarArrayOf([dmGeral.BUS_CD_M_IQM_ITEid_item.AsInteger,
                                         dmGeral.BUS_CD_M_IQM_ITEid_cor.AsInteger,
                                         dmGeral.BUS_CD_M_IQM_ITEid_tamanho.AsInteger,
                                         dmGeral.BUS_CD_M_IQM_ITEid_sequencia.AsInteger]),[]) then
                begin
                  if dmGeral.FAT_CD_M_XML_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',
                             VarArrayOf([dmGeral.BUS_CD_M_IQM_ITEid_item.AsInteger,
                                         dmGeral.BUS_CD_M_IQM_ITEid_cor.AsInteger,
                                         dmGeral.BUS_CD_M_IQM_ITEid_tamanho.AsInteger]),[]) then
                     begin
                        dmGeral.FAT_CD_M_XML_ITE.edit;
                        dmGeral.FAT_CD_M_XML_ITE.FieldByName('NUM_LOTE').AsString :=
                                      dmGeral.BUS_CD_M_IQM_ITENUM_LOTE.AsString;
                        dmGeral.FAT_CD_M_XML_ITEid_sequencia_ite_iqm.AsInteger    :=
                                      dmGeral.BUS_CD_M_IQM_ITEid_sequencia.AsInteger;
                        dmGeral.FAT_CD_M_XML_ITE.Post;
                     end;
                end;
             dmGeral.BUS_CD_M_IQM_ITE.Next;
           end;
     end;
  dmGeral.BUS_CD_M_IQM_ITE.First;

  dmGeral.FAT_CD_M_XML.FieldByName('ID_IQM').AsInteger :=
          dmGeral.BUS_CD_M_IQM.FieldByName('ID_IQM').AsInteger;
  finally
     dmGeral.BUS_CD_M_IQM.close;
  end;
  xRegistroImport := true;
  close;
end;

end.
