unit PCP_UN_M_OPR_IPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls,
  Vcl.Buttons, Datasnap.DBClient, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TPCP_FM_M_OPR_IPE = class(TPAD_FM_X_FRM)
    lblNOrdemProducao: TLabel;
    txtNOrdemProducao: TwwDBEdit;
    lblEmissao: TLabel;
    txtEmissao: TJvDBDateEdit;
    lblResponsavel: TLabel;
    txtResponsavel: TwwDBEdit;
    Label2: TLabel;
    dgPedidosLiberados: TwwDBGrid;
    dgItens: TwwDBGrid;
    Label3: TLabel;
    dsPed: TwwDataSource;
    dsPedIte: TwwDataSource;
    dsOprPedIte: TwwDataSource;
    GroupBox1: TGroupBox;
    cbbFiltroPed: TComboBox;
    txtPesquisaPed: TEdit;
    btnFiltroPed: TcxButton;
    btnImportarPed: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dgPedidosImportados: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    dsoOpp: TwwDataSource;
    pnInfo: TPanel;
    lblPedido: TLabel;
    lblCalcSldProduzir: TLabel;
    lblAtuPedVenda: TLabel;
    lblGerandoEtq: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltro: TcxButton;
    BUS_CD_M_PED: TClientDataSet;
    BUS_CD_M_PEDid_pedido: TIntegerField;
    BUS_CD_M_PEDdta_pedido: TDateField;
    BUS_CD_M_PEDint_nomecpg: TWideStringField;
    BUS_CD_M_PEDint_selecao: TBooleanField;
    BUS_CD_M_PEDcubagem: TFloatField;
    BUS_CD_M_PEDint_nomecli: TWideStringField;
    BUS_CD_M_PEDid_empresa: TIntegerField;
    BUS_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PEDid_vendedor: TIntegerField;
    BUS_CD_M_PEDobs: TWideStringField;
    BUS_CD_M_PEDvlr_bruto: TFMTBCDField;
    BUS_CD_M_PEDvlr_desconto: TFMTBCDField;
    BUS_CD_M_PEDper_desconto: TFloatField;
    BUS_CD_M_PEDvlr_liquido: TFMTBCDField;
    BUS_CD_M_PEDhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PEDid_condicao_pag: TIntegerField;
    BUS_CD_M_PEDpcp_obs: TWideStringField;
    BUS_CD_M_PEDpcp_id_opr: TIntegerField;
    BUS_CD_M_PEDsituacao: TIntegerField;
    BUS_CD_M_PEDsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PEDid_atendente: TIntegerField;
    BUS_CD_M_PEDid_responsavel: TIntegerField;
    BUS_CD_M_PEDid_cliente: TIntegerField;
    BUS_CD_M_PEDtipo_restricao: TWideStringField;
    BUS_CD_M_PEDid_almoxarifado: TIntegerField;
    BUS_CD_M_PEDint_nometme: TWideStringField;
    BUS_CD_M_PEDint_nomefun: TWideStringField;
    BUS_CD_M_PEDint_nomeate: TWideStringField;
    BUS_CD_M_PEDint_nomeres: TWideStringField;
    BUS_CD_M_PEDint_cpfcnpj: TWideStringField;
    BUS_CD_M_PEDint_id_perfil: TIntegerField;
    BUS_CD_M_PEDjustificativa: TWideStringField;
    BUS_CD_M_PEDid_usuario_lib: TIntegerField;
    BUS_CD_M_PEDcod_lme: TWideStringField;
    BUS_CD_M_PEDrev_lme: TWideStringField;
    BUS_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    BUS_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    BUS_CD_M_PEDorigem: TIntegerField;
    BUS_CD_M_PEDdispositivo: TWideStringField;
    BUS_CD_M_PEDgps_latitude: TFloatField;
    BUS_CD_M_PEDgps_longitude: TFloatField;
    BUS_CD_M_PEDint_pessoacli: TIntegerField;
    BUS_CD_M_PEDid_orcamento: TIntegerField;
    BUS_CD_M_PEDint_sitaprov: TWideStringField;
    BUS_CD_M_PEDint_sitped: TWideStringField;
    BUS_CD_M_PEDenvia_carga: TBooleanField;
    BUS_CD_M_PEDdta_prev_entrega: TDateField;
    BUS_CD_M_PEDid_ors: TIntegerField;
    BUS_CD_M_PEDint_nomecid: TWideStringField;
    BUS_CD_M_PEDint_nomeest: TWideStringField;
    BUS_CD_M_PEDid_abertura: TIntegerField;
    BUS_CD_M_PEDint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PEDdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PEDint_nomereg: TWideStringField;
    BUS_CD_M_PEDint_numloteopr: TWideStringField;
    BUS_CD_M_PED_ITE: TClientDataSet;
    BUS_CD_M_PED_ITEid_item: TIntegerField;
    BUS_CD_M_PED_ITEint_nomeite: TWideStringField;
    BUS_CD_M_PED_ITEint_id_und_venda: TWideStringField;
    BUS_CD_M_PED_ITEint_nomecor: TWideStringField;
    BUS_CD_M_PED_ITEint_nometam: TWideStringField;
    BUS_CD_M_PED_ITEqtde: TFloatField;
    BUS_CD_M_PED_ITEid_pedido: TIntegerField;
    BUS_CD_M_PED_ITEid_sequencia: TIntegerField;
    BUS_CD_M_PED_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_PED_ITEvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_ITEper_desconto: TFloatField;
    BUS_CD_M_PED_ITEvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_ITEvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_ITEid_cor: TIntegerField;
    BUS_CD_M_PED_ITEid_tamanho: TIntegerField;
    BUS_CD_M_PED_ITEid_busca_item: TWideStringField;
    BUS_CD_M_PED_ITEvlr_unitario_orig: TFMTBCDField;
    BUS_CD_M_PED_ITEint_tipo_item: TWideStringField;
    BUS_CD_M_PED_ITEint_selecao: TBooleanField;
    BUS_CD_M_PED_TIT: TClientDataSet;
    BUS_CD_M_PED_TITid_forma_pag: TIntegerField;
    BUS_CD_M_PED_TITint_nomefpg: TWideStringField;
    BUS_CD_M_PED_TITdta_vencimento: TDateField;
    BUS_CD_M_PED_TITvlr_titulo: TFMTBCDField;
    BUS_CD_M_PED_TITid_pedido: TIntegerField;
    BUS_CD_M_PED_TITid_titulo: TIntegerField;
    BUS_CD_M_PED_TITdias: TIntegerField;
    BUS_CD_M_PED_TITche_banco: TWideStringField;
    BUS_CD_M_PED_TITche_agencia: TWideStringField;
    BUS_CD_M_PED_TITche_conta: TIntegerField;
    BUS_CD_M_PED_TITche_numero: TIntegerField;
    BUS_CD_M_PED_TITche_emitente: TWideStringField;
    BUS_CD_M_PED_TITbol_nosso_numero: TIntegerField;
    BUS_CD_M_PED_TITid_maquineta: TIntegerField;
    BUS_CD_M_PED_TITint_docimpresso: TIntegerField;
    BUS_CD_M_PED_ITEpcp_obs_item: TWideStringField;
    BUS_CD_M_PED_2: TClientDataSet;
    BooleanField1: TBooleanField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    DateField1: TDateField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField6: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FloatField2: TFloatField;
    FMTBCDField3: TFMTBCDField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    WideStringField7: TWideStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    WideStringField8: TWideStringField;
    IntegerField12: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    IntegerField13: TIntegerField;
    WideStringField13: TWideStringField;
    IntegerField14: TIntegerField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    DataSetField1: TDataSetField;
    DataSetField2: TDataSetField;
    IntegerField15: TIntegerField;
    WideStringField16: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    BooleanField2: TBooleanField;
    DateField2: TDateField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    WideStringField19: TWideStringField;
    IntegerField20: TIntegerField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    BUS_CD_M_PED_2int_nomelib: TWideStringField;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    txtQtdePedidosSelec: TEdit;
    Label6: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtPesquisaPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbFiltroPedChange(Sender: TObject);
    procedure btnFiltroPedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportarPedClick(Sender: TObject);
    procedure tmInfoTimer(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dgPedidosLiberadosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgPedidosLiberadosRowChanged(Sender: TObject);
    procedure dgPedidosLiberadosDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BUS_CD_M_PEDAfterPost(DataSet: TDataSet);
    procedure dgPedidosLiberadosFieldChanged(Sender: TObject; Field: TField);
  private
    { Private declarations }
      procedure AbrirBuscas;
      procedure VerificarNovosPedidos;
  public
    { Public declarations }

    xNomeCliente: String;

    xField: TField;
    xState: TGridDrawState;
    xHighlight: Boolean;
    xAFont: TFont;
    xABrush: TBrush;

  end;

var
  PCP_FM_M_OPR_IPE: TPCP_FM_M_OPR_IPE;

implementation

{$R *.dfm}

uses PCP_UN_M_OPR, uDmGeral, PCP_RN_M_OPR, enFunc, uDmSgq,  PCP_UN_M_OPR_OPB;


procedure TPCP_FM_M_OPR_IPE.AbrirBuscas;
begin

  if dmGeral.BUS_CD_C_FU2.FieldByName('bus_som_ped_sem_pagtos').Asboolean then
     begin
       BUS_CD_M_PED.Close;
       BUS_CD_M_PED.Data :=
       BUS_CD_M_PED.DataRequest(
              VarArrayOf([81, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,'%']));
     end
  else
     begin
       BUS_CD_M_PED.Close;
       BUS_CD_M_PED.Data :=
       BUS_CD_M_PED.DataRequest(
              VarArrayOf([71, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,'%']));
     end;

  xNomeCliente :=  BUS_CD_M_PEDint_nomecli.AsString;


  dmGeral.BUS_CD_M_CSU_OPR_PED.Close;
  dmGeral.BUS_CD_M_CSU_OPR_PED.Data :=
          dmGeral.BUS_CD_M_CSU_OPR_PED.DataRequest(
                  VarArrayOf([0,'']));




end;

procedure TPCP_FM_M_OPR_IPE.acSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPCP_FM_M_OPR_IPE.BitBtn1Click(Sender: TObject);
begin
  inherited;
   OpenForm(TPCP_FM_M_OPR_OPB, PCP_FM_M_OPR_OPB);
end;

procedure TPCP_FM_M_OPR_IPE.tmInfoTimer(Sender: TObject);
begin
  inherited;
  pnInfo.Visible := true;
  if pnInfo.Font.Style = [fsBold] then
     pnInfo.Font.Style := []
  else
     pnInfo.Font.Style := [fsBold];
end;

procedure TPCP_FM_M_OPR_IPE.txtPesquisaPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisaPed.Text) <> '' then
          begin
            btnFiltroPedClick(Self);
          end;
     end;
