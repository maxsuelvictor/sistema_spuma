unit FAT_UN_M_NFE_IPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBGrids;

type
  TFAT_FM_M_NFE_IPE = class(TForm)
    lblTitulo: TLabel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbGrid: TwwDBGrid;
    gdItens: TwwDBGrid;
    btnImporta: TButton;
    btnSair: TButton;
    dsCmpPed: TDataSource;
    dsCmpPedItens: TDataSource;
    Label2: TLabel;
    dsPedNfe: TDataSource;
    dsPedNfeIte: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnImportaClick(Sender: TObject);
    procedure gdItensCellChanged(Sender: TObject);
    procedure gdItensDrawDataCell(Sender: TObject; const Rect: TRect;
              Field: TField; State: TGridDrawState);
    procedure ImpParaNfe;
    procedure ImpParaInsp;
  private
    {Private declarations }
  public
    {Public declarations }
    var
      xRegistroSel: Boolean;
      xRegistroImport: Boolean;
      xOriChamada: integer; // 0 - Nota de Entrada  ou  1 - Inspeção
  end;

var
  FAT_FM_M_NFE_IPE: TFAT_FM_M_NFE_IPE;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,UApplayClassProxy, EST_UN_M_NFE,FAT_RN_M_NFE;

procedure TFAT_FM_M_NFE_IPE.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFAT_FM_M_NFE_IPE.btnImportaClick(Sender: TObject);
begin
  if dmGeral.CMP_CD_M_PED.IsEmpty then
     begin
       ShowMessage('Nenhum pedido de compra foi encontrado.');
       exit;
     end;

  if not xRegistroSel then
     begin
       showmessage('Nenhum pedido de compra foi selecionado.');
       exit;
     end;

  try
   dmGeral.CMP_CD_M_PED.BeforeEdit := nil;

  dmGeral.CMP_CD_M_PED_ITE.First;
  while not dmGeral.CMP_CD_M_PED_ITE.eof do
      begin
        dmGeral.CMP_CD_M_PED_ITE.Edit;
        dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat := dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat  -
                                                         dmGeral.CMP_CD_M_PED_ITEqtde_baixada.AsFloat;
        dmGeral.CMP_CD_M_PED_ITE.Post;
        dmGeral.CMP_CD_M_PED_ITE.Next;
      end;
  dmGeral.CMP_CD_M_PED_ITE.First;


  dmGeral.CMP_CD_M_PED_ITE.Filtered := true;
  dmGeral.CMP_CD_M_PED_ITE.Filter   := ' qtde_a_baixar > 0 ';
  if dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED_ITE.Filtered := false;
       showmessage('Não existe quantidade pra baixar.');
       exit;
     end;


  xRegistroImport := false;
  dmGeral.CMP_CD_M_PED_ITE.Filtered := false;

  if MessageDlg('Confirma importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if xOriChamada = 0 then
          ImpParaNfe;
       if xOriChamada = 1 then
          ImpParaInsp;
     end;
  finally
    dmGeral.CMP_CD_M_PED.BeforeEdit :=  dmGeral.CMP_CD_M_PEDBeforeEdit;
  end;

end;

procedure TFAT_FM_M_NFE_IPE.dbGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  xRegistroSel := true;
end;

procedure TFAT_FM_M_NFE_IPE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.CMP_CD_M_PED_ITE.AfterPost := dmGeral.CMP_CD_M_PED_ITEAfterPost;

  if xRegistroImport = false then
     begin
       dmGeral.CMP_CD_M_PED.Close;
     end;


end;

procedure TFAT_FM_M_NFE_IPE.FormShow(Sender: TObject);
var
  i: integer;
begin

  xRegistroSel := false;
  xRegistroImport := false;

  btnImporta.SetFocus;

  dmGeral.CMP_CD_M_PED.Close;

  case xOriChamada of
     0: // Por Nota de Entrada
     begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true then
          begin
            dmGeral.CMP_CD_M_PED.Data :=
               dmGeral.CMP_CD_M_PED.DataRequest(
                       VarArrayOf([93,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger]));

          end
       else
          begin
            dmGeral.CMP_CD_M_PED.Data :=
               dmGeral.CMP_CD_M_PED.DataRequest(
                       VarArrayOf([90,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger]));
          end;
     end;
     1: // Por Inspeção de Itens
     begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true then
          begin
            dmGeral.CMP_CD_M_PED.Data :=
               dmGeral.CMP_CD_M_PED.DataRequest(
                       VarArrayOf([93,dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsInteger]));
          end
       else
          begin
            dmGeral.CMP_CD_M_PED.Data :=
               dmGeral.CMP_CD_M_PED.DataRequest(
                       VarArrayOf([90,dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsInteger]));
          end;
     end;
  end;


  dmGeral.CMP_CD_M_PED_ITE.AfterPost := nil;
end;

procedure TFAT_FM_M_NFE_IPE.gdItensCellChanged(Sender: TObject);
var
  lColuna: Integer;
begin
    // Índice da coluna
    {if gdItens.SelectedIndex in [0..10] then
       begin
          gdItens.Columns[gdItens.SelectedIndex].ReadOnly := true;
       end;}
end;

procedure TFAT_FM_M_NFE_IPE.gdItensDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 { if not (Field.Name = 'CMP_CD_M_PED_ITEqtde_a_baixar') then
    begin
      gdItens.Canvas.Brush.Color := $00DADADA;
    end;
  gdItens.Canvas.FillRect(Rect);
  gdItens.DefaultDrawDataCell(Rect,Field,State);}
end;

procedure TFAT_FM_M_NFE_IPE.ImpParaInsp;
var
  SMPrincipal: TSMClient;
  lTotalMerc: Currency;
  Inconsitencia: Boolean;
begin

  Inconsitencia   := false;
  lTotalMerc      := 0;
  try
    dmGeral.FAT_CD_M_IQM_ITE.BeforePost   := nil;
    // --------------------------------------------------------------------

    dmGeral.CMP_CD_M_PED_ITE.First;
    if not dmGeral.CMP_CD_M_PED.IsEmpty then
       begin
         dmGeral.CMP_CD_M_PED_ITE.cancel;

         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
            begin
               while not dmGeral.CMP_CD_M_PED_ITE.Eof do
                  begin
                    dmGeral.BusItens(0,dmGeral.CMP_CD_M_PED_ITEid_item.Text);
                    if dmGeral.BUS_CD_C_ITEgeracao_lote_interno.AsInteger <> 3 then
                       begin
                         ShowMessage('Existe item no pedido de compra que não controla lote pela inspeção.'+#13+
                                     'Importação não permitida.');
                         dmGeral.CMP_CD_M_PED_ITE.First;
                         abort;
                       end;
                    dmGeral.CMP_CD_M_PED_ITE.Next;
                  end;
            end;
         dmGeral.BUS_CD_C_ITE.Close;

         dmGeral.CMP_CD_M_PED_ITE.Filtered := true;
         dmGeral.CMP_CD_M_PED_ITE.Filter   := ' qtde_a_baixar > 0 ';

         dmGeral.CMP_CD_M_PED_ITE.First;


         // Alimentando a tabela: CMP_CD_M_PED_IQM
         dmGeral.CMP_CD_M_PED_IQM.Insert;
         dmGeral.CMP_CD_M_PED_IQMid_iqm.AsInteger :=
                    dmGeral.FAT_CD_M_IQM.FieldByName('ID_IQM').AsInteger;

         while not dmGeral.CMP_CD_M_PED_ITE.eof do
             begin
               // Observação:
                  // O frete que está no pedido de compra não é repassado pois o usuário deverá
                  // buscar pelo Conhecimento de frete.

               // Alimentando a tabela de Itens do IQM
               dmGeral.FAT_CD_M_IQM_ITE.Insert;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               try
                 dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_IQM_ITE');
               finally
                 FreeAndNil(SMPrincipal);
               end;
               dmGeral.FAT_CD_M_IQM_ITEID_SEQUENCIA_ITE_CMP_PED.AsInteger := dmGeral.CMP_CD_M_PED_ITEid_sequencia.AsInteger;
               dmGeral.FAT_CD_M_IQM_ITEid_item.AsInteger                  := dmGeral.CMP_CD_M_PED_ITEid_item.AsInteger;
               dmGeral.FAT_CD_M_IQM_ITEid_busca_item.text                 := dmGeral.CMP_CD_M_PED_ITEid_busca_item.text;
               dmGeral.FAT_CD_M_IQM_ITEint_nomeite.text                   := dmGeral.CMP_CD_M_PED_ITEint_nomeite.text;
               dmGeral.FAT_CD_M_IQM_ITEint_undcom.text                    := dmGeral.CMP_CD_M_PED_ITEint_nomeund.text;
               dmGeral.FAT_CD_M_IQM_ITEid_cor.text                        := dmGeral.CMP_CD_M_PED_ITEid_cor.text;
               dmGeral.FAT_CD_M_IQM_ITEint_nomecor.text                   := dmGeral.CMP_CD_M_PED_ITEint_nomecor.text;
               dmGeral.FAT_CD_M_IQM_ITEid_tamanho.text                    := dmGeral.CMP_CD_M_PED_ITEid_tamanho.text;
               dmGeral.FAT_CD_M_IQM_ITEint_nometam.text                   := dmGeral.CMP_CD_M_PED_ITEint_nometam.text;

               if dmGeral.FAT_CD_M_IQM_ITEid_cor.text = '' then
                  dmGeral.FAT_CD_M_IQM_ITEid_cor.asinteger                := 0;

               if dmGeral.FAT_CD_M_IQM_ITEid_tamanho.text = '' then
                  dmGeral.FAT_CD_M_IQM_ITEid_tamanho.asinteger            := 0;


               dmGeral.FAT_CD_M_IQM_ITEqtde.AsFloat                       := dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat;
               // fim FAT_CD_M_IQM_ITE.


               dmGeral.FAT_CD_M_IQM_ITE.Post;
               dmGeral.CMP_CD_M_PED_ITE.Next;
             end;
       end;
    dmGeral.FAT_CD_M_IQM_ITE.First;

    dmGeral.CMP_CD_M_PED_ITE.Filtered := false;

    dmGeral.FAT_CD_M_IQM.FieldByName('ID_PEDIDO_COMPRA').AsInteger :=
            dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
    finally
       dmGeral.FAT_CD_M_IQM_ITE.BeforePost := dmGeral.FAT_CD_M_IQM_ITEBeforePost;
       dmGeral.CMP_CD_M_PED_ITE.Filtered := false;
    end;
    xRegistroImport := true;
    close;
end;

procedure TFAT_FM_M_NFE_IPE.ImpParaNfe;
var
  SMPrincipal : TSMClient;
  lTotalMerc, lTotalFrete: Currency;
begin

  lTotalMerc      := 0;
  lTotalFrete     := 0;
  try
    dmGeral.FAT_CD_M_NFE_ITE.BeforePost   := nil;
    // --------------------------------------------------------------------

    dmGeral.CMP_CD_M_PED_ITE.First;
    if not dmGeral.CMP_CD_M_PED.IsEmpty then
       begin
         dmGeral.CMP_CD_M_PED_ITE.cancel;

         dmGeral.CMP_CD_M_PED_ITE.Filtered := true;
         dmGeral.CMP_CD_M_PED_ITE.Filter   := ' qtde_a_baixar > 0 ';

         dmGeral.CMP_CD_M_PED_ITE.First;


         // Alimentando a tabela: CMP_CD_M_PED_NFE
         dmGeral.CMP_CD_M_PED_NFE.Insert;
         dmGeral.CMP_CD_M_PED_NFEid_fiscal.AsInteger :=
                    dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;


         while not dmGeral.CMP_CD_M_PED_ITE.eof do
             begin
               // Observação:
                  // O frete que está no pedido de compra não é repassado pois o usuário deverá
                  // buscar pelo Conhecimento de frete.

               // Alimentando a tabela de Itens da Nota Fiscal
               dmGeral.FAT_CD_M_NFE_ITE.Insert;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               try
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
               finally
                 FreeAndNil(SMPrincipal);
               end;
               dmGeral.FAT_CD_M_NFE_ITEID_SEQUENCIA_ITE_CMP_PED.AsInteger := dmGeral.CMP_CD_M_PED_ITEid_sequencia.AsInteger;
               dmGeral.FAT_CD_M_NFE_ITEid_item.AsInteger                  := dmGeral.CMP_CD_M_PED_ITEid_item.AsInteger;


               dmGeral.BUS_CD_C_ITE.Close;
               dmGeral.BUS_CD_C_ITE.Data :=
                       dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE_ITEid_item.Text]));
               dmGeral.FAT_CD_M_NFE_ITEint_tipo_item.text := dmGeral.BUS_CD_C_ITEint_tipo_item.text;
               dmGeral.BUS_CD_C_ITE.Close;

               dmGeral.FAT_CD_M_NFE_ITEid_busca_item.text                 := dmGeral.CMP_CD_M_PED_ITEid_busca_item.text;
               dmGeral.FAT_CD_M_NFE_ITEint_desc_item.text                 := dmGeral.CMP_CD_M_PED_ITEint_nomeite.text;
               dmGeral.FAT_CD_M_NFE_ITEint_und_venda.text                 := dmGeral.CMP_CD_M_PED_ITEint_nomeund.text;
               dmGeral.FAT_CD_M_NFE_ITEid_cor.text                        := dmGeral.CMP_CD_M_PED_ITEid_cor.text;
               dmGeral.FAT_CD_M_NFE_ITEid_tamanho.text                    := dmGeral.CMP_CD_M_PED_ITEid_tamanho.text;
               if dmGeral.FAT_CD_M_NFE_ITEid_cor.text = '' then
                  dmGeral.FAT_CD_M_NFE_ITEid_cor.asinteger                := 0;
               if dmGeral.FAT_CD_M_NFE_ITEid_tamanho.text = '' then
                  dmGeral.FAT_CD_M_NFE_ITEid_tamanho.asinteger            := 0;


               dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat                       := dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat;

               dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency  :=  dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat *
                                                                            dmGeral.CMP_CD_M_PED_ITEvlr_unitario.AsCurrency;

               dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency    := (dmGeral.CMP_CD_M_PED_ITEvlr_desconto.AsCurrency / dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat) *
                                                                            dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat;

               dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency    := (dmGeral.CMP_CD_M_PED_ITEvlr_frete.AsCurrency / dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat) *
                                                                            dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat;


               dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.text          := '49';
               if dmGeral.CMP_CD_M_PED_ITEper_ipi.AsCurrency > 0 then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.text          := '00';
                    dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency := dmGeral.CMP_CD_M_PED_ITEper_ipi.AsCurrency;
                  end;

               lTotalMerc := lTotalMerc + dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency;
               lTotalFrete := lTotalFrete + dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency;

               dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);

               CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);
               // fim FAT_CD_M_NFE_ITE.

               // Alimentando a tabela CMP_CD_M_PED_NFE_ITE
               dmGeral.CMP_CD_M_PED_NFE_ITE.Insert;
               dmGeral.CMP_CD_M_PED_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger         := dmGeral.CMP_CD_M_PED_ITEid_sequencia.AsInteger;
               dmGeral.CMP_CD_M_PED_NFE_ITEid_item.AsInteger                              := dmGeral.CMP_CD_M_PED_ITEid_item.AsInteger;
               dmGeral.CMP_CD_M_PED_NFE_ITEid_cor.text                                    := dmGeral.CMP_CD_M_PED_ITEid_cor.text;
               dmGeral.CMP_CD_M_PED_NFE_ITEid_tamanho.text                                := dmGeral.CMP_CD_M_PED_ITEid_tamanho.text;
               dmGeral.CMP_CD_M_PED_NFE_ITEqtde.AsFloat                                   := dmGeral.CMP_CD_M_PED_ITEqtde_a_baixar.AsFloat;
               dmGeral.CMP_CD_M_PED_NFE_ITE.Post;
               // fim CMP_CD_M_PED_NFE_ITE

               dmGeral.FAT_CD_M_NFE_ITE.Post;
               dmGeral.CMP_CD_M_PED_ITE.Next;
             end;
       end;
    dmGeral.FAT_CD_M_NFE_ITE.First;

    dmGeral.CMP_CD_M_PED_ITE.Filtered := false;

    dmGeral.FAT_CD_M_NFEvlr_mercadoria.AsCurrency       := lTotalMerc;
    dmGeral.FAT_CD_M_NFEfre_valor.AsCurrency            := lTotalFrete;

    dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').AsInteger :=
            dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;

    dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger :=
            dmGeral.CMP_CD_M_PED.FieldByName('IND_FRETE').AsInteger;

    finally
       dmGeral.FAT_CD_M_NFE_ITE.BeforePost := dmGeral.FAT_CD_M_NFE_ITEBeforePost;
       dmGeral.CMP_CD_M_PED_ITE.Filtered := false;
    end;
    xRegistroImport := true;
    close;
end;

end.
