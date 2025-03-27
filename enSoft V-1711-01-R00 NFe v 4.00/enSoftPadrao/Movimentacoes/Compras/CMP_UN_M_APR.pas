unit CMP_UN_M_APR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit, Vcl.DBGrids,
  vcl.Wwdotdot, vcl.Wwdbcomb, JvExExtCtrls, JvExtComponent, JvPanel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Datasnap.DBClient;

type
  TCMP_FM_M_APR = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtControle: TwwDBEdit;
    Label6: TLabel;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    txtObs: TDBMemo;
    gbItens: TGroupBox;
    gbItensAprovados: TGroupBox;
    grdItens: TwwDBGrid;
    grdItensAprovados: TwwDBGrid;
    dsCotFit: TwwDataSource;
    dsCotFitApr: TwwDataSource;
    btnGerarPedido: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    cbFrete: TwwDBComboBox;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    txtPesquisaData: TJvDateEdit;
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure grdItensDblClick(Sender: TObject);
    procedure grdItensAprovadosDblClick(Sender: TObject);
    procedure btnGerarPedidoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure grdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItensCellChanged(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure GerarPedCompra;
    procedure AdicionarPedItens;
  public
    { Public declarations }
  end;

var
  CMP_FM_M_APR: TCMP_FM_M_APR;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,UApplayClassProxy, CMP_UN_M_PED, CMP_RN_M_COT;

procedure TCMP_FM_M_APR.acAlterarExecute(Sender: TObject);
begin

  CMP_RN_M_COT.CmpExcluirPed;

  try
  dmGeral.CMP_CD_M_COT.BeforeEdit := nil;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT) then
     begin
       if dmGeral.CMP_CD_M_COT_FIT.IsEmpty then
          begin
            ShowMessage('Não há item para poder aprovar.');
            dmGeral.CMP_CD_M_COT.Cancel;
            abort;
          end;
       inherited;
       grdItens.SetFocus;
     end;
  finally
    dmGeral.CMP_CD_M_COT.BeforeEdit := dmGeral.CMP_CD_M_COTBeforeEdit;
  end;
end;

procedure TCMP_FM_M_APR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnIncluir.Enabled := false;
       btnExcluir.Enabled := false;
     end
  else
     begin
       grdItens.SetFocus;
     end;
end;

procedure TCMP_FM_M_APR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CMP_CD_M_COT.FieldByName('ID_COTACAO').AsString;
  if dmGeral.CMP_CD_M_COT_FIT_APR.IsEmpty then
     dmGeral.CMP_CD_M_COT.FieldByName('APROVADA').AsBoolean := false
  else
     dmGeral.CMP_CD_M_COT.FieldByName('APROVADA').AsBoolean := true;

  DmGeral.Grava(dmGeral.CMP_CD_M_COT);
  inherited;
  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Data :=
  dmGeral.CMP_CD_M_COT.DataRequest(
          VarArrayOf([0, codigo]));
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;


procedure TCMP_FM_M_APR.AdicionarPedItens;
var
  SMPrincipal : TSMClient;
begin
  dmGeral.BUS_CD_M_CMP_PED_ITE.Insert;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('ID_ITEM').AsInteger         :=
          dmGeral.CMP_CD_M_COT_FIT_APR.FieldByName('ID_ITEM').AsInteger;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger   :=
          dmGeral.CMP_CD_M_COT_FIT_APR.FieldByName('ID_ITEM').AsInteger;
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.BUS_CD_M_CMP_PED_ITEid_sequencia.AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;


  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('qtde_a_baixar').AsFloat     :=  0;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('qtde_baixada').AsFloat      :=  0;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('PER_IPI').AsCurrency        :=  0;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_IPI').AsCurrency        :=  0;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('PER_FRETE').AsCurrency      :=  0;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_FRETE').AsCurrency      :=  0;


  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('ID_COR').text         :=
          dmGeral.CMP_CD_M_COT_FIT_APRid_cor.text;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('ID_TAMANHO').text      :=
          dmGeral.CMP_CD_M_COT_FIT_APRid_tamanho.text;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('QTDE').AsFloat              :=
          dmGeral.CMP_CD_M_COT_FIT_APR.FieldByName('INT_QTDE').AsFloat;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency   :=
          dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_unitario.AsCurrency;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency      :=
          dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_unitario.AsCurrency *
          dmGeral.CMP_CD_M_COT_FIT_APRint_qtde.AsFloat;

  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency   := 0;

  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency   :=
          dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_desconto.AsCurrency;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency    :=
          dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_total.AsCurrency;
  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('entre_prazo').AsInteger     :=  0;
          dmGeral.CMP_CD_M_COT_FIT_APRint_prazo.AsInteger;


  dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_BRUTO').AsCurrency    :=
          dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_BRUTO').AsCurrency +
                  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

  dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
          dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_DESCONTO').AsCurrency +
                  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

  dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_LIQUIDO').AsCurrency  :=
          dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_LIQUIDO').AsCurrency +
                  dmGeral.BUS_CD_M_CMP_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

  dmGeral.BUS_CD_M_CMP_PED_ITE.Post;
