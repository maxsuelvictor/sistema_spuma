unit PCP_UN_M_ROM_IPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Mask,
  JvExMask, JvToolEdit;

type
  TPCP_FM_M_ROM_IPE = class(TForm)
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
    Label7: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Panel5: TPanel;
    Label6: TLabel;
    Panel6: TPanel;
    Label8: TLabel;
    Label51: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dgPedCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
    procedure GridItem;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM_IPE: TPCP_FM_M_ROM_IPE;

implementation

{$R *.dfm}

uses uDmGeral, PCP_UN_M_ROM, uProxy;

procedure TPCP_FM_M_ROM_IPE.btnImportarClick(Sender: TObject);
var
  mens:string;

  SMPrincipal : TSMClient;

  IdRom: integer;

begin
  mens := '';
  if dmGeral.BUS_CD_M_PCA.IsEmpty then
     begin
       ShowMessage('É necessário selecionar carregamento.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
     begin
       ShowMessage('O carregamento selecionado já foi importado.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_PCA_PED.RecordCount = 0) then
     begin
       ShowMessage('Não há nenhum pedido no carregamento selecionado.');
       exit;
     end;


   if (dmgeral.PCP_CD_M_ROM_PED.RecordCount > 0) then
     begin
       Showmessage('Já existe pedido inserido no relatório de carga.');
       exit;
     end;

   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

   dmGeral.BUS_CD_M_PCA_PED.First;
   while not dmGeral.BUS_CD_M_PCA_PED.EOF do
      begin
        if (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_situacaoped').AsInteger = 2) and  // em produção
           (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_sitaprov').AsInteger = 1) then    // Liberado
           begin
              IdRom := SMPrincipal.enSgqVefPedRom(dmgeral.BUS_CD_M_PCA_PED.FieldByName('id_pedido').AsString);

              if IdRom <> 0 then
                 begin
                   ShowMessage('Este pedido já existe no relatório de carga Nº '+IntToStr(IdRom)+'.');
                   dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
                   FreeAndNil(SMPrincipal);
                   abort;
                 end;
           end;
        dmgeral.BUS_CD_M_PCA_PED.Next;
      end;

   FreeAndNil(SMPrincipal);


   dmGeral.BUS_CD_M_PCA_PED.First;
   while not dmGeral.BUS_CD_M_PCA_PED.EOF do
     begin
        //Se o pedido de venda não for liberado pelo financeiro
           {  if (dmGeral.BUS_CD_M_PCA_PED.FieldByName('INT_SITAPROV').AsString = '0') then
               begin
                 mens := mens + dmGeral.BUS_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString+',';
               end
             else
               begin }
        if (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_situacaoped').AsInteger = 2) and  // em produção
           (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_sitaprov').AsInteger = 1) then    // Liberado
           begin

              dmgeral.BUS_CD_M_PED.Close;
              dmGeral.BUS_CD_M_PED.Data :=
                dmGeral.BUS_CD_M_PED.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.BUS_CD_M_PCA_PED.FieldByName('id_pedido').AsString]));

              dmgeral.BUS_CD_C_CLI.Close;
              dmGeral.BUS_CD_C_CLI.Data :=
                dmGeral.BUS_CD_C_CLI.DataRequest(
                  VarArrayOf([0,dmgeral.BUS_CD_M_PED.FieldByName('id_cliente').AsString]));



              dmgeral.PCP_CD_M_ROM_PED.Insert;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString :=
                      dmgeral.BUS_CD_M_PCA_PED.FieldByName('id_pedido').AsString;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString :=
                      dmgeral.BUS_CD_M_PCA_PED.FieldByName('INT_NOMECLI').AsString;;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_DTAPEDIDO').AsString :=
                      dmgeral.BUS_CD_M_PED.FieldByName('dta_pedido').AsString;

              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODIGOREGCLI').AsString :=
                      dmgeral.BUS_CD_C_CLI.FieldByName('ID_REGIAO').AsString;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEREG').AsString :=
                      dmgeral.BUS_CD_C_CLI.FieldByName('INT_NOMEREG').AsString;

              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODCLI').AsString :=
                      dmgeral.BUS_CD_M_PED.FieldByName('id_cliente').AsString;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CUBAGEMPED').AsString :=
                      dmgeral.BUS_CD_M_PED.FieldByName('CUBAGEM').AsString;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEVEND').AsString :=
                      dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMERES').AsString;

              dmgeral.PCP_CD_M_ROM_PED.FieldByName('importado').AsBoolean := true;

              {
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
              dmGeral.FAT_CD_M_ROM_NFE.FieldByName('importada').AsBoolean := true;  }
              GridItem;
              dmgeral.PCP_CD_M_ROM_PED.Post;
           end;
       dmgeral.BUS_CD_M_PCA_PED.Next;
     end;

    {if (mens <> '') then
       begin
         mens := 'Os seguintes pedidos não foram importados por não terem sido liberados pelo financeiro ou terem sido importados anteriormente:'+#13+mens;
         ShowMessage(mens);
       end;  }

    if (dmgeral.PCP_CD_M_ROM_PED.RecordCount > 0) then
      begin
         dmgeral.PCP_CD_M_ROM.FieldByName('ID_PCA').AsInteger := dmGeral.BUS_CD_M_PCA_PED.FieldByName('ID_CARREGAMENTO').AsInteger;
      end;
    dmgeral.PCP_CD_M_ROM_PED.First;
   
    Close;
end;

procedure TPCP_FM_M_ROM_IPE.GridItem;
var
  itens_sel: String;
  qtde_total: Currency;
  sequencia: integer;
begin
  dmgeral.BUS_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Data :=
    dmGeral.BUS_CD_M_PED.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text]));

  dmgeral.BUS_CD_M_PED_ITE.First;
  dmGeral.PCP_CD_M_ROM_PED.AfterPost := NIL;
  while not dmgeral.BUS_CD_M_PED_ITE.Eof do
    begin
      dmgeral.PCP_CD_M_ROM_PED_ITE.Insert;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ROM').AsInteger := dmgeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PEDIDO').AsInteger := dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;
      // Maxsuel Victor, em 08/08/2017
      // Atenção o valor do campo QTDE pode ficar diferente do pedido do venda, pois o usuário pode alterar depois
      // a qtde do pedido.
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ').AsCurrency      := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ_CONF').AsCurrency := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PED_ITE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;


      if trim(dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString) <> '' then
          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString :=
            dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString
      else
         dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMECOR').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMETAM').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_UNDVENDA').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsInteger := 0;

      if itens_sel <> '' then
         begin
          itens_sel :=
          itens_sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;
      if itens_sel = '' then
         begin
           itens_sel :=
           itens_sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;

      dmgeral.PCP_CD_M_ROM_PED_ITE.Post;
      dmgeral.BUS_CD_M_PED_ITE.Next;
    end;

 { dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  while not dmgeral.PCP_CD_M_ROM_PED_ITE.Eof do
    begin

      dmgeral.PCP_CD_M_ROM_PED_ITE.Insert;

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
    end; }
