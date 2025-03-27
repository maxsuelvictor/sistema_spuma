unit FAT_UN_M_SEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles,System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, JvDBControls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, vcl.Wwdbedit, Vcl.Buttons, vcl.wwdblook, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Datasnap.DBClient, frxClass, frxDBSet;

type
  TFAT_FM_M_SEP = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    txtDtaConf: TJvDBDateEdit;
    dsoPed: TwwDataSource;
    dsoPedIte: TwwDataSource;
    Label1: TLabel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnCancelar: TcxButton;
    btnFinalizar: TcxButton;
    txtRespConf: TwwDBEdit;
    Label3: TLabel;
    txtIdPedido: TJvComboEdit;
    txtCliente: TwwDBEdit;
    Label5: TLabel;
    gbIte: TGroupBox;
    grdItens: TwwDBGrid;
    pnlIte: TPanel;
    lblItem: TLabel;
    wwDBGrid1IButton: TwwIButton;
    Label6: TLabel;
    txtQtde: TEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbTamanho: TComboBox;
    cbbCor: TComboBox;
    Label7: TLabel;
    txtDtaPedido: TJvDBDateEdit;
    txtCodIte: TJvComboEdit;
    Label4: TLabel;
    txtVolume: TwwDBEdit;
    cbbLote: TwwDBLookupCombo;
    cdsLote: TClientDataSet;
    cdsLotenum_lote: TStringField;
    Label8: TLabel;
    BUS_CD_M_LOT: TClientDataSet;
    BUS_CD_M_LOTnum_lote: TWideStringField;
    BUS_CD_M_LOTqtde_atual: TFloatField;
    BUS_CD_M_LOTdta_vencimento: TDateField;
    dsoLote: TwwDataSource;
    FAT_FD_M_PED: TfrxDBDataset;
    FAT_FD_M_PED_ITE: TfrxDBDataset;
    btnImprimir: TcxButton;
    FAT_FR_M_PED_REV_LOC: TfrxReport;
    BUS_FD_C_CLI: TfrxDBDataset;
    CAD_FD_C_PAR: TfrxDBDataset;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtIdPedidoButtonClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure txtIdPedidoExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtCodIteExit(Sender: TObject);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure txtCodIteButtonClick(Sender: TObject);
    procedure txtCodIteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbLoteExit(Sender: TObject);
    procedure cbbLoteEnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function ConferirItem:Boolean;
    procedure ChamaCorTamanho;
    procedure carregaCores;
  public
    { Public declarations }
    var
     qtde,cod_item,id_cor,id_tamanho,xCorSistema,numLote:String;
  end;

var
  FAT_FM_M_SEP: TFAT_FM_M_SEP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PED, PSQ_UN_X_ITE;

procedure TFAT_FM_M_SEP.btnCancelarClick(Sender: TObject);
begin

     dmGeral.FAT_CD_M_PED.Cancel;
     dmGeral.FAT_CD_M_PED.Data :=
     dmGeral.FAT_CD_M_PED.DataRequest(
          VarArrayOf([0,'']));
     gbIte.Enabled := false;
     btnFinalizar.Enabled := false;
     btnCancelar.Enabled := false;
     txtQtde.Text := '';
     txtCodIte.Text := '';
     cbbCor.ItemIndex := -1;
     cbbTamanho.ItemIndex := -1;

     txtIdPedido.Text := '';
     txtIdPedido.SetFocus;

end;

function TFAT_FM_M_SEP.ConferirItem:Boolean;
var
  saldo_fisico:String;
  saldo_atual:Currency;
begin

    Result := true;
    qtde := txtQtde.Text;

    cod_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

    id_tamanho := '0';
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true then
      begin
       id_tamanho := copy(cbbTamanho.Items[cbbTamanho.ItemIndex],1,
                        pos(' - ',cbbTamanho.Items[cbbTamanho.ItemIndex])-1 );
      end;

    id_cor := '0';
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = true then
      begin
        id_cor := copy(cbbCor.Items[cbbCor.ItemIndex],1,
                        pos(' - ',cbbCor.Items[cbbCor.ItemIndex])-1 );
      end;

   if cbbLote.Enabled then
     begin
       numLote := BUS_CD_M_LOT.FieldByname('num_lote').AsString;
     end;

   if dmGeral.FAT_CD_M_PED_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([cod_item,id_cor,id_tamanho]),[]) then
     begin
       if (StrToCurr(qtde)+dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsCurrency) <=
                             dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency then
         begin
             dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                           dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                           dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                           saldo_fisico);
            saldo_atual := StrToCurr(saldo_fisico)+ dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
            if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsCurrency+StrToCurr(qtde)) <= saldo_atual ) then
              begin
               dmGeral.FAT_CD_M_PED_ITE.edit;
               dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsCurrency :=
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsCurrency+ StrToCurr(qtde);
               dmGeral.FAT_CD_M_PED_ITE.FieldByName('NUM_LOTE').AsString := numLote;

               dmGeral.FAT_CD_M_PED_ITE.Post;
              end;
         end
       else
         begin
           ShowMessage('Item não consta no pedido.');
           Result := false;
         end;
     end
   else
     begin
       ShowMessage('Item não consta no pedido.');
       Result := false;
     end;
