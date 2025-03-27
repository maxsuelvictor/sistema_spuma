unit PCP_UN_M_OPR_OPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, vcl.Wwdbedit,
  vcl.wwdblook, Vcl.Buttons, Vcl.DBCtrls, Datasnap.DBClient, enFunc;

type
  TPCP_FM_M_OPR_OPP = class(TPAD_FM_X_FRM)
    pnDados: TPanel;
    pnCabecalho: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label4: TLabel;
    dsoOpp: TwwDataSource;
    grdItensOp: TwwDBGrid;
    txtEmissao: TJvDBDateEdit;
    Panel1: TPanel;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    txtDescItem: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    txtUnidade: TDBText;
    Label7: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtQtdeAProd: TwwDBEdit;
    txtMotivoMan: TwwDBEdit;
    grdItensOppMan: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    txtQtdeParaOP: TwwDBEdit;
    Label5: TLabel;
    BUS_DS_M_OPR_OPP_INT: TwwDataSource;
    BUS_CD_M_OPR_OPP_INT: TClientDataSet;
    BUS_CD_M_OPR_OPP_INTid_opr: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_opr_opp: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_item: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_cor: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_tamanho: TIntegerField;
    BUS_CD_M_OPR_OPP_INTqtde_a_produzir: TFloatField;
    BUS_CD_M_OPR_OPP_INTqtde_produzida: TFloatField;
    BUS_CD_M_OPR_OPP_INTqtde_a_produzir_orig: TFloatField;
    BUS_CD_M_OPR_OPP_INTid_resp_alt: TIntegerField;
    BUS_CD_M_OPR_OPP_INTint_nomeite: TWideStringField;
    BUS_CD_M_OPR_OPP_INTint_undvenda: TWideStringField;
    BUS_CD_M_OPR_OPP_INTint_nomecor: TWideStringField;
    BUS_CD_M_OPR_OPP_INTint_nometam: TWideStringField;
    BUS_CD_M_OPR_OPP_INTdta_alt: TDateField;
    BUS_CD_M_OPR_OPP_INThora_alt: TTimeField;
    BUS_CD_M_OPR_OPP_INTqtde_atender_opr: TFloatField;
    BUS_CD_M_OPR_OPP_INTqtde_atender_opr_ext: TFloatField;
    BUS_CD_M_OPR_OPP_INTsaldo_disponivel: TFloatField;
    BUS_CD_M_OPR_OPP_INTreg_alt: TBooleanField;
    BUS_CD_M_OPR_OPP_INTBUS_SQ_M_OPR_OPP_SOP_INT: TDataSetField;
    BUS_CD_M_OPR_OPP_INThistorico_alt: TWideStringField;
    BUS_CD_M_OPR_OPP_INTmotivo_alt: TWideStringField;
    BUS_CD_M_OPR_OPP_INTgerado_aut: TBooleanField;
    BUS_CD_M_OPR_OPP_INTmotivo_ger_man: TWideStringField;
    BUS_CD_M_OPR_OPP_INTid_resp_man: TIntegerField;
    BUS_CD_M_OPR_OPP_INTdta_man: TDateField;
    BUS_CD_M_OPR_OPP_INThor_man: TTimeField;
    BUS_CD_M_OPR_OPP_INTid_busca_item: TWideStringField;
    BUS_CD_M_OPR_OPP_INTint_nomeres_man: TWideStringField;
    Button1: TButton;
    Label8: TLabel;
    BUS_CD_M_OPR_OPP_INTint_novoreg: TWideStringField;
    mmPcpObsIte: TDBMemo;
    lblMedida: TLabel;
    BUS_CD_M_OPR_OPP_INTpcp_desc_item_person: TWideStringField;
    chGerarBloco: TDBCheckBox;
    BUS_CD_M_OPR_OPP_INTbloco_gerado: TIntegerField;
    procedure grdItensOpDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtQtdeAProdExit(Sender: TObject);
    procedure txtQtdeParaOPExit(Sender: TObject);
    procedure txtMotivoManExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BUS_CD_M_OPR_OPP_INTqtde_a_produzirChange(Sender: TField);
    procedure BUS_CD_M_OPR_OPP_INTqtde_atender_oprChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BUS_CD_M_OPR_OPP_INTBeforePost(DataSet: TDataSet);
    procedure grdItensOppManMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mmPcpObsIteExit(Sender: TObject);
    procedure mmPcpObsIteEnter(Sender: TObject);
    procedure BUS_CD_M_OPR_OPP_INTpcp_desc_item_personChange(Sender: TField);
    procedure mmPcpObsIteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  PCP_FM_M_OPR_OPP: TPCP_FM_M_OPR_OPP;
  xPed_MedidasPerson: String;

