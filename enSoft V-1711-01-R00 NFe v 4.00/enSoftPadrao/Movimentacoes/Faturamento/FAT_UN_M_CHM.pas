unit FAT_UN_M_CHM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.Buttons, dxGDIPlusClasses,System.Math, frxClass, frxDBSet;

type
  TFAT_FM_M_CHM = class(TPAD_FM_X_FRM)
    dsPed: TDataSource;
    dsPedTit: TDataSource;
    cdsPed: TClientDataSet;
    cdsPedid_pedido: TIntegerField;
    cdsPedid_empresa: TIntegerField;
    cdsPeddta_pedido: TDateField;
    cdsPedid_tipo_mov_estoque: TIntegerField;
    cdsPedid_vendedor: TIntegerField;
    cdsPedvlr_bruto: TFMTBCDField;
    cdsPedvlr_desconto: TFMTBCDField;
    cdsPedper_desconto: TFloatField;
    cdsPedvlr_liquido: TFMTBCDField;
    cdsPedhor_pedido: TSQLTimeStampField;
    cdsPedid_condicao_pag: TIntegerField;
    cdsPedpcp_obs: TWideStringField;
    cdsPedpcp_id_opr: TIntegerField;
    cdsPedsituacao: TIntegerField;
    cdsPedsituacao_aprovacao: TIntegerField;
    cdsPedid_atendente: TIntegerField;
    cdsPedid_responsavel: TIntegerField;
    cdsPedid_cliente: TIntegerField;
    cdsPedtipo_restricao: TWideStringField;
    cdsPedid_almoxarifado: TIntegerField;
    cdsPedjustificativa: TWideStringField;
    cdsPedid_usuario_lib: TIntegerField;
    cdsPedcod_lme: TWideStringField;
    cdsPedrev_lme: TWideStringField;
    cdsPedorigem: TIntegerField;
    cdsPeddispositivo: TWideStringField;
    cdsPedgps_latitude: TFloatField;
    cdsPedgps_longitude: TFloatField;
    cdsPedcubagem: TFloatField;
    cdsPedid_orcamento: TIntegerField;
    cdsPedenvia_carga: TBooleanField;
    cdsPeddta_prev_entrega: TDateField;
    cdsPedint_nomecli: TWideStringField;
    cdsPedint_nometme: TWideStringField;
    cdsPedint_nomefun: TWideStringField;
    cdsPedint_nomecpg: TWideStringField;
    cdsPedint_nomeate: TWideStringField;
    cdsPedint_nomeres: TWideStringField;
    cdsPedint_nomecid: TWideStringField;
    cdsPedint_nomeest: TWideStringField;
    cdsPedint_cpfcnpj: TWideStringField;
    cdsPedint_pessoacli: TIntegerField;
    cdsPedint_id_perfil: TIntegerField;
    cdsPedid_ors: TIntegerField;
    cdsPedint_sitaprov: TWideStringField;
    cdsPedint_sitped: TWideStringField;
    cdsPedid_abertura: TIntegerField;
    cdsPedint_ie_rg_cli: TWideStringField;
    cdsPedint_selecao: TBooleanField;
    cdsPeddias_cpg_prazo: TIntegerField;
    cdsPedint_nomereg: TWideStringField;
    cdsPedoffline: TBooleanField;
    cdsPedconferido: TBooleanField;
    cdsPedid_conf: TIntegerField;
    cdsPeddta_conf: TDateField;
    cdsPedhor_conf: TTimeField;
    cdsPedresultado_conf: TIntegerField;
    cdsPedid_resp_conf: TIntegerField;
    cdsPedint_nome_rcn: TWideStringField;
    cdsPedid_propriedade: TIntegerField;
    cdsPedmod_frete: TIntegerField;
    cdsPedvlr_frete: TFMTBCDField;
    cdsPedid_mkt: TIntegerField;
    cdsPedcan_usuario: TIntegerField;
    cdsPedcan_data: TDateField;
    cdsPedcan_motivo: TWideStringField;
    cdsPedcan_hora: TTimeField;
    cdsPedint_numloteopr: TWideStringField;
    cdsPedid_motorista: TIntegerField;
    cdsPedid_placa: TWideStringField;
    cdsPedint_nomemta: TWideStringField;
    cdsPedvlr_credito: TFMTBCDField;
    cdsPedvlr_desc_especial: TFMTBCDField;
    cdsPedvlr_desc_basico: TFMTBCDField;
    cdsPedsgq_per_comissao: TFloatField;
    cdsPedint_sitped2: TWideStringField;
    cdsPedqtde_volume: TFloatField;
    cdsPedvlr_icm_desn: TFMTBCDField;
    cdsPedint_sitord: TIntegerField;
    cdsPedvlr_desc_produtos: TFMTBCDField;
    cdsPedper_desc_produtos: TFloatField;
    cdsPedvlr_produtos: TFMTBCDField;
    cdsPedvlr_serv_bruto: TFMTBCDField;
    cdsPedvlr_desc_servicos: TFMTBCDField;
    cdsPedper_desc_servicos: TFloatField;
    cdsPedvlr_ser_liquido: TFMTBCDField;
    cdsPedvlr_terceiro: TFMTBCDField;
    cdsPedvlr_desc_terceiro: TFMTBCDField;
    cdsPedper_desc_terceiro: TFloatField;
    cdsPedvlr_terc_liquido: TFMTBCDField;
    cdsPedped_gera_fin_separado: TBooleanField;
    cdsPedvlr_prod_liquido: TFMTBCDField;
    cdsPedsepara_prod_serv: TBooleanField;
    cdsPedvlr_cred_produtos: TFMTBCDField;
    cdsPedvlr_cred_servicos: TFMTBCDField;
    cdsPedobs: TWideStringField;
    cdsPedid_mecanico: TIntegerField;
    cdsPedsgq_texto_cond_pgto: TWideStringField;
    cdsPedper_desc_basico: TFloatField;
    cdsPedper_desc_especial: TFloatField;
    cdsPeddta_liberacao: TDateField;
    cdsPedint_nomelib: TWideStringField;
    cdsPedFAT_SQ_M_PED_TIT: TDataSetField;
    pnFiltro: TPanel;
    gbFiltroPedidos: TGroupBox;
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    lblAte: TLabel;
    deFinal: TJvDateEdit;
    btnFiltro: TcxButton;
    cbAtualiza: TCheckBox;
    btnAtualiza: TBitBtn;
    Label3: TLabel;
    lblDataBase: TLabel;
    deBase: TJvDateEdit;
    cdsPed_Tit: TClientDataSet;
    cdsPed_Titid_pedido: TIntegerField;
    cdsPed_Titid_titulo: TIntegerField;
    cdsPed_Titdias: TIntegerField;
    cdsPed_Titdta_vencimento: TDateField;
    cdsPed_Titvlr_titulo: TFMTBCDField;
    cdsPed_Titche_banco: TWideStringField;
    cdsPed_Titche_agencia: TWideStringField;
    cdsPed_Titche_conta: TIntegerField;
    cdsPed_Titche_numero: TIntegerField;
    cdsPed_Titche_emitente: TWideStringField;
    cdsPed_Titid_forma_pag: TIntegerField;
    cdsPed_Titbol_nosso_numero: TIntegerField;
    cdsPed_Titint_nomefpg: TWideStringField;
    cdsPed_Titid_maquineta: TIntegerField;
    cdsPed_Titint_docimpresso: TIntegerField;
    rgRelacaoCheques: TRadioGroup;
    cdsPedImp: TClientDataSet;
    cdsPedTitImp: TClientDataSet;
    dsPedImp: TDataSource;
    dsPedTitImp: TDataSource;
    cdsPedImpid_pedido: TIntegerField;
    cdsPedImpdta_pedido: TDateField;
    cdsPedImpvlr_liquido: TFMTBCDField;
    cdsPedImpint_nomecli: TWideStringField;
    cdsPedImpint_nomecpg: TWideStringField;
    cdsPedTitImpid_titulo: TIntegerField;
    cdsPedTitImpdias: TIntegerField;
    cdsPedTitImpdta_vencimento: TDateField;
    cdsPedTitImpvlr_titulo: TFMTBCDField;
    cdsPedTitImpint_nomefpg: TWideStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    grdPedTit: TwwDBGrid;
    Panel3: TPanel;
    grdPedido: TwwDBGrid;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    grdPedImp: TwwDBGrid;
    grdPedTitImp: TwwDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    Image1: TImage;
    lblAlmoxarifado: TLabel;
    txtCliente: TJvComboEdit;
    lblNomeCli: TLabel;
    btnBusCliente: TcxButton;
    Label8: TLabel;
    txtCodPed: TJvComboEdit;
    lblPedNomeCli: TLabel;
    btnAdicionar: TcxButton;
    cdsPedImpid_cliente: TIntegerField;
    cdsPedImpFAT_SQ_M_PED_TIT: TDataSetField;
    pmPedImp: TPopupMenu;
    Retirarregistro1: TMenuItem;
    Retirartodososregistros1: TMenuItem;
    fr_recibo: TfrxReport;
    db_recibo_pai: TfrxDBDataset;
    db_recibo_filho: TfrxDBDataset;
    BitBtn1: TBitBtn;
    cdsPedImpobs: TWideStringField;
    Panel7: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    txtQtdeDias: TEdit;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbAtualizaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdPedTitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    procedure grdPedFieldChanged(Sender: TObject; Field: TField);
    procedure deBaseEnter(Sender: TObject);
    procedure deBaseExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnBusClienteClick(Sender: TObject);
    procedure rgRelacaoChequesClick(Sender: TObject);
    procedure txtCodPedExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Retirarregistro1Click(Sender: TObject);
    procedure Retirartodososregistros1Click(Sender: TObject);
    procedure grdPedTitImpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure grdPedidoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdPedTitImpCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtQtdeDiasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GeraEspacoEsq(const texto: String; QtdeEsp: Integer): String;
    var
      xDataBaseAnterior: String;

  end;