end;


procedure TPCP_FM_M_OPR_IPE.VerificarNovosPedidos;
var
  pedidos_sel : array of string;
  qtde_pedidos: integer;
  i: integer;
begin
  try
    BUS_CD_M_PED.Filtered := True;
    BUS_CD_M_PED.Filter   := ' int_selecao';

    if not BUS_CD_M_PED.IsEmpty then
       begin
         qtde_pedidos := BUS_CD_M_PED.RecordCount;
         SetLength(pedidos_sel,qtde_pedidos);

         i:= 0;
         while not (BUS_CD_M_PED.eof) do
             begin
               pedidos_sel[i] := BUS_CD_M_PED.FieldByName('id_pedido').AsString;
               inc(i);
               BUS_CD_M_PED.Next;
             end;

         BUS_CD_M_PED.Filtered := false;

         AbrirBuscas;

         i := 0;
         for i := 0 to qtde_pedidos-1 do
            begin
               if BUS_CD_M_PED.locate('id_pedido',pedidos_sel[i],[]) then
                  begin
                    BUS_CD_M_PED.edit;
                    BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean := true;
                    BUS_CD_M_PED.post;
                  end;
            end;
         BUS_CD_M_PED.First;
         dgPedidosLiberadosDblClick(self);
       end;
  finally
    if BUS_CD_M_PED.Filtered = true then
       BUS_CD_M_PED.Filtered := false;
  end;

