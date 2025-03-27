unit CSU_UN_C_ITE_COJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, Datasnap.DBClient, vcl.wwdatsrc,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.ComCtrls;

type
  TCSU_FM_C_ITE_COJ = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dgIteCoj: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    dsoIteCoj: TwwDataSource;
    dsoFes: TwwDataSource;
    BUS_CD_M_FES: TClientDataSet;
    BUS_CD_M_FESint_nomeemp: TWideStringField;
    BUS_CD_M_FESid_item: TIntegerField;
    BUS_CD_M_FESid_empresa: TIntegerField;
    BUS_CD_M_FESdata_ult_movimento: TDateField;
    BUS_CD_M_FESdata_ult_inventario: TDateField;
    BUS_CD_M_FESqtde_entrada: TFloatField;
    BUS_CD_M_FESqtde_saida: TFloatField;
    BUS_CD_M_FESsaldo_fisico: TFloatField;
    BUS_CD_M_FESqtde_ped_compra: TFloatField;
    BUS_CD_M_FESqtde_ped_venda: TFloatField;
    BUS_CD_M_FESvlr_custo_medio: TFMTBCDField;
    BUS_CD_M_FESvlr_custo_ult_compra: TFMTBCDField;
    BUS_CD_M_FESid_cor: TIntegerField;
    BUS_CD_M_FESid_tamanho: TIntegerField;
    BUS_CD_M_FESint_nomecor: TWideStringField;
    BUS_CD_M_FESint_nometam: TWideStringField;
    BUS_CD_M_FEScod_lme: TWideStringField;
    BUS_CD_M_FESrev_lme: TWideStringField;
    BUS_CD_M_FESint_nomefan: TWideStringField;
    BUS_CD_M_FESint_sld_disponivel: TFMTBCDField;
    BUS_CD_M_FESdata_ult_compra: TDateField;
    cdsIteCoj: TClientDataSet;
    cdsIteCojID_ITEM: TIntegerField;
    cdsIteCojDESCRICAO: TStringField;
    cdsIteCojUND: TStringField;
    cdsIteCojQTDE_TEMPO: TStringField;
    cdsIteCojCOD_ITE_HRQ: TStringField;
    cdsIteCojNIVEL: TIntegerField;
    cdsIteCojQTDE: TFloatField;
    cdsIteCojSEQUENCIA: TIntegerField;
    procedure dgIteCojRowChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BUS_CD_M_FESBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dgIteCojCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MontarItensGrid(id_item:String;var cdsCoj:TClientDataSet;codIteHrq:String;var seq:Integer;nivel:Integer);
  public
    { Public declarations }
    var
      xCodItem:String;
  end;

var
  CSU_FM_C_ITE_COJ: TCSU_FM_C_ITE_COJ;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;


procedure TCSU_FM_C_ITE_COJ.MontarItensGrid(id_item:String;var cdsCoj:TClientDataSet;codIteHrq:String;var seq:Integer;nivel:Integer);
var
  BUS_ITE_COJ:TClientDataSet;
  msg,msg_parcial:String;