var
  FAT_FM_M_CHM: TFAT_FM_M_CHM;
  IdPedidoUnif: integer;

implementation

{$R *.dfm}

uses uDmGeral,enFunc, PSQ_UN_X_CLI;

procedure TFAT_FM_M_CHM.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fr_recibo.PrepareReport();
  fr_recibo.ShowReport();
end;

procedure TFAT_FM_M_CHM.btnAdicionarClick(Sender: TObject);
begin
  inherited;


  if (trim(txtCodPed.Text) = '0') or (trim(txtCodPed.Text) = '') then
     begin
       ShowMessage('O pedido de venda deve ser informado.');
       exit;
     end;

  dmGeral.BUS_CD_M_PED2.close;
  dmGeral.BUS_CD_M_PED2.Data :=
      dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,trim(txtCodPed.Text)]));
  if dmGeral.BUS_CD_M_PED2.IsEmpty then
     begin
       ShowMessage('Pedido de venda não cadastrado.');
       exit;
     end;

  case dmGeral.BUS_CD_M_PED2.FieldByName('situacao').AsInteger of
     1:
      begin
        ShowMessage('Este pedido de venda foi reprovado.');
        dmGeral.BUS_CD_M_PED2.close;
        exit;
      end;
 {    3:
      begin
        ShowMessage('Este pedido de venda foi faturado.');
        dmGeral.BUS_CD_M_PED2.close;
        exit;
      end; }
     4:
      begin
        ShowMessage('Este pedido de venda foi cancelado.');
        dmGeral.BUS_CD_M_PED2.close;
        exit;
      end;
  end;


  if cdsPed.Locate('id_pedido',txtCodPed.Text,[]) then
     begin
       cdsPed.edit;
       cdsPed.FieldByName('int_selecao').AsBoolean := true;
       cdsPed.Post;

       txtCodPed.Text := '';
       lblPedNomeCli.Caption := '';
       txtCodPed.SetFocus;

     end
  else
     ShowMessage('Pedido de venda não localizado na lista abaixo.');

