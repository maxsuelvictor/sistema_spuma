unit uVisualizarDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TfrmVisualizarDados = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid5: TDBGrid;
    Label5: TLabel;
    DataSource5: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid6: TDBGrid;
    Label6: TLabel;
    DataSource6: TDataSource;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualizarDados: TfrmVisualizarDados;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TfrmVisualizarDados.Button10Click(Sender: TObject);
var
  itens: string;
begin

  itens := QuotedStr('1')+','+QuotedStr('2')+','+QuotedStr('3');

  dmGeral.EST_CD_M_FES_ALM.Close;
  dmGeral.EST_CD_M_FES_ALM.data :=
  dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([7, 1,itens,1]));
end;

procedure TfrmVisualizarDados.Button11Click(Sender: TObject);
begin
  dmGeral.EST_CD_M_FES_ALM.post;
  dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
end;

procedure TfrmVisualizarDados.Button12Click(Sender: TObject);
begin
  dmGeral.EST_CD_M_FES_ALM.delete;
  dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
end;

procedure TfrmVisualizarDados.Button13Click(Sender: TObject);
begin
  dmGeral.EST_CD_M_FES.delete;
  dmGeral.EST_CD_M_FES.ApplyUpdates(0);
end;

procedure TfrmVisualizarDados.Button1Click(Sender: TObject);
begin
  dmGeral.CAD_CD_C_PAR.post;
  dmGeral.CAD_CD_C_PAR.ApplyUpdates(0);
end;

procedure TfrmVisualizarDados.Button2Click(Sender: TObject);
begin
  // index 1, Empresa, Pedido             id_pedido
  dmGeral.EST_CD_M_FEA.Close;
  dmGeral.EST_CD_M_FEA.Data :=
  dmGeral.EST_CD_M_FEA.DataRequest(VarArrayOf([1, 1, edit1.text]));
end;

procedure TfrmVisualizarDados.Button4Click(Sender: TObject);
var
  itens: string;
begin

  itens := QuotedStr('1')+','+QuotedStr('2')+','+QuotedStr('3');

  dmGeral.EST_CD_M_FES.Close;
  dmGeral.EST_CD_M_FES.data :=
  dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([7, 1,itens]));
end;

procedure TfrmVisualizarDados.Button5Click(Sender: TObject);
begin
  dmGeral.EST_CD_M_FES.post;
  dmGeral.EST_CD_M_FES.ApplyUpdates(0);

end;

procedure TfrmVisualizarDados.Button6Click(Sender: TObject);
begin
    dmGeral.FAT_CD_M_PED.Close;
    dmGeral.FAT_CD_M_PED.Data :=
    dmGeral.FAT_CD_M_PED.DataRequest(
            VarArrayOf([1, '%']));
end;

procedure TfrmVisualizarDados.Button8Click(Sender: TObject);
begin

  { index:
  0-tipo_nf,Controle (ID_FISCAL)
  1-tipo_nf,Numero
  2-tipo_nf,Cliente
  3-tipo_nf,Fornecedor
  4-tipo_nf,Situação_doc
  5-tipo_nf,Modelo
  6-tipo_nf,Tipo Estoque
  7-tipo_nf,Data Documento
  8-tipo_nf,Data Emissao
  9-tipo_nf, id_pedido_venda}


  dmGeral.FAT_CD_M_NFE.Close;

  if trim(edit2.Text) <> '' then
     begin
        dmGeral.FAT_CD_M_NFE.Data :=
           dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([2, 'S',edit2.text]));
     end;

 if trim(edit3.Text) <> '' then
     begin
        dmGeral.FAT_CD_M_NFE.Data :=
           dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([9, 'S',edit3.text]));
     end;
end;

procedure TfrmVisualizarDados.Button9Click(Sender: TObject);
begin
  dmGeral.FAT_CD_M_NFE.post;
  dmGeral.FAT_CD_M_NFE.ApplyUpdates(0);
end;

procedure TfrmVisualizarDados.FormShow(Sender: TObject);
begin
   dmGeral.EST_CD_M_FEA.Open;
   dmGeral.EST_CD_M_FES.Open;
   dmGeral.EST_CD_M_FES_ALM.Open;
   dmGeral.FAT_CD_M_NFE.Open;
end;

end.
