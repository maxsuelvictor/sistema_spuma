unit PCP_UN_M_OPR_OPB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, vcl.Wwdbedit,
  vcl.wwdblook, Vcl.Buttons, Vcl.DBCtrls, Datasnap.DBClient, enFunc, frxClass,
  frxDBSet;

type
  TPCP_FM_M_OPR_OPB = class(TPAD_FM_X_FRM)
    pnDados: TPanel;
    pnCabecalho: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    dsoOpbObl: TwwDataSource;
    grdItensOp: TwwDBGrid;
    txtEmissao: TJvDBDateEdit;
    Panel1: TPanel;
    gbItens: TGroupBox;
    grdItensOppMan: TwwDBGrid;
    grdItensIButton: TwwIButton;
    dsGeracaoOpb: TwwDataSource;
    Button1: TButton;
    Label8: TLabel;
    BUS_CD_M_OPB_OBL: TClientDataSet;
    BUS_CD_M_OPR_GER_OPB: TClientDataSet;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label3: TLabel;
    BUS_DS_M_OPR_ITE_SCB: TDataSource;
    BUS_CD_M_OPR_ITE_SCB: TClientDataSet;
    BUS_CD_M_OPR_ITE_SCBid_item: TIntegerField;
    BUS_CD_M_OPR_ITE_SCBdescricao: TWideStringField;
    BUS_CD_M_OPR_ITE_SCBcubagem1: TWideStringField;
    BUS_CD_M_OPR_ITE_SCBcubagem2: TWideStringField;
    BUS_CD_M_OPR_ITE_SCBcubagem3: TWideStringField;
    BUS_CD_M_OPR_GER_OPBid_item_bloco_espuma: TIntegerField;
    BUS_CD_M_OPR_GER_OPBcubagem_esp_1: TFloatField;
    BUS_CD_M_OPR_GER_OPBbloco: TWideStringField;
    BUS_CD_M_OPR_GER_OPBsaldo_fisico: TFloatField;
    BUS_CD_M_OPR_GER_OPBcubagem_da_op: TFloatField;
    BUS_CD_M_OPR_GER_OPBqtde_a_produzir: TFloatField;
    BUS_CD_M_OPR_GER_OPBqtde_a_abater_no_sld: TFloatField;
    FR_BlocoEspuma: TfrxReport;
    DB_BlocoEspuma: TfrxDBDataset;
    BUS_CD_M_OPB_OBLid_opb: TIntegerField;
    BUS_CD_M_OPB_OBLid_opb_obl: TIntegerField;
    BUS_CD_M_OPB_OBLid_cor: TIntegerField;
    BUS_CD_M_OPB_OBLid_tamanho: TIntegerField;
    BUS_CD_M_OPB_OBLcubagem_a_produzir: TFloatField;
    BUS_CD_M_OPB_OBLobs: TWideStringField;
    BUS_CD_M_OPB_OBLint_nomeite: TWideStringField;
    BUS_CD_M_OPB_OBLint_nomecor: TWideStringField;
    BUS_CD_M_OPB_OBLint_nometam: TWideStringField;
    BUS_CD_M_OPB_OBLdta_emissao: TDateField;
    BUS_CD_M_OPB_OBLid_responsavel: TIntegerField;
    BUS_CD_M_OPB_OBLint_nomeres: TWideStringField;
    BUS_CD_M_OPB_OBLid_item: TIntegerField;
    BUS_CD_M_OPB_OBLqtde_abater_sld: TFloatField;
    BitBtn1: TBitBtn;
    BUS_CD_M_OPB_OBLop_espumacao_impressa: TBooleanField;
    BUS_CD_M_OPB_OBLop_impressa_por: TIntegerField;
    BUS_CD_M_OPB_OBLop_impressa_em: TDateField;
    BUS_CD_M_OPB_OBLint_nome_imp: TWideStringField;
    DB_Opr: TfrxDBDataset;
    BUS_CD_M_OPB_OBLint_cubagem_esp1: TFloatField;
    BUS_CD_M_OPR_ITE_SCBcubagem_resvestimento_1: TWideStringField;
    BUS_CD_M_OPR_ITE_SCBcubagem_resvestimento_2: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaCorTamanho;
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure BuscarOppIteMan;
    var
      xbusca_item: String;
      xUltOpp: integer;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPR_OPB: TPCP_FM_M_OPR_OPB;
  xPed_MedidasPerson: String;