end;

procedure TCMP_FM_M_APR.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    {0-ID_COTACAO
     1-NOME FUNCIONARIO
     2-DTA_COTACAO}

    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.CMP_CD_M_COT.Close;
    dmGeral.CMP_CD_M_COT.Data :=
    dmGeral.CMP_CD_M_COT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa]));
    btnIncluir.Enabled := false;
    btnExcluir.Enabled := false;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCMP_FM_M_APR.btnGerarPedidoClick(Sender: TObject);
begin
  inherited;
  GerarPedCompra;
end;

procedure TCMP_FM_M_APR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCMP_FM_M_APR.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TCMP_FM_M_APR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.BUS_CD_M_CMP_PED.Close;
  FreeAndNil(CMP_FM_M_APR);
end;

procedure TCMP_FM_M_APR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Data := dmGeral.CMP_CD_M_COT.DataRequest(VarArrayOf([0, '']));
  dmGeral.CMP_CD_M_COT.Open;

  dmGeral.AtualizarGridItens(grdItens,'id_item',8,7);
  dmGeral.AtualizarGridItens(grdItensAprovados,'id_item',8,7);
end;

procedure TCMP_FM_M_APR.FormShow(Sender: TObject);
begin
  inherited;
  cbbPesquisaChange(self);
end;

procedure TCMP_FM_M_APR.GerarPedCompra;
var
  Obj : TSMClient;
  SMPrincipal : TSMClient;
  cod_fornecedor: integer;
  codigo, revisao: string;
begin

  if dmGeral.CMP_CD_M_COT.IsEmpty then
     begin
       Showmessage('Não há cotação para poder gerar o pedido de compra.');
       exit;
     end;

  if dmGeral.CMP_CD_M_COTsituacao.AsInteger = 1 then
     begin
       Showmessage('Esta cotação já gerou pedido de compra.');
       exit;
     end;

  if dmGeral.CMP_CD_M_COTsituacao.AsInteger = 1 then
     begin
       Showmessage('Esta cotação já gerou pedido de compra.');
       exit;
     end;

  if dmGeral.CMP_CD_M_COT_FIT_APR.IsEmpty then
     begin
       ShowMessage('Não é possível gerar pedido pois nenhum item foi aprovado nesta cotação.');
       exit;
     end;

  if MessageDlg('Confirma a geração?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
         cod_fornecedor := 0;
         dmGeral.CMP_CD_M_COT_FIT_APR.IndexFieldNames := 'ID_FORNECEDOR';

         dmGeral.BUS_CD_M_CMP_PED.Close;
         dmGeral.BUS_CD_M_CMP_PED.Data :=
         dmGeral.BUS_CD_M_CMP_PED.DataRequest(
                  VarArrayOf([0, '']));

         dmGeral.CMP_CD_M_COT.cancel;
         dmGeral.CMP_CD_M_COT.edit;
         dmGeral.CMP_CD_M_COTsituacao.AsInteger := 1; // Gerado pedido;


         while not dmGeral.CMP_CD_M_COT_FIT_APR.eof do
            begin
              if cod_fornecedor <> dmGeral.CMP_CD_M_COT_FIT_APRid_fornecedor.AsInteger  then
                 begin
                    cod_fornecedor := dmGeral.CMP_CD_M_COT_FIT_APRid_fornecedor.AsInteger;

                    dmGeral.BUS_CD_M_CMP_PED.Insert;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('ID_EMPRESA').AsInteger :=
                                dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
                    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                    try
                      dmGeral.BUS_CD_M_CMP_PED.FieldByName('ID_PEDIDO').AsInteger :=
                           SMPrincipal.enValorChave('CMP_TB_M_PED');
                    finally
                      FreeAndNil(SMPrincipal);
                    end;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('DTA_PEDIDO').AsDateTime   := xDataSis;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('DTA_ENTREGA').AsDateTime  := xDataSis;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('STATUS').AsInteger        := 0;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_IPI').AsInteger       := 0;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_BRUTO').AsCurrency    := 0;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('VLR_FRETE').AsCurrency    := 0;
                    dmGeral.BUS_CD_M_CMP_PEDid_cotacao.AsInteger := dmGeral.CMP_CD_M_COTid_cotacao.AsInteger;
                    dmGeral.BUS_CD_M_CMP_PED.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
                    dmGeral.BUS_CD_M_CMP_PEDid_fornecedor.AsInteger := cod_fornecedor;
                    {if ExisteListaMestre(xFaz_Busca_L_Mestre,false,CMP_FM_M_PED.Name,codigo,revisao) then
                        begin
                          dmGeral.CMP_CD_M_PEDcod_doc.AsString     := codigo;
                          dmGeral.CMP_CD_M_PEDcod_doc_rev.AsString := revisao;
                        end;}
                    dmGeral.BUS_CD_M_CMP_PEDid_responsavel.AsInteger      := xFuncionario;
                    dmGeral.BUS_CD_M_CMP_PEDobservacao.AsString           := 'Gerado pela cotação de compra: ' + dmGeral.CMP_CD_M_COTid_cotacao.AsString;
                    dmGeral.BUS_CD_M_CMP_PEDstatus.AsInteger              := 0;
                    dmGeral.BUS_CD_M_CMP_PEDcondicoes_pagamento.AsString  := '.';
                    //dmgeral.BUS_CD_M_CMP_PEDaprovado.AsBoolean            := false;
                    AdicionarPedItens;
                 end
              else
                 begin
                    AdicionarPedItens;
                 end;
              dmGeral.CMP_CD_M_COT_FIT_APR.Edit;
              dmGeral.CMP_CD_M_COT_FIT_APRid_pedido.AsInteger := dmGeral.BUS_CD_M_CMP_PEDid_pedido.AsInteger;
              dmGeral.CMP_CD_M_COT_FIT_APR.Post;
              dmGeral.CMP_CD_M_COT_FIT_APR.Next;
            end;

         codigo := dmGeral.CMP_CD_M_COT.FieldByName('ID_COTACAO').AsString;

         dmGeral.BUS_CD_M_CMP_PED.Post;
         dmGeral.CMP_CD_M_COT.Post;

         Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);

         TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_CMP_PED,dmGeral.CMP_CD_M_COT]);

         obj.Free;

         dmGeral.CMP_CD_M_COT.Close;
         dmGeral.CMP_CD_M_COT.Open;

         dmGeral.CMP_CD_M_COT.Close;
         dmGeral.CMP_CD_M_COT.Data :=
         dmGeral.CMP_CD_M_COT.DataRequest(
                 VarArrayOf([0, codigo]));
     end;