end;

procedure TPCP_FM_M_ROM_IPE.btnPesquisarClick(Sender: TObject);
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

procedure TPCP_FM_M_ROM_IPE.btnSairClick(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PCA.Close;
  Close;
end;

procedure TPCP_FM_M_ROM_IPE.dgPedCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin

  if dmgeral.BUS_CD_M_PCA_PEDint_situacaoped.AsInteger = 1 then
     begin
       aFont.Color := clMaroon;
     end;

  if dmgeral.BUS_CD_M_PCA_PEDint_situacaoped.AsInteger = 2 then
     begin
       aFont.Color := clBlue;
     end;

  if (dmgeral.BUS_CD_M_PCA_PEDint_situacaoped.AsInteger = 2) and
     (dmgeral.BUS_CD_M_PCA_PEDint_sitaprov.AsInteger = 0)    then
     begin
       aFont.Color := $000080FF;
     end;

  if dmgeral.BUS_CD_M_PCA_PEDint_situacaoped.AsInteger = 3 then
     begin
       aFont.Color := clGreen;
     end;

  if dmgeral.BUS_CD_M_PCA_PEDint_situacaoped.AsInteger = 4 then
     begin
       aFont.Color := clBlue;
     end;

end;

procedure TPCP_FM_M_ROM_IPE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PCA_PED.Filtered := false;
end;

procedure TPCP_FM_M_ROM_IPE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_ROM_IPE.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PCA.Close;
  dmGeral.BUS_CD_M_PCA.Data := dmGeral.BUS_CD_M_PCA.DataRequest(VarArrayOf([0, '']));
  dmGeral.BUS_CD_M_PCA.Open;

 // dmGeral.BUS_CD_M_PCA_PED.Filtered := true;
//  dmGeral.BUS_CD_M_PCA_PED.Filter := ' int_situacaoped = 2 AND int_sitaprov = 1 ';

  pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);



end;

end.
