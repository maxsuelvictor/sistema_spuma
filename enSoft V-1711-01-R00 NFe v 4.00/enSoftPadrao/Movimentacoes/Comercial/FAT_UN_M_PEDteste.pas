unit FAT_UN_M_PEDteste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, JvToolEdit, vcl.wwdblook, Vcl.Buttons,
  vcl.Wwdbedit, Vcl.Mask, JvExMask, JvDBControls;

type
  TFAT_FM_M_PEDteste = class(TPAD_FM_X_PAD)
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    txtCliente: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label11: TLabel;
    wwDBEdit11: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure JvDBComboEdit1Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
  private
    { Private declarations }
     procedure AbrirBuscas;
     procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
     procedure Limparcampos;
     function  AcoesPosTestes: Boolean;
     procedure VerifRestricoes;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PEDteste: TFAT_FM_M_PEDteste;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_PED;

procedure TFAT_FM_M_PEDteste.AbrirBuscas;
begin
    dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela
                              // CAD_TB_C_PAR_CPG
  // Trás somente tipo de estoque do tipo SAÍDA e indicador NORMAL
  dmGeral.BusTipoEstoque(4,'1');

end;

procedure TFAT_FM_M_PEDteste.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED);

  HabilDesabCampos(true,clWindow);
  //pnItens.Enabled := false;
  //pnTitulos.Enabled := false;

  Limparcampos;



  dmGeral.FAT_CD_M_PDV.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FAT_CD_M_PDV.FieldByName('ID_ATENDENTE').AsInteger   := xFuncionario;
  //txtCliente.SetFocus;
end;

procedure TFAT_FM_M_PEDteste.acAlterarExecute(Sender: TObject);
begin
  if (dmgeral.FAT_CD_M_PDV.FieldByName('SITUACAO').AsInteger = 3) then
    begin
      ShowMessage('Pedido já Faturado!');
      exit;
    end;

  if (dmgeral.FAT_CD_M_PDV.FieldByName('SITUACAO').AsInteger = 4) then
    begin
      ShowMessage('Pedido já foi Cancelado!');
      exit;
    end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PDV) then
    begin
      inherited;
      //pnItens.Enabled := false;
      //pnTitulos.Enabled := false;
      HabilDesabCampos(false,$00DADADA);
      //txtObservacao.SetFocus;
    end;
end;

procedure TFAT_FM_M_PEDteste.acCancelarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
      begin
        inherited;
        //btn_Add_Itens.Enabled := True;
        dbGrid.SetFocus;
      end
   else
      begin
        //txtObservacao.SetFocus;
      end;
end;

procedure TFAT_FM_M_PEDteste.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
//  if FAT_CD_M_PED_TesCampos then
//     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FAT_CD_M_PDV.FieldByName('ID_PEDIDO').AsString;
             //btn_Add_Itens.Enabled := True;
             //AcoesPosTestes;
             DmGeral.Grava(dmGeral.FAT_CD_M_PDV);
             inherited;
             dmGeral.FAT_CD_M_PDV.Close;
             dmGeral.FAT_CD_M_PDV.Data :=
             dmGeral.FAT_CD_M_PDV.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));

             AbrirBuscas;
           end
        else
           begin
             {if txtCliente.CanFocus then
                txtCliente.SetFocus;
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;}
           end;
 {    end
  else
     begin
       {if txtCliente.CanFocus then
          txtCliente.SetFocus;
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;}
     //end;       }

end;

function TFAT_FM_M_PEDteste.AcoesPosTestes: Boolean;
begin
  if not (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Não usa produção
     begin
       FAT_RN_M_PED.FatVerifSeqNfe;
     end;

  VerifRestricoes;
end;

procedure TFAT_FM_M_PEDteste.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

  { Filtros do FAT_CD_M_PED:
      index 0, ID_PEDIDO
      index 1, Nome do cliente
      index 2, Nome do vendedor
      index 3, Nome da Condição de Pagamento
      index 4, Nome do Tipo de Estoque
      index 5, Data do pedido
      index 6, não tem parâmetro, e serve para buscar os pedido que tem restrinções.
   }

  dmGeral.FAT_CD_M_PDV.Close;
  dmGeral.FAT_CD_M_PDV.Data :=
  dmGeral.FAT_CD_M_PDV.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_PEDteste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_PED.Close;
  FreeAndNil(FAT_FM_M_PEDteste);
end;

procedure TFAT_FM_M_PEDteste.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_PDV.Close;
  dmGeral.FAT_CD_M_PDV.Data :=
  dmGeral.FAT_CD_M_PDV.DataRequest(
            VarArrayOf([0, '']));

  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela|

  dmGeral.BusTipoEstoque(4,'1');;
end;

procedure TFAT_FM_M_PEDteste.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  {txtCliente.Enabled     := Estado;
  txtCliente.Color       := Cor;
  cbbCondicaoPagamento.Enabled := Estado;
  cbbCondicaoPagamento.Color   := Cor;
  cbbVendedor.Enabled    := Estado;
  cbbVendedor.Color      := Cor;
  cbbTipoEstoque.Enabled := Estado;
  cbbTipoEstoque.Color   := Cor;
  cbbAtendente.Enabled   := Estado;
  cbbAtendente.Color     := Cor;
  txtSaldo.Text          := '';

  btnImportar.Enabled    := Estado;}

end;

procedure TFAT_FM_M_PEDteste.JvDBComboEdit1Exit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;

  {dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));
  }

  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