end;

procedure TCMP_FM_M_APR.grdItensAprovadosDblClick(Sender: TObject);
begin
  inherited;

   if dmGeral.CMP_CD_M_COT_FIT_APR.IsEmpty then
      begin
        ShowMessage('Não há item para poder desaprovar.');
        exit;
      end;

   if dmGeral.CMP_CD_M_COT_FIT.Locate('ID_FORNECEDOR;ID_SEQUENCIA',VarArrayOf([dmGeral.CMP_CD_M_COT_FIT_APRid_fornecedor.text,
                                                                                   dmGeral.CMP_CD_M_COT_FIT_APRid_sequencia.text]),[]) then
      begin
        dmGeral.CMP_CD_M_COT_FIT.Edit;
        dmGeral.CMP_CD_M_COT_FITaprovado.AsBoolean := false;
        dmGeral.CMP_CD_M_COT_FITdta_aprovacao.text := '';
        dmGeral.CMP_CD_M_COT_FIT.Post;

        dmGeral.CMP_CD_M_COT_FIT_APR.delete
      end;
end;

procedure TCMP_FM_M_APR.grdItensCellChanged(Sender: TObject);
begin
  inherited;


  if grdItens.Columns[grdItens.SelectedIndex].FieldName =  'int_nomefor' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =  'int_nomeite' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =  'int_undcom' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'id_item' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'int_nomecor' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'int_nometam' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'qtde' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName =   'vlr_total' then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;


{  if grdItens.SelectedIndex in [1..5] then
     begin
        grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;
  if grdItens.SelectedIndex in [8] then
     begin
        grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;
  if grdItens.SelectedIndex in [10..11] then
     begin
        grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;    }

end;

