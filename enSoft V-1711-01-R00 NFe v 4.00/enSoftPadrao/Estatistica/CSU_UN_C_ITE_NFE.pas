unit CSU_UN_C_ITE_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.OleCtrls, AcroPDFLib_TLB, Vcl.OleServer, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Buttons,
  SHDocVw;

type
  TCSU_FM_C_ITE_NFE = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    pnlBaixo: TPanel;
    lblTitulo: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dsoCli: TwwDataSource;
    dsoFor: TwwDataSource;
    Label2: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    dgCli: TwwDBGrid;
    dgFor: TwwDBGrid;
    tsArquivoPdf: TTabSheet;
    odAbrePdf: TOpenDialog;
    acroPDF: TAcroPDF;
    btnAbrirArqPdf: TBitBtn;
    tsArquivoXml: TTabSheet;
    WebBrowser1: TWebBrowser;
    wb: TWebBrowser;
    btnDocXml: TBitBtn;
    odAbreXml: TOpenDialog;
    procedure dgCliCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgForCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure btnAbrirArqPdfClick(Sender: TObject);
    procedure btnDocXmlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_NFE: TCSU_FM_C_ITE_NFE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_ITE_NFE.btnAbrirArqPdfClick(Sender: TObject);
begin
   if (odAbrePdf.Execute) then
    begin
     try
       acroPdf.src  :=  odAbrePdf.FileName;
       acroPdf.setCurrentPage(1);
     finally

     end;
     if (tsArquivoXml.TabVisible = false) then
       begin
        tsArquivoPdf.PageIndex := 2;
        tsArquivoPdf.TabVisible := true;
        pageControl1.TabIndex := 2;
       end
     else
       begin
        if (tsArquivoXml.PageIndex = 2) then
          begin
            tsArquivoPdf.PageIndex := 3;
            tsArquivoPdf.TabVisible := true;
            pageControl1.TabIndex := 3;
          end
        else
          begin
            tsArquivoPdf.PageIndex := 2;
            tsArquivoPdf.TabVisible := true;
            pageControl1.TabIndex := 2;
          end;
       end;
    end;


end;



procedure TCSU_FM_C_ITE_NFE.btnDocXmlClick(Sender: TObject);
begin
    if (odAbreXml.Execute) then
    begin
     try
       wb.Navigate(odAbreXml.FileName);
     finally

     end;
     if (tsArquivoPdf.TabVisible = false) then
       begin
        tsArquivoXml.PageIndex := 2;
        tsArquivoXml.TabVisible := true;
        pageControl1.TabIndex := 2;
       end
     else
       begin
          if (tsArquivoPdf.PageIndex = 2) then
          begin
            tsArquivoXml.PageIndex := 3;
            tsArquivoXml.TabVisible := true;
            pageControl1.TabIndex := 3;
          end
        else
          begin
            tsArquivoXml.PageIndex := 2;
            tsArquivoXml.TabVisible := true;
            pageControl1.TabIndex := 2;
          end;
       end;
    end;


end;

procedure TCSU_FM_C_ITE_NFE.dgCliCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
if (dmGeral.BUS_CD_M_CSU_NFE_ITE_CLItipo_nf.Text = 'R') then
    begin
      aFont.Color := clred;
    end;
end;

procedure TCSU_FM_C_ITE_NFE.dgForCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
if (dmGeral.BUS_CD_M_CSU_NFE_ITE_FORtipo_nf.Text = 'D') then
    begin
      aFont.Color := clred;
    end;
end;
procedure TCSU_FM_C_ITE_NFE.FormShow(Sender: TObject);
begin
  tsArquivoPdf.TabVisible := false;
  tsArquivoXml.TabVisible := false;
end;

end.