end;

procedure TPCP_FM_M_OPR_IPE.btnFiltroClick(Sender: TObject);
begin
  inherited;
  if trim(txtPesquisa.Text) = '' then
     begin
       Showmessage('Nenhum dado foi informado para a busca.');
       exit;
     end;

  if trim(txtPesquisa.Text) <> '' then
     begin
        case cbbPesquisa.ItemIndex of
          0:
           if not BUS_CD_M_PED.Locate('id_pedido',trim(txtPesquisa.Text),[]) then
              begin

                BUS_CD_M_PED_2.Close;
                BUS_CD_M_PED_2.Data :=
                BUS_CD_M_PED_2.DataRequest(
                   VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,trim(txtPesquisa.Text)]));
                if not BUS_CD_M_PED_2.IsEmpty then
                   begin
                     if BUS_CD_M_PED_2.FieldByName('situacao_aprovacao').AsInteger = 0 then
                        Showmessage('Este pedido ainda não foi aprovado.')
                     else
                     if BUS_CD_M_PED_2.FieldByName('situacao_aprovacao').AsInteger = 2 then
                        Showmessage('Pedido foi reprovado.')
                     else
                     if BUS_CD_M_PED_2.FieldByName('situacao').AsInteger = 4 then
                        Showmessage('Pedido cancelado.')
                     else
                     if BUS_CD_M_PED_2.FieldByName('situacao').AsInteger = 2 then
                        Showmessage('Pedido já está na produção: ' + BUS_CD_M_PED_2.FieldByName('int_numloteopr').AsString)
                     else
                     if BUS_CD_M_PED_2.FieldByName('situacao').AsInteger = 3 then
                        Showmessage('Pedido já faturado.')
                   end
                else
                   ShowMessage('Registro não encontrado!');

                BUS_CD_M_PED_2.close;
                txtPesquisa.SetFocus;
              end
           else
              begin
                if BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean then
                   begin
                     ShowMessage('Este pedido já foi selecionado!');
                     txtPesquisa.Text := '';
                     txtPesquisa.SetFocus;
                     exit;
                   end;

                BUS_CD_M_PED.edit;
                BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean := true;
                BUS_CD_M_PED.post;

                dgPedidosLiberadosDblClick(sender);

                txtPesquisa.Text := '';
                txtPesquisa.SetFocus;
              end;
          1:
           if not BUS_CD_M_PED.Locate('dta_pedido',trim(txtPesquisa.Text),[]) then
              begin
                ShowMessage('Registro não encontrado!');
                txtPesquisa.SetFocus;
              end
           else
              txtPesquisa.Text := '';
          2:
           if not BUS_CD_M_PED.Locate('int_nomecli',trim(txtPesquisa.Text),[]) then
              begin
                ShowMessage('Registro não encontrado!');
                txtPesquisa.SetFocus;
              end
           else
              txtPesquisa.Text := '';
        end;
     end;