procedure TCMP_FM_M_APR.grdItensDblClick(Sender: TObject);
begin
  inherited;

  if dmGeral.CMP_CD_M_COT_FIT.IsEmpty then
     begin
       ShowMessage('Não há item para poder aprovar.');
       exit;
     end;

  if not dmGeral.CMP_CD_M_COT_FIT.IsEmpty then
     begin

       if dmGeral.CMP_CD_M_COT_FITvlr_total.AsCurrency > 0 then
          begin
             if dmGeral.CMP_CD_M_COT_FIT_APR.Locate('ID_FORNECEDOR;ID_SEQUENCIA',VarArrayOf([dmGeral.CMP_CD_M_COT_FITid_fornecedor.text,
                                                                                             dmGeral.CMP_CD_M_COT_FITid_sequencia.text]),[]) then
                begin
                  ShowMessage('Este item já foi aprovado.');
                  exit;
                end
             else
                begin
                  dmGeral.CMP_CD_M_COT_FIT.Edit;
                  dmGeral.CMP_CD_M_COT_FITaprovado.AsBoolean      := true;
                  dmGeral.CMP_CD_M_COT_FITdta_aprovacao.AsDateTime := xDataSis;
                  dmGeral.CMP_CD_M_COT_FIT.Post;


                  dmGeral.CMP_CD_M_COT_FIT_APR.Insert;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_fornecedor.AsInteger   := dmGeral.CMP_CD_M_COT_FITid_fornecedor.AsInteger;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_nomefor.AsString      := dmGeral.CMP_CD_M_COT_FITint_nomefor.AsString;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_item.AsInteger         := dmGeral.CMP_CD_M_COT_FITid_item.AsInteger;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_sequencia.AsInteger    := dmGeral.CMP_CD_M_COT_FITid_sequencia.AsInteger;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_nomeund.text          := dmGeral.CMP_CD_M_COT_FITint_undcom.AsString;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_qtde.AsFloat          := dmGeral.CMP_CD_M_COT_FITqtde.AsFloat;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_cor.text               := dmGeral.CMP_CD_M_COT_FITid_cor.Text;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_nomecor.text          := dmGeral.CMP_CD_M_COT_FITint_nomecor.AsString;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_tamanho.text           := dmGeral.CMP_CD_M_COT_FITid_tamanho.Text;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_nometam.text            := dmGeral.CMP_CD_M_COT_FITint_nometam.AsString;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_unitario.AsCurrency := dmGeral.CMP_CD_M_COT_FITvlr_unitario.AsCurrency;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_desconto.AsCurrency := dmGeral.CMP_CD_M_COT_FITvlr_desconto.AsCurrency;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_vlr_total.AsCurrency    := dmGeral.CMP_CD_M_COT_FITvlr_total.AsCurrency;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_prazo.AsInteger         := dmGeral.CMP_CD_M_COT_FITprazo.AsInteger;
                  dmGeral.CMP_CD_M_COT_FIT_APRdta_aprovacao.AsDateTime                    := dmGeral.CMP_CD_M_COT_FITdta_aprovacao.AsDateTime;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_aprovado.AsBoolean                      := dmGeral.CMP_CD_M_COT_FITaprovado.AsBoolean;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_frete.AsInteger                         := dmGeral.CMP_CD_M_COT_FITfrete.AsInteger;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_per_desconto.AsCurrency                 := dmGeral.CMP_CD_M_COT_FITper_desconto.AsCurrency;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_ipi.AsBoolean                           := dmGeral.CMP_CD_M_COT_FITipi.AsBoolean;
                  dmGeral.CMP_CD_M_COT_FIT_APRint_disponibilidade.AsBoolean               := dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean;
                  dmGeral.CMP_CD_M_COT_FIT_APRid_responsavel.AsInteger                    := xFuncionario;
                  dmGeral.CMP_CD_M_COT_FIT_APR.Post;
                end;
          end
       else
          begin
            //dmGeral.CMP_CD_M_COT_FIT.Edit;
            //ShowMessage('O valor deste item não foi informado.');
          end;
     end;
end;

procedure TCMP_FM_M_APR.grdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'disponibilidade' then
          begin
            if dmGeral.CMP_CD_M_COT_FIT.eof then
               dmGeral.CMP_CD_M_COT_FIT.First
            else
               dmGeral.CMP_CD_M_COT_FIT.Next;
            dmGeral.CMP_CD_M_COT_FIT.Edit;
            if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
               (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                grdItens.SelectedIndex := 6 // Primeiro indique qual coluna do grid voce quer se posicionar.
            else
                begin
                  if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) or
                     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                      grdItens.SelectedIndex := 5 // Primeiro indique qual coluna do grid voce quer se posicionar.
                  else
                      grdItens.SelectedIndex := 4 // Primeiro indique qual coluna do grid voce quer se posicionar.
                end;

            grdItens.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;
end;

procedure TCMP_FM_M_APR.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmGeral.CMP_CD_M_COT_FIT.edit;

  if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'disponibilidade' then
     begin
       if dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean = true then
          dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean := false
       else
          begin
            if dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean = false then
               dmGeral.CMP_CD_M_COT_FITdisponibilidade.AsBoolean := true
          end;
     end;
end;

procedure TCMP_FM_M_APR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