implementation

{$R *.dfm}

uses PCP_UN_M_OPR_OPP_ALT, uDmGeral, PSQ_UN_X_ITE, uProxy, CSU_UN_M_PED,PCP_UN_M_OPR_IPE;

procedure TPCP_FM_M_OPR_OPB.AbrirBuscas;
begin

end;

procedure TPCP_FM_M_OPR_OPB.Atualizar_xBusca;
begin

end;

procedure TPCP_FM_M_OPR_OPB.BitBtn1Click(Sender: TObject);
begin
  inherited;

  if BUS_CD_M_OPB_OBL.IsEmpty then
     begin
       ShowMessage('Não há registro para poder imprimir.');
       exit;
     end;

  try

  BUS_CD_M_OPB_OBL.RecordCount;

  BUS_CD_M_OPB_OBL.Filtered := true;
  BUS_CD_M_OPB_OBL.Filter   := ' op_impressa_por = 0 ';

  if BUS_CD_M_OPB_OBL.IsEmpty then
     begin
       BUS_CD_M_OPB_OBL.Filtered := false;
       if MessageDlg('Não há blocos novos para poder imprimir para a espumação!'+#13 + 'Deseja re-imprmir tudo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            abort;
          end;
     end;

  BUS_CD_M_OPB_OBL.RecordCount;

  BUS_CD_M_OPB_OBL.IndexFieldNames := 'id_opb;int_nomeite';

  FR_BlocoEspuma.PrepareReport();
  FR_BlocoEspuma.ShowReport();

  if MessageDlg('O relatório foi realmente impresso?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

       BUS_CD_M_OPB_OBL.Filtered := false;

       BUS_CD_M_OPB_OBL.First;
       while not BUS_CD_M_OPB_OBL.eof do
          begin
            if BUS_CD_M_OPB_OBL.FieldByName('op_impressa_por').AsInteger = 0 then
               begin
                 BUS_CD_M_OPB_OBL.edit;
                 BUS_CD_M_OPB_OBL.FieldByName('op_impressa_em').AsDateTime := date;
                 BUS_CD_M_OPB_OBL.FieldByName('op_impressa_por').AsInteger := xFuncionario;
                 BUS_CD_M_OPB_OBL.FieldByName('op_espumacao_impressa').AsBoolean := true;
                 BUS_CD_M_OPB_OBL.Post;
               end;
            BUS_CD_M_OPB_OBL.Next;
          end;

       try
          if BUS_CD_M_OPB_OBL.ChangeCount > 0 then
             BUS_CD_M_OPB_OBL.ApplyUpdates(0);
       except
          on e: exception do
             begin
               ShowMessage('Erro na atualização das informações da impressão da O.P da espumação.');
               abort;
             end;
       end;

       BUS_CD_M_OPB_OBL.close;
       BUS_CD_M_OPB_OBL.Data :=
       BUS_CD_M_OPB_OBL.DataRequest(VarArrayOf([0,
              dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));
     end;

  finally
     BUS_CD_M_OPB_OBL.Filtered := false;
  end;
end;

procedure TPCP_FM_M_OPR_OPB.BuscarOppIteMan;
begin

end;

procedure TPCP_FM_M_OPR_OPB.Button1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  if not (BUS_CD_M_OPR_ITE_SCB.IsEmpty) then
     begin
       Showmessage('Geração não permitida!' + #13 +
                   'É preciso que corrija o cadastro dos itens ao lado, pois existem itens que estão sem a cubagem da espuma.');
       exit;
     end;

  if (BUS_CD_M_OPR_GER_OPB.IsEmpty) then
     begin
       Showmessage('Não há nenhum bloco para ser gerado ordem de produção.');
       exit;
     end;

  if MessageDlg('Confirma a geração do(s) bloco(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     begin
       exit;
     end;

  dmgeral.PCP_CD_M_OPB.close;
  dmgeral.PCP_CD_M_OPB.Data :=
      dmgeral.PCP_CD_M_OPB.DataRequest(VarArrayOf([0,
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    -1]));


  dmgeral.PCP_CD_M_OPB.Insert;
  dmgeral.PCP_CD_M_OPB.FieldByName('id_responsavel').AsInteger := xFuncionario;
  dmgeral.PCP_CD_M_OPB.FieldByName('dta_emissao').AsDateTime := date;
  dmgeral.PCP_CD_M_OPB.FieldByName('id_almoxarifado').AsInteger :=
          dmgeral.PCP_CD_M_OPR.FieldByName('id_almoxarifado').AsInteger;
  dmgeral.PCP_CD_M_OPB.FieldByName('origem').AsInteger := 1;
  dmgeral.PCP_CD_M_OPB.FieldByName('id_opr').AsInteger :=
          dmgeral.PCP_CD_M_OPR.FieldByName('id_opr').AsInteger;
  dmgeral.PCP_CD_M_OPB.Post;

  i := 0;
  if dmgeral.PCP_CD_M_OPB_OBL.RecordCount > 0 then
     i := dmgeral.PCP_CD_M_OPB_OBL.RecordCount;

  BUS_CD_M_OPR_GER_OPB.First;
  while not BUS_CD_M_OPR_GER_OPB.eof do
     begin
       inc(i);
       dmgeral.PCP_CD_M_OPB_OBL.Insert;

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('id_opb_obl').AsInteger := i;

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('id_item').AsInteger :=
               BUS_CD_M_OPR_GER_OPB.FieldByName('id_item_bloco_espuma').AsInteger;

       dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
               dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmgeral.PCP_CD_M_OPB_OBL.FieldByName('id_item').AsString]));

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('INT_TIPO_ITEM').AsString :=
          trim(dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString);

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('num_lote').AsString := '';

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('id_cor').AsInteger :=  1;

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('id_tamanho').AsInteger := 0;

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('cubagem_a_produzir').AsCurrency :=
               BUS_CD_M_OPR_GER_OPB.FieldByName('qtde_a_produzir').AsCurrency;

       dmgeral.PCP_CD_M_OPB_OBL.FieldByName('qtde_abater_sld').AsCurrency :=
               BUS_CD_M_OPR_GER_OPB.FieldByName('qtde_a_abater_no_sld').AsCurrency;

       dmGeral.PCP_CD_M_OPB_OBL.FieldByName('op_impressa_por').AsInteger := 0;

       dmgeral.PCP_CD_M_OPB_OBL.post;

       BUS_CD_M_OPR_GER_OPB.Next;
     end;
  BUS_CD_M_OPR_GER_OPB.First;

  try

     if dmgeral.PCP_CD_M_OPB.ApplyUpdates(0) = 0 then
        Showmessage('Geração realizada com sucesso!');
  except
     on e: exception do
        begin
          ShowMessage('Erro ao tentar gerar a ordem de produção para o(s) bloco(s).' + #13 +
                      e.Message);
        end;
  end;

  BUS_CD_M_OPB_OBL.close;
  BUS_CD_M_OPB_OBL.Data :=
      BUS_CD_M_OPB_OBL.DataRequest(VarArrayOf([0,
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));


  BUS_CD_M_OPR_GER_OPB.close;
  BUS_CD_M_OPR_GER_OPB.Data :=
      BUS_CD_M_OPR_GER_OPB.DataRequest(VarArrayOf([
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString,1]));

end;


procedure TPCP_FM_M_OPR_OPB.ChamaCorTamanho;
begin


end;

procedure TPCP_FM_M_OPR_OPB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //dmGeral.PCP_CD_M_OPR.Cancel;
  FreeAndNil(PCP_FM_M_OPR_OPB);
  PCP_FM_M_OPR_IPE.WindowState := wsMaximized;
end;

procedure TPCP_FM_M_OPR_OPB.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirBuscas;


  BUS_CD_M_OPB_OBL.close;
  BUS_CD_M_OPB_OBL.Data :=
      BUS_CD_M_OPB_OBL.DataRequest(VarArrayOf([0,
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));



  BUS_CD_M_OPR_GER_OPB.close;
  BUS_CD_M_OPR_GER_OPB.Data :=
      BUS_CD_M_OPR_GER_OPB.DataRequest(VarArrayOf([
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString,'1']));




  BUS_CD_M_OPR_ITE_SCB.close;
  BUS_CD_M_OPR_ITE_SCB.Data :=
      BUS_CD_M_OPR_ITE_SCB.DataRequest(VarArrayOf([
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));

end;

end.
