unit FAT_UN_M_CXA_NFE_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.Wwdotdot, vcl.Wwdbcomb, JvExMask,
  JvToolEdit, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, ACBrBase,
  ACBrDFe, ACBrNFe, Vcl.Buttons, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  JvDBControls, vcl.wwdblook;

type
  TFAT_FM_M_CXA_NFE_IMP = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dsoNfeIte: TwwDataSource;
    cds: TClientDataSet;
    dsoNfe: TwwDataSource;
    Label7: TLabel;
    Label8: TLabel;
    gbDesembaraco: TGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    XMLDocument1: TXMLDocument;
    cdsUFDesemb: TStringField;
    cdstpViaTransp: TStringField;
    cdsxLocDesemb: TStringField;
    cdscExportador: TStringField;
    gbItens: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    pnlItens: TPanel;
    txtnAdicao: TwwDBEdit;
    txtnSeqAdic: TwwDBEdit;
    txtFabricante: TwwDBEdit;
    txtVlrDesc: TwwDBEdit;
    txtNDraw: TwwDBEdit;
    txtCodItem: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    txtNumero: TwwDBEdit;
    txtDataID: TJvDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    txtControle: TwwDBEdit;
    txtLocalDesemb: TwwDBEdit;
    cbbUFDesemb: TwwDBLookupCombo;
    txtDataDesemb: TJvDBDateEdit;
    txtCodExportador: TwwDBEdit;
    cbbViaTransp: TwwDBComboBox;
    dsoCds: TwwDataSource;
    cdsdtaDesemb: TDateField;
    txtCodEstrangeiro: TwwDBEdit;
    lblCodEstrangiero: TLabel;
    cdscodEstrangeiro: TStringField;
    procedure btnGerarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtNDrawExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtnAdicaoEnter(Sender: TObject);
    procedure txtnSeqAdicEnter(Sender: TObject);
    procedure txtFabricanteEnter(Sender: TObject);
    procedure txtVlrDescEnter(Sender: TObject);
    procedure txtNDrawEnter(Sender: TObject);
    procedure txtnAdicaoExit(Sender: TObject);
    procedure txtnSeqAdicExit(Sender: TObject);
    procedure txtFabricanteExit(Sender: TObject);
    procedure txtVlrDescExit(Sender: TObject);
    procedure cbbUFDesembEnter(Sender: TObject);
    procedure pnlDadosClick(Sender: TObject);
    procedure txtDataIDEnter(Sender: TObject);
    procedure txtNumeroEnter(Sender: TObject);
    procedure txtNumeroExit(Sender: TObject);
    procedure txtDataIDExit(Sender: TObject);
  private
    { Private declarations }
   // procedure GerarXML;
   // procedure ValidarCampos;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_CXA_NFE_IMP: TFAT_FM_M_CXA_NFE_IMP;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TFAT_FM_M_CXA_NFE_IMP.btnGerarClick(Sender: TObject);
begin
  {ValidarCampos;
  GerarXML; }
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('di_estrangeiro').AsString := cds.FieldByName('codEstrangeiro').AsString;
  dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
  while not dmGeral.BUS_CD_M_NFE_ITE_CXA.eof do
     begin
       dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;

       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_uf_desemb').AsString := cds.FieldByName('UFDesemb').AsString;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsInteger := cds.FieldByName('tpViaTransp').AsInteger;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_local_desemb').AsString := cds.FieldByName('xLocDesemb').AsString;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_exportador').AsString := cds.FieldByName('cExportador').AsString;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_data_desemb').AsDateTime := cds.FieldByName('dtaDesemb').AsDateTime;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_intermedio').AsInteger := 1;

       dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
     end;
  dmGeral.BUS_CD_M_NFE_ITE_CXA.First;

  if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0)=0 then
     begin
       ShowMessage('Os dados da importação foram salvas com sucesso.');
     end
   else
     begin
        ShowMessage('Falha ao gravar os dados da importação.');
     end;

   dmGeral.BUS_CD_M_NFE_CXA.Edit;
end;


