unit CSU_UN_M_DRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.Math,System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  System.Actions, Vcl.ActnList, Vcl.ImgList, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS;

type
  TCSU_FM_M_DRE = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    wwDBGrid1: TwwDBGrid;
    gbFiltro: TGroupBox;
    cbbEmp: TComboBox;
    Label1: TLabel;
    btnPesquisar: TcxButton;
    txtAno: TEdit;
    Label2: TLabel;
    dsoDre: TwwDataSource;
    cdsDre: TClientDataSet;
    cdsDreseq: TIntegerField;
    cdsDretipo_reg: TStringField;
    cdsDremes1_vlr: TCurrencyField;
    cdsDremes2_per: TCurrencyField;
    cdsDremes1_per: TCurrencyField;
    cdsDremes2_vlr: TCurrencyField;
    cdsDremes3_vlr: TCurrencyField;
    cdsDremes3_per: TCurrencyField;
    cdsDremes4_vlr: TCurrencyField;
    cdsDremes4_per: TCurrencyField;
    cdsDremes5_vlr: TCurrencyField;
    cdsDremes5_per: TCurrencyField;
    cdsDremes6_per: TCurrencyField;
    cdsDremes7_vlr: TCurrencyField;
    cdsDremes6_vlr: TCurrencyField;
    cdsDremes7_per: TCurrencyField;
    cdsDremes8_vlr: TCurrencyField;
    cdsDremes8_per: TCurrencyField;
    cdsDremes9_vlr: TCurrencyField;
    cdsDremes9_per: TCurrencyField;
    cdsDremes10_vlr: TCurrencyField;
    cdsDremes10_per: TCurrencyField;
    cdsDremes11_vlr: TCurrencyField;
    cdsDremes11_per: TCurrencyField;
    cdsDremes12_vlr: TCurrencyField;
    cdsDremes12_per: TCurrencyField;
    imgBotoesInativo: TImageList;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    ImgPequenaVe: TImageList;
    imgBotoesAtivoAz: TImageList;
    imgBotoesAtivo: TImageList;
    imgBotoesAtivoVe: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequena: TImageList;
    btnSair: TButton;
    cdsDredescricao: TStringField;
    cdsDretot_vlr: TCurrencyField;
    cdsDretot_per: TCurrencyField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    cdsDBDre: TfrxDBDataset;
    btnImprimir: TButton;
    CSU_FR_M_DRE: TfrxReport;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cdsDreBeforeOpen(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);

  private
    { Private declarations }
    procedure carregaCores;
    procedure BuscarDados;
    procedure InicializarDadosVlr;
    procedure InicializarDadosPer;
    procedure InicializarArrays;
    var
      xCorSistema:string;
      xEmp,xAno: String;
      total_por_mes_rvn:array[1..13] of Currency;
      total_por_mes_dvn:array[1..13] of Currency;
      total_por_mes_cmd:array[1..13] of Currency;
      total_por_mes_dpo:array[1..13] of Currency;
      total_por_mes_rno:array[1..13] of Currency;

      total_por_mes_lcr_aic:array[1..13] of Currency;
      total_por_mes_lcr_bru:array[1..13] of Currency;

      total_por_mes_csll:array[1..13] of Currency;
      total_por_mes_irpj:array[1..13] of Currency;

      CSLL,IRPJ:Currency;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_DRE: TCSU_FM_M_DRE;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes;

procedure TCSU_FM_M_DRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCSU_FM_M_DRE.FormCreate(Sender: TObject);
begin
  carregaCores;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;

  cdsDre.CreateDataSet;
  cdsDre.EmptyDataSet;
end;

procedure TCSU_FM_M_DRE.InicializarArrays;
var
 i:integer;
begin
  for I := 1 to 13 do
    begin
      total_por_mes_rvn[i]:=0;
      total_por_mes_dvn[i]:=0;
      total_por_mes_cmd[i]:=0;
      total_por_mes_dpo[i]:=0;
      total_por_mes_rno[i]:=0;

      total_por_mes_lcr_aic[i]:=0;
      total_por_mes_lcr_bru[i]:=0;

      total_por_mes_csll[i]:=0;
      total_por_mes_irpj[i]:=0;

    end;