//       txtCliente.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString :=
        dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

  dmGeral.FAT_CD_M_PEDint_nomeest.AsString :=
       dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
end;

procedure TFAT_FM_M_PEDteste.Limparcampos;
begin
{     txtFpgEntrada.Text := '';
  txtGerFpg.Text     := '';

  txtSaldo.text      := '';}
end;

procedure TFAT_FM_M_PEDteste.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;



  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;

 { dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));
}

  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       //txtCliente.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString :=
        dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

  dmGeral.FAT_CD_M_PEDint_nomeest.AsString :=
       dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
end;

procedure TFAT_FM_M_PEDteste.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TFAT_FM_M_PEDteste.VerifRestricoes;
var
//  lPonteiroItens: TBookmark;
  lVlrTotTitPrazo: Currency;
begin

  { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
  }

  { Caso a venda seja a prazo, o sistema irá somar as formas de pagamento
    que são a prazo e verifica se ultrapassou o limite do cliente.
  }



  dmGeral.FAT_CD_M_PED.FieldByName('ID_USUARIO_LIB').Text          := '';
  dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').text          := '';
  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 0;

  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
     begin
        if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
           begin
             lVlrTotTitPrazo := 0;
             //LPonteiroItens  := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
             dmGeral.FAT_CD_M_PED_TIT.First;
             while not dmGeral.FAT_CD_M_PED_TIT.eof do
                begin
                  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);
                  if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
                     begin
                       lVlrTotTitPrazo := lVlrTotTitPrazo + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
                     end;
                  dmGeral.FAT_CD_M_PED_TIT.Next;
                end;
             //dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(lPonteiroItens);
             dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);

             if lVlrTotTitPrazo > 0 then
                begin
                  if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,lVlrTotTitPrazo) then
                     begin
                       if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                          begin
                            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                          end;
                     end
                end;
           end;
     end;


  // Irá verificar se o cliente encontra-se em débito
  if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                           dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)then
     begin
       if not (pos('B',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'B';
          end;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
     begin
       // Verifica se existe item com estoque negativo
       dmGeral.BusNotaFiscal(9,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);

       if dmGeral.VerifEstNeg(dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,dmGeral.BUS_CD_M_NFE_ITE) then
          begin
               if not (pos('C',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                  begin
                    dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'C';
                  end;
          end;
     end;

  // Irá verificar se o cliente encontra-se com o credito encerrado
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
  if dmGeral.BUS_CD_C_CLI.FieldByName('SITUACAO').AsInteger = 2 then
     begin
       if not (pos('D',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'D';
          end;
     end;
  dmgeral.BUS_CD_C_CLI.close;


  // LPonteiroItens  := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
   dmGeral.FAT_CD_M_PED_ITE.First;
   while not dmGeral.FAT_CD_M_PED_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <>
           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
           begin
             if not (pos('E',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                begin
                  dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'E';
                  dmGeral.FAT_CD_M_PED_ITE.Last;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.Next;
      end;
   //dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(lPonteiroItens);

   if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
        if (dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').Text = '') then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;
           end;
      end;
end;
procedure TFAT_FM_M_PEDteste.wwDBEdit8Exit(Sender: TObject);
begin
  inherited;
if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;



  dmGeral.FAT_CD_M_PDV.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FAT_CD_M_PDV.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       txtCliente.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PDV.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_PDV.FieldByName('int_cpfcnpj').AsString :=
        dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

  dmGeral.FAT_CD_M_PDV.FieldByName('int_nomeest').AsString :=
       dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
end;

end.
