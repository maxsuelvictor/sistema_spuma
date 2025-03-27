unit FAT_UN_M_PED_CAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TFAT_FM_M_PED_CAN = class(TPAD_FM_X_FRM)
    txtMotivoCan: TwwDBEdit;
    btnSalvar: TBitBtn;
    FAT_CD_M_PED: TClientDataSet;
    pnlDatagrid: TPanel;
    dbGrid: TwwDBGrid;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltro: TcxButton;
    Panel1: TPanel;
    Label20: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    FAT_CD_M_PEDid_pedido: TIntegerField;
    FAT_CD_M_PEDid_empresa: TIntegerField;
    FAT_CD_M_PEDdta_pedido: TDateField;
    FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_M_PEDid_vendedor: TIntegerField;
    FAT_CD_M_PEDobs: TWideStringField;
    FAT_CD_M_PEDvlr_bruto: TFMTBCDField;
    FAT_CD_M_PEDvlr_desconto: TFMTBCDField;
    FAT_CD_M_PEDper_desconto: TFloatField;
    FAT_CD_M_PEDvlr_liquido: TFMTBCDField;
    FAT_CD_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_M_PEDid_condicao_pag: TIntegerField;
    FAT_CD_M_PEDpcp_obs: TWideStringField;
    FAT_CD_M_PEDpcp_id_opr: TIntegerField;
    FAT_CD_M_PEDsituacao: TIntegerField;
    FAT_CD_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_M_PEDid_atendente: TIntegerField;
    FAT_CD_M_PEDid_responsavel: TIntegerField;
    FAT_CD_M_PEDid_cliente: TIntegerField;
    FAT_CD_M_PEDtipo_restricao: TWideStringField;
    FAT_CD_M_PEDid_almoxarifado: TIntegerField;
    FAT_CD_M_PEDjustificativa: TWideStringField;
    FAT_CD_M_PEDid_usuario_lib: TIntegerField;
    FAT_CD_M_PEDcod_lme: TWideStringField;
    FAT_CD_M_PEDrev_lme: TWideStringField;
    FAT_CD_M_PEDorigem: TIntegerField;
    FAT_CD_M_PEDdispositivo: TWideStringField;
    FAT_CD_M_PEDgps_latitude: TFloatField;
    FAT_CD_M_PEDgps_longitude: TFloatField;
    FAT_CD_M_PEDcubagem: TFloatField;
    FAT_CD_M_PEDid_orcamento: TIntegerField;
    FAT_CD_M_PEDenvia_carga: TBooleanField;
    FAT_CD_M_PEDdta_prev_entrega: TDateField;
    FAT_CD_M_PEDint_nomecli: TWideStringField;
    FAT_CD_M_PEDint_nometme: TWideStringField;
    FAT_CD_M_PEDint_nomefun: TWideStringField;
    FAT_CD_M_PEDint_nomecpg: TWideStringField;
    FAT_CD_M_PEDint_nomeate: TWideStringField;
    FAT_CD_M_PEDint_nomeres: TWideStringField;
    FAT_CD_M_PEDint_nomecid: TWideStringField;
    FAT_CD_M_PEDint_nomeest: TWideStringField;
    FAT_CD_M_PEDint_cpfcnpj: TWideStringField;
    FAT_CD_M_PEDint_pessoacli: TIntegerField;
    FAT_CD_M_PEDint_id_perfil: TIntegerField;
    FAT_CD_M_PEDid_ors: TIntegerField;
    FAT_CD_M_PEDint_sitaprov: TWideStringField;
    FAT_CD_M_PEDint_sitped: TWideStringField;
    FAT_CD_M_PEDid_abertura: TIntegerField;
    FAT_CD_M_PEDint_ie_rg_cli: TWideStringField;
    FAT_CD_M_PEDint_selecao: TBooleanField;
    FAT_CD_M_PEDdias_cpg_prazo: TIntegerField;
    FAT_CD_M_PEDint_nomereg: TWideStringField;
    FAT_CD_M_PEDoffline: TBooleanField;
    FAT_CD_M_PEDconferido: TBooleanField;
    FAT_CD_M_PEDid_conf: TIntegerField;
    FAT_CD_M_PEDdta_conf: TDateField;
    FAT_CD_M_PEDhor_conf: TTimeField;
    FAT_CD_M_PEDresultado_conf: TIntegerField;
    FAT_CD_M_PEDid_resp_conf: TIntegerField;
    FAT_CD_M_PEDint_nome_rcn: TWideStringField;
    FAT_CD_M_PEDid_propriedade: TIntegerField;
    FAT_CD_M_PEDmod_frete: TIntegerField;
    FAT_CD_M_PEDvlr_frete: TFMTBCDField;
    FAT_CD_M_PEDid_mkt: TIntegerField;
    FAT_CD_M_PEDcan_usuario: TIntegerField;
    FAT_CD_M_PEDcan_data: TDateField;
    FAT_CD_M_PEDcan_motivo: TWideStringField;
    FAT_CD_M_PEDcan_hora: TTimeField;
    FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    Button1: TButton;
    Label97: TLabel;
    Label2: TLabel;
    FAT_CD_M_PEDint_sitped2: TWideStringField;
    FAT_CD_M_PEDint_sitord: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      xFormCall:String;
  end;