end;

procedure TCSU_FM_M_DRE.btnPesquisarClick(Sender: TObject);
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

procedure TCSU_FM_M_DRE.InicializarDadosVlr;
var
 i:integer;
begin
   for I := 1 to 12 do
     begin
      cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency := 0;
     end;

end;

procedure TCSU_FM_M_DRE.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if cdsDre.FieldByName('tipo_reg').AsString = 'Z' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;

    if cdsDre.FieldByName('tipo_reg').AsString = 'W' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := clActiveCaption;
     end;
end;

procedure TCSU_FM_M_DRE.InicializarDadosPer;
var
 i:integer;
begin
   for I := 1 to 12 do
     begin
      cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency  := 0;
     end;

end;


procedure TCSU_FM_M_DRE.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_M_DRE.BuscarDados;
var
  i,seq: integer;
  descricao,id_empresa:string;
  vlr_total:currency;
  CondEmp: String;
begin

    InicializarArrays;


    CondEmp := copy(cbbEmp.Items[cbbEmp.ItemIndex],1,2);
    xEmp := cbbEmp.Text;
    xAno := txtAno.Text;

    dmGeral.BUS_CD_M_CSU_DRE_RVN.Close;
     dmGeral.BUS_CD_M_CSU_DRE_RVN.Data :=
          dmGeral.BUS_CD_M_CSU_DRE_RVN.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_DRE_DVN.Close;
     dmGeral.BUS_CD_M_CSU_DRE_DVN.Data :=
          dmGeral.BUS_CD_M_CSU_DRE_DVN.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_DRE_CMD.Close;
     dmGeral.BUS_CD_M_CSU_DRE_CMD.Data :=
          dmGeral.BUS_CD_M_CSU_DRE_CMD.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_DRE_DPO.Close;
     dmGeral.BUS_CD_M_CSU_DRE_DPO.Data :=
          dmGeral.BUS_CD_M_CSU_DRE_DPO.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_M_CSU_DRE_RNO.Close;
     dmGeral.BUS_CD_M_CSU_DRE_RNO.Data :=
          dmGeral.BUS_CD_M_CSU_DRE_RNO.DataRequest(
                  VarArrayOf([CondEmp,txtAno.Text]));

    dmGeral.BUS_CD_C_PAR.Close;
     dmGeral.BUS_CD_C_PAR.Data :=
          dmGeral.BUS_CD_C_PAR.DataRequest(
                  VarArrayOf([0,CondEmp]));




    seq := 0;
    descricao := '';
    cdsDre.EmptyDataSet;

    if dmGeral.BUS_CD_M_CSU_DRE_RVN.RecordCount >0 then
      begin
        while not dmGeral.BUS_CD_M_CSU_DRE_RVN.eof do
         begin

           if descricao <> dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('DESCRICAO').AsString  then
             begin
                 descricao := dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('DESCRICAO').AsString;
                 cdsDre.Append;
                 InicializarDadosVlr;
                 InicializarDadosPer;
                 cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
                 cdsDre.FieldByName('tot_per').AsCurrency := 0;
                 Inc(SEQ);
                 cdsDre.FieldByName('SEQ').AsInteger :=seq;
                 cdsDre.FieldByName('TIPO_REG').AsString :='Z';
                 cdsDre.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('DESCRICAO').AsString;


                 cdsDre.FieldByName('tot_vlr').AsCurrency :=  dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('TOTAL_ANO').AsCurrency;

                 if cdsDre.FieldByName('tot_vlr').AsCurrency >0 then
                   begin
                     cdsDre.FieldByName('tot_per').AsCurrency := 100;
                   end
                 else
                   begin
                      cdsDre.FieldByName('tot_per').AsCurrency := 0;
                   end;
                 total_por_mes_rvn[13] :=  dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('TOTAL_ANO').AsCurrency;
             end;


           total_por_mes_rvn[dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('MES').AsInteger]:=
                 total_por_mes_rvn[dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('MES').AsInteger] +
                         dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('VALOR').AsCurrency;



           cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                             dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('VALOR').AsCurrency;

           cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('MES').AsString+'_per').AsCurrency :=
                             RoundTo((dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('VALOR').AsCurrency/
                                dmGeral.BUS_CD_M_CSU_DRE_RVN.FieldByName('TOTAL_ANO').AsCurrency)*100,-2);



           dmGeral.BUS_CD_M_CSU_DRE_RVN.Next;
         end;
        end
      else
        begin
           InicializarDadosVlr;
             InicializarDadosPer;
             cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
             cdsDre.FieldByName('tot_per').AsCurrency := 0;
             Inc(SEQ);
             cdsDre.FieldByName('SEQ').AsInteger :=seq;
             cdsDre.FieldByName('TIPO_REG').AsString :='Z';
             cdsDre.FieldByName('DESCRICAO').AsString := 'Receitas de Vendas';
        end;

      /////////////////////////////////////////////////
      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;

      cdsDre.FieldByName('TIPO_REG').AsString :='X';
     ///////////////////////////////////////////////////



     //Deducoes de Venda
    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_DRE_DVN.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_DRE_DVN.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('COD').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('COD').AsString;
             cdsDre.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
             cdsDre.FieldByName('tot_per').AsCurrency := 0;
             Inc(SEQ);
             cdsDre.FieldByName('SEQ').AsInteger :=seq;
             cdsDre.FieldByName('TIPO_REG').AsString :='A';
             cdsDre.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('DESCRICAO').AsString;
         end;


       cdsDre.FieldByName('tot_vlr').AsCurrency :=  cdsDre.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('VALOR').AsCurrency;



       if vlr_total <>0 then
         begin
           cdsDre.FieldByName('tot_per').AsCurrency := RoundTo((cdsDre.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsDre.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_dvn[dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('MES').AsInteger]:=
             total_por_mes_dvn[dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('VALOR').AsCurrency;

       total_por_mes_dvn[13] :=  total_por_mes_dvn[13] +
             dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('VALOR').AsCurrency;

       cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_DRE_DVN.FieldByName('VALOR').AsCurrency;

       dmGeral.BUS_CD_M_CSU_DRE_DVN.Next;
     end;


     if dmGeral.BUS_CD_M_CSU_DRE_DVN.RecordCount > 0 then
       begin
        try
          cdsDre.Filtered := true;
          cdsDre.Filter := 'tipo_reg=''A'' ';

          cdsDre.First;
          while not cdsDre.Eof do
            begin
              cdsDre.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_dvn[i]<>0 then
                    begin
                     cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_dvn[i])*100,-2);
                    end
                  else
                    begin
                      cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsDre.Post;
              cdsDre.Next;
            end;
        finally
           cdsDre.Filtered := false;
           cdsDre.IndexFieldNames := 'seq';
           cdsDre.Last;
        end;
      end;
     //////////////////////////////////////////////////////////////////////////


     ////Totalizacao de Deduções de Venda
    if dmGeral.BUS_CD_M_CSU_DRE_DVN.RecordCount > 0 then
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
          cdsDre.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Totais de Deduções de Venda';
          for I := 1 to 12 do
            begin
              cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_dvn[i];
              if total_por_mes_dvn[i]<>0 then
                begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsDre.FieldByName('tot_vlr').AsCurrency := total_por_mes_dvn[13];

          if vlr_total>0 then
            begin
             cdsDre.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsDre.FieldByName('tot_per').AsCurrency := 0;
            end;
       end
     else
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
          cdsDre.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Totais de Deduções de Venda';
       end;

      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';

     ////Custo Mercaodrias
    for I := 1 to 13 do
       total_por_mes_cmd[i]:=0;

    descricao := '';

    if dmGeral.BUS_CD_M_CSU_DRE_CMD.RecordCount >0 then
      begin
        while not dmGeral.BUS_CD_M_CSU_DRE_CMD.eof do
         begin

           if descricao <> dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('DESCRICAO').AsString  then
             begin
                 descricao := dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('DESCRICAO').AsString;
                 cdsDre.Append;
                 InicializarDadosVlr;
                 InicializarDadosPer;
                 cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
                 cdsDre.FieldByName('tot_per').AsCurrency := 0;
                 Inc(SEQ);
                 cdsDre.FieldByName('SEQ').AsInteger :=seq;
                 cdsDre.FieldByName('TIPO_REG').AsString :='Z';
                 cdsDre.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('DESCRICAO').AsString;


                 cdsDre.FieldByName('tot_vlr').AsCurrency :=  dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('TOTAL_ANO').AsCurrency;

                 if cdsDre.FieldByName('tot_vlr').AsCurrency <>0 then
                   begin
                     cdsDre.FieldByName('tot_per').AsCurrency := 100;
                   end
                 else
                   begin
                      cdsDre.FieldByName('tot_per').AsCurrency := 0;
                   end;
                 total_por_mes_cmd[13] :=  dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('TOTAL_ANO').AsCurrency;
             end;


           total_por_mes_cmd[dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('MES').AsInteger]:=
                 total_por_mes_cmd[dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('MES').AsInteger] +
                         dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('VALOR').AsCurrency;



           cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                             dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('VALOR').AsCurrency;

           cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('MES').AsString+'_per').AsCurrency :=
                             RoundTo((dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('VALOR').AsCurrency/
                                dmGeral.BUS_CD_M_CSU_DRE_CMD.FieldByName('TOTAL_ANO').AsCurrency)*100,-2);



           dmGeral.BUS_CD_M_CSU_DRE_CMD.Next;
         end;
        end
      else
        begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
          cdsDre.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Custo de Mercadoria (Custo na NF) ';
        end;

      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';


     ///Lucro Bruto
       cdsDre.Append;
       InicializarDadosVlr;
       InicializarDadosPer;
       cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
       cdsDre.FieldByName('tot_per').AsCurrency :=0;
       Inc(SEQ);
       cdsDre.FieldByName('SEQ').AsInteger :=seq;
       cdsDre.FieldByName('DESCRICAO').AsString := 'Lucro Bruto';
       cdsDre.FieldByName('TIPO_REG').AsString :='Z';
       cdsDre.FieldByName('tot_vlr').AsCurrency :=total_por_mes_rvn[13]-total_por_mes_dvn[13]-total_por_mes_cmd[13];

       total_por_mes_lcr_bru[13]:=  cdsDre.FieldByName('tot_vlr').AsCurrency;
       for I := 1 to 12 do
         begin
            cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                    total_por_mes_rvn[i]-total_por_mes_dvn[i]-total_por_mes_cmd[i];
            total_por_mes_lcr_bru[i]:= cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;
            if cdsDre.FieldByName('tot_vlr').AsCurrency <>0 then
              begin
                cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                    RoundTo((cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                        cdsDre.FieldByName('tot_vlr').AsCurrency)*100,-2);
              end
            else
              begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0
              end;

           cdsDre.FieldByName('tot_per').AsCurrency :=  cdsDre.FieldByName('tot_per').AsCurrency+
                cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
         end;

     ///////////////////////////////////////////////

      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';




      ////Deespesas Operacionais
      for I := 1 to 12 do
       total_por_mes_dpo[i]:=0;

    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_DRE_DPO.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_DRE_DPO.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('ID_PLANO').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('ID_PLANO').AsString;
             cdsDre.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
             cdsDre.FieldByName('tot_per').AsCurrency :=0;
             Inc(SEQ);
             cdsDre.FieldByName('SEQ').AsInteger :=seq;
             cdsDre.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('INT_NOMEPCT').AsString;
             cdsDre.FieldByName('TIPO_REG').AsString :='B';
         end;


       cdsDre.FieldByName('tot_vlr').AsCurrency :=  cdsDre.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('VALOR').AsCurrency;
       if vlr_total <>0 then
         begin
           cdsDre.FieldByName('tot_per').AsCurrency := RoundTo((cdsDre.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsDre.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_dpo[dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('MES').AsInteger]:=
             total_por_mes_dpo[dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('VALOR').AsCurrency;

       total_por_mes_dpo[13] :=  total_por_mes_dpo[13] +
             dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('VALOR').AsCurrency;

       cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_DRE_DPO.FieldByName('VALOR').AsCurrency;

       dmGeral.BUS_CD_M_CSU_DRE_DPO.Next;
     end;



    if dmGeral.BUS_CD_M_CSU_DRE_DPO.RecordCount > 0 then
       begin
        try
          cdsDre.Filtered := true;
          cdsDre.Filter := 'tipo_reg=''B'' ';

          cdsDre.First;
          while not cdsDre.Eof do
            begin
              cdsDre.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_dpo[i]<>0 then
                    begin
                     cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_dpo[i])*100,-2);
                    end
                  else
                    begin
                      cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsDre.Post;
              cdsDre.Next;
            end;
        finally
           cdsDre.Filtered := false;
           cdsDre.IndexFieldNames := 'seq';
           cdsDre.Last;
        end;
      end;
     ///////////////////////////////////////////////////////////////

    ///////Total de Despesas Operacionais/////////////////
    if dmGeral.BUS_CD_M_CSU_DRE_DPO.RecordCount > 0 then
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
          cdsDre.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Total de Despesas Operacionais ';
          for I := 1 to 12 do
            begin
              cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_dpo[i];
              if total_por_mes_dpo[i]>0 then
                begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsDre.FieldByName('tot_vlr').AsCurrency :=  total_por_mes_dpo[13];;

          if vlr_total>0 then
            begin
             cdsDre.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsDre.FieldByName('tot_per').AsCurrency := 0;
            end;
       end
     else
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
          cdsDre.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Total de Despesas Operacionais';
       end;
       ////////////////////////////////////////////////////////////

     cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';




    ////Receitas Nao-Operacionais
      for I := 1 to 13 do
       total_por_mes_rno[i]:=0;

    descricao := '';
    if not dmGeral.BUS_CD_M_CSU_DRE_RNO.IsEmpty then
      begin
         vlr_total := dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('TOTAL_ANO').AsCurrency;
      end;


    while not dmGeral.BUS_CD_M_CSU_DRE_RNO.eof do
     begin

       if descricao <> dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('ID_PLANO').AsString  then
         begin
             descricao := dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('ID_PLANO').AsString;
             cdsDre.Append;
             InicializarDadosVlr;
             InicializarDadosPer;
             cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
             cdsDre.FieldByName('tot_per').AsCurrency :=0;
             Inc(SEQ);
             cdsDre.FieldByName('SEQ').AsInteger :=seq;
             cdsDre.FieldByName('DESCRICAO').AsString :=  dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('INT_NOMEPCT').AsString;
             cdsDre.FieldByName('TIPO_REG').AsString :='C';
         end;


       cdsDre.FieldByName('tot_vlr').AsCurrency :=  cdsDre.FieldByName('tot_vlr').AsCurrency +
             dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('VALOR').AsCurrency;
       if vlr_total >0 then
         begin
           cdsDre.FieldByName('tot_per').AsCurrency := RoundTo((cdsDre.FieldByName('tot_vlr').AsCurrency /
                                                         vlr_total)*100,-2);
         end
       else
         begin
            cdsDre.FieldByName('tot_per').AsCurrency := 0;
         end;

       total_por_mes_rno[dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('MES').AsInteger]:=
             total_por_mes_rno[dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('MES').AsInteger] +
                     dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('VALOR').AsCurrency;

       total_por_mes_rno[13] :=  total_por_mes_rno[13] +
             dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('VALOR').AsCurrency;

       cdsDre.FieldByName('mes'+dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('MES').AsString+'_vlr').AsCurrency :=
                         dmGeral.BUS_CD_M_CSU_DRE_RNO.FieldByName('VALOR').AsCurrency;

       dmGeral.BUS_CD_M_CSU_DRE_RNO.Next;
     end;

    if dmGeral.BUS_CD_M_CSU_DRE_RNO.RecordCount > 0 then
       begin
        try
          cdsDre.Filtered := true;
          cdsDre.Filter := 'tipo_reg=''C'' ';

          cdsDre.First;
          while not cdsDre.Eof do
            begin
              cdsDre.Edit;
              for I := 1 to 12 do
                begin
                  if  total_por_mes_rno[i]>0 then
                    begin
                     cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                                  RoundTo(( cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency /
                                                             total_por_mes_rno[i])*100,-2);
                    end
                  else
                    begin
                      cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=0;
                    end;
                end;
              cdsDre.Post;
              cdsDre.Next;
            end;
        finally
           cdsDre.Filtered := false;
           cdsDre.IndexFieldNames := 'seq';
           cdsDre.Last;
        end;
      end;
     ///////////////////////////////////////////////////////////////

    ///////Total de Recietas Não-Operacionais/////////////////
    if dmGeral.BUS_CD_M_CSU_DRE_RNO.RecordCount > 0 then
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
          cdsDre.FieldByName('tot_per').AsCurrency :=0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;

          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Total de Receitas Não-Operacionais ';
          for I := 1 to 12 do
            begin
              cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_rno[i];
              if total_por_mes_rno[i]>0 then
                begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 100;
                end
              else
                begin
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
                end;
            end;

          cdsDre.FieldByName('tot_vlr').AsCurrency :=  total_por_mes_rno[13];;

          if vlr_total>0 then
            begin
             cdsDre.FieldByName('tot_per').AsCurrency := 100;
            end
          else
            begin
               cdsDre.FieldByName('tot_per').AsCurrency := 0;
            end;

       end
     else
       begin
          cdsDre.Append;
          InicializarDadosVlr;
          InicializarDadosPer;
          cdsDre.FieldByName('tot_vlr').AsCurrency := 0;
          cdsDre.FieldByName('tot_per').AsCurrency := 0;
          Inc(SEQ);
          cdsDre.FieldByName('SEQ').AsInteger :=seq;
          cdsDre.FieldByName('TIPO_REG').AsString :='Z';
          cdsDre.FieldByName('DESCRICAO').AsString := 'Total de Receitas Não-Operacionais';
       end;
       ////////////////////////////////////////////////////////////


       cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';


      //Lucro Antes do IROJ/CSLL
      cdsDre.Append;
      InicializarDadosVlr;
      InicializarDadosPer;
      cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
      cdsDre.FieldByName('tot_per').AsCurrency :=0;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;

      cdsDre.FieldByName('TIPO_REG').AsString :='Z';
      cdsDre.FieldByName('DESCRICAO').AsString := 'Lucro Antes do IRPJ/CSLL';

      cdsDre.FieldByName('tot_vlr').AsCurrency :=
                       total_por_mes_lcr_bru[13]+total_por_mes_rno[13]-total_por_mes_dpo[13];

      total_por_mes_lcr_aic[13] := cdsDre.FieldByName('tot_vlr').AsCurrency;
      for I := 1 to 12 do
        begin
            cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                       total_por_mes_lcr_bru[i]+total_por_mes_rno[i]-total_por_mes_dpo[i];

            if cdsDre.FieldByName('tot_vlr').AsCurrency<>0 then
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                      RoundTo((cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                            cdsDre.FieldByName('tot_vlr').AsCurrency)*100,-2);
               end
            else
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
               end;

            total_por_mes_lcr_aic[i] := cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;

            cdsDre.FieldByName('tot_per').AsCurrency :=  cdsDre.FieldByName('tot_per').AsCurrency+
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
        end;
     ////////////////////////////////////////////////////////

      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';


    //////Provisao CSLL
    CSLL:=0;

    if dmGeral.BUS_CD_C_PAR_CTR.FieldByName('PER_CSSL').AsString <>'' then
       begin
        CSLL:= dmGeral.BUS_CD_C_PAR_CTR.FieldByName('PER_CSSL').AsCurrency/100;
       end;

    cdsDre.Append;
    InicializarDadosVlr;
    InicializarDadosPer;
    cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
    cdsDre.FieldByName('tot_per').AsCurrency :=0;
    Inc(SEQ);
    cdsDre.FieldByName('SEQ').AsInteger :=seq;

    cdsDre.FieldByName('TIPO_REG').AsString :='D';
    cdsDre.FieldByName('DESCRICAO').AsString := 'Provisao CSLL';

    cdsDre.FieldByName('tot_vlr').AsCurrency :=
                  total_por_mes_lcr_aic[13]*CSLL;
    total_por_mes_csll[13] := cdsDre.FieldByName('tot_vlr').AsCurrency;
    for I := 1 to 12 do
      begin
          cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                  total_por_mes_lcr_aic[i]*CSLL;
          total_por_mes_csll[i]:=cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;

          if cdsDre.FieldByName('tot_vlr').AsCurrency<>0 then
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                      RoundTo((cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                            cdsDre.FieldByName('tot_vlr').AsCurrency)*100,-2);
               end
            else
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
               end;

          cdsDre.FieldByName('tot_per').AsCurrency :=  cdsDre.FieldByName('tot_per').AsCurrency+
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
      end;
    //////////////////////



    ////Provisao IRPJ
     IRPJ:=0;
     if dmGeral.BUS_CD_C_PAR_CTR.FieldByName('PER_IR').AsString <>'' then
       begin
        IRPJ:= dmGeral.BUS_CD_C_PAR_CTR.FieldByName('PER_IR').AsCurrency/100;
       end;


    cdsDre.Append;
    InicializarDadosVlr;
    InicializarDadosPer;
    cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
    cdsDre.FieldByName('tot_per').AsCurrency :=0;
    Inc(SEQ);
    cdsDre.FieldByName('SEQ').AsInteger :=seq;

    cdsDre.FieldByName('TIPO_REG').AsString :='E';
    cdsDre.FieldByName('DESCRICAO').AsString := 'Provisao IRPJ';

    cdsDre.FieldByName('tot_vlr').AsCurrency :=
                  total_por_mes_lcr_aic[13]*IRPJ;
    total_por_mes_irpj[13] := cdsDre.FieldByName('tot_vlr').AsCurrency;
    for I := 1 to 12 do
      begin
          cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                  total_por_mes_lcr_aic[i]*IRPJ;

          total_por_mes_irpj[i]:=cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency;
          if cdsDre.FieldByName('tot_vlr').AsCurrency<>0 then
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                      RoundTo((cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                            cdsDre.FieldByName('tot_vlr').AsCurrency)*100,-2);
               end
            else
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
               end;

          cdsDre.FieldByName('tot_per').AsCurrency :=  cdsDre.FieldByName('tot_per').AsCurrency+
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
      end;
    //////////////////////
      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';
     ///Lucro Liquido//////////////
    cdsDre.Append;
    InicializarDadosVlr;
    InicializarDadosPer;
    cdsDre.FieldByName('tot_vlr').AsCurrency :=0;
    cdsDre.FieldByName('tot_per').AsCurrency :=0;
    Inc(SEQ);
    cdsDre.FieldByName('SEQ').AsInteger :=seq;

    cdsDre.FieldByName('TIPO_REG').AsString :='Z';
    cdsDre.FieldByName('DESCRICAO').AsString := 'Lucro Líquido';

    cdsDre.FieldByName('tot_vlr').AsCurrency :=
                  total_por_mes_lcr_aic[13] -total_por_mes_irpj[13]-total_por_mes_csll[13];
    for I := 1 to 12 do
      begin
          cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency :=
                   total_por_mes_lcr_aic[i] -total_por_mes_irpj[i]-total_por_mes_csll[i];

          if cdsDre.FieldByName('tot_vlr').AsCurrency<>0 then
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency :=
                      RoundTo((cdsDre.FieldByName('mes'+IntToStr(i)+'_vlr').AsCurrency/
                            cdsDre.FieldByName('tot_vlr').AsCurrency)*100,-2);
               end
            else
               begin
                 cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency := 0;
               end;

          cdsDre.FieldByName('tot_per').AsCurrency :=  cdsDre.FieldByName('tot_per').AsCurrency+
                   cdsDre.FieldByName('mes'+IntToStr(i)+'_per').AsCurrency;
      end;
      ///////////////////////////
      cdsDre.Append;
      Inc(SEQ);
      cdsDre.FieldByName('SEQ').AsInteger :=seq;
      cdsDre.FieldByName('TIPO_REG').AsString :='X';

      cdsDre.First;
end;

procedure TCSU_FM_M_DRE.btnImprimirClick(Sender: TObject);
var
  PathImg,xOpcoes: String;
  LogoEmpresa: TfrxPictureView;
begin
  cdsDre.Filtered :=  true;
  cdsDre.Filter   :=  ' tipo_reg <> ''X'' ';
  if not cdsDre.IsEmpty  then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CSU_FR_M_DRE.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
      xOpcoes := xOpcoes + 'Empresa...........: ' +xEmp+#13+#10;
      xOpcoes := xOpcoes + 'Ano...............: ' +xAno+#13+#10;

      dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_DRE.Name,xCodLme,xRevLme,nil);
      CSU_FR_M_DRE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      CSU_FR_M_DRE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      CSU_FR_M_DRE.Variables['Opcoes'] := QuotedStr(xOpcoes);
      CSU_FR_M_DRE.PrepareReport();
      CSU_FR_M_DRE.ShowReport();
    end;