end;

procedure TFAT_FM_M_SEP.btnFinalizarClick(Sender: TObject);
var
  conferido:Integer;
begin

     conferido := 2;
      dmGeral.FAT_CD_M_PED_ITE.First;
     while not dmGeral.FAT_CD_M_PED_ITE.eof do
       begin
         if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde_conferida').AsFloat>0) then
            begin
               if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsFloat >
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde_conferida').AsFloat) then
                 begin
                   conferido := 1;
                   break;
                 end
               else if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsFloat =
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde_conferida').AsFloat) then
                 begin
                   conferido := 0;
                 end;
            end;
         dmGeral.FAT_CD_M_PED_ITE.Next;
       end;

     dmGeral.FAT_CD_M_PED_ITE.First;
     if conferido=2 then
       begin
         ShowMessage('Não houve conferência em nenhum dos itens do pedido.');
         exit;
       end;
     if conferido=1 then
       begin
         ShowMessage('Será gerado novo pedido de venda com itens não conferidos.');
       end;

     dmGeral.FAT_CD_M_PED.Edit;

     dmGeral.FAT_CD_M_PED.FieldByName('HOR_CONF').AsDateTime := xHoraSis;
     dmGeral.FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean := true;
     dmGeral.FAT_CD_M_PED.FieldByName('RESULTADO_CONF').AsInteger := conferido;

   {  if (trim(txtVolume.text)<>'') then
        dmGeral.FAT_CD_M_PED.FieldByName('QTDE_VOLUME').AsString := trim(txtVolume.text);}

     dmGeral.FAT_CD_M_PED.Post;

     if dmGeral.FAT_CD_M_PED.ApplyUpdates(0)=0 then
       begin
         ShowMessage('Conferência realizado com sucesso.');
         dmGeral.FAT_CD_M_PED.Cancel;
         dmGeral.FAT_CD_M_PED.Data :=
         dmGeral.FAT_CD_M_PED.DataRequest(
          VarArrayOf([0,'']));
         gbIte.Enabled := false;
         btnFinalizar.Enabled := false;
         btnCancelar.Enabled := false;

          txtQtde.Text := '';
          txtCodIte.Text := '';
          cbbCor.ItemIndex := -1;
          cbbTamanho.ItemIndex := -1;

         txtIdPedido.Text := '';
         txtIdPedido.SetFocus;
       end
     else
       begin
         ShowMessage('Falha no processo de conferência.');
       end;

end;