end;

procedure TPCP_FM_M_OPR_IPE.btnFiltroPedClick(Sender: TObject);
var
  data:TDateTime;
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
  if cbbFiltroPed.ItemIndex <> 7 then
    begin
      BUS_CD_M_PED.Close;
      BUS_CD_M_PED.Data :=
      BUS_CD_M_PED.DataRequest(
              VarArrayOf([70+cbbFiltroPed.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisaPed.Text]));
    end;

  if cbbFiltroPed.ItemIndex = 7 then
    begin
      BUS_CD_M_PED.Close;
      BUS_CD_M_PED.Data :=
      BUS_CD_M_PED.DataRequest(
              VarArrayOf([70+cbbFiltroPed.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,DateTimeToStr (xDataSis-14) ,DateTimeToStr(xDataSis) ]));
    end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_OPR_IPE.btnImportarPedClick(Sender: TObject);
var
  IdOpr: integer;
begin
  inherited;

      { if Dc_MessageDlgCheck('Título com boleto já gerado!' + #13 + 'Deseja reimprimir?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) = 7 then
          begin
            exit;
          end
       else
          begin

          end;    }


  IdOpr := dmGeral.PCP_CD_M_OPR.FieldByName('ID_OPR').AsInteger;

  Screen.Cursor := crHourGlass;
  try

    BUS_CD_M_PED.Filtered := true;
    BUS_CD_M_PED.Filter   := 'int_selecao = true';

    if BUS_CD_M_PED.IsEmpty then
       begin
         ShowMessage('Nenhum pedido de venda foi selecionado.');
         exit;
       end;


    pnInfo.Visible := true;
    pnInfo.top  := (pnlDados.Height div 2) - (pnInfo.height div 2);
    pnInfo.left := (pnlDados.Width div 2) - (pnInfo.width div 2);

    PCP_FM_M_OPR_IPE.Refresh;

    PCP_RN_M_OPR.PcpImportarPed(BUS_CD_M_PED,BUS_CD_M_PED_ITE,dmGeral.PCP_CD_M_OPR_OPP, 1);

    BUS_CD_M_PED.First;
    if not BUS_CD_M_PED.IsEmpty then
       begin
        { while not dmGeral.BUS_CD_M_PED.eof do
            begin
              dmGeral.PCP_CD_M_OPR_PED.Insert;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('id_pedido').AsInteger :=
                      dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsInteger;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('remanejado').AsBoolean := false;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('nome').AsString           := dmGeral.BUS_CD_M_PED.FieldByName('int_nomecli').AsString;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_nomereg').AsString        := dmGeral.BUS_CD_M_PED.FieldByName('int_nomereg').AsString;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_nomecid').AsString        := dmGeral.BUS_CD_M_PED.FieldByName('int_nomecid').AsString;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_uf').AsString             := dmGeral.BUS_CD_M_PED.FieldByName('int_nomeest').AsString;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_cubagem').AsCurrency  := dmGeral.BUS_CD_M_PED.FieldByName('cubagem').AsCurrency;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_dtapedido').AsDateTime:= dmGeral.BUS_CD_M_PED.FieldByName('dta_pedido').AsDateTime;
              dmGeral.PCP_CD_M_OPR_PED.FieldByName('int_nomeven').AsString    := dmGeral.BUS_CD_M_PED.FieldByName('int_nomefun').AsString;
              dmGeral.PCP_CD_M_OPR_PED.Post;

              dmGeral.BUS_CD_M_PED.Next;
            end;
         dmGeral.PCP_CD_M_OPR_PED.First;   }

         if dmGeral.PCP_CD_M_OPR.ApplyUpdates(0) = 0 then
            begin
              ShowMessage('Importado com sucesso!');
              dmGeral.PCP_CD_M_OPR.Close;
              dmGeral.PCP_CD_M_OPR.Data :=
              dmGeral.PCP_CD_M_OPR.DataRequest(
                      VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, IdOpr]));
              dmGeral.PCP_CD_M_OPR.Edit;

              PCP_RN_M_OPR.PcpVerificarStatusPed;
              AbrirBuscas;
              txtQtdePedidosSelec.Text := '0';
            end;
       end;
  finally
    BUS_CD_M_PED.Filtered := false;
    pnInfo.Visible := false;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_OPR_IPE.BUS_CD_M_PEDAfterPost(DataSet: TDataSet);
