unit CSU_UN_M_NPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.Series, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Mask, vcl.Wwdbedit, Data.DB, vcl.wwdatsrc, VCLTee.DBChart;

type
  TCSU_FM_M_NPO = class(TForm)
    pnlPrincipal: TPanel;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlDados: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Entrega: TLabel;
    btnSair: TcxButton;
    Label1: TLabel;
    txtAguardandoServicos: TwwDBEdit;
    dso: TwwDataSource;
    txtProximoServico: TwwDBEdit;
    txtEmServico: TwwDBEdit;
    txtPreInspecao: TwwDBEdit;
    txtAguardandoLavagem: TwwDBEdit;
    txtInspecaoFinal: TwwDBEdit;
    txtAguardandoAprovacao: TwwDBEdit;
    txtAguardandoPecas: TwwDBEdit;
    txtAguardandoServico: TwwDBEdit;
    txtPreEntrega: TwwDBEdit;
    txtAguardandoEntrega: TwwDBEdit;
    txtEntregue: TwwDBEdit;
    chtFaturamento: TDBChart;
    Series2: TFastLineSeries;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtAguardandoServicosDblClick(Sender: TObject);
    procedure txtProximoServicoDblClick(Sender: TObject);
    procedure txtEmServicoDblClick(Sender: TObject);
    procedure txtPreInspecaoDblClick(Sender: TObject);
    procedure txtAguardandoLavagemDblClick(Sender: TObject);
    procedure txtInspecaoFinalDblClick(Sender: TObject);
    procedure txtAguardandoAprovacaoDblClick(Sender: TObject);
    procedure txtAguardandoPecasDblClick(Sender: TObject);
    procedure txtAguardandoServicoDblClick(Sender: TObject);
    procedure txtPreEntregaDblClick(Sender: TObject);
    procedure txtAguardandoEntregaDblClick(Sender: TObject);
    procedure txtEntregueDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure GerarGrafico;
    procedure ApresentarOrdem(status:string);
    procedure AtualizarCampos;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_NPO: TCSU_FM_M_NPO;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_M_NPO_ORV;


procedure TCSU_FM_M_NPO.AtualizarCampos;
begin
    dmGeral.BUS_CD_M_PNO.Close;
    dmGeral.BUS_CD_M_PNO.Data :=
    dmGeral.BUS_CD_M_PNO.DataRequest(
                VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

end;

procedure TCSU_FM_M_NPO.ApresentarOrdem(status:string);
begin

    dmGeral.BUS_CD_M_ORV.Close;
    dmGeral.BUS_CD_M_ORV.Data :=
    dmGeral.BUS_CD_M_ORV.DataRequest(
                VarArrayOf([9,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,status,'2']));

    if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
          begin
           CSU_FM_M_NPO_ORV := TCSU_FM_M_NPO_ORV.Create(Self);
           CSU_FM_M_NPO_ORV.ShowModal;
           CSU_FM_M_NPO_ORV.Free;
          end
        else
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;


end;


procedure TCSU_FM_M_NPO.GerarGrafico;
var
  data:string;
begin
  Data := DateTimeToStr(xDataSis - 14);
  dmGeral.BUS_CD_M_PNM.Close;
  dmGeral.BUS_CD_M_PNM.Data :=
  dmGeral.BUS_CD_M_PNM.DataRequest(
                VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,data]));

  chtFaturamento.Series[0].Clear;
  if (not dmGeral.BUS_CD_M_PNM.IsEmpty) then
    begin
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA1').AsCurrency,'01');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA2').AsCurrency,'02');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA3').AsCurrency,'03');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA4').AsCurrency,'04');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA5').AsCurrency,'05');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA6').AsCurrency,'06');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA7').AsCurrency,'07');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA8').AsCurrency,'08');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA9').AsCurrency,'09');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA10').AsCurrency,'10');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA11').AsCurrency,'11');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA12').AsCurrency,'12');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA13').AsCurrency,'13');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA14').AsCurrency,'14');
      chtFaturamento.Series[0].Add(dmGeral.BUS_CD_M_PNM.FieldByName('DIA15').AsCurrency,'15');
      // chtFaturamento.PrintLandscape; Esaú : comentei pois Sangia disse que não era para imprimir;
    end;
end;

procedure TCSU_FM_M_NPO.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_M_NPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PNO.Close;
  dmGeral.BUS_CD_M_ORV.Close;
   Action :=caFree;
end;

procedure TCSU_FM_M_NPO.FormCreate(Sender: TObject);
begin
   WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TCSU_FM_M_NPO.FormShow(Sender: TObject);
begin
    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


    AtualizarCampos;

    GerarGrafico;
end;


procedure TCSU_FM_M_NPO.txtAguardandoAprovacaoDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('6');
end;



procedure TCSU_FM_M_NPO.txtAguardandoEntregaDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('10');
end;



procedure TCSU_FM_M_NPO.txtAguardandoLavagemDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('4');
end;



procedure TCSU_FM_M_NPO.txtAguardandoPecasDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('7');
end;



procedure TCSU_FM_M_NPO.txtAguardandoServicosDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('0');
end;


procedure TCSU_FM_M_NPO.txtAguardandoServicoDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('8');
end;


procedure TCSU_FM_M_NPO.txtEmServicoDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('2');
end;


procedure TCSU_FM_M_NPO.txtEntregueDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('11');
end;


procedure TCSU_FM_M_NPO.txtInspecaoFinalDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('5');
end;

procedure TCSU_FM_M_NPO.txtPreEntregaDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('9');
end;


procedure TCSU_FM_M_NPO.txtPreInspecaoDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('3');
end;


procedure TCSU_FM_M_NPO.txtProximoServicoDblClick(Sender: TObject);
begin
    AtualizarCampos;
    ApresentarOrdem('1');
end;

end.
