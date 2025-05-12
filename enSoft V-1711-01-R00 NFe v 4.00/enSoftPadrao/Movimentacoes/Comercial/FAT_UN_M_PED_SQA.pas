unit FAT_UN_M_PED_SQA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB, Datasnap.DBClient, System.IniFiles, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.SqlExpr, Datasnap.DSConnect, vcl.Wwdbedit,
  vcl.wwdblook, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Buttons, System.Math, vcl.Wwdbspin, vcl.wwdatsrc,
  Vcl.Samples.Spin;

type
  TFAT_FM_M_PED_SQA = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    btnSair: TButton;
    Label10: TLabel;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    txtPcpObsItem: TDBMemo;
    lblItemSobMed: TLabel;
    Label1: TLabel;
    dsPedSqa: TwwDataSource;
    dsPedtIten: TwwDataSource;
    Label2: TLabel;
    wwGrdItensSolicitados: TwwDBGrid;
    wwbtnGrdItens: TwwIButton;
    btnSolicitar: TButton;
    Label3: TLabel;
    txtQtde: TwwDBEdit;
    txtQtdeRetirarConf: TSpinEdit;
    pmLib: TPopupMenu;
    Liberaralteraoparaesteitem1: TMenuItem;
    procedure grdItensDblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSolicitarClick(Sender: TObject);
    procedure wwbtnGrdItensClick(Sender: TObject);
    procedure txtQtdeRetirarConfChange(Sender: TObject);
    procedure Liberaralteraoparaesteitem1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xIdFunc_liberacao: integer;
    xIdPedido_liberacao: String;
  end;

var
  FAT_FM_M_PED_SQA: TFAT_FM_M_PED_SQA;


implementation

{$R *.dfm}

uses uDmGeral, uProxy, FAT_UN_M_PED, PSQ_UN_X_ITE;


procedure TFAT_FM_M_PED_SQA.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFAT_FM_M_PED_SQA.btnSolicitarClick(Sender: TObject);
var
  pedido: integer;
begin

  if txtQtdeRetirarConf.value = 0 then
     begin
       ShowMessage('Quantidade a retirar não pode ser 0.');
       exit;
     end;

  if dmgeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency = 0 then
     begin
       ShowMessage('Quantidade a retirar não pode ser 0.');
       exit;
     end;

  if MessageDlg('Confirma a solicitação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

        //dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency := txtQtdeRetirarConf.value;

        dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_solicitacao').AsDateTime := date;

        dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_solicitacao').AsDateTime := time;

        dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_func_solicitacao').AsInteger := xFuncionario;

        pedido := dmgeral.FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;

        dmgeral.FAT_CD_M_PED_SQA.Post;
        dmgeral.FAT_CD_M_PED.ApplyUpdates(0);

        dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  pedido]));

        txtQtdeRetirarConf.value := 0;
        txtQtdeRetirarConf.Enabled := false;
        txtQtdeRetirarConf.Color := $00DADADA;
     end;

end;

procedure TFAT_FM_M_PED_SQA.FormShow(Sender: TObject);
begin

  if xIdPedido_liberacao <> '' then
     begin
        dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  xIdPedido_liberacao]));
     end;

end;

procedure TFAT_FM_M_PED_SQA.grdItensDblClick(Sender: TObject);
begin

  if dmgeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
       ShowMessage('Não há item para poder solicitar alteração.');
       exit;
     end;


  dmgeral.FAT_CD_M_PED_SQA.Filtered := true;
  dmgeral.FAT_CD_M_PED_SQA.Filter := 'id_item = ' + dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString +
                                     ' and ' +
                                     'id_sequencia = ' + dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsString +
                                     'and liberado = false';

  if not dmgeral.FAT_CD_M_PED_SQA.IsEmpty then
     begin
       ShowMessage('Já existe solicitação para este item!');
       dmgeral.FAT_CD_M_PED_SQA.Filtered := false;
       exit;
     end;
  dmgeral.FAT_CD_M_PED_SQA.Filtered := false;


  dmgeral.FAT_CD_M_PED_SQA.cancel;

  dmgeral.FAT_CD_M_PED_SQA.Insert;
  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_sequencia').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_item').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('int_nomeite').AsString :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_cor').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_cor').AsInteger;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('int_nomecor').AsString :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('int_nomecor').AsString;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_tamanho').AsInteger :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('id_tamanho').AsInteger;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('pcp_obs_item').AsString :=
     dmgeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('liberado').AsBoolean := false;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_solicitacao').AsDateTime := date;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_solicitacao').AsDateTime := time;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_func_solicitacao').AsInteger := xFuncionario;

  dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency := 0;

  txtQtdeRetirarConf.Enabled := true;
  txtQtdeRetirarConf.Color := clWhite;

  txtQtdeRetirarConf.SetFocus;
