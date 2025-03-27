unit FAT_UN_M_IQM_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Datasnap.DBClient,
  frxClass, frxDBSet;

type
  TFAT_FM_M_IQM_IMP = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    dgEtq: TwwDBGrid;
    dso: TwwDataSource;
    btnImprimir: TcxButton;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetasNUM_LOTE: TStringField;
    cdsEtiquetasDTA_RECEBIMENTO: TDateField;
    cdsEtiquetasNUMERO_NF: TIntegerField;
    cdsEtiquetasITEM: TStringField;
    FAT_FR_R_IQM_ETQ: TfrxReport;
    FAT_DB_R_IQM_ETQ: TfrxDBDataset;
    btnSair: TcxButton;
    lblSelecionarTodos: TLabel;
    lblDesmarcarTodos: TLabel;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSelecionarTodosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lblDesmarcarTodosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_IQM_IMP: TFAT_FM_M_IQM_IMP;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_IQM_IMP.btnImprimirClick(Sender: TObject);
var
  qtde:integer;
  pageHeight:currency;
  qtde_total:integer;
begin
  inherited;

   try
     dmGeral.FAT_CD_M_IQM_ITE.Filtered := true;
     dmGeral.FAT_CD_M_IQM_ITE.Filter := 'INT_SELECAO=TRUE';
   finally

   end;
  cdsEtiquetas.EmptyDataSet;
  qtde_total := 0;
  if dmGeral.FAT_CD_M_IQM_ITE.RecordCount>0 then
    begin
      dmGeral.FAT_CD_M_IQM_ITE.First;
      while not dmGeral.FAT_CD_M_IQM_ITE.EOF do
        begin
          qtde := 0;
          while qtde < dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_QTDEIMPRIMIR').AsFloat do
            begin
              cdsEtiquetas.Insert;
             { cdsEtiquetas.FieldByName('INT_NOMEITE').AsString :=
                      cdsItensSelecionados.FieldByName('INT_NOMEITE').AsString;

              cdsEtiquetas.FieldByName('INT_UNDCOM').AsString :=
                      cdsItensSelecionados.FieldByName('INT_UNDCOM').AsString;

              cdsEtiquetas.FieldByName('INT_NOMECOR').AsString :=
                      cdsItensSelecionados.FieldByName('INT_NOMECOR').AsString;

              cdsEtiquetas.FieldByName('INT_NOMETAM').AsString :=
                      cdsItensSelecionados.FieldByName('INT_NOMETAM').AsString;}

              cdsEtiquetas.FieldByName('NUMERO_NF').AsInteger :=
                      dmGeral.FAT_CD_M_IQM.FieldByName('NUMERO_NF').AsInteger;

              cdsEtiquetas.FieldByName('NUM_LOTE').AsString :=
                      dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NUM_LOTE').AsString;

              cdsEtiquetas.FieldByName('DTA_RECEBIMENTO').AsString :=
                      dmGeral.FAT_CD_M_IQM.FieldByName('DTA_RECEBIMENTO').AsString;

               cdsEtiquetas.FieldByName('ITEM').AsString :=
                        'Produto: '+copy(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMEITE').AsString,1,28);
                            // +' - Und: '+
                            //        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_UNDCOM').AsString;

              // Em 18/07/2024 - Maxsuel Victor.

              {if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                begin
                  cdsEtiquetas.FieldByName('ITEM').AsString :=
                        cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Cor: '+
                  trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').AsString);
                end;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString+'   Tam: '+
                              trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString);
                     end
                  else
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Tam: '+
                              trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString);
                     end;
                end; }

              cdsEtiquetas.Post;
              qtde := qtde + 1;
            end;
          qtde_total := qtde_total + qtde;
          dmGeral.FAT_CD_M_IQM_ITE.Next;
        end;
        if (cdsEtiquetas.RecordCount >0) then
          begin
           FAT_FR_R_IQM_ETQ.Variables['ft_qtde'] := qtde_total;
           FAT_FR_R_IQM_ETQ.PrepareReport();
           FAT_FR_R_IQM_ETQ.ShowReport();
          end
        else
          begin
            ShowMessage('Para impressão de etiqueta de um item, o valor do campo "Qtde" deve ser maior que zero!');
          end;

    end
   else
     begin
       ShowMessage('Não há registros selecionados para impressão de etiquetas!');
     end;

   try
     dmGeral.FAT_CD_M_IQM_ITE.Filtered := false;
   finally

   end;
end;

procedure TFAT_FM_M_IQM_IMP.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_IQM_IMP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.FAT_CD_M_IQM_ITE.BeforePost := dmGeral.FAT_CD_M_IQM_ITEBeforePost;
  dmGeral.FAT_CD_M_IQM_ITE.Cancel;
end;

procedure TFAT_FM_M_IQM_IMP.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TFAT_FM_M_IQM_IMP.FormShow(Sender: TObject);
begin
  cdsEtiquetas.CreateDataSet;
   dmGeral.FAT_CD_M_IQM_ITE.BeforePost := nil;
    if dmGeral.FAT_CD_M_IQM_ITE.RecordCount>0 then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.First;
       while not dmGeral.FAT_CD_M_IQM_ITE.EOF do
         begin
           dmGeral.FAT_CD_M_IQM_ITE.Edit;
           dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_SELECAO').AsBoolean := true;
           dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_QTDEIMPRIMIR').AsInteger := 0;
           dmGeral.FAT_CD_M_IQM_ITE.Next;
         end;
     end;
end;

procedure TFAT_FM_M_IQM_IMP.lblDesmarcarTodosClick(Sender: TObject);
begin
if dmGeral.FAT_CD_M_IQM_ITE.RecordCount>0 then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.First;
       while not dmGeral.FAT_CD_M_IQM_ITE.EOF do
         begin
           dmGeral.FAT_CD_M_IQM_ITE.Edit;
           dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_SELECAO').AsBoolean := false;
           dmGeral.FAT_CD_M_IQM_ITE.Next;
         end;
     end;
end;

procedure TFAT_FM_M_IQM_IMP.lblSelecionarTodosClick(Sender: TObject);
begin
   if dmGeral.FAT_CD_M_IQM_ITE.RecordCount>0 then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.First;
       while not dmGeral.FAT_CD_M_IQM_ITE.EOF do
         begin
           dmGeral.FAT_CD_M_IQM_ITE.Edit;
           dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_SELECAO').AsBoolean := true;
           dmGeral.FAT_CD_M_IQM_ITE.Next;
         end;
     end;
end;

end.