var
  FAT_FM_M_PED_CAN: TFAT_FM_M_PED_CAN;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, FAT_RN_M_PED;

procedure TFAT_FM_M_PED_CAN.btnFiltroClick(Sender: TObject);
var
  data:TDateTime;
  index: integer;
  pedido, sit_ped_2: String;
  i: integer;
begin

  if trim(txtPesquisa.text) = '' then
     begin
       if cbbPesquisa.ItemIndex = 0 then
          begin
            Showmessage('Digite o código do pedido!');
            exit;
          end;

       if cbbPesquisa.ItemIndex = 1 then
          begin
            Showmessage('Digite a data do pedido!');
            exit;
          end;

       if cbbPesquisa.ItemIndex = 2 then
          begin
            Showmessage('Digite o nome do cliente!');
            exit;
          end;
     end;

  if cbbPesquisa.ItemIndex = 0 then
     begin
       try
         i := strtoint(txtPesquisa.text);
       except
         Showmessage('Digite apenas nro!');
         exit;
       end;
     end;

  if cbbPesquisa.ItemIndex = 2 then
     begin
        if length(trim(txtPesquisa.Text)) <= 2 then
           begin
             ShowMessage('Para o nome do cliente é preciso digitar no mínimo 3 caracteres.');
             exit;
           end;
     end;

  Screen.Cursor := crHourGlass;
  try
    if cbbPesquisa.ItemIndex = 0 then
       begin
          index := 119;

          if (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString <> '') and
             (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1) then // Vendedor externo
             begin
                index := 0;
             end;


          FAT_CD_M_PED.Close;
          FAT_CD_M_PED.Data :=
          FAT_CD_M_PED.DataRequest(
                  VarArrayOf([index, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.text ]));
       end;

    if cbbPesquisa.ItemIndex = 1 then
       begin
          index := 120;

          FAT_CD_M_PED.Close;
          FAT_CD_M_PED.Data :=
          FAT_CD_M_PED.DataRequest(
                  VarArrayOf([index, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.text ]));
       end;

    if cbbPesquisa.ItemIndex = 2 then
       begin
          index := 121;

          FAT_CD_M_PED.Close;
          FAT_CD_M_PED.Data :=
          FAT_CD_M_PED.DataRequest(
                  VarArrayOf([index, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.text ]));
       end;


    if FAT_CD_M_PED.IsEmpty then
       begin
         dmGeral.BUS_CD_M_PED.Close;
         dmGeral.BUS_CD_M_PED.Data :=
            dmGeral.BUS_CD_M_PED.DataRequest(
                VarArrayOf([index, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.text ]));
         if not dmGeral.BUS_CD_M_PED.IsEmpty then
            begin
              if (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString <> '') and
                 (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1) then // Vendedor externo
                  begin
                    if dmGeral.BUS_CD_M_PED.FieldByName('id_vendedor').AsInteger = xFuncionario then
                       begin
                         ShowMessage('O pedido: ' +
                           dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString +
                           ' - ' + dmGeral.BUS_CD_M_PED.FieldByName('dta_pedido').AsString +
                           ' - ' + dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString +
                           ', está: ' + dmGeral.BUS_CD_M_PED.FieldByName('int_sitped2').AsString + '!');
                       end
                    else
                       begin
                         Showmessage('Este pedido '+ txtPesquisa.text + ', não faz parte da sua carteira!');
                       end;
                  end
              else
                  begin
                    ShowMessage('O pedido: ' +
                           dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString +
                           ' - ' + dmGeral.BUS_CD_M_PED.FieldByName('dta_pedido').AsString +
                           ' - ' + dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString +
                           ', está: ' + dmGeral.BUS_CD_M_PED.FieldByName('int_sitped2').AsString + '!');
                  end;
            end
         else
            begin
              ShowMessage('Pedido não encontrado!');
            end;
         dmGeral.BUS_CD_M_PED.close;
       end
    else
       begin       
          if (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString <> '') and
             (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1)  then // Vendedor externo
             begin
               pedido := FAT_CD_M_PED.FieldByName('id_pedido').AsString;
               sit_ped_2 := FAT_CD_M_PED.FieldByName('int_sitped2').AsString;
               if FAT_CD_M_PED.FieldByName('id_vendedor').AsInteger <> xFuncionario then
                  begin
                    FAT_CD_M_PED.Close;
                    FAT_CD_M_PED.Data :=
                        FAT_CD_M_PED.DataRequest(
                               VarArrayOf([0, '']));

                    Showmessage('Este pedido '+ pedido + ', não faz parte da sua carteira!');
                  end
               else
                  begin
                     // Se for diferente de digitado
                     if FAT_CD_M_PED.FieldByName('int_sitOrd').AsInteger <> 1 then    // Digitado = 1 -> (ped.situacao = 0) and (ped.situacao_aprovacao = 0)
                        begin
                          FAT_CD_M_PED.Close;
                          FAT_CD_M_PED.Data :=
                              FAT_CD_M_PED.DataRequest(
                                     VarArrayOf([0, '']));

                          ShowMessage('Este pedido: ' + pedido + ', não está mais como Digitado!' + #13 +
                                      'O Pedido está: ' + sit_ped_2);
                        end;
                  end;
             end;                      
       end;

  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TFAT_FM_M_PED_CAN.btnSalvarClick(Sender: TObject);