var
  pedido: string;
begin
  inherited;

  txtQtdePedidosSelec.Text := '0';

  if not BUS_CD_M_PED.IsEmpty then
     begin
       pedido := BUS_CD_M_PED.FieldByName('id_pedido').AsString;
       BUS_CD_M_PED.Filtered := true;
       BUS_CD_M_PED.Filter := ' int_selecao = true ';
       txtQtdePedidosSelec.Text := inttostr(BUS_CD_M_PED.recordcount);
       BUS_CD_M_PED.Filtered := false;

       BUS_CD_M_PED.locate('id_pedido',pedido,[]);
     end;
end;

procedure TPCP_FM_M_OPR_IPE.cbbFiltroPedChange(Sender: TObject);
begin
  inherited;
  txtPesquisaPed.Text := '';
  txtPesquisaPed.Enabled := true;

  if cbbFiltroPed.ItemIndex in [0] then
     begin
       txtPesquisaPed.NumbersOnly := True;
     end
  else
     begin
       txtPesquisaPed.NumbersOnly := False;
       if cbbFiltroPed.ItemIndex = 7 then
         begin
           txtPesquisaPed.Enabled := false;
         end;
     end;
end;

procedure TPCP_FM_M_OPR_IPE.dgPedidosLiberadosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;

  xField := Field;
  xState := State;
  xHighlight := false;
  xAFont:= AFont;
  xABrush:= ABrush;

  if xNomeCliente = BUS_CD_M_PEDint_nomecli.AsString then
      begin
        aFont.Color := clBlue;
      end
  else
      aFont.Color := clBlack;


