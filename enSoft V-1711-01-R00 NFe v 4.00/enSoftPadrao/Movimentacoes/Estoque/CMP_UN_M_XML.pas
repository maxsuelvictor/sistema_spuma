unit CMP_UN_M_XML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Buttons,
  vcl.wwdblook, Vcl.Mask, vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB, vcl.wwdatsrc, Datasnap.DBClient, ACBrNFe;

type
  TCMP_FM_M_XML = class(TForm)
    pnlDados: TPanel;
    pnlDireita: TPanel;
    btnSair: TBitBtn;
    btnAbrir: TcxButton;
    btnGerar: TcxButton;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label3: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label5: TLabel;
    Label9: TLabel;
    cbbTipoFrete: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    wwDBEdit6: TwwDBEdit;
    cdsXmlNotas: TClientDataSet;
    cdsXmlNotasItens: TClientDataSet;
    cdsXmlNotasTitulos: TClientDataSet;
    dsXmlNotas: TwwDataSource;
    dsXmlNotasItens: TwwDataSource;
    dsXmlNotasTitulos: TwwDataSource;
    cdsXmlNotasNOTA_FISCAL: TIntegerField;
    cdsXmlNotasEMISSAO: TDateField;
    cdsXmlNotasSERIE: TStringField;
    cdsXmlNotasCFOP: TStringField;
    cdsXmlNotasID_TIPO_ESTOQUE: TIntegerField;
    cdsXmlNotasID_CONDICAO_PAG: TIntegerField;
    cdsXmlNotasCHAVE: TStringField;
    cdsXmlNotasItensNOTA_FISCAL: TIntegerField;
    cdsXmlNotasItensSEQ: TIntegerField;
    cdsXmlNotasItensCOD_FABRICA: TStringField;
    cdsXmlNotasItensID_ITEM: TIntegerField;
    cdsXmlNotasItensID_CST_ICMS: TStringField;
    cdsXmlNotasItensID_CFOP: TStringField;
    cdsXmlNotasItensVLR_BRUTO: TCurrencyField;
    cdsXmlNotasItensVLR_LIQUIDO: TCurrencyField;
    cdsXmlNotasVLR_BRUTO: TCurrencyField;
    cdsXmlNotasVLR_LIQUIDO: TCurrencyField;
    Label12: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label13: TLabel;
    wwDBEdit8: TwwDBEdit;
    cdsXmlNotasCNPJ_EMITENTE: TStringField;
    cdsXmlNotasNOME_EMITENTE: TStringField;
    cdsXmlNotasItensDEC_ITEM: TStringField;
    cdsXmlNotasItensUND: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    NFE: TACBrNFe;
    odAbreXml: TOpenDialog;
    cdsXmlNotasTitulosNOTA_FISCAL: TIntegerField;
    cdsXmlNotasTitulosID_FORMA_PAG: TIntegerField;
    cdsXmlNotasTitulosID_PLANO: TStringField;
    cdsXmlNotasTitulosDTA_VENCIMENTO: TDateField;
    cdsXmlNotasTitulosVLR_TITULO: TCurrencyField;
    cdsXmlNotasTitulosDESC_FORMA: TStringField;
    cdsXmlNotasTitulosNUM_TITULO: TStringField;
    cdsXmlNotasItensQTDE: TFloatField;
    cdsXmlNotasItensVLR_UNITARIO: TCurrencyField;
    cdsXmlNotasItensVLR_DESCONTO: TCurrencyField;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
     xNota, xItem, xTitulo:string;
     PathXmlNota,PathXmlItem,PathXmlTitulo:String;
  public
    { Public declarations }
  end;

var
  CMP_FM_M_XML: TCMP_FM_M_XML;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCMP_FM_M_XML.btnAbrirClick(Sender: TObject);
var
   i: integer;