implementation

{$R *.dfm}

uses PCP_UN_M_OPR_OPP_ALT, uDmGeral, PSQ_UN_X_ITE, uProxy, CSU_UN_M_PED;

procedure TPCP_FM_M_OPR_OPP.AbrirBuscas;
begin
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
end;

procedure TPCP_FM_M_OPR_OPP.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TPCP_FM_M_OPR_OPP.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  BUS_CD_M_OPR_OPP_INT.Insert;

  BUS_CD_M_OPR_OPP_INT.FieldByName('int_novoreg').AsString := 'S';

  xUltOpp := xUltOpp + 1;

  BUS_CD_M_OPR_OPP_INT.FieldByName('id_opr').AsInteger :=
         dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsInteger;
  BUS_CD_M_OPR_OPP_INT.FieldByName('id_opr_opp').AsInteger := xUltOpp;

  BUS_CD_M_OPR_OPP_INT.FieldByName('reg_alt').AsBoolean := false;

  BUS_CD_M_OPR_OPP_INT.FieldByName('id_cor').AsInteger     := 0;
  BUS_CD_M_OPR_OPP_INT.FieldByName('id_tamanho').AsInteger := 0;

  BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr_ext').AsCurrency := 0;
  BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').asCurrency := 0;
  BUS_CD_M_OPR_OPP_INT.FieldByName('gerado_aut').AsBoolean   := false;
  BUS_CD_M_OPR_OPP_INT.FieldByName('id_resp_man').AsInteger  := xFuncionario;
  BUS_CD_M_OPR_OPP_INT.FieldByName('bloco_gerado').AsInteger := 0;
  BUS_CD_M_OPR_OPP_INT.FieldByName('dta_man').AsDateTime     := xDataSis;
  BUS_CD_M_OPR_OPP_INT.FieldByName('hor_man').AsDateTime     := xHoraSis;

  txtBuscaItem.SetFocus;
end;