//  dmgeral.FAT_CD_M_PED_SQA.FieldByName('liberado_destinatario
//  dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_usu_destinatario
 // dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_liberado
 // dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_liberado
end;

procedure TFAT_FM_M_PED_SQA.Liberaralteraoparaesteitem1Click(Sender: TObject);
begin

 if dmgeral.FAT_CD_M_PED_SQA.FieldByName('liberado').AsBoolean = true then
    begin
      Showmessage('Esse item já foi liberado!' +
                  'Talvez você queira liberar outro item.');
      exit;
    end;


 if MessageDlg('Confirma a liberação deste item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dmgeral.FAT_CD_M_PED.edit;
      dmgeral.FAT_CD_M_PED_SQA.edit;
      dmgeral.FAT_CD_M_PED_SQA.FieldByName('dta_liberado').AsDateTime := date;

      dmgeral.FAT_CD_M_PED_SQA.FieldByName('hora_liberado').AsDateTime := time;

      dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_usu_liberacao').AsInteger := xFuncionario;

      dmgeral.FAT_CD_M_PED_SQA.FieldByName('int_nomefct').AsInteger := xFuncionario;

      dmgeral.FAT_CD_M_PED_SQA.FieldByName('liberado').AsBoolean := true;

      dmgeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger := 2;

      dmgeral.FAT_CD_M_PED_SQA.Post;
      dmgeral.FAT_CD_M_PED.Post;

      if dmgeral.FAT_CD_M_PED.ApplyUpdates(0) = 0 then
         begin
           ShowMessage('Liberação realizada!');
           dmGeral.FAT_CD_M_PED.Close;
              dmGeral.FAT_CD_M_PED.Data :=
                 dmGeral.FAT_CD_M_PED.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  xIdPedido_liberacao]));
         end
      else
         begin
           ShowMessage('Erro ao gravar a liberação!');
         end;
    end;
end;

procedure TFAT_FM_M_PED_SQA.txtQtdeRetirarConfChange(Sender: TObject);
begin
  txtQtdeRetirarConf.Value;

  if dmgeral.FAT_CD_M_PED_SQA.State in [dsInsert,dsEdit]  then
     begin
        // dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsString :=  txtQtdeRetirarConf.Text;
        dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency := txtQtdeRetirarConf.Value;
        if ((dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency =
            dmgeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency) ) or
           ((dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency >
            dmgeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency))  then
           begin
             ShowMessage('Qtde a retirar não pode ser a mesma quantidade do item.') ;
             txtQtdeRetirarConf.Value := 0;
             dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency := 0;
           end;
        if dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency < 0 then
           begin
             ShowMessage('Qtde a retirar não pode ser menor que 0.') ;
             txtQtdeRetirarConf.Value := 0;
             dmgeral.FAT_CD_M_PED_SQA.FieldByName('qtde_retirar_conf').AsCurrency := 0;
           end;

     end;

end;

procedure TFAT_FM_M_PED_SQA.wwbtnGrdItensClick(Sender: TObject);
var
  pedido: integer;
begin

  if not dmGeral.FAT_CD_M_PED_SQA.IsEmpty then
     begin
       if dmgeral.FAT_CD_M_PED_SQA.FieldByName('id_usu_liberacao').AsInteger > 0 then
          begin
            ShowMessage('Esse item já foi liberado!');
            exit;
          end;
      // dsPedSqa.dataset.delete;


       if MessageDlg('Deseja realmente deletar essa solicitação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
             pedido := dmgeral.FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;

             dmgeral.FAT_CD_M_PED_SQA.Delete;
             dmgeral.FAT_CD_M_PED.ApplyUpdates(0);

             dmGeral.FAT_CD_M_PED.Close;
                  dmGeral.FAT_CD_M_PED.Data :=
                  dmGeral.FAT_CD_M_PED.DataRequest(
                          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  pedido]));

             grdItens.SetFocus;
          end;
     end;
end;

end.