begin
  //inherited;
  if Dc_MessageDlgCheck('Deseja realmente cancelar?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', nil) <> 7 then
     begin
       if (FAT_CD_M_PED.FieldByName('CAN_MOTIVO').AsString = '') then
             begin
               ShowMessage('Deve-se preencher o motivo do cancelamento.');
               txtMotivoCan.SetFocus;
               exit;
             end;

        if length(trim(FAT_CD_M_PED.FieldByName('CAN_MOTIVO').AsString)) < 10  then
           begin
             ShowMessage('O campo "Motivo de cancelamento" deve ter no mínimo 10 caracteres.');
             txtMotivoCan.SetFocus;
             exit;
           end;
       try
          Screen.Cursor := crHourGlass;

          FAT_CD_M_PED.edit;
          FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger := 4;
          FAT_CD_M_PED.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
          FAT_CD_M_PED.FieldByName('CAN_DATA').AsDateTime := xDataSis;
          FAT_CD_M_PED.FieldByName('CAN_HORA').AsDateTime := xHoraSis;
          FAT_CD_M_PED.Post;
          try
            if FAT_CD_M_PED.ApplyUpdates(0) = 0 then
               begin
                 ShowMessage('Pedido cancelado com sucesso!');
               end;
          except
             on e: exception do
                begin
                  Showmessage('Erro: ' + e.Message);
                end;
          end;

        finally
          Screen.Cursor := crDefault;

          FAT_CD_M_PED.Close;
          FAT_CD_M_PED.Data :=
          FAT_CD_M_PED.DataRequest(
              VarArrayOf([0, '']));

          FAT_CD_M_PED.cancel;
          pnlDados.Enabled := false;
          pnlDatagrid.Enabled := true;
          txtPesquisa.SetFocus;
        end;
     end;
end;




procedure TFAT_FM_M_PED_CAN.Button1Click(Sender: TObject);
begin
  inherited;
  FAT_CD_M_PED.cancel;
  pnlDados.Enabled := false;
  pnlDatagrid.Enabled := true;
  dbGrid.SetFocus;
end;

procedure TFAT_FM_M_PED_CAN.cbbPesquisaChange(Sender: TObject);
begin
//  inherited;
  txtPesquisa.Text := '';
  txtPesquisa.NumbersOnly := false;

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end;
end;