procedure TPCP_FM_M_OPR_OPP.BuscarOppIteMan;
begin
  BUS_CD_M_OPR_OPP_INT.close;
  BUS_CD_M_OPR_OPP_INT.Data :=
      BUS_CD_M_OPR_OPP_INT.DataRequest(VarArrayOf([5,
            dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString,
                    dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));

end;

procedure TPCP_FM_M_OPR_OPP.BUS_CD_M_OPR_OPP_INTBeforePost(DataSet: TDataSet);
begin
  inherited;
  if  BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr').AsCurrency >
      BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency then
      begin
        Showmessage('O campo "Qtde para esta O.P" não pode ser maior que o campo "Qtde a produzir"');
        txtQtdeParaOP.SetFocus;
        abort;
      end;
end;

procedure TPCP_FM_M_OPR_OPP.BUS_CD_M_OPR_OPP_INTpcp_desc_item_personChange(
  Sender: TField);
begin
  inherited;
  if BUS_CD_M_OPR_OPP_INT.FieldByName('pcp_desc_item_person').text <> '' then
     BUS_CD_M_OPR_OPP_INT.FieldByName('int_nomeite').text :=
      BUS_CD_M_OPR_OPP_INT.FieldByName('pcp_desc_item_person').text;


end;

procedure TPCP_FM_M_OPR_OPP.BUS_CD_M_OPR_OPP_INTqtde_atender_oprChange(
  Sender: TField);
begin
  inherited;
  BUS_CD_M_OPR_OPP_INT.FieldByName('saldo_disponivel').AsCurrency :=
     BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency -
     BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr').AsCurrency;
end;

procedure TPCP_FM_M_OPR_OPP.BUS_CD_M_OPR_OPP_INTqtde_a_produzirChange(
  Sender: TField);
begin
  inherited;

  // 27-04-18 em Maxsuel Victor, inserido devido a funcionalidade do QTDE_ATENDER_OPR
  // ter sido suspensa.
  BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr').AsCurrency :=
       BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;


  BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir_orig').AsCurrency :=
     BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;

  BUS_CD_M_OPR_OPP_INT.FieldByName('saldo_disponivel').AsCurrency :=
     BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency -
     BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr').AsCurrency;


end;

procedure TPCP_FM_M_OPR_OPP.Button1Click(Sender: TObject);
var
  IdOpr: String;
  SMPrincipal : TSMClient;
  retorno: String;
  cds: TClientDataSet;
  cdsOppInt: OleVariant;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    cdsOppInt := BUS_CD_M_OPR_OPP_INT.data;

  try


     if BUS_CD_M_OPR_OPP_INT.ChangeCount > 0 then
        if BUS_CD_M_OPR_OPP_INT.ApplyUpdates(0) = 0 then
           begin
             try
               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

               retorno := SMPrincipal.enSgqPcpGerarOppEtq(dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,
                                                          dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsInteger,
                                                          cdsOppInt);
               if retorno = 'OK' then
                  begin
                    ShowMessage('Dados salvo com sucesso!');
                  end
               else
                  begin
                    ShowMessage('A geração da etiqueta não foi realizada!');
                  end;
             finally
               FreeAndNil(SMPrincipal);
             end;
           end;

  except
     on e: exception do
        begin
           Showmessage('Erro ao tentar gravar.' + #13 +
                        e.Message);
           exit;
        end;
  end;
  IdOpr := dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString;

  dmGeral.PCP_CD_M_OPR.Close;
      dmGeral.PCP_CD_M_OPR.Data :=
             dmGeral.PCP_CD_M_OPR.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                                    IdOpr]));
  BuscarOppIteMan;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_OPR_OPP.cbbCorEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_OPR_OPP.cbbCorExit(Sender: TObject);
