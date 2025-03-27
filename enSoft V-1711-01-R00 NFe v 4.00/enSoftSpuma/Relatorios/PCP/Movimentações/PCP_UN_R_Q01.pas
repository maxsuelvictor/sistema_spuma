unit PCP_UN_R_Q01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, JvToolEdit,
  JvDBControls, vcl.Wwdbedit, Vcl.Mask, JvExMask, vcl.wwdatsrc, vcl.wwdbigrd,
  vcl.wwdbgrid;

type
  TPCP_FM_R_Q01 = class(TPAD_FM_X_REL)
    PCP_FR_R_Q01: TfrxReport;
    cdsEtiquetas: TClientDataSet;
    PCP_DB_R_Q01: TfrxDBDataset;
    txtControle: TJvDBComboEdit;
    lblControle: TLabel;
    lblNotaFiscal: TLabel;
    txtNotaFiscal: TwwDBEdit;
    lblDtaRecebimento: TLabel;
    txtData: TJvDBDateEdit;
    lblFornecedor: TLabel;
    txtFornecedor: TwwDBEdit;
    pcFiltro: TPageControl;
    tsItens: TTabSheet;
    lblItensDisp: TLabel;
    lblItensSel: TLabel;
    dsEtiquetas: TwwDataSource;
    cdsItensSelecionados: TClientDataSet;
    dsItensSelecionados: TwwDataSource;
    dsItensDisponiveis: TwwDataSource;
    dsControle: TwwDataSource;
    dgItensDisp: TwwDBGrid;
    dgItensSel: TwwDBGrid;
    cdsItensSelecionadosID_SEQUENCIA: TIntegerField;
    cdsItensSelecionadosID_ITEM: TIntegerField;
    cdsItensSelecionadosINT_NOMEITE: TStringField;
    cdsItensSelecionadosQTDE: TFloatField;
    cdsItensSelecionadosNUM_LOTE: TStringField;
    cdsItensSelecionadosNUM_LOTE_FABRIC_PRODUTO: TStringField;
    cdsEtiquetasNUM_LOTE: TStringField;
    cdsEtiquetasDTA_RECEBIMENTO: TDateField;
    cdsEtiquetasNUMERO_NF: TIntegerField;
    cdsItensSelecionadosINT_UNDCOM: TStringField;
    cdsItensSelecionadosINT_NOMECOR: TStringField;
    cdsItensSelecionadosINT_NOMETAM: TStringField;
    cdsEtiquetasITEM: TStringField;
    procedure txtControleButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dgItensDispDblClick(Sender: TObject);
    procedure dgItensSelDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtControleExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  PCP_FM_R_Q01: TPCP_FM_R_Q01;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_IQM;

procedure TPCP_FM_R_Q01.btnImprimirClick(Sender: TObject);
var
  qtde:integer;
  qtde_total:integer;
begin
  inherited;
  cdsEtiquetas.EmptyDataSet;
  qtde_total := 0;
  if cdsItensSelecionados.RecordCount>0 then
    begin
      cdsItensSelecionados.First;
      while not cdsItensSelecionados.EOF do
        begin
          qtde := 0;
          while qtde < cdsItensSelecionados.FieldByName('QTDE').AsFloat do
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
                      dmGeral.BUS_CD_M_IQM.FieldByName('NUMERO_NF').AsInteger;

              cdsEtiquetas.FieldByName('NUM_LOTE').AsString :=
                      cdsItensSelecionados.FieldByName('NUM_LOTE').AsString;

              cdsEtiquetas.FieldByName('DTA_RECEBIMENTO').AsString :=
                      dmGeral.BUS_CD_M_IQM.FieldByName('DTA_RECEBIMENTO').AsString;

               cdsEtiquetas.FieldByName('ITEM').AsString :=
                       'Produto: '+ copy(cdsItensSelecionados.FieldByName('INT_NOMEITE').AsString,1,28) +' - Und: '+
                  cdsItensSelecionados.FieldByName('INT_UNDCOM').AsString;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                begin
                  cdsEtiquetas.FieldByName('ITEM').AsString :=
                        cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Cor: '+
                  cdsItensSelecionados.FieldByName('INT_NOMECOR').AsString;
                end;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString+'   Tam: '+
                              cdsItensSelecionados.FieldByName('INT_NOMETAM').AsString;
                     end
                  else
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Tam: '+
                              cdsItensSelecionados.FieldByName('INT_NOMETAM').AsString;
                     end;
                end;
              cdsEtiquetas.Post;
              qtde := qtde + 1;
            end;
          qtde_total := qtde_total + qtde;
          cdsItensSelecionados.Next;
        end;
        PCP_FR_R_Q01.Variables['ft_qtde'] := qtde_total;
        PCP_FR_R_Q01.PrepareReport();
        PCP_FR_R_Q01.ShowReport();
    end;

    if cdsEtiquetas.RecordCount = 0 then
      begin
        ShowMessage('Não há registros selecionados para impressão de etiquetas!');
      end;