end;

procedure TPCP_FM_M_OPR_IPE.dgPedidosLiberadosDblClick(Sender: TObject);
begin
  inherited;

  xNomeCliente :=  BUS_CD_M_PEDint_nomecli.AsString;


  dgPedidosLiberadosCalcCellColors(sender,  xField, xState, xHighlight,xAFont,xABrush);

  dgPedidosLiberados.refresh;



end;

procedure TPCP_FM_M_OPR_IPE.dgPedidosLiberadosFieldChanged(Sender: TObject;
  Field: TField);
begin
  inherited;

  if field.Name = 'BUS_CD_M_PEDint_selecao' then
     begin
       if BUS_CD_M_PED.State = dsEdit then
          begin
             BUS_CD_M_PED.post;
             BUS_CD_M_PED.edit;
          end;
     end;

end;

procedure TPCP_FM_M_OPR_IPE.dgPedidosLiberadosRowChanged(Sender: TObject);
begin
  inherited;
  xNomeCliente :=  BUS_CD_M_PEDint_nomecli.AsString;
end;

procedure TPCP_FM_M_OPR_IPE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_M_OPR_IPE);
end;

procedure TPCP_FM_M_OPR_IPE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ord(key) = vk_f5 then
     begin
       VerificarNovosPedidos;
     end;
end;

procedure TPCP_FM_M_OPR_IPE.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.AtualizarGridItens(dgItens,'int_nomeite',13,8);
  AbrirBuscas;

  //if not (dmGeral.pcp_cd_m_opr_ped.IsEmpty) then
  //   begin
   {    if Dc_MessageDlgCheck('Geração de bloco' + #13 + 'Precisa de bloco de espuma para essa importação de pedido?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) = 7 then
          begin
            rgPrecisaBloco.ItemIndex := 0;
          end
       else
          begin
             rgPrecisaBloco.ItemIndex := 1;
          end; }
  //   end;
  txtPesquisa.SetFocus;
end;

end.