begin
  BUS_ITE_COJ := TClientDataSet.Create(nil);
  BUS_ITE_COJ.RemoteServer := dmGeral.pcConecao;
  BUS_ITE_COJ.ProviderName := 'BUS_DP_C_ITE_COJ';
  BUS_ITE_COJ.Close;
  BUS_ITE_COJ.Data :=
  BUS_ITE_COJ.DataRequest(
              VarArrayOf([0,id_item]));

  BUS_ITE_COJ.IndexFieldNames := 'INT_NOMEITE';



  if not BUS_ITE_COJ.IsEmpty then
    begin
     BUS_ITE_COJ.First;
     while not BUS_ITE_COJ.EOF do
       begin
        cdsCoj.Insert;
        cdsCoj.FieldByName('ID_ITEM').AsInteger := BUS_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsInteger;
        cdsCoj.FieldByName('DESCRICAO').AsString := BUS_ITE_COJ.FieldByName('INT_NOMEITE').AsString;
        cdsCoj.FieldByName('UND').AsString := BUS_ITE_COJ.FieldByName('INT_UNDVENDACONJ').AsString;
        cdsCoj.FieldByName('QTDE').AsCurrency := BUS_ITE_COJ.FieldByName('QTDE').AsCurrency;
        cdsCoj.FieldByName('QTDE_TEMPO').AsString := BUS_ITE_COJ.FieldByName('QTDE_TEMPO').AsString;
        if codIteHrq<>'' then
          cdsCoj.FieldByName('COD_ITE_HRQ').AsString := codIteHrq+'-'+BUS_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString
        else
          cdsCoj.FieldByName('COD_ITE_HRQ').AsString := BUS_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString;
        cdsCoj.FieldByName('NIVEL').AsInteger := nivel;
        cdsCoj.FieldByName('SEQUENCIA').AsInteger := seq;
        cdsCoj.Post;
        INC(seq);

        MontarItensGrid(BUS_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,cdsCoj,cdsCoj.FieldByName('COD_ITE_HRQ').AsString,seq,nivel+1);
        BUS_ITE_COJ.Next;
       end;


      if (nivel=1) then
        begin
          cdsCoj.Insert;
          cdsCoj.FieldByName('NIVEL').AsInteger := nivel;
          cdsCoj.FieldByName('SEQUENCIA').AsInteger := seq;
          cdsCoj.Post;
          INC(seq);
        end;


     BUS_ITE_COJ.Close;
    end;



  BUS_ITE_COJ.Close;
  BUS_ITE_COJ.Free;

end;



procedure TCSU_FM_C_ITE_COJ.BUS_CD_M_FESBeforeOpen(DataSet: TDataSet);
begin
  BUS_CD_M_FESvlr_custo_medio.DisplayFormat          :=CMascaraValor;
  BUS_CD_M_FESvlr_custo_ult_compra.DisplayFormat     :=CMascaraValor;
end;

procedure TCSU_FM_C_ITE_COJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsIteCoj.Close;
  BUS_CD_M_FES.Close;
end;

procedure TCSU_FM_C_ITE_COJ.FormCreate(Sender: TObject);
begin
   cdsIteCoj.CreateDataSet;
end;

procedure TCSU_FM_C_ITE_COJ.FormShow(Sender: TObject);
VAR
  sequencia:integer;
begin

  if (not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true)) then
     begin
         dgIteCoj.RemoveField('qtde_tempo');
     end;

   sequencia:=0;
   MontarItensGrid(xCodItem,cdsIteCoj,'',sequencia,0);
   if not cdsIteCoj.IsEmpty then
    begin
     cdsIteCoj.IndexFieldNames := 'sequencia';
     cdsIteCoj.First;
    end;
end;

procedure TCSU_FM_C_ITE_COJ.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_ITE_COJ.dgIteCojCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (cdsIteCoj.FieldByName('NIVEL').AsInteger = 1) then
     begin
       AFont.Color := clBlue;
     end;
end;

procedure TCSU_FM_C_ITE_COJ.dgIteCojRowChanged(Sender: TObject);
begin

   if (not cdsIteCoj.IsEmpty) and (cdsIteCoj.FieldByName('ID_ITEM').AsInteger>0) then
    begin
      if not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
         begin
           BUS_CD_M_FES.Close;
           BUS_CD_M_FES.Data :=
           BUS_CD_M_FES.DataRequest(VarArrayOf([90, cdsIteCoj.FieldByName('ID_ITEM').text]));
         end
      else
         begin
           BUS_CD_M_FES.Close;
           BUS_CD_M_FES.Data :=
           BUS_CD_M_FES.DataRequest(VarArrayOf([92, cdsIteCoj.FieldByName('ID_ITEM').text]));
         end;
    end
  else
    begin
      BUS_CD_M_FES.Close;
    end;


end;

end.