procedure TFAT_FM_M_PED_CAN.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
 // inherited;
   if FAT_CD_M_PEDsituacao.AsInteger = 0 then
    begin
      aFont.Color := clBlack;
    end;

    if FAT_CD_M_PEDsituacao.AsInteger = 1 then
    begin
      aFont.Color := clRed;
    end;

    if FAT_CD_M_PEDsituacao.AsInteger = 2 then
    begin
      aFont.Color := clBlue;
    end;

    if FAT_CD_M_PEDsituacao.AsInteger = 3 then
    begin
       aFont.Color := clGreen;
     end;

    if FAT_CD_M_PEDsituacao.AsInteger = 4 then
    begin
       aFont.Color := clMaroon;
     end;
end;

procedure TFAT_FM_M_PED_CAN.dbGridDblClick(Sender: TObject);
var
  txt: String;
begin
  inherited;

  if FAT_CD_M_PED.IsEmpty then
     begin
       ShowMessage('Não há pedido de venda para ser cancelado!');
       exit;
     end;

  if FAT_CD_M_PEDsituacao.AsInteger = 1 then
    begin
      ShowMessage('Pedido reprovado!');
      abort;
    end;

 // Alterado por Maxsuel Victor em 10/12/2018
 { if FAT_CD_M_PEDsituacao.AsInteger = 2 then
     begin
        ShowMessage('Em Ordem de Produção!');
        abort;
     end;  }

  if FAT_CD_M_PEDsituacao.AsInteger = 3 then
     begin
        ShowMessage('Pedido já faturado!');
        abort;
      end;

  if FAT_CD_M_PEDsituacao.AsInteger = 4 then
     begin
        ShowMessage('Pedido já cancelado!');
        abort;
     end;

  txt := FAT_RN_M_PED.FatVerifFatPcaPedidoIte(FAT_CD_M_PED.FieldByName('id_pedido').AsInteger);

  if trim(txt) <> '' then
     begin
       showmessage('Pedido não pode ser cancelado pois este pedido está no carregamento: ' + txt + '.');
       Abort;
     end;

  FAT_CD_M_PED.Edit;
  pnlDatagrid.Enabled := false;
  pnlDados.Enabled := true;
  txtMotivoCan.SetFocus;
end;

procedure TFAT_FM_M_PED_CAN.acSairExecute(Sender: TObject);
begin
  // inherited;
   Close;
end;

procedure TFAT_FM_M_PED_CAN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  FAT_CD_M_PED.Close;
end;

procedure TFAT_FM_M_PED_CAN.FormCreate(Sender: TObject);
begin
  // inherited;

 FAT_CD_M_PED.Close;
 FAT_CD_M_PED.Data :=
 FAT_CD_M_PED.DataRequest(
            VarArrayOf([0, '']));

 dmGeral.BusFuncionario3(0,IntToStr(xFuncionario));
end;

procedure TFAT_FM_M_PED_CAN.FormShow(Sender: TObject);
var
  i: integer;
begin
  // inherited;
  for i := 0 to Screen.FormCount -1 do
      begin
          if Screen.Forms[i].Showing  then
            begin
              if (Screen.Forms[i].Name = 'FAT_FM_M_PED') then
                begin
                  showmessage('É preciso que feche a tela de Pedido de Venda para poder utilizar a tela de cancelamento.');
                  pnlDados.Enabled := false;
                  pnlDatagrid.Enabled := false;
                  txtMotivoCan.color := clBtnFace;
                  abort;
                end;
              if  (Screen.Forms[i].Name = 'FAT_FM_M_LIB') then
                begin
                  showmessage('É preciso que feche a tela de Liberação de Pedido de Venda para poder utilizar a tela de cancelamento.');
                  pnlDados.Enabled := false;
                  pnlDatagrid.Enabled := false;
                  txtMotivoCan.color := clBtnFace;
                  abort;
                end;

            end;
      end;
  //inherited;
  pnlDados.Enabled := false;
  pnlDatagrid.Enabled := true;

  if (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString <> '') and
     (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1) then // Vendedor externo
     begin
       cbbPesquisa.Enabled := false;
     end;

  txtPesquisa.SetFocus;
end;

procedure TFAT_FM_M_PED_CAN.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

end.
