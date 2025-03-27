unit FAT_UN_M_PED_IOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB;

type
  TFAT_FM_M_PED_IOR = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    dbGrid: TwwDBGrid;
    btnImporta: TButton;
    btnCancela: TButton;
    dsOrc: TDataSource;
    dsOrcItens: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure dbGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    xFechaCdsOrc: Boolean;
  end;

var
  FAT_FM_M_PED_IOR: TFAT_FM_M_PED_IOR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_PED_IOR.btnCancelaClick(Sender: TObject);
begin
  xFechaCdsOrc := true;
  close;
end;

procedure TFAT_FM_M_PED_IOR.btnImportaClick(Sender: TObject);
begin

  if dmGeral.FAT_CD_M_ORC.IsEmpty then
     begin
       ShowMessage('Nenhum orçamento foi encontrado.');
       exit;
     end;

  if xFechaCdsOrc then
     begin
       showmessage('Nenhum orçamento foi selecionado.');
       exit;
     end;


  if MessageDlg('Confirma importação do orçamento: ' +
                dmGeral.FAT_CD_M_ORC.FieldByName('id_orcamento').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        try
        { O código abaixo server para anular os eventos dos campos abaixo
          pois os itens do pedido devem ser gravado com os mesmos valores do
          orçamento. Pois assim evita do pedido de venda fazer cálculo de preço}
        dmGeral.FAT_CD_M_PED_ITEid_item.OnChange      := nil;
        dmGeral.FAT_CD_M_PED_ITEQTDE.OnChange         := nil;
        dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.OnChange := nil;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;
        // ----------------------------------------------------------------------

        if not dmGeral.FAT_CD_M_ORC.IsEmpty then
           begin
             dmGeral.FAT_CD_M_PED_ITE.cancel;
             dmGeral.FAT_CD_M_ORC_ITE.First;
             while not dmGeral.FAT_CD_M_ORC_ITE.eof do
                 begin
                   dmGeral.FAT_CD_M_PED_ITE.Insert;
                   dmGeral.FAT_CD_M_PED_ITEid_item.AsInteger        := dmGeral.FAT_CD_M_ORC_ITEid_item.AsInteger;
                   dmGeral.FAT_CD_M_PED_ITEint_tipo_item.Asinteger  := dmGeral.FAT_CD_M_ORC_ITEint_tipo_item.Asinteger;
                   dmGeral.FAT_CD_M_PED_ITEint_nomeite.AsString     := dmGeral.FAT_CD_M_ORC_ITEint_descitem.AsString;
                   dmGeral.FAT_CD_M_PED_ITEint_id_und_venda.AsString := dmGeral.FAT_CD_M_ORC_ITEint_unidade.AsString;
                   dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger   := dmGeral.FAT_CD_M_ORC_ITEid_seq_item.AsInteger;
                   dmGeral.FAT_CD_M_PED_ITEid_busca_item.AsString   := dmGeral.FAT_CD_M_ORC_ITEid_busca_item.AsString;
                   dmGeral.FAT_CD_M_PED_ITEid_cor.text              := dmGeral.FAT_CD_M_ORC_ITEid_cor.text;
                   dmGeral.FAT_CD_M_PED_ITEint_nomecor.text         := dmGeral.FAT_CD_M_ORC_ITEint_nomecor.text;
                   dmGeral.FAT_CD_M_PED_ITEid_tamanho.text          := dmGeral.FAT_CD_M_ORC_ITEid_tamanho.text;
                   dmGeral.FAT_CD_M_PED_ITEqtde.AsFloat             := dmGeral.FAT_CD_M_ORC_ITEqtde.AsFloat;
                   dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency  := dmGeral.FAT_CD_M_ORC_ITEvlr_unitario.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency     := dmGeral.FAT_CD_M_ORC_ITEvlr_bruto.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEper_desconto.AsCurrency  := dmGeral.FAT_CD_M_ORC_ITEper_desconto.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEvlr_desconto.AsCurrency  := dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.AsCurrency;

                   // Colocado em 29/11/2024 por Maxsuel Victor
                   dmGeral.FAT_CD_M_PED_ITEpcp_obs_item.AsString        := dmGeral.FAT_CD_M_ORC_ITEpcp_obs_item.AsString;
                   dmGeral.FAT_CD_M_PED_ITEper_desc_basico.AsCurrency   := dmGeral.FAT_CD_M_ORC_ITEper_desc_basico.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEvlr_desc_basico.AsCurrency   := dmGeral.FAT_CD_M_ORC_ITEvlr_desc_basico.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEper_desc_especial.AsCurrency := dmGeral.FAT_CD_M_ORC_ITEper_desc_especial.AsCurrency;
                   dmGeral.FAT_CD_M_PED_ITEvlr_desc_especial.AsCurrency := dmGeral.FAT_CD_M_ORC_ITEvlr_desc_especial.AsCurrency;
                   //-------------------------------------------

                   dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency   := dmGeral.FAT_CD_M_ORC_ITEvlr_liquido.AsCurrency;

                   dmGeral.FAT_CD_M_PED_ITE.Post;
                   dmGeral.FAT_CD_M_ORC_ITE.Next;
                 end;
           end;
        dmGeral.FAT_CD_M_ORC_ITE.First;

        dmGeral.FAT_CD_M_PED.Edit;
        dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency := dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency;
        dmGeral.FAT_CD_M_PEDper_desc_especial.AsCurrency := dmGeral.FAT_CD_M_ORCper_desc_especial.AsCurrency;
        dmGeral.FAT_CD_M_PEDvlr_desc_especial.AsCurrency := dmGeral.FAT_CD_M_ORCvlr_desc_especial.AsCurrency;
        dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency := dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency;
        dmGeral.FAT_CD_M_PEDvlr_liquido.AsCurrency := dmGeral.FAT_CD_M_ORCvlr_liquido.AsCurrency;

        finally
            dmGeral.FAT_CD_M_PED_ITEid_item.OnChange      := dmGeral.FAT_CD_M_PED_ITEid_itemChange;
            dmGeral.FAT_CD_M_PED_ITEQTDE.OnChange         := dmGeral.FAT_CD_M_PED_ITEQTDEChange;
            dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIOChange;
            dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
        end;

        close;
     end;

end;

procedure TFAT_FM_M_PED_IOR.dbGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  xFechaCdsOrc := false;
end;

procedure TFAT_FM_M_PED_IOR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if xFechaCdsOrc then
     begin
       dmGeral.FAT_CD_M_ORC.close;
     end;
end;

procedure TFAT_FM_M_PED_IOR.FormShow(Sender: TObject);
begin

  xFechaCdsOrc := true;

  btnImporta.SetFocus;

  {
    0 - id_orçamento
    1 - id_cliente
    2 - Nome cliente
    3 - id_pedido
    4 - id_cliente // Com
  }

  // Se vendedor externo
  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then
     begin
       dmGeral.FAT_CD_M_ORC.Close;
       dmGeral.FAT_CD_M_ORC.Data :=
       dmGeral.FAT_CD_M_ORC.DataRequest(
               VarArrayOf([7,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,
                             dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                             xFuncionario]));
     end
  else
     begin
       dmGeral.FAT_CD_M_ORC.Close;
       dmGeral.FAT_CD_M_ORC.Data :=
       dmGeral.FAT_CD_M_ORC.DataRequest(
               VarArrayOf([4,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger, dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger]));
     end;
end;

end.