{procedure TFAT_FM_M_CXA_NFE_IMP.ValidarCampos;
var
  xMensErro:string;
  adicao,seq,fab,desc,draw:boolean;
begin
  adicao := true;
  seq := true;
  fab := true;


  xMensErro := '';

  if cds.FieldByName('nDI').AsString = '' then
    begin
       xMensErro := xMensErro + '.Número' + #13;
    end;
  if cds.FieldByName('dDI').AsString = '' then
    begin
      xMensErro := xMensErro + '.Data' + #13;
    end;

  if cds.FieldByName('xLocDesemb').AsString = '' then
    begin
       xMensErro := xMensErro + '.Local' + #13;
    end;

   if cds.FieldByName('UFDesemb').AsString = '' then
    begin
       xMensErro := xMensErro + '.UF' + #13;
    end;

  if cds.FieldByName('dDesemb').AsString = '' then
    begin
       xMensErro := xMensErro + '.Data do Desembaraço' + #13;
    end;

  if cds.FieldByName('cExportador').AsString = '' then
    begin
       xMensErro := xMensErro + '.Cód. Exportador' + #13;
    end;

  if cds.FieldByName('tpViaTransp').AsString = '' then
    begin
       xMensErro := xMensErro + '.Via Transporte' + #13;
    end;

  cdsIte.First;
  while ((adicao or seq or fab) and (not cdsIte.Eof)) do
    begin
      if cdsIte.FieldByName('nAdicao').AsString = '' then
        begin
           adicao := false;
        end;

       if cdsIte.FieldByName('nSeqAdic').AsString = '' then
        begin
           seq := false;
        end;

       if cdsIte.FieldByName('cFabricante').AsString = '' then
        begin
           fab := false;
        end;

      cdsIte.Next;
    end;

  if adicao = false then
    begin
       xMensErro := xMensErro + '.Adição' + #13;
    end;

  if seq = false then
    begin
       xMensErro := xMensErro + '.Seq Item' + #13;
    end;

  if fab = false then
    begin
       xMensErro := xMensErro + '.Cód Fabricante' + #13;
    end;

  if xMensErro <> '' then
    begin
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
      abort;
    end;

end; }

procedure TFAT_FM_M_CXA_NFE_IMP.btnSairClick(Sender: TObject);
begin
    dmGeral.BUS_CD_M_NFE_CXA.Cancel;
    Close;

end;

procedure TFAT_FM_M_CXA_NFE_IMP.cbbUFDesembEnter(Sender: TObject);
begin
  cbbUFDesemb.DropDown;
end;



procedure TFAT_FM_M_CXA_NFE_IMP.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_NFE_IMP.FormShow(Sender: TObject);
begin
   cds.CreateDataSet;
   cds.EmptyDataSet;
   dmGeral.BUS_PR_X_UFS;

   dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
   dmGeral.BUS_CD_M_NFE_CXA.Edit;

     cds.Insert;
     cds.FieldByName('codEstrangeiro').AsString :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('di_estrangeiro').AsString;
     cds.FieldByName('UFDesemb').AsString := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_uf_desemb').AsString;
     cds.FieldByName('tpViaTransp').AsInteger := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsInteger;
     cds.FieldByName('xLocDesemb').AsString :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_local_desemb').AsString;
     cds.FieldByName('cExportador').AsString :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_exportador').AsString;
     cds.FieldByName('dtaDesemb').AsDateTime :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_data_desemb').AsDateTime;







   {cds.CreateDataSet;
   cds.Open;
   cds.EmptyDataSet;


   cdsIte.CreateDataSet;
   cdsIte.Open;
   cdsIte.EmptyDataSet;



   cds.Insert;
   cds.FieldByName('ID_CONTROLE').AsInteger :=
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger;
   cds.FieldByName('tpIntermedio').AsString := '1';

   dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
   while not dmGeral.BUS_CD_M_NFE_ITE_CXA.EOf do
     begin
       cdsIte.Insert;
       cdsIte.FieldByName('ID_ITEM').AsInteger :=
              dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsInteger;
       cdsIte.Post;
       dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
     end; }
end;

procedure TFAT_FM_M_CXA_NFE_IMP.pnlDadosClick(Sender: TObject);
begin

end;