procedure TFAT_FM_M_SEP.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;
begin
  inherited;
  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin


       dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

       tipo_impressao := 0;
       if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').IsNull) then
         begin
           tipo_impressao := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger;
         end;

       if tipo_impressao = 0 then
         begin
          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
            0: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Em aberto');
            1: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Reprovado');
            2: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Em produção');
            3: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Faturado');
            4: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Cancelado');
          else
            FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('??????');
         end;


         FAT_FR_M_PED_REV_LOC.Variables['ativado_sgq'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
             begin
               FAT_FR_M_PED_REV_LOC.Variables['ativado_sgq'] := true;
             end;


         FAT_FR_M_PED_REV_LOC.Variables['ativado_cor'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
             (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
           begin
             FAT_FR_M_PED_REV_LOC.Variables['ativado_cor'] := true;
           end;


         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if FileExists(PathImg) then
            begin
               LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_REV_LOC.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;


         FAT_FR_M_PED_REV_LOC.PrepareReport();
         FAT_FR_M_PED_REV_LOC.ShowReport();
        end;

      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_SEP.btnSairClick(Sender: TObject);
begin
  dmGeral.FAT_CD_M_PED.Cancel;
  dmGeral.FAT_CD_M_PED.Close;
  Close;
end;



procedure TFAT_FM_M_SEP.cbbCorExit(Sender: TObject);
begin
    if txtQtde.Focused or txtCodIte.Focused or
       btnSair.Focused or btnCancelar.Focused or grdItens.Focused then
       begin
         pnlCorTamanho.Visible := false;
         exit;
       end;

    if cbbTamanho.Focused then
       begin
         exit;
       end;

    if cbbCor.Items[cbbCor.ItemIndex] = '' then
        begin
          ShowMessage('Cor deve ser preenchido.');
          cbbCor.SetFocus;
          exit;
        end;

   if dmGeral.BUS_CD_C_ITE.FieldByname('INT_LOTE_GRU').AsBoolean then
     begin
       cbbLote.Enabled := true;
       cbbLote.SetFocus;
        pnlCorTamanho.Visible := false;
       exit;
     end;


   if ConferirItem then
     begin
      pnlCorTamanho.Visible := false;
      txtQtde.Text := '1';
      txtCodIte.Text := '';
      txtCodIte.SetFocus;
     end
   else
     begin
       cbbCor.SetFocus;
     end;
end;

procedure TFAT_FM_M_SEP.cbbLoteEnter(Sender: TObject);
begin
    cod_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

    id_tamanho := '0';
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true then
      begin
       id_tamanho := copy(cbbTamanho.Items[cbbTamanho.ItemIndex],1,
                        pos(' - ',cbbTamanho.Items[cbbTamanho.ItemIndex])-1 );
      end;

    id_cor := '0';
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = true then
      begin
        id_cor := copy(cbbCor.Items[cbbCor.ItemIndex],1,
                        pos(' - ',cbbCor.Items[cbbCor.ItemIndex])-1 );
      end;


    BUS_CD_M_LOT.Close;
    BUS_CD_M_LOT.Data :=
            BUS_CD_M_LOT.DataRequest(VarArrayOf([25,dmgeral.CAD_CD_C_PAR.FieldBYname('ID_EMPRESA').AsString,'',
                                                    cod_item,id_cor,id_tamanho]));

    cdsLote.FieldByname('NUM_LOTE').AsString := BUS_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
    cbbLote.DropDown;
end;

procedure TFAT_FM_M_SEP.cbbLoteExit(Sender: TObject);
begin


   if txtCodIte.Focused or txtQtde.Focused then
     begin
       exit;
     end;

   if BUS_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency < StrToCurr(trim(txtQtde.Text)) then
     begin
       ShowMessage('A qtde do item no lote é '+BUS_CD_M_LOT.FieldByName('QTDE_ATUAL').AsString);
       cbbLote.SetFocus;
       exit;
     end;


    ConferirItem;
    BUS_CD_M_LOT.Close;
    cbbLote.Enabled := false;
    cbbLote.Text := '';
    txtQtde.Text := '1';
    txtCodIte.Text := '';
    txtCodIte.SetFocus;



end;

procedure TFAT_FM_M_SEP.cbbTamanhoExit(Sender: TObject);
begin
    if  txtQtde.Focused or txtCodIte.Focused or btnSair.Focused or
         btnCancelar.Focused or grdItens.Focused  then
       begin
         pnlCorTamanho.Visible := false;
         exit;
       end;


    if cbbTamanho.Items[cbbTamanho.ItemIndex] = '' then
        begin
          ShowMessage('Tamanho deve ser preenchido.');
          cbbTamanho.SetFocus;
          exit;
        end;



     if dmGeral.BUS_CD_C_ITE.FieldByname('INT_LOTE_GRU').AsBoolean then
         begin
           cbbLote.Enabled := true;
           cbbLote.SetFocus;
         end
       else
         begin
           cbbLote.Enabled := false;
           BUS_CD_M_LOT.Close;
           ConferirItem;
           txtQtde.Text := '1';
           txtCodIte.Text := '';
           cbbLote.Text := '';
           txtCodIte.SetFocus;
         end;



    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false then
      begin
       if dmGeral.BUS_CD_C_ITE.FieldByname('INT_LOTE_GRU').AsBoolean then
         begin
           cbbLote.Enabled := true;
           cbbLote.SetFocus;
           pnlCorTamanho.Visible := false;
           exit;
         end;


       if ConferirItem then
         begin
          pnlCorTamanho.Visible := false;
          txtQtde.Text := '1';
          txtCodIte.Text := '';
          txtCodIte.SetFocus;
         end
       else
         begin
           cbbTamanho.SetFocus;
         end;
      end
    else
      begin
        cbbCor.SetFocus;
      end;

end;

procedure TFAT_FM_M_SEP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmGeral.FAT_CD_M_PED.Close;
   dmGeral.BUS_CD_C_CLI.Close;
   dmGeral.BUS_CD_C_ITE.Close;
   Action := caFree;
end;

procedure TFAT_FM_M_SEP.FormCreate(Sender: TObject);
begin
    carregaCores;
    WindowState := wsMaximized;
    self.FormStyle := fsMDIChild;
    dmGeral.AtualizarGridItens(grdItens,'int_nomeite',10,8);


    cdsLote.CreateDataSet;
    cdsLote.EmptyDataSet;
    cdsLote.Insert;

end;



procedure TFAT_FM_M_SEP.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_SEP.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

   btnFinalizar.Enabled := false;
   btnCancelar.Enabled := false;
   gbIte.Enabled := false;
   dmGeral.FAT_CD_M_PED.Close;
   dmGeral.FAT_CD_M_PED.Data :=
   dmGeral.FAT_CD_M_PED.DataRequest(
          VarArrayOf([0,'']));


    dmGeral.Buscor(1,'%');

    while not dmGeral.BUS_CD_C_COR.Eof do
      begin
        cbbCor.AddItem(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsString+' - '+
                       dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString,nil);

        dmGeral.BUS_CD_C_COR.Next;
      end;

    dmGeral.BusTamanho(1,'%');

    while not dmGeral.BUS_CD_C_TAM.Eof do
      begin
        cbbTamanho.AddItem(dmGeral.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsString+' - '+
                       dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString,nil);

        dmGeral.BUS_CD_C_TAM.Next;
      end;


end;

procedure TFAT_FM_M_SEP.txtIdPedidoButtonClick(Sender: TObject);
begin
   PSQ_FM_X_PED := TPSQ_FM_X_PED.Create(Self);
   FormOrigem := FAT_FM_M_SEP.Name;
   PSQ_FM_X_PED.ShowModal;
    if not dmgeral.BUS_CD_M_PED.IsEmpty then
     begin
       txtIdPedido.Text := dmgeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
       dmgeral.BUS_CD_M_PED.Close;
       txtIdPedidoExit(self);

     end;
end;


procedure TFAT_FM_M_SEP.carregaCores;
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


procedure TFAT_FM_M_SEP.txtIdPedidoExit(Sender: TObject);
begin
    {if btnSair.Focused then
       begin
         exit;
       end; }

   if txtIdPedido.Text ='' then
     begin
       //ShowMessage('É necessário digitar cód. do pedido.');
       exit;
     end;


   dmGeral.FAT_CD_M_PED.Close;
   dmGeral.FAT_CD_M_PED.Data :=
   dmGeral.FAT_CD_M_PED.DataRequest(
          VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,txtIdPedido.text]));


   if dmGeral.FAT_CD_M_PED.IsEmpty then
     begin
       ShowMessage('Pedido não encontrado.');
       txtIdPedido.Text := '';
       txtIdPedido.SetFocus;
       exit;
     end;


      if not ((dmGeral.FAT_CD_M_PED.FieldBYName('envia_carga').AsBoolean = true) and
         (dmGeral.FAT_CD_M_PED.FieldBYName('situacao').AsInteger = 0) and
         (dmGeral.FAT_CD_M_PED.FieldBYName('situacao_aprovacao').AsInteger = 1)) then
        begin
          ShowMessage('O pedido tem que ser aprovado e marcado como enviado para carga.');
          dmGeral.FAT_CD_M_PED.Close;
          dmGeral.FAT_CD_M_PED.Data :=
          dmGeral.FAT_CD_M_PED.DataRequest(
                                  VarArrayOf([0,'']));
          txtIdPedido.Text := '';
          txtIdPedido.SetFocus;
          exit;
        end;

      if  (dmGeral.FAT_CD_M_PED.FieldBYName('CONFERIDO').AsBoolean = true) then
        begin
          ShowMessage('O pedido já foi conferido.');
          dmGeral.FAT_CD_M_PED.Close;
          dmGeral.FAT_CD_M_PED.Data :=
          dmGeral.FAT_CD_M_PED.DataRequest(
                                  VarArrayOf([0,'']));
          txtIdPedido.Text := '';
          txtIdPedido.SetFocus;
          exit;
        end;



   dmGeral.FAT_CD_M_PED.Edit;
   dmGeral.FAT_CD_M_PED.FieldByName('ID_RESP_CONF').AsInteger := xFuncionario;
   dmGeral.FAT_CD_M_PED.FieldByName('DTA_CONF').AsDateTime := xDataSis;


   dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
   dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
   dmGeral.FAT_CD_M_PED.FieldByName('INT_NOME_RCN').AsString :=
                 dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
   dmGeral.BUS_CD_C_FUN.Close;
   gbIte.Enabled := true;
   btnFinalizar.Enabled := true;
   btnCancelar.Enabled := true;
   txtQtde.Text := '1';
   txtCodIte.SetFocus;
end;

procedure TFAT_FM_M_SEP.txtQtdeExit(Sender: TObject);
begin

     if trim(txtQtde.Text) = '' then
      begin
        txtQtde.Text := '1';
      end;

end;

procedure TFAT_FM_M_SEP.txtCodIteButtonClick(Sender: TObject);
begin
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
      if  lblItem.Caption = '<F7> Cód. Item' then
       begin
        txtCodIte.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
       end;

     if  lblItem.Caption = '<F7> Cód. Barra' then
       begin
        txtCodIte.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
       end;

     if  lblItem.Caption = '<F7> Cód. Fábrica' then
       begin
        txtCodIte.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
       end;

     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TFAT_FM_M_SEP.txtCodIteExit(Sender: TObject);
var
  xQtdeCodIte:String;
  posAster:Integer;
  ListaQtdeCodIte:TStrings;
begin

     if txtQtde.Focused  or btnSair.Focused or grdItens.Focused or
         btnCancelar.Focused  then
       begin
         txtCodIte.Text := '';
         exit;
       end;


    if trim(txtCodIte.Text) = '' then
      begin
     //   ShowMessage('Deve ser preenchido o código do item.');
        exit;
      end;


    if trim(txtCodIte.Text) = '0' then
      begin
        ShowMessage('Código inválido.');
        txtCodIte.Text := '';
        txtCodIte.SetFocus;
        exit;
      end;

    dmGeral.BUS_CD_C_ITE.Close;
     if  lblItem.Caption = '<F7> Cód. Item' then
       begin
        dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtCodIte.Text]));
       end;

     if  lblItem.Caption = '<F7> Cód. Barra' then
       begin
         dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtCodIte.Text]));
       end;

    if  lblItem.Caption = '<F7> Cód. Fábrica' then
       begin
         dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtCodIte.Text]));
       end;

   if dmGeral.BUS_CD_C_ITE.IsEmpty then
      begin
        ShowMessage('Item não cadastrado.');
        txtCodIte.Text := '';
        txtCodIte.SetFocus;
        exit;
      end;




   if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false)) then
     begin
       if dmGeral.BUS_CD_C_ITE.FieldByname('INT_LOTE_GRU').AsBoolean then
         begin
           cbbLote.Enabled := true;
           cbbLote.SetFocus;
         end
       else
         begin
           cbbLote.Enabled := false;
           BUS_CD_M_LOT.Close;
           ConferirItem;
           txtQtde.Text := '1';
           txtCodIte.Text := '';
           cbbLote.Text := '';
           txtCodIte.SetFocus;
         end;
     end
   else
     begin
        ChamaCorTamanho;
     end;

end;


procedure TFAT_FM_M_SEP.txtCodIteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f7 then
     begin
       if lblItem.Caption = '<F7> Cód. Fábrica' then
        begin
          lblItem.Caption := '<F7> Cód. Item';
        end
       else if lblItem.Caption = '<F7> Cód. Item' then
        begin
          lblItem.Caption := '<F7> Cód. Barra';
        end
       else if lblItem.Caption = '<F7> Cód. Barra' then
        begin
          lblItem.Caption := '<F7> Cód. Fábrica';
        end;
     end;
end;

procedure TFAT_FM_M_SEP.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 216;
            pnlCorTamanho.Top := 3;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 216;
                  pnlCorTamanho.Top   := 3;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 216;
                  pnlCorTamanho.Top := 3;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;

               end;
         end;
     end;
end;




procedure TFAT_FM_M_SEP.wwDBGrid1IButtonClick(Sender: TObject);
begin

      if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
        begin
          ShowMessage('Não existe itens no pedido');
          exit;
        end;

      dmGeral.FAT_CD_M_PED_ITE.Edit;
      dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsInteger := 0;
      dmGeral.FAT_CD_M_PED_ITE.Post;
      txtCodIte.Text := '';
end;

end.