end;

procedure TFAT_FM_M_CHM.btnAtualizaClick(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var
   difData: currency;
   NovaData: TDate;
   controle: Array [1..20] of integer;
   vencimento: array[1..20] of tdate;
   i, qtdeReg: integer;
begin
  inherited;



    if deBase.Text = '  /  /    ' then
       begin
         ShowMessage('O campo data base deve ser preenchido!');
         exit;
       end;

    if trim(txtQtdeDias.Text) = '' then
       begin
         Showmessage('É preciso que informe a qtde de dias para o primeiro vencimento.');
         txtQtdeDias.SetFocus;
         exit;
       end;

    if StrToInt(txtQtdeDias.Text) = 0 then
       begin
         Showmessage('É preciso que informe a qtde de dias para o primeiro vencimento.');
         txtQtdeDias.SetFocus;
         exit;
       end;


    if cdsPed.IsEmpty then
       begin
         ShowMessage('Não existe pedido para poder atualizar os vencimentos.');
         exit;
       end;


      cdsPed.Filtered := true;
      cdsPed.Filter := 'int_selecao = true';

      if cdsPed.IsEmpty then
         begin
           Showmessage('Nenhum pedido foi selecionado.');
           cdsPed.Filtered := false;
           exit;
         end;
      cdsPed.Filtered := false;


    if Dc_MessageDlgCheck('Os vencimentos serão atualizados!'
                        + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', @MostraMensagem) = 7 then
       begin
         //
       end
    else
       begin
          if not cdsPed.IsEmpty then
             begin
               cdsPed.First;
               while not cdsPed.eof do
                  begin
                    if cdsPed.FieldByName('int_selecao').AsBoolean = true then
                       begin
                         i := 0;
                         qtdeReg := cdsPed_Tit.RecordCount;

                         while not (cdsPed_Tit.Eof) do
                            begin
                              inc(i);

                              controle[i]   := cdsPed_Tit.FieldByName('id_titulo').AsInteger;
                              vencimento[i] := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime;

                              cdsPed_Tit.Next;
                            end;

                         for i := 1 to qtdeReg do
                            begin
                              if cdsPed_Tit.Locate('id_titulo',controle[i],[]) then
                                 begin
                                    cdsPed_Tit.edit;
                                    //NovaData := deBase.Date + cdsPed_Tit.FieldByName('dias').AsInteger;
                                    NovaData := deBase.Date + (StrToInt(txtQtdeDias.Text) * i);
                                    cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime := NovaData;
                                    cdsPed_Tit.FieldByName('dias').AsCurrency := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime -
                                                                                 deBase.Date;

                                    //cdsPed_Tit.FieldByName('dias').AsCurrency := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime -
                                    //                                             cdsPed.FieldByName('dta_pedido').AsDateTime;
                                    cdsPed_Tit.Post;
                                 end;
                            end;
                       end;
                    cdsPed.Next;
                  end;

               {if cdsPed.ChangeCount > 0 then
                  if cdsPed.ApplyUpdates(0) = 0 then
                     begin
                       cdsPed.First;
                       ShowMessage('Os vencimentos foram atualizados com sucesso.');
                     end
                  else
                     ShowMessage('Erro ao tentar atualizar os vencimentos.');}
               cbAtualiza.Checked := false;
               cdsPed.First;
             end;
       end;
end;

procedure TFAT_FM_M_CHM.btnFiltroClick(Sender: TObject);
var
  mens: String;
begin
  inherited;

  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
     begin
       mens := mens +  '.O período deve ser preenchido.' + #13;
     end;

  if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;


  if trim(mens) <> '' then
     begin
      ShowMessage('Atenção!' + #13 + mens);
      exit;
    end;

  cdsPed.close;
    cdsPed.Data :=
       cdsPed.DataRequest(VarArrayOf([92,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,'''2''']));
  cdsPed.Open;

  txtCliente.Text := '';
  lblNomeCli.Caption := '';
end;

procedure TFAT_FM_M_CHM.Button1Click(Sender: TObject);
begin
  inherited;
 cdsPed.Filtered := true;
      cdsPed.Filter   := ' int_selecao = true ';
end;

procedure TFAT_FM_M_CHM.Button2Click(Sender: TObject);
begin
  inherited;
  cdsPed_Tit.Edit;
  cdsPed_Tit.Next;
end;

procedure TFAT_FM_M_CHM.Button3Click(Sender: TObject);
var
  NovaData: TDate;
  controle: Array [1..20] of integer;
  vencimento: array[1..20] of tdate;
  i, qtdeReg: integer;
begin
  inherited;
  if not cdsPed.IsEmpty then
     begin
       cdsPed.First;
       while not cdsPed.eof do
          begin
            if cdsPed.FieldByName('int_selecao').AsBoolean = true then
               begin
                 i := 0;
                 qtdeReg := cdsPed_Tit.RecordCount;

                 while not (cdsPed_Tit.Eof) do
                    begin
                      inc(i);

                      controle[i]   := cdsPed_Tit.FieldByName('id_titulo').AsInteger;
                      vencimento[i] := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime;

                      cdsPed_Tit.Next;
                    end;

                 for i := 1 to qtdeReg do
                    begin
                      if cdsPed_Tit.Locate('id_titulo',controle[i],[]) then
                         begin
                            cdsPed_Tit.edit;
                            NovaData := deBase.Date + cdsPed_Tit.FieldByName('dias').AsInteger;
                            cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime := NovaData;
                            cdsPed_Tit.Post;
                         end;
                    end;
               end;
            cdsPed.Next;
          end;
     end;
end;

procedure TFAT_FM_M_CHM.cbAtualizaClick(Sender: TObject);
begin
  inherited;

  if cbAtualiza.Checked = false then
     begin
       btnAtualiza.Enabled := false;
     end
  else
     begin
       btnAtualiza.Enabled := true;
     end;
end;

procedure TFAT_FM_M_CHM.btnBusClienteClick(Sender: TObject);
var
  mens: String;
begin
  inherited;

  mens := '';

  if (trim(txtCliente.Text) = '0') or (trim(txtCliente.Text) = '') then
     begin
       mens := mens +  '.O cliente deve ser informado' + #13;
     end;

  if trim(mens) <> '' then
     begin
      ShowMessage('Atenção!' + #13 + mens);
      exit;
    end;

  cdsPed.close;
    cdsPed.Data :=
       cdsPed.DataRequest(VarArrayOf([124,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,'''2''',
                                      trim(txtCliente.Text),  FormatDateTime('DD/MM/YYYY',date-10)]));
  cdsPed.Open;

end;

procedure TFAT_FM_M_CHM.deBaseEnter(Sender: TObject);
begin
  inherited;
  xDataBaseAnterior := deBase.Text;
end;

procedure TFAT_FM_M_CHM.deBaseExit(Sender: TObject);
begin
  inherited;
  if xDataBaseAnterior <> deBase.text then
     begin
       if not cdsPed.IsEmpty then
          begin
            try
              cdsPed.Filtered := true;
              cdsPed.Filter   := ' int_selecao = true ';
              if not cdsPed.IsEmpty then
                 begin
                   ShowMessage('Os pedidos que foram selecionado serão desmarcado devido a data base ter sido alterado.');
                   cdsPed.First;
                   while not cdsPed.Eof do
                      begin
                        cdsPed.edit;
                        cdsPed.FieldByName('int_selecao').AsBoolean := false;
                        cdsPed.Post;
                      end;
                 end;
            finally
              cdsPed.Filtered := false;
              cdsPed.First;
            end;
          end;
     end;
end;

procedure TFAT_FM_M_CHM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  cdsPed.Close;
  FreeAndNil(FAT_FM_M_CHM);
end;

procedure TFAT_FM_M_CHM.FormCreate(Sender: TObject);
begin
  inherited;

   cdsPed.close;
        cdsPed.Data :=
           cdsPed.DataRequest(VarArrayOf([123,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,'''2''',
                                              FormatDateTime('DD/MM/YYYY',date-10) ]));
       cdsPed.Open;

end;

procedure TFAT_FM_M_CHM.FormShow(Sender: TObject);
var
  i,z: currency;
begin
  inherited;

  btnAtualiza.Enabled := false;

  i := panel1.Width / 2;   // Painel do meio que comporta os 3 paineis abaixo.
  z := panel6.Width / 2;  // Painel com a seta verde

  panel4.width := StrToInt(CurrToStr(i - z));
  panel2.width := StrToInt(CurrToStr(i - z));

  rgRelacaoCheques.ItemIndex := 0;
  rgRelacaoCheques.OnClick(self);

  deBase.Text := DateToStr(date);

  acImprime.Enabled := true;
  btnImprime.Enabled := true;

  IdPedidoUnif := 0;

  txtQtdeDias.SetFocus;

  //cdsPedImp.CreateDataSet;

end;

procedure TFAT_FM_M_CHM.grdPedFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;

  if field.FieldName = 'int_selecao' then
     begin
         if deBase.text = '  /  /    ' then
           begin
             Showmessage('A data base deve ser preenchida.');
             cdsPed.Cancel;
             abort;
           end;

        if cdsPed.FieldByName('dta_pedido').AsDateTime > deBase.Date then
           begin
             Showmessage('A data do pedido não pode ser maior que a data base informada.');
             cdsPed.Cancel;
             abort;
           end;
     end;


end;

procedure TFAT_FM_M_CHM.grdPedidoCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if cdsPedsituacao.AsInteger = 2 then
     begin
      aFont.Color := clBlue;
     end;

 if cdsPedsituacao.AsInteger = 3 then
    begin
       aFont.Color := clGreen;
    end;
end;

procedure TFAT_FM_M_CHM.grdPedTitImpCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
   if cdsPedTitImp.FieldByName('dta_vencimento').AsString = '31/12/9999' then
     begin
      aFont.Color := clWhite;
     end;
end;

procedure TFAT_FM_M_CHM.grdPedTitImpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ord(key) = vk_return then
     begin
       if cdsPedImp.State in [dsEdit] then
           begin
             if cdsPedTitImp.FieldByName('dta_vencimento').AsDateTime <
                cdsPedTitImp.FieldByName('dta_pedido').AsDateTime  then
                begin
                  ShowMessage('A data de vencimento não pode ser menor que a data do pedido de venda.');
                  cdsPedImp.Cancel;
                  exit;
                end;
           end;
     end;
end;

procedure TFAT_FM_M_CHM.grdPedTitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ord(key) = vk_return then
     begin
       if cdsPed.State in [dsEdit] then
           begin
             if not cdsPed.FieldByName('int_selecao').AsBoolean  then
                begin
                  ShowMessage('Para poder alterar a data de vencimento, o pedido de venda deve ser selecionado.');
                  cdsPed.Cancel;
                  exit;
                end;

             if cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime <
                cdsPed.FieldByName('dta_pedido').AsDateTime  then
                begin
                  ShowMessage('A data de vencimento não pode ser menor que a data do pedido de venda.');
                  cdsPed.Cancel;
                  exit;
                end;

             cdsPed_Tit.FieldByName('dias').AsCurrency :=  cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime -
                                                           cdsPed.FieldByName('dta_pedido').AsDateTime;

             if cdsPed_Tit.ApplyUpdates(0) = 0 then
                ShowMessage('Alteração realizada!')
             else
                ShowMessage('Erro ao tentar atualizar o vencimento.');
           end;
     end;
end;

procedure TFAT_FM_M_CHM.Image1Click(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var

  vlrTotalPedidos,somaTit: Currency;
  i,QtdeReg: Integer;
  DiasReg: Array [1..20] of integer;
  DataReg: Array [1..20] of TDateTime;
  int_nomefpg, obs: string;
  NovaData: TDate;
begin
  inherited;

  try

  cdsPed.Filtered := true;
  cdsPed.Filter := 'int_selecao = true';

  if cdsPed.IsEmpty then
     begin
       Showmessage('Nenhum pedido foi selecionado.');
       exit;
     end;

  if not cdsPedImp.IsEmpty then
     begin
        if rgRelacaoCheques.ItemIndex = 0 then
           begin
              if Dc_MessageDlgCheck('Os vencimentos prontos para serem impressos serão apagados.'
                                  + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbNo],
                          0, mrNo, true, false,'', @MostraMensagem) = 7 then
                 begin
                   exit;
                 end
              else
                 begin
                   cdsPedImp.EmptyDataSet;
                 end;
           end
        else
           begin
             if cdsPedImp.Locate('id_cliente',cdsPed.FieldByName('id_cliente').AsString,[]) then
                begin
                  if Dc_MessageDlgCheck('Já existe unificação para este cliente.'
                                        + #13 + 'Deseja refazer?', mtConfirmation, [mbYes, mbNo],
                          0, mrNo, true, false,'', @MostraMensagem) = 7 then
                     begin
                       exit;
                     end
                  else
                     begin
                       cdsPedImp.First;
                       while not cdsPedImp.eof do
                          begin
                            if cdsPedImp.FieldByName('id_cliente').AsString = cdsPed.FieldByName('id_cliente').AsString then
                               cdsPedImp.Delete
                            else
                               cdsPedImp.Next;
                          end;
                       cdsPedImp.First;
                     end;
                end;
           end;
     end;


  if ( trim(txtCliente.Text) <> '')  and  (trim(txtCliente.Text) <> '0')  then
     begin
        cdsPed.First;

        cdsPedImp.Insert;
        inc(IdPedidoUnif);
        cdsPedImp.FieldByName('id_pedido').AsInteger   := IdPedidoUnif;
       // cdsPedImp.FieldByName('unificado').AsBoolean := true;
        cdsPedImp.FieldByName('id_cliente').AsString   := cdsPed.FieldByName('id_cliente').AsString;
        cdsPedImp.FieldByName('int_nomecli').AsString  := cdsPed.FieldByName('int_nomecli').AsString;

        vlrTotalPedidos := 0;
        QtdeReg := cdsPed_Tit.RecordCount;

        i := 0;

        somaTit := 0;

        obs := '  Pedido' + #13 ;
        obs := obs + '  -------------------------' + #13;

        // Soma o total dos pedidos a unificar
        while not cdsPed.eof do
           begin
             obs := obs + GeraEspacoEsq(cdsPed.FieldByName('id_pedido').AsString,7) +  '    R$ '+ GeraEspacoEsq(FormatCurr('###,###,##0.00',cdsPed.FieldByName('vlr_liquido').AsCurrency),13) + #13;
             vlrTotalPedidos := vlrTotalPedidos + cdsPed.FieldByName('vlr_liquido').AsCurrency;
             cdsPed.Next;
           end;

        cdsPedImp.FieldByName('obs').AsString := obs;
        cdsPedImp.FieldByName('vlr_liquido').AsCurrency  :=  vlrTotalPedidos;

        // Busca apenas os dias dos primeiros títulos apenas do primeiro Pedido do cliente a unificar
        while not cdsPed_Tit.eof do
           begin
             inc(i);

             int_nomefpg  := cdsPed_Tit.FieldByName('int_nomefpg').AsString;
             DiasReg[i]   := cdsPed_Tit.FieldByName('dias').AsInteger;
             DataReg[i]   := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime;
             cdsPed_Tit.Next;
           end;

        i := 1;
        for i := 1 to QtdeReg do
          begin
            cdsPedTitImp.Insert;
                  // NovaData := deBase.Date + DiasReg[i];
            cdsPedTitImp.FieldByName('id_titulo').AsInteger       := i;
            cdsPedTitImp.FieldByName('int_nomefpg').AsString      := int_nomefpg;
            cdsPedTitImp.FieldByName('dta_vencimento').AsDateTime := DataReg[i];   //NovaData;

            if i <> QtdeReg then
               begin
                 cdsPedTitImp.FieldByName('vlr_titulo').AsCurrency := trunc(vlrTotalPedidos/ QtdeReg);
                 somaTit := somaTit +  cdsPedTitImp.FieldByName('vlr_titulo').AsCurrency;
               end
            else
               cdsPedTitImp.FieldByName('vlr_titulo').AsCurrency := roundTo(vlrTotalPedidos - somaTit,-2);

            cdsPedTitImp.Post;
          end;

        qtdeReg :=  cdsPed_Tit.recordcount;

        if qtdeReg < 5 then
           begin
             for i := 1 to (5 - qtdeReg) do
                begin
                  cdsPedTitImp.Insert;
                  cdsPedTitImp.FieldByName('dta_vencimento').AsString:= '31/12/9999';
                  cdsPedTitImp.post;
                end;
           end;
     end
  else
     begin
        cdsPed.First;
        while not cdsPed.eof do
           begin
             cdsPedImp.Insert;
//             cdsPedImp.FieldByName('unificado').AsBoolean       := false;
             cdsPedImp.FieldByName('id_pedido').AsString        := cdsPed.FieldByName('id_pedido').AsString;
             cdsPedImp.FieldByName('dta_pedido').AsString       := cdsPed.FieldByName('dta_pedido').AsString;
             cdsPedImp.FieldByName('vlr_liquido').AsCurrency    := cdsPed.FieldByName('vlr_liquido').AsCurrency;
             cdsPedImp.FieldByName('int_nomecli').AsString      := cdsPed.FieldByName('int_nomecli').AsString;
             cdsPedImp.FieldByName('int_nomecpg').AsString      := cdsPed.FieldByName('int_nomecpg').AsString;
            // cdsPedImp.FieldByName('FAT_SQ_M_PED_TIT') := cdsPed.FieldByName('FAT_SQ_M_PED_TIT');

             cdsPed_Tit.First;
             while not cdsPed_Tit.eof do
                begin
                  cdsPedTitImp.Insert;
                  cdsPedTitImp.FieldByName('id_titulo').AsInteger        := cdsPed_Tit.FieldByName('id_titulo').AsInteger;
                  cdsPedTitImp.FieldByName('int_nomefpg').AsString       := cdsPed_Tit.FieldByName('int_nomefpg').AsString;
                  cdsPedTitImp.FieldByName('dias').AsInteger             := cdsPed_Tit.FieldByName('dias').AsInteger;
                  cdsPedTitImp.FieldByName('dta_vencimento').AsDateTime  := cdsPed_Tit.FieldByName('dta_vencimento').AsDateTime;
                  cdsPedTitImp.FieldByName('vlr_titulo').AsCurrency      := cdsPed_Tit.FieldByName('vlr_titulo').AsCurrency;
                  cdsPedTitImp.Post;
                  cdsPed_Tit.Next;
                end;

             qtdeReg :=  cdsPed_Tit.recordcount;

             if qtdeReg < 5 then
                begin
                  for i := 1 to (5 - qtdeReg) do
                     begin
                       cdsPedTitImp.Insert;
                       cdsPedTitImp.FieldByName('dta_vencimento').AsString:= '31/12/9999';
                       cdsPedTitImp.post;
                     end;
                end;

             cdsPed.Next;
           end;
        cdsPed.First;
     end;

  finally
     cdsPed.Filtered := false;
     if not cdsPed.IsEmpty then
        begin
          cdsPed.First;
          while not cdsPed.eof do
             begin
               cdsPed.edit;
               cdsPed.FieldByName('int_selecao').AsBoolean := false;
               cdsPed.post;
               cdsPed.Next;
             end;
        end;

     cdsPed.First;
     cdsPed_Tit.First;

     cdsPedImp.First;
     cdsPedTitImp.First;
  end;

end;

procedure TFAT_FM_M_CHM.Retirarregistro1Click(Sender: TObject);
begin
  inherited;
  if cdsPedImp.IsEmpty then
     begin
       Showmessage('Não há registro para ser deletado.');
       exit;
     end;
  cdsPedImp.Delete;
end;

procedure TFAT_FM_M_CHM.Retirartodososregistros1Click(Sender: TObject);
begin
  inherited;
  if cdsPedImp.IsEmpty then
     begin
       Showmessage('Não há registro para ser deletado.');
       exit;
     end;
  cdsPedImp.EmptyDataSet;
end;

procedure TFAT_FM_M_CHM.rgRelacaoChequesClick(Sender: TObject);
begin
  inherited;
  if rgRelacaoCheques.ItemIndex = 0 then
     begin
       txtCliente.Color := $00DADADA;
       txtCliente.Enabled := false;
       txtCliente.text := '';
       lblNomeCli.Caption := '';
       txtCodPed.Enabled := true;
       txtCodPed.Color := clWhite;
       btnAdicionar.Enabled := true;
       btnBusCliente.Enabled := false;
       cdsPed.close;
       { cdsPed.Data :=
           cdsPed.DataRequest(VarArrayOf([92,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,'''2''']));}

       cdsPed.Data :=
           cdsPed.DataRequest(VarArrayOf([123,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,'''2''',
                                              FormatDateTime('DD/MM/YYYY',date-10) ]));

       cdsPed.Open;

     end
  else
     begin
       txtCliente.Color := clWhite;
       txtCliente.Enabled := true;
       txtCodPed.Enabled := false;
       txtCodPed.Color := $00DADADA;
       btnAdicionar.Enabled := false;
       btnBusCliente.Enabled := true;
     end;

end;

procedure TFAT_FM_M_CHM.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  PSQ_FM_X_CLI.ShowModal;
  if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
     begin
       txtCliente.Text :=
           PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

       lblNomeCli.Caption :=
           PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
     end;
  PSQ_FM_X_CLI.BUS_CD_C_CLI.Close;
  PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_CHM.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnSair.Focused  then
     begin
       exit;
     end;

  if (trim(txtCliente.Text) <> '0') and (trim(txtCliente.Text) <> '') then
     begin
       dmGeral.BUS_CD_C_CLI.Close;
        dmGeral.BUS_CD_C_CLI.Data :=
           dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

       if not dmGeral.BUS_CD_C_CLI.IsEmpty then
          begin
            lblNomeCli.Caption := dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
          end
       else
          begin
            showMessage('Cliente não cadastrado.');
            txtCliente.Text := '';
            txtCliente.Setfocus;
          end;
     end
  else
     begin
       txtCliente.Text    := '';
       lblNomeCli.Caption := '';
     end;
end;

procedure TFAT_FM_M_CHM.txtCodPedExit(Sender: TObject);
begin
  inherited;

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (trim(txtCodPed.Text) <> '0') and (trim(txtCodPed.Text) <> '') then
     begin
       dmGeral.BUS_CD_M_PED2.close;
       dmGeral.BUS_CD_M_PED2.Data :=
            dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,trim(txtCodPed.Text)]));
       if not dmGeral.BUS_CD_M_PED2.IsEmpty then
          begin
            lblPedNomeCli.Caption := dmGeral.BUS_CD_M_PED2.FieldByName('int_nomecli').AsString;
          end
       else
          begin
            showMessage('Pedido não cadastrado.');
            txtCodPed.Text := '';
            txtCodPed.Setfocus;
          end;
     end
  else
     begin
       txtCodPed.Text    := '';
       lblPedNomeCli.Caption := '';
     end;
end;

procedure TFAT_FM_M_CHM.txtQtdeDiasExit(Sender: TObject);
begin
  inherited;

  if trim(txtQtdeDias.Text) = '' then
     exit;

  if StrToInt(txtQtdeDias.Text) < 0 then
     begin
       Showmessage('Não é permitido valor negativo.');
       txtQtdeDias.Text := '0';
       txtQtdeDias.SetFocus;
       exit;
     end;

  if StrToInt(txtQtdeDias.Text) > 150 then
     begin
       Showmessage('A quantidade de dias não pode ser maior que 150 dias.');
       txtQtdeDias.Text := '0';
       txtQtdeDias.SetFocus;
       exit;
     end;

end;

function TFAT_FM_M_CHM.GeraEspacoEsq(const texto: String; QtdeEsp: Integer): String;
var
  i,qtde: integer;
begin


  qtde := QtdeEsp - length(texto);
  result := texto;

  if qtde > 0 then
     begin
        for i := 1 to qtde do
          begin
            result := ' ' + result;
          end;
     end
  else
     begin
       result := texto;
     end;
end;

end.