{procedure TFAT_FM_M_CXA_NFE_IMP.GerarXML;
Var
   DI, nDI, dDI, xLocDesemb,
   UFDesemb,dDesemb, tpViaTransp, tpIntermedio, cExportador,
   adi, nAdicao, nSeqAdic, cFabricante,
   vDescDI, nDraw: IXMLNode;
   xDiretorioXML:String;
begin
   try
     XMLDocument1.FileName := '';
     XMLDocument1.XML.Text := '';
     XMLDocument1.Active := False;
     XMLDocument1.Active := True;
     XMLDocument1.Version := '1.0';
     XMLDocument1.Encoding := 'UTF-8';

     DI := XMLDocument1.AddChild('DI');

     nDI := XMLDocument1.CreateNode('nDI',  ntElement);
     nDI.Text := cds.FieldByName('nDI').AsString;
     DI.ChildNodes.Add(nDI);

     dDI := XMLDocument1.CreateNode('dDI',  ntElement);
     dDI.Text := formatdatetime('yyyy-mm-dd', cds.FieldByName('dDI').AsDateTime);
     DI.ChildNodes.Add(dDI);

     xLocDesemb := XMLDocument1.CreateNode('xLocDesemb',  ntElement);
     xLocDesemb.Text := cds.FieldByName('xLocDesemb').AsString;
     DI.ChildNodes.Add(xLocDesemb);

     UFDesemb := XMLDocument1.CreateNode('UFDesemb',  ntElement);
     UFDesemb.Text := cds.FieldByName('UFDesemb').AsString;
     DI.ChildNodes.Add(UFDesemb);

     dDesemb := XMLDocument1.CreateNode('dDesemb',  ntElement);
     dDesemb.Text := formatdatetime('yyyy-mm-dd', cds.FieldByName('dDesemb').AsDateTime);
     DI.ChildNodes.Add(dDesemb);

     tpViaTransp := XMLDocument1.CreateNode('tpViaTransp',  ntElement);
     tpViaTransp.Text := cds.FieldByName('tpViaTransp').AsString;
     DI.ChildNodes.Add(tpViaTransp);

     tpIntermedio := XMLDocument1.CreateNode('tpIntermedio',  ntElement);
     tpIntermedio.Text := cds.FieldByName('tpIntermedio').AsString;
     DI.ChildNodes.Add(tpIntermedio);

     cExportador := XMLDocument1.CreateNode('cExportador',  ntElement);
     cExportador.Text := cds.FieldByName('cExportador').AsString;
     DI.ChildNodes.Add(cExportador);

     cdsIte.First;
     while (not cdsIte.Eof) do
       begin
        adi := XMLDocument1.CreateNode('adi', ntElement);
        DI.ChildNodes.Add(adi);

        nAdicao := XMLDocument1.CreateNode('nAdicao', ntElement);
        nAdicao.Text := cdsIte.FieldByName('nAdicao').AsString;
        adi.ChildNodes.Add(nAdicao);

        nSeqAdic := XMLDocument1.CreateNode('nSeqAdic',  ntElement);
        nSeqAdic.Text := cdsIte.FieldByName('nSeqAdic').AsString;
        adi.ChildNodes.Add(nSeqAdic);

        cFabricante := XMLDocument1.CreateNode('cFabricante',  ntElement);
        cFabricante.Text := cdsIte.FieldByName('cFabricante').AsString;
        adi.ChildNodes.Add(cFabricante);

        if cdsIte.FieldByName('vDescDI').AsString <> '' then
           begin
             vDescDI := XMLDocument1.CreateNode('vDescDI',  ntElement);
             vDescDI.Text :=StringReplace(FormatCurr('0.00' ,cdsIte.FieldByName('vDescDI').AsCurrency), ',', '.',
                          [rfReplaceAll, rfIgnoreCase]); ;
             adi.ChildNodes.Add(vDescDI);
           end;

        if cdsIte.FieldByName('nDraw').AsString <> '' then
           begin
            nDraw := XMLDocument1.CreateNode('nDraw',  ntElement);
            nDraw.Text := cdsIte.FieldByName('nDraw').AsString;
            adi.ChildNodes.Add(nDraw);
           end;

        cdsIte.Next;
       end;

    xDiretorioXML := ExtractFilePath(Application.ExeName) +
                    Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString);


    if (copy(xDiretorioXML,length(xDiretorioXML),1) <> '\') then
     begin
       xDiretorioXML := xDiretorioXML +'\';
     end;

     XMLDocument1.SaveToFile(xDiretorioXML+
                             cds.FieldByName('ID_CONTROLE').AsString+'-di.xml');
     XMLDocument1.Active := False;
     ShowMessage('Arquivo "'+cds.FieldByName('ID_CONTROLE').AsString+'-di.xml'+'" gerado com sucesso.');
   except
     ShowMessage('Falha ao gerar XML de importação.');
   end;

end; }

procedure TFAT_FM_M_CXA_NFE_IMP.txtDataIDEnter(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtDataIDExit(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtFabricanteEnter(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtFabricanteExit(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtnAdicaoEnter(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtnAdicaoExit(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtNDrawEnter(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtNDrawExit(Sender: TObject);
var
  codigo:String;
begin
  codigo :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByname('ID_ITEM').AsString;

  dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;

  pnlItens.Enabled := false;

  dmGeral.BUS_CD_M_NFE_ITE_CXA.locate('ID_ITEM',codigo,[]);
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtnSeqAdicEnter(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtnSeqAdicExit(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtNumeroEnter(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtNumeroExit(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;



procedure TFAT_FM_M_CXA_NFE_IMP.txtVlrDescEnter(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.txtVlrDescExit(Sender: TObject);
begin
    dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.wwDBGrid1Enter(Sender: TObject);
begin

   dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.wwDBGrid1Exit(Sender: TObject);
begin
    dmGeral.BUS_CD_M_NFE_ITE_CXA.Post;
end;

procedure TFAT_FM_M_CXA_NFE_IMP.wwDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if pnlItens.Enabled = false then
      pnlItens.Enabled := true;

  dmGeral.BUS_CD_M_NFE_ITE_CXA.cancel;

  if dmGeral.BUS_CD_M_NFE_ITE_CXA.IsEmpty then
     begin
       pnlItens.Enabled := false;
     end
  else
     begin
       dmGeral.BUS_CD_M_NFE_ITE_CXA.Edit;
       pnlItens.Enabled := true;
       txtNumero.SetFocus;
     end;
end;

end.
