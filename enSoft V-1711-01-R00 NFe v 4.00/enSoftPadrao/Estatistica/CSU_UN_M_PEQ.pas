unit CSU_UN_M_PEQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.Math, System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Data.DB, Datasnap.DBClient, vcl.wwdatsrc, cxButtons,
  System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.CheckLst, frxExportXLS,
  frxClass, frxExportPDF, frxDBSet;

type
  TCSU_FM_M_PEQ = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    btnSair: TButton;
    ImgPequenaVe: TImageList;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    imgBotoesInativo: TImageList;
    imgBotoesAtivoVe: TImageList;
    imgBotoesAtivoAz: TImageList;
    imgBotoesAtivo: TImageList;
    ImgPequena: TImageList;
    ImgPequenaAz: TImageList;
    gbFiltro: TGroupBox;
    btnPesquisar: TcxButton;
    txtAno: TEdit;
    Label1: TLabel;
    wwDBGrid1: TwwDBGrid;
    dso: TwwDataSource;
    cdsPde: TClientDataSet;
    cdsPdeDESCRICAO: TStringField;
    cdsPdeseq: TIntegerField;
    cdsPdetipo_reg: TStringField;
    Label2: TLabel;
    cbbEmp: TComboBox;
    cdsPdetot_per: TCurrencyField;
    cdsPdemes2_vlr: TCurrencyField;
    cdsPdemes1_vlr: TCurrencyField;
    cdsPdemes3_vlr: TCurrencyField;
    cdsPdemes4_vlr: TCurrencyField;
    cdsPdemes5_vlr: TCurrencyField;
    cdsPdemes6_vlr: TCurrencyField;
    cdsPdemes7_vlr: TCurrencyField;
    cdsPdemes8_vlr: TCurrencyField;
    cdsPdemes9_vlr: TCurrencyField;
    cdsPdemes10_vlr: TCurrencyField;
    cdsPdemes11_vlr: TCurrencyField;
    cdsPdemes12_vlr: TCurrencyField;
    cdsPdemes1_per: TCurrencyField;
    cdsPdemes2_per: TCurrencyField;
    cdsPdemes3_per: TCurrencyField;
    cdsPdemes4_per: TCurrencyField;
    cdsPdemes5_per: TCurrencyField;
    cdsPdemes6_per: TCurrencyField;
    cdsPdemes7_per: TCurrencyField;
    cdsPdemes8_per: TCurrencyField;
    cdsPdemes9_per: TCurrencyField;
    cdsPdemes10_per: TCurrencyField;
    cdsPdemes11_per: TCurrencyField;
    cdsPdemes12_per: TCurrencyField;
    cdsPdetot_vlr: TCurrencyField;
    btnImprimir: TButton;
    CSU_FR_M_PEQ: TfrxReport;
    cdsDBPde: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cdsPdeBeforeOpen(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    procedure BuscarDados;
    procedure InicializarDadosVlr;
    procedure InicializarDadosPer;
     var
      xCorSistema:string;
      total_por_mes_tvp:array[1..13] of Currency;
      total_por_mes_cmd:array[1..12] of Currency;
      total_por_mes_dpv:array[1..12] of Currency;
      total_por_mes_dpf:array[1..12] of Currency;

      total_por_mes_svt:array[1..12] of Currency;
      total_por_mes_mrc:array[1..2,1..12] of Currency;

  public
    { Public declarations }
  end;

var
  CSU_FM_M_PEQ: TCSU_FM_M_PEQ;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes;

procedure TCSU_FM_M_PEQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TCSU_FM_M_PEQ.InicializarDadosVlr;
var
 i:integer;
begin
   for I := 1 to 12 do
     begin
      cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency := 0;
     end;

end;

procedure TCSU_FM_M_PEQ.InicializarDadosPer;
var
 i:integer;
begin
   for I := 1 to 12 do
     begin
      cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency  := 0;
     end;

end;



procedure TCSU_FM_M_PEQ.BuscarDados;
var
  i,seq: integer;
  CondEmp: String;
  descricao,id_empresa:string;
  vlr_total:currency;

begin
    condEmp := copy(cbbEmp.Items[cbbEmp.ItemIndex],1,2);

    dmGeral.BUS_CD_M_CSU_PEQ_TVP.Close;
     dmGeral.BUS_CD_M_CSU_PEQ_TVP.Data :=
          dmGeral.BUS_CD_M_CSU_PEQ_TVP.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_PEQ_CMD.Close;
     dmGeral.BUS_CD_M_CSU_PEQ_CMD.Data :=
          dmGeral.BUS_CD_M_CSU_PEQ_CMD.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_PEQ_DPV.Close;
     dmGeral.BUS_CD_M_CSU_PEQ_DPV.Data :=
          dmGeral.BUS_CD_M_CSU_PEQ_DPV.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_PEQ_DPF.Close;
     dmGeral.BUS_CD_M_CSU_PEQ_DPF.Data :=
          dmGeral.BUS_CD_M_CSU_PEQ_DPF.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));


    /////Totais de Venda/////////////////////////////////////////
    for I := 1 to 13 do
       total_por_mes_tvp[i]:=0;

    seq := 0;
    descricao := '';
    cdsPde.EmptyDataSet;
    if not dmGeral.BUS_CD_M_CSU_PEQ_TVP.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_PEQ_TVP.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('TIPO_VENDA').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('TIPO_VENDA').AsString;
             cdsPde.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsPde.FieldByName('tot_vlr').AsCurrency := 0;
             cdsPde.FieldByName('tot_per').AsCurrency := 0;
             Inc(SEQ);
             cdsPde.FieldByName('SEQ').AsInteger :=seq;
             cdsPde.FieldByName('TIPO_REG').AsString :='A';
             cdsPde.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('TIPO_VENDA').AsString;
         end;


       cdsPde.FieldByName('tot_vlr').AsCurrency :=  cdsPde.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('VLR_LIQUIDO').AsCurrency;



       if vlr_total >0 then
         begin
           cdsPde.FieldByName('tot_per').AsCurrency := RoundTo((cdsPde.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsPde.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_tvp[dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('MES').AsInteger]:=
             total_por_mes_tvp[dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('VLR_LIQUIDO').AsCurrency;

       total_por_mes_tvp[13] :=  total_por_mes_tvp[13] +
             dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('VLR_LIQUIDO').AsCurrency;

       cdsPde.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_PEQ_TVP.FieldByName('VLR_LIQUIDO').AsCurrency;

       dmGeral.BUS_CD_M_CSU_PEQ_TVP.Next;
     end;



     if dmGeral.BUS_CD_M_CSU_PEQ_TVP.RecordCount > 0 then
       begin
        try
          cdsPde.Filtered := true;
          cdsPde.Filter := 'tipo_reg=''A'' ';

          cdsPde.First;
          while not cdsPde.Eof do
            begin
              cdsPde.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_tvp[i]>0 then
                    begin
                     cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_tvp[i])*100,-2);
                    end
                  else
                    begin
                      cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsPde.Post;
              cdsPde.Next;
            end;
        finally
           cdsPde.Filtered := false;
           cdsPde.IndexFieldNames := 'seq';
           cdsPde.Last;
        end;
      end;
     //////////////////////////////////////////////////////////////////////////


     ////Totalização de Vendas Totais  e Sobre Venda Total
    if dmGeral.BUS_CD_M_CSU_PEQ_TVP.RecordCount > 0 then
       begin
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency := 0;
          cdsPde.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Vendas Totais';
          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_tvp[i];
              if total_por_mes_tvp[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsPde.FieldByName('tot_vlr').AsCurrency := vlr_total;

          if vlr_total>0 then
            begin
             cdsPde.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsPde.FieldByName('tot_per').AsCurrency := 0;
            end;

          cdsPde.Append;
          InicializarDadosPer;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='W';
          cdsPde.FieldByName('DESCRICAO').AsString := '% Sobre Venda Total';

          for I := 1 to 12 do
            begin
              if vlr_total > 0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                         RoundTo((total_por_mes_tvp[i]/vlr_total)*100,-2);
                end
              else
                begin
                   cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
              total_por_mes_svt[i] := cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
            end;

          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
       end;
      //////////////////////////////////////////////////////////////////////////////////






    /////////////Custo de Mercadorias/////////////////////////////////////
     for I := 1 to 12 do
       total_por_mes_cmd[i]:=0;
    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_PEQ_CMD.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_PEQ_CMD.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('DESCRICAO').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('DESCRICAO').AsString;
             cdsPde.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
             cdsPde.FieldByName('tot_per').AsCurrency :=0;
             Inc(SEQ);
             cdsPde.FieldByName('SEQ').AsInteger :=seq;
             cdsPde.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('DESCRICAO').AsString;
             cdsPde.FieldByName('TIPO_REG').AsString :='B';
         end;

       cdsPde.FieldByName('tot_vlr').AsCurrency :=  cdsPde.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('VLR_CUSTO_MERCADORIA').AsCurrency;
       if vlr_total >0 then
         begin
           cdsPde.FieldByName('tot_per').AsCurrency := RoundTo((cdsPde.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsPde.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_cmd[dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('MES').AsInteger]:=
             total_por_mes_cmd[dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('VLR_CUSTO_MERCADORIA').AsCurrency;



       cdsPde.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_PEQ_CMD.FieldByName('VLR_CUSTO_MERCADORIA').AsCurrency;


       dmGeral.BUS_CD_M_CSU_PEQ_CMD.Next;
     end;


   if dmGeral.BUS_CD_M_CSU_PEQ_CMD.RecordCount > 0 then
       begin
        try
          cdsPde.Filtered := true;
          cdsPde.Filter := 'tipo_reg=''B'' ';

          cdsPde.First;
          while not cdsPde.Eof do
            begin
              cdsPde.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_cmd[i]>0 then
                    begin
                     cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_cmd[i])*100,-2);
                    end
                  else
                    begin
                      cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsPde.Post;
              cdsPde.Next;
            end;
        finally
           cdsPde.Filtered := false;
           cdsPde.IndexFieldNames := 'seq';
           cdsPde.Last;
        end;
      end;
     ////////////////////////////////////////////////////


     ///////Total Custo de Mercadorias//////////////
    if dmGeral.BUS_CD_M_CSU_PEQ_CMD.RecordCount > 0 then
       begin
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Total Custo de Mercadorias ';
          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_cmd[i];
              if total_por_mes_cmd[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsPde.FieldByName('tot_vlr').AsCurrency := vlr_total;

          if vlr_total>0 then
            begin
             cdsPde.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsPde.FieldByName('tot_per').AsCurrency := 0;
            end;

          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
       end;
      //////////////////////////////////////////////////////////////////////////


     ///////Despesas Variaveis///////////////////////////////////////////
    for I := 1 to 12 do
       total_por_mes_dpv[i]:=0;

    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_PEQ_DPV.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_PEQ_DPV.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('ID_PLANO').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('ID_PLANO').AsString;
             cdsPde.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
             cdsPde.FieldByName('tot_per').AsCurrency :=0;
             Inc(SEQ);
             cdsPde.FieldByName('SEQ').AsInteger :=seq;
             cdsPde.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('INT_NOMEPCT').AsString;
             cdsPde.FieldByName('TIPO_REG').AsString :='C';
         end;


       cdsPde.FieldByName('tot_vlr').AsCurrency :=  cdsPde.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;
       if vlr_total >0 then
         begin
           cdsPde.FieldByName('tot_per').AsCurrency := RoundTo((cdsPde.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsPde.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_dpv[dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('MES').AsInteger]:=
             total_por_mes_dpv[dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;

       cdsPde.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_PEQ_DPV.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;

       dmGeral.BUS_CD_M_CSU_PEQ_DPV.Next;
     end;



    if dmGeral.BUS_CD_M_CSU_PEQ_DPV.RecordCount > 0 then
       begin
        try
          cdsPde.Filtered := true;
          cdsPde.Filter := 'tipo_reg=''C'' ';

          cdsPde.First;
          while not cdsPde.Eof do
            begin
              cdsPde.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_dpv[i]>0 then
                    begin
                     cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_dpv[i])*100,-2);
                    end
                  else
                    begin
                      cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsPde.Post;
              cdsPde.Next;
            end;
        finally
           cdsPde.Filtered := false;
           cdsPde.IndexFieldNames := 'seq';
           cdsPde.Last;
        end;
      end;
     ///////////////////////////////////////////////////////////////

    ///////Total de Despesas Variáveis/////////////////
    if dmGeral.BUS_CD_M_CSU_PEQ_DPV.RecordCount > 0 then
       begin
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Total de Despesas Variáveis ';
          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_dpv[i];
              if total_por_mes_dpv[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsPde.FieldByName('tot_vlr').AsCurrency := vlr_total;

          if vlr_total>0 then
            begin
             cdsPde.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsPde.FieldByName('tot_per').AsCurrency := 0;
            end;

          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
       end;
       ////////////////////////////////////////////////////////////


     ///Margem de Contribuição////////////////////////////////////
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Margem de Contribuição';


          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_tvp[i]-total_por_mes_dpv[i]-total_por_mes_cmd[i];

              cdsPde.FieldByName('tot_vlr').AsCurrency := cdsPde.FieldByName('tot_vlr').AsCurrency +
                                    cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;

              if  total_por_mes_tvp[i]>0 then
                begin
                     cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                            RoundTo( (cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                             total_por_mes_tvp[i])*100 ,-2);
                end
              else
                begin
                  cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                end;

               total_por_mes_mrc[1][i] := cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;

               total_por_mes_mrc[2][i] := cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;

            end;


          if  total_por_mes_tvp[13]>0 then
            begin
             cdsPde.FieldByName('tot_per').AsCurrency :=
                    RoundTo( (cdsPde.FieldByName('tot_vlr').AsCurrency/
                      total_por_mes_tvp[13])*100,-2);
            end
          else
            begin
               cdsPde.FieldByName('tot_per').AsCurrency := 0;
            end;
          ////////////////////////////////////////////


          ////Margem Contribrição Ponderada//////////////////////
          cdsPde.Append;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='W';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Margem de Contr. Ponderada';

           for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                       total_por_mes_svt[i]*total_por_mes_mrc[2][i];

              cdsPde.FieldByName('tot_per').AsCurrency := cdsPde.FieldByName('tot_per').AsCurrency +
                                    cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
            end;
          /////////////////////////////////
          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='X';


    /////////Despesas Fixas///////////////////////////////////
    for I := 1 to 12 do
       total_por_mes_dpf[i]:=0;

    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_PEQ_DPF.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_PEQ_DPF.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('ID_PLANO').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('ID_PLANO').AsString;
             cdsPde.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
             cdsPde.FieldByName('tot_per').AsCurrency :=0;
             Inc(SEQ);
             cdsPde.FieldByName('SEQ').AsInteger :=seq;
             cdsPde.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('INT_NOMEPCT').AsString;
             cdsPde.FieldByName('TIPO_REG').AsString :='D';
         end;


      cdsPde.FieldByName('tot_vlr').AsCurrency :=  cdsPde.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;
       if vlr_total >0 then
         begin
           cdsPde.FieldByName('tot_per').AsCurrency := RoundTo((cdsPde.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsPde.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_dpf[dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('MES').AsInteger]:=
             total_por_mes_dpf[dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;

       cdsPde.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_PEQ_DPF.FieldByName('VLR_PAGAMENTO_MES').AsCurrency;


       dmGeral.BUS_CD_M_CSU_PEQ_DPF.Next;
     end;


     if dmGeral.BUS_CD_M_CSU_PEQ_DPF.RecordCount > 0 then
       begin
        try
          cdsPde.Filtered := true;
          cdsPde.Filter := 'tipo_reg=''D'' ';

          cdsPde.First;
          while not cdsPde.Eof do
            begin
              cdsPde.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_dpf[i]>0 then
                    begin
                     cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_dpf[i])*100,-2);
                    end
                  else
                    begin
                      cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsPde.Post;
              cdsPde.Next;
            end;
        finally
           cdsPde.Filtered := false;
           cdsPde.IndexFieldNames := 'seq';
           cdsPde.Last;
        end;
      end;
      /////////////////////////////////////////////////////////

     ///Total de Despesas Fixas//////////////////////////////
    if dmGeral.BUS_CD_M_CSU_PEQ_DPF.RecordCount > 0 then
       begin
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Total de Despesas Fixas';
          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_dpf[i];
              if total_por_mes_dpf[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsPde.FieldByName('tot_vlr').AsCurrency := vlr_total;

          if vlr_total>0 then
            begin
             cdsPde.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsPde.FieldByName('tot_per').AsCurrency := 0;
            end;

          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
       end;
      //////////////////////////////////////////////////////////////////////




           ////Lucro Operacional//////////////////////////////
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Lucro Operacional';
          for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_mrc[1][i]-total_por_mes_dpf[i];

              if total_por_mes_tvp[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                        RoundTo( (cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                         total_por_mes_tvp[i])*100,-2);
                end
              else
                begin
                  cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
              cdsPde.FieldByName('tot_vlr').AsCurrency := cdsPde.FieldByName('tot_vlr').AsCurrency +
                    cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;


            end;

          if total_por_mes_tvp[13]>0 then
             begin
                cdsPde.FieldByName('tot_per').AsCurrency :=
                                     RoundTo( (cdsPde.FieldByName('tot_vlr').AsCurrency/
                         total_por_mes_tvp[13])*100,-2);
             end
          else
             begin
                cdsPde.FieldByName('tot_per').AsCurrency := 0;
             end;
         /////////////////////////////////////////////////

          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='X';
         ///////////////////////////////////////////////////


           ////Lucro ou Prejuizo Liquido
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Lucro ou Prejuízo Líquido';


           for I := 1 to 12 do
            begin
              cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_mrc[1][i]-total_por_mes_dpf[i];

              if total_por_mes_tvp[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                        RoundTo( (cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                         total_por_mes_tvp[i])*100,-2);
                end
              else
                begin
                  cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
              cdsPde.FieldByName('tot_vlr').AsCurrency := cdsPde.FieldByName('tot_vlr').AsCurrency +
                    cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;


            end;

          if total_por_mes_tvp[13]>0 then
             begin
                cdsPde.FieldByName('tot_per').AsCurrency :=
                                     RoundTo( (cdsPde.FieldByName('tot_vlr').AsCurrency/
                         total_por_mes_tvp[13])*100,-2);
             end
          else
             begin
                cdsPde.FieldByName('tot_per').AsCurrency := 0;
             end;
          /////////////////////////////////////////
          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
          ///////////////////////////////////////////////////


          /////Ponto Equilibrio
          cdsPde.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsPde.FieldByName('tot_vlr').AsCurrency :=0;
          cdsPde.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;

          cdsPde.FieldByName('TIPO_REG').AsString :='Z';
          cdsPde.FieldByName('DESCRICAO').AsString := 'Ponto de Equilíbrio';

          for I := 1 to 12 do
            begin

              if total_por_mes_mrc[1][i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                        RoundTo( ((total_por_mes_dpf[i]/total_por_mes_mrc[1][i])*
                                      total_por_mes_tvp[i]),-2);
                end
              else
                begin
                  cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency := 0;
                end;

              if total_por_mes_tvp[i]>0 then
                begin
                 cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                        RoundTo( ( cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                                      total_por_mes_tvp[i])*100,-2);
                end
              else
                begin
                  cdsPde.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;

              cdsPde.FieldByName('tot_vlr').AsCurrency := cdsPde.FieldByName('tot_vlr').AsCurrency +
                    cdsPde.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;
            end;

          cdsPde.FieldByName('tot_per').AsCurrency :=
                        RoundTo( ( cdsPde.FieldByName('tot_vlr').AsCurrency/
                                      total_por_mes_tvp[13])*100,-2);

          /////////////////////////////////////////
          cdsPde.Append;
          Inc(SEQ);
          cdsPde.FieldByName('SEQ').AsInteger :=seq;
          cdsPde.FieldByName('TIPO_REG').AsString :='X';
          ///////////////////////////////////////////////////


     if (cdsPde.RecordCount > 0) then
       begin
         cdsPde.First;
       end;

end;


procedure TCSU_FM_M_PEQ.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  cdsPde.Filtered :=  true;
  cdsPde.Filter   :=  ' tipo_reg <> ''X'' ';
  if not cdsPde.IsEmpty  then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CSU_FR_M_PEQ.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_PEQ.Name,xCodLme,xRevLme,nil);
      CSU_FR_M_PEQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      CSU_FR_M_PEQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      CSU_FR_M_PEQ.PrepareReport();
      CSU_FR_M_PEQ.ShowReport();
    end;

end;

procedure TCSU_FM_M_PEQ.btnPesquisarClick(Sender: TObject);
var
  mens:string;
begin
  inherited;

  if ((cbbEmp.ItemIndex = -1) or (txtAno.Text = '')) then
     begin
       ShowMessage('Os campos Empresa e Ano devem ser preenchidos.');
       exit;
     end;

  BuscarDados;

end;

procedure TCSU_FM_M_PEQ.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure  TCSU_FM_M_PEQ.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlTop.Color := codCor;
end;


procedure TCSU_FM_M_PEQ.cdsPdeBeforeOpen(DataSet: TDataSet);
begin
   cdsPdemes1_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes1_per.DisplayFormat := CMascaraValor;
   cdsPdemes2_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes2_per.DisplayFormat := CMascaraValor;
   cdsPdemes3_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes3_per.DisplayFormat := CMascaraValor;
   cdsPdemes4_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes4_per.DisplayFormat := CMascaraValor;
   cdsPdemes5_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes5_per.DisplayFormat := CMascaraValor;
   cdsPdemes6_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes6_per.DisplayFormat := CMascaraValor;
   cdsPdemes7_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes7_per.DisplayFormat := CMascaraValor;
   cdsPdemes8_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes8_per.DisplayFormat := CMascaraValor;
   cdsPdemes9_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes9_per.DisplayFormat := CMascaraValor;
   cdsPdemes10_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes10_per.DisplayFormat := CMascaraValor;
   cdsPdemes11_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes11_per.DisplayFormat := CMascaraValor;
   cdsPdemes12_vlr.DisplayFormat := CMascaraValor;
   cdsPdemes12_per.DisplayFormat := CMascaraValor;
   cdsPdetot_vlr.DisplayFormat := CMascaraValor;
   cdsPdetot_per.DisplayFormat := CMascaraValor;

end;

procedure TCSU_FM_M_PEQ.FormCreate(Sender: TObject);
begin
  carregaCores;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;

  cdsPde.CreateDataSet;
  cdsPde.EmptyDataSet;
end;

procedure TCSU_FM_M_PEQ.FormResize(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPRincipal.Width div 2) - (pnlDados.width div 2);
end;

procedure TCSU_FM_M_PEQ.FormShow(Sender: TObject);
begin
    //------Preenche dados das Filiais
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
          dmGeral.BUS_CD_C_PAR.DataRequest(
                  VarArrayOf([1, '']));

   dmGeral.BUS_CD_C_PAR.First;
   while not dmGeral.BUS_CD_C_PAR.Eof do
         begin
           cbbEmp.AddItem(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('id_empresa').AsInteger,2,0)+'-'+
                                       dmGeral.BUS_CD_C_PAR.FieldByName('emp_fantasia').AsString,nil);

           dmGeral.BUS_CD_C_PAR.Next;
         end;

  dmGeral.BUS_CD_C_PAR.close;

  cbbEmp.SetFocus;
end;

procedure TCSU_FM_M_PEQ.txtAnoKeyPress(Sender: TObject; var Key: Char);
begin
   if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TCSU_FM_M_PEQ.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if cdsPde.FieldByName('tipo_reg').AsString = 'Z' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;

    if cdsPde.FieldByName('tipo_reg').AsString = 'W' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := clActiveCaption;
     end;
end;

end.