end;


procedure TPCP_FM_R_Q01.dgItensDispDblClick(Sender: TObject);
begin
  inherited;
  if not cdsItensSelecionados.Locate('ID_SEQUENCIA',
                   VarArrayOf([dmGeral.BUS_CD_M_IQM_ITE.FieldByName('ID_SEQUENCIA').Text]),[]) then
    begin
      cdsItensSelecionados.Insert;
      cdsItensSelecionados.FieldByName('ID_SEQUENCIA').AsInteger :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('ID_SEQUENCIA').AsInteger;

      cdsItensSelecionados.FieldByName('ID_ITEM').AsInteger :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('ID_ITEM').AsInteger;

      cdsItensSelecionados.FieldByName('INT_NOMEITE').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('INT_NOMEITE').AsString;

      cdsItensSelecionados.FieldByName('INT_UNDCOM').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('INT_UNDCOM').AsString;

      cdsItensSelecionados.FieldByName('INT_NOMECOR').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').AsString;

      cdsItensSelecionados.FieldByName('INT_NOMETAM').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString;

      cdsItensSelecionados.FieldByName('QTDE').AsFloat :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat;

      cdsItensSelecionados.FieldByName('NUM_LOTE_FABRIC_PRODUTO').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').AsString;

      cdsItensSelecionados.FieldByName('NUM_LOTE').AsString :=
                     dmGeral.BUS_CD_M_IQM_ITE.FieldByName('NUM_LOTE').AsString;

      cdsItensSelecionados.Post;
    end
   else
     begin
       ShowMessage('Registro já foi selecionado!');
     end;
end;

procedure TPCP_FM_R_Q01.dgItensSelDblClick(Sender: TObject);
begin
  inherited;
   if cdsItensSelecionados.RecordCount>0 then
    begin
      cdsItensSelecionados.Delete;
    end;
end;

procedure TPCP_FM_R_Q01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_IQM.Close;
  FreeAndNil(PCP_FM_R_Q01);
end;

procedure TPCP_FM_R_Q01.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_IQM.Close;
  dmGeral.BUS_CD_M_IQM.Data :=
  dmGeral.BUS_CD_M_IQM.DataRequest(
            VarArrayOf([0, '']));

  cdsItensSelecionados.CreateDataSet;
  cdsItensSelecionados.EmptyDataSet;

   cdsEtiquetas.CreateDataSet;
   cdsEtiquetas.EmptyDataSet;

  dmGeral.AtualizarGridItens(dgItensDisp,'INT_NOMEITE',10,4);
  dmGeral.AtualizarGridItens(dgItensSel,'INT_NOMEITE',10,4);
end;

procedure TPCP_FM_R_Q01.txtControleButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_IQM := TPSQ_FM_X_IQM.Create(Self);
  PSQ_FM_X_IQM.ShowModal;
 { if not PSQ_FM_X_IQM.BUS_CD_M_IQM.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

       dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').text :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
     end;  }
   PSQ_FM_X_IQM.Free;
end;

procedure TPCP_FM_R_Q01.txtControleExit(Sender: TObject);
begin
  inherited;
  cdsItensSelecionados.EmptyDataSet;
end;

end.
