unit FAT_UN_M_ROM_PCA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Mask,
  JvExMask, JvToolEdit;

type
  TFAT_FM_M_ROM_PCA = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    gbPedidos: TGroupBox;
    dgPed: TwwDBGrid;
    gbCarregamento: TGroupBox;
    dgCar: TwwDBGrid;
    dso: TwwDataSource;
    dsoPed: TwwDataSource;
    btnSair: TcxButton;
    btnImportar: TcxButton;
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label1: TLabel;
    txtCodCar: TEdit;
    Label2: TLabel;
    btnPesquisar: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GridItem;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_ROM_PCA: TFAT_FM_M_ROM_PCA;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_ROM_PCA.btnImportarClick(Sender: TObject);
var
  mens:string;
begin
  mens := '';
  if dmGeral.BUS_CD_M_PCA.IsEmpty then
     begin
       ShowMessage('É necessário selecionar carregamento.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
     begin
       ShowMessage('O carregamento selecionado tinha sido importado para MDF.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_PCA_PED.RecordCount = 0) then
     begin
       ShowMessage('Não há nenhum pedido no carregamento selecionado.');
       exit;
     end;


   if (dmgeral.FAT_CD_M_ROM_NFE.RecordCount > 0) then
     begin
       if MessageDlg('Os pedidos selecionados no manifesto serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
           while (dmGeral.FAT_CD_M_ROM_NFE.RecordCount >0) do
             begin
               dmgeral.FAT_CD_M_ROM_NFE.Delete;
             end;
         end
       else
         begin
           exit;
         end;
     end;

   dmGeral.BUS_CD_M_PCA_PED.First;
   while not dmGeral.BUS_CD_M_PCA_PED.EOF do
     BEGIN
        //Se o pedido de venda não for liberado pelo financeiro
       if (dmGeral.BUS_CD_M_PCA_PED.FieldByName('INT_SITAPROV').AsString = '0') then
         begin
           mens := mens + dmGeral.BUS_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString+',';
         end
       else
         begin
            dmgeral.BUS_CD_M_NFE.Close;
            dmgeral.BUS_CD_M_NFE.Data :=
            dmgeral.BUS_CD_M_NFE.DataRequest(
                        VarArrayOf([15,dmgeral.BUS_CD_M_PCA_PED.FieldByName('ID_PEDIDO').Text]));
            if (not dmgeral.BUS_CD_M_NFE.IsEmpty) then
              begin
                if (not dmgeral.FAT_CD_M_ROM_NFE.Locate('ID_FISCAL',dmgeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString,[])) then
                   begin
                    dmGeral.FAT_CD_M_ROM.BeforePost := nil;
                    dmgeral.FAT_CD_M_ROM_NFE.Insert;
                    dmGeral.FAT_CD_M_ROM.BeforePost := dmGeral.FAT_CD_M_ROMBeforePost;
                    dmGeral.FAT_CD_M_ROM_NFE.FieldByName('ID_ROMANEIO').AsInteger   :=  dmgeral.FAT_CD_M_ROM.FieldByName('ID_ROMANEIO').AsInteger;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').AsString := dmgeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').AsString := dmgeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NUMERONF').AsString := dmgeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMEEMI').AsString := dmgeral.BUS_CD_M_PCA_PED.FieldByName('INT_NOMECLI').AsString;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_FONEFIXO').AsString := dmgeral.BUS_CD_M_PCA_PED.FieldByName('INT_TELFIXO').AsString;
                    dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECID').AsString := dmgeral.BUS_CD_M_PCA_PED.FieldByName('INT_NOMECID').AsString;
                    dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_VLRLIQUIDO').AsCurrency := dmgeral.BUS_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency;
                    dmGeral.FAT_CD_M_ROM_NFE.FieldByName('importada').AsBoolean := true;
                    GridItem;
                    dmGeral.FAT_CD_M_ROM_NFE.Post;
                   end;
              end;
         end;
       dmgeral.BUS_CD_M_PCA_PED.Next;
     END;

    if (mens <> '') then
       begin
         mens := 'Os seguintes pedidos não foram importados por não terem sido liberados pelo financeiro ou terem sido importados anteriormente:'+#13+mens;
         ShowMessage(mens);
       end;

    dmgeral.FAT_CD_M_ROM.FieldByName('ID_PCA').AsString := '';
    if (dmgeral.FAT_CD_M_ROM_NFE.RecordCount > 0) then
      begin
        dmgeral.FAT_CD_M_ROM.FieldByName('ID_PCA').AsInteger := dmGeral.BUS_CD_M_PCA_PED.FieldByName('ID_CARREGAMENTO').AsInteger;
      end;
    Close;
end;

procedure TFAT_FM_M_ROM_PCA.GridItem;
begin
  {dmgeral.BUS_CD_M_NFE.Close;
  dmgeral.BUS_CD_M_NFE.Data :=
  dmgeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([0, 'S' ,dmGeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').Text]));}

  dmgeral.BUS_CD_M_NFE_ITE.First;
  while not dmgeral.BUS_CD_M_NFE_ITE.Eof do
    begin

      dmgeral.FAT_CD_M_ROM_NFE_ITE.Insert;

      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_ROMANEIO').AsInteger   :=  dmgeral.FAT_CD_M_ROM.FieldByName('ID_ROMANEIO').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_FISCAL').AsInteger     :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger  :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_ITEM').AsInteger       :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('QTDE').AsCurrency         :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_COR').AsInteger        :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_COR').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMEITE').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMEUND').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMECOR').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMETAM').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString;
      dmgeral.FAT_CD_M_ROM_NFE_ITE.Post;

      dmgeral.BUS_CD_M_NFE_ITE.Next;
    end;
end;

procedure TFAT_FM_M_ROM_PCA.btnPesquisarClick(Sender: TObject);
var
  dtainicial,dtafinal:string;
begin
  dtainicial := deinicial.Text;
  dtafinal := definal.Text;

  if deinicial.Text = '  /  /    ' then
    dtainicial := '';
  if definal.Text = '  /  /    ' then
    dtafinal := '';

  if ((deinicial.Text = '  /  /    ') and (definal.Text = '  /  /    ') and (txtCodCar.Text = '')) then
    begin
      ShowMessage('Ao menos um filtro de pesquisa deve ser preenchido!');
    end
  else
    begin
      dmGeral.BUS_CD_M_PCA.Close;
      dmGeral.BUS_CD_M_PCA.Data :=
      dmGeral.BUS_CD_M_PCA.DataRequest(VarArrayOf([90, dtainicial, dtafinal, txtCodCar.Text]));
      dgCar.SetFocus;
    end;
end;

procedure TFAT_FM_M_ROM_PCA.btnSairClick(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PCA.Close;
  Close;
end;

procedure TFAT_FM_M_ROM_PCA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PCA_PED.Filtered := false;
end;

procedure TFAT_FM_M_ROM_PCA.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_ROM_PCA.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PCA.Close;
  dmGeral.BUS_CD_M_PCA.Data := dmGeral.BUS_CD_M_PCA.DataRequest(VarArrayOf([0, '']));
  dmGeral.BUS_CD_M_PCA.Open;

  dmGeral.BUS_CD_M_PCA_PED.Filtered := true;
  dmGeral.BUS_CD_M_PCA_PED.Filter := ' INT_NUMERONF > 0 ';

  pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);



end;

end.