begin
  inherited;
  BUS_CD_M_OPR_OPP_INT.FieldByName('INT_NOMECOR').text := '';

  if trim(BUS_CD_M_OPR_OPP_INT.FieldByName('ID_COR').Text) = '' then
     begin
      if btnSair.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       BUS_CD_M_OPR_OPP_INT.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,BUS_CD_M_OPR_OPP_INT.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       BUS_CD_M_OPR_OPP_INT.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  BUS_CD_M_OPR_OPP_INT.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  if mmPcpObsIte.CanFocus then
     mmPcpObsIte.SetFocus
  else
     begin
       pnItens.Enabled := true;
       txtQtdeAProd.SetFocus;

       pnlCorTamanho.Visible := False;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
 dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_OPR_OPP.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  BUS_CD_M_OPR_OPP_INT.FieldByName('INT_NOMETAM').text := '';

  if trim(BUS_CD_M_OPR_OPP_INT.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnSair.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       BUS_CD_M_OPR_OPP_INT.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,BUS_CD_M_OPR_OPP_INT.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       BUS_CD_M_OPR_OPP_INT.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  BUS_CD_M_OPR_OPP_INT.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
      if mmPcpObsIte.CanFocus then
         mmPcpObsIte.SetFocus
      else
         begin
           txtQtdeAProd.SetFocus;
           pnlCorTamanho.Visible := False;
         end;
    end;
end;

procedure TPCP_FM_M_OPR_OPP.ChamaCorTamanho;
begin

   lblMedida.Visible    := false;
   mmPcpObsIte.Visible  := false;

   dmGeral.BUS_CD_C_ITE.close;
   dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text]));


   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
       if (BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text =
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
           (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
           begin
             pnlCorTamanho.height := 76;
             pnlCorTamanho.Width  := 523;
             lblMedida.Visible    := true;
             mmPcpObsIte.Visible  := true;
           end
        else
            begin
              // -- Sai Tamanho e Cor
              pnlCorTamanho.Visible := False;

              txtQtdeAProd.SetFocus;
            end;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

             if  (BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text =
                  dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or

                  (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                 begin
                   pnlCorTamanho.height := 76;
                   pnlCorTamanho.Width  := 523;
                   lblMedida.Visible    := true;
                   mmPcpObsIte.Visible  := true;
                 end;

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
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  if (BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text =
                      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                     (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                     begin
                       pnlCorTamanho.height := 76;
                       pnlCorTamanho.Width  := 410;
                       lblMedida.left := 140;
                       lblMedida.Visible    := true;
                       mmPcpObsIte.left := 140;
                       mmPcpObsIte.Visible  := true;
                     end;

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
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                   if (BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text =
                       dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                       (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                       begin
                          pnlCorTamanho.height := 76;
                          pnlCorTamanho.Width  := 410;
                          lblMedida.left := 140;
                          lblMedida.Visible    := true;
                          mmPcpObsIte.left := 140;
                          mmPcpObsIte.Visible  := true;
                       end;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_OPR.Cancel;
  FreeAndNil(PCP_FM_M_OPR_OPP);
end;

procedure TPCP_FM_M_OPR_OPP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   if not BUS_CD_M_OPR_OPP_INT.IsEmpty then
     begin
       BUS_CD_M_OPR_OPP_INT.Cancel;
       if BUS_CD_M_OPR_OPP_INT.ChangeCount > 0 then
          begin
            if Dc_MessageDlgCheck('Existe produto que não foi salvo!' + #13 + 'Deseja realmente sair?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) = 7 then
               begin
                 CanClose := false;
               end;
          end;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirBuscas;
end;

procedure TPCP_FM_M_OPR_OPP.FormShow(Sender: TObject);
begin
  inherited;

  pnItens.Enabled := false;

  Atualizar_xBusca;
  BuscarOppIteMan;

  dmGeral.AtualizarGridItens(grdItensOp,'int_nomeite',13,8);
  dmGeral.AtualizarGridItens(grdItensOppMan,'int_nomeite',16,12);

  xUltOpp := 0;

  if not dmGeral.PCP_CD_M_OPR_OPP.IsEmpty then
     begin
       dmGeral.PCP_CD_M_OPR_OPP.IndexFieldNames := 'ID_OPR_OPP';

       dmGeral.PCP_CD_M_OPR_OPP.Last;

       xUltOpp := dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_opr_opp').AsInteger;

       dmGeral.PCP_CD_M_OPR_OPP.IndexFieldNames := 'int_nomeite';
       dmGeral.PCP_CD_M_OPR_OPP.First;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.grdItensOpDblClick(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_OPR_OPP.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado para poder alterar os dados da produção.');
       exit;
     end;
  dmGeral.PCP_CD_M_OPR.Edit;
  PCP_FM_M_OPR_OPP_ALT := TPCP_FM_M_OPR_OPP_ALT.Create(Self);
  PCP_FM_M_OPR_OPP_ALT.ShowModal;
  PCP_FM_M_OPR_OPP_ALT.Free;

  BuscarOppIteMan;
end;

procedure TPCP_FM_M_OPR_OPP.grdItensOppManMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  BUS_CD_M_OPR_OPP_INT.Cancel;
  pnItens.Enabled := false;
end;

procedure TPCP_FM_M_OPR_OPP.mmPcpObsIteEnter(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR_OPP.KeyPreview := false;
end;

procedure TPCP_FM_M_OPR_OPP.mmPcpObsIteExit(Sender: TObject);
begin
  inherited;

  PCP_FM_M_OPR_OPP.KeyPreview := true;

  if (cbbTamanho.Focused) or (cbbCor.Focused) then
      Exit;

  pnItens.Enabled := true;
  txtQtdeAProd.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_M_OPR_OPP.mmPcpObsIteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_f3 then
     begin
       PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
       PSQ_FM_X_ITE.ShowModal;
       if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
          begin
             mmPcpObsIte.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
             mmPcpObsIte.Selstart:= Length(mmPcpObsIte.text);
          end;
       PSQ_FM_X_ITE.Free;
     end;

  if key = vk_f4 then
     begin
       CSU_FM_M_PED := TCSU_FM_M_PED.Create(Self);
       ChamadaPor := 'PCP_FM_M_OPR_OPP';
       CSU_FM_M_PED.ShowModal;
       if xPed_MedidasPerson <> '' then
          mmPcpObsIte.text := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;

       mmPcpObsIte.Selstart:= Length(mmPcpObsIte.text);
       CSU_FM_M_PED.Free;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItensOppMan.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        {if btnSair.Focused then
           begin
             acSairExecute(acSair);
             exit;
           end;}

        BUS_CD_M_OPR_OPP_INT.Cancel;
        BUS_CD_M_OPR_OPP_INT.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;


procedure TPCP_FM_M_OPR_OPP.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           BUS_CD_M_OPR_OPP_INT.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           BUS_CD_M_OPR_OPP_INT.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_OPR_OPP.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if BUS_CD_M_OPR_OPP_INT.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnSair.Focused then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItensOppMan.Focused then
          begin
            BUS_CD_M_OPR_OPP_INT.cancel;
            exit;
          end;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtdeAProd.Focused) or (txtQtdeParaOP.Focused) or
          (txtMotivoMan.Focused)  then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if BUS_CD_M_OPR_OPP_INT.state in [dsBrowse] then
          BUS_CD_M_OPR_OPP_INT.edit;
     end;


  BUS_CD_M_OPR_OPP_INT.FieldByName('int_nomeite').Text := '';
  BUS_CD_M_OPR_OPP_INT.FieldByName('int_undvenda').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;

  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;

  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       BUS_CD_M_OPR_OPP_INT.FieldByName('int_nomeite').Text   := '';
       BUS_CD_M_OPR_OPP_INT.FieldByName('int_undvenda').Text  := '';
       exit;
     end;

  BUS_CD_M_OPR_OPP_INT.FieldByName('ID_ITEM').Text       :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  BUS_CD_M_OPR_OPP_INT.FieldByName('int_nomeite').Text   :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  BUS_CD_M_OPR_OPP_INT.FieldByName('int_undvenda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TPCP_FM_M_OPR_OPP.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TPCP_FM_M_OPR_OPP.txtMotivoManExit(Sender: TObject);
begin
  inherited;

  if btnSair.Focused then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or
     txtQtdeAProd.Focused or grdItensOppMan.Focused  then
     begin
       exit;
     end;



  BUS_CD_M_OPR_OPP_INT.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;

end;

procedure TPCP_FM_M_OPR_OPP.txtQtdeAProdExit(Sender: TObject);
begin
  inherited;

  if btnSair.Focused then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItensOppMan.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsFloat)) then
     begin
       txtQtdeAProd.SetFocus;
       abort;
     end;
end;

procedure TPCP_FM_M_OPR_OPP.txtQtdeParaOPExit(Sender: TObject);
begin
  inherited;
  if btnSair.Focused then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     txtQtdeAProd.Focused or grdItensOppMan.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_atender_opr').AsFloat)) then
     begin
       txtQtdeParaOP.SetFocus;
       abort;
     end;
end;

end.