begin
   if odAbreXml.Execute then
   begin
     cdsXmlNotas.Open;
     cdsXmlNotasItens.Open;
     cdsXmlNotasItens.IndexFieldNames:='SEQ';

     NFE.NotasFiscais.Clear;
     NFE.NotasFiscais.LoadFromFile(odAbreXml.FileName);

     cdsXmlNotas.Insert;
     cdsXmlNotas.FieldByName('CHAVE').AsString        :=copy(NFE.NotasFiscais.Items[0].NFe.infNfe.ID,4,44);
     cdsXmlNotas.FieldByName('CNPJ_EMITENTE').AsString:=NFE.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
     cdsXmlNotas.FieldByName('NOME_EMITENTE').AsString:=NFE.NotasFiscais.Items[0].NFe.Emit.xNome;
     cdsXmlNotas.FieldByName('EMISSAO').AsDateTime    :=strtodate(FormatDateTime('DD/MM/YYYY',NFE.NotasFiscais.Items[0].NFe.Ide.dEmi));
     cdsXmlNotas.FieldByName('SERIE').AsString        :=IntToStr( NFE.NotasFiscais.Items[0].NFe.Ide.Serie);
     cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString  :=IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.nNf);
     cdsXmlNotas.FieldByName('VLR_BRUTO').AsCurrency  :=NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vProd;
     cdsXmlNotas.FieldByName('VLR_LIQUIDO').AsCurrency:=NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF;
     for i := 0 to NFE.NotasFiscais.Items[0].NFe.Det.Count - 1 do
       begin
          cdsXmlNotasItens.Insert;
          cdsXmlNotasItens.FieldByName('NOTA_FISCAL').AsString  :=cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString;
          cdsXmlNotasItens.FieldByName('SEQ').AsInteger         :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.nItem;
          cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString  :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;



          if vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CST)='0' then
             cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString:='00'
          else if vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CST)='1' then
             cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString:='10'
          else if vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CST)='2' then
             cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString:='20';


          cdsXmlNotasItens.FieldByName('ID_CFOP').AsString       :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP;
          cdsXmlNotasItens.FieldByName('VLR_BRUTO').AsCurrency   :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd;
          cdsXmlNotasItens.FieldByName('VLR_UNITARIO').AsCurrency:=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vUnCom;
          cdsXmlNotasItens.FieldByName('VLR_LIQUIDO').AsCurrency :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd;
          cdsXmlNotasItens.FieldByName('VLR_DESCONTO').AsCurrency:=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vDesc;
          cdsXmlNotasItens.FieldByName('QTDE').AsFloat           :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.qCom;
          cdsXmlNotasItens.FieldByName('DEC_ITEM').AsString      :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
          cdsXmlNotasItens.FieldByName('UND').AsString           :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.uCom;
          cdsXmlNotasItens.Post;
       end;
     cdsXmlNotasItens.First;

     for i := 0 to NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
       begin
          cdsXmlNotasTitulos.Insert;
          cdsXmlNotasTitulos.FieldByName('NOTA_FISCAL').AsString     :=cdsXmlNotas.FieldByName('NOTA_FISCAL').AsString;
          cdsXmlNotasTitulos.FieldByName('DTA_VENCIMENTO').AsDateTime:=NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
          cdsXmlNotasTitulos.FieldByName('VLR_TITULO').AsCurrency    :=NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
          cdsXmlNotasTitulos.FieldByName('NUM_TITULO').AsString      :=NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup;
          cdsXmlNotasTitulos.Post;
       end;



   end;

end;

procedure TCMP_FM_M_XML.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCMP_FM_M_XML.cxButton1Click(Sender: TObject);
begin
  xNota  := 'xmlNota'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xItem  := 'xmlItem'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xTitulo:= 'xmlTitulo'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';

  try
    PathXmlNota   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xNota;
    PathXmlItem   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xItem;
    PathXmlTitulo := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xTitulo;

    //Gravar no formato : xmlChave
    cdsXmlNotas.SaveToFile(PathXmlNota);
    cdsXmlNotasItens.SaveToFile(PathXmlItem);
    cdsXmlNotasTitulos.SaveToFile(PathXmlTitulo);
  finally
    Showmessage('Arquivo XML gravado com sucesso!');
  end;

end;

procedure TCMP_FM_M_XML.cxButton2Click(Sender: TObject);
begin
  xNota  := 'xmlNota'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xItem  := 'xmlItem'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';
  xTitulo:= 'xmlTitulo'+cdsXmlNotas.FieldByName('Chave').AsString+'.xml';

  PathXmlNota   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xNota;
  PathXmlItem   := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xItem;
  PathXmlTitulo := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\xml_entrada\'+xTitulo;

  cdsXmlNotas.LoadFromFile(PathXmlNota);
  cdsXmlNotasItens.LoadFromFile(PathXmlItem);
  cdsXmlNotasTitulos.LoadFromFile(PathXmlTitulo);

end;

procedure TCMP_FM_M_XML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(CMP_FM_M_XML);
end;

procedure TCMP_FM_M_XML.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCMP_FM_M_XML.FormShow(Sender: TObject);
begin
 pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
 pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);

end;

end.