end;

procedure  TCSU_FM_M_DRE.carregaCores;
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


procedure TCSU_FM_M_DRE.cdsDreBeforeOpen(DataSet: TDataSet);
begin
   cdsDremes1_vlr.DisplayFormat := CMascaraValor;
   cdsDremes1_per.DisplayFormat := CMascaraValor;
   cdsDremes2_vlr.DisplayFormat := CMascaraValor;
   cdsDremes2_per.DisplayFormat := CMascaraValor;
   cdsDremes3_vlr.DisplayFormat := CMascaraValor;
   cdsDremes3_per.DisplayFormat := CMascaraValor;
   cdsDremes4_vlr.DisplayFormat := CMascaraValor;
   cdsDremes4_per.DisplayFormat := CMascaraValor;
   cdsDremes5_vlr.DisplayFormat := CMascaraValor;
   cdsDremes5_per.DisplayFormat := CMascaraValor;
   cdsDremes6_vlr.DisplayFormat := CMascaraValor;
   cdsDremes6_per.DisplayFormat := CMascaraValor;
   cdsDremes7_vlr.DisplayFormat := CMascaraValor;
   cdsDremes7_per.DisplayFormat := CMascaraValor;
   cdsDremes8_vlr.DisplayFormat := CMascaraValor;
   cdsDremes8_per.DisplayFormat := CMascaraValor;
   cdsDremes9_vlr.DisplayFormat := CMascaraValor;
   cdsDremes9_per.DisplayFormat := CMascaraValor;
   cdsDremes10_vlr.DisplayFormat := CMascaraValor;
   cdsDremes10_per.DisplayFormat := CMascaraValor;
   cdsDremes11_vlr.DisplayFormat := CMascaraValor;
   cdsDremes11_per.DisplayFormat := CMascaraValor;
   cdsDremes12_vlr.DisplayFormat := CMascaraValor;
   cdsDremes12_per.DisplayFormat := CMascaraValor;
   cdsDretot_vlr.DisplayFormat := CMascaraValor;
   cdsDretot_per.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_DRE.FormResize(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPRincipal.Width div 2) - (pnlDados.width div 2);
end;

procedure TCSU_FM_M_DRE.FormShow(Sender: TObject);
begin
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

end.
