unit PCP_UN_M_CRP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.DBCtrls, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_CRP = class(TPAD_FM_X_PAD)
    lbResponsavel: TLabel;
    txtResponsavel: TJvDBComboEdit;
    lblDataEmissao: TLabel;
    lblNLotePai: TLabel;
    txtNLotePai: TDBEdit;
    lblRecipiente: TLabel;
    lblAlmoxarifado: TLabel;
    cbbRecipiente: TwwDBLookupCombo;
    cbbAlmoxarifado: TwwDBLookupCombo;
    gbItens: TGroupBox;
    btnAddItens: TBitBtn;
    grdItens: TwwDBGrid;
    dsItens: TwwDataSource;
    gbxBaixas: TGroupBox;
    grdBaixas: TwwDBGrid;
    dsoBaixas: TwwDataSource;
    pnlItens: TPanel;
    lblQtde: TLabel;
    lblNLote: TLabel;
    Label1: TLabel;
    lblItem: TLabel;
    lblUnidade: TLabel;
    txtQtde: TwwDBEdit;
    txtNLote: TwwDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    grdItensIButton: TwwIButton;
    dpkDataEmissao: TJvDBDateEdit;
    txtResponsavelDescricao: TDBText;
    txtItemDescricao: TDBText;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    txtUnidade: TDBText;
    cbbTamanho: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    lblEstoque: TLabel;
    txtEstoque: TEdit;
    lblGrupo: TLabel;
    cbbGrupo: TwwDBLookupCombo;
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure cbbRecipienteEnter(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlItensExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtNLoteExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbRecipienteExit(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbGrupoEnter(Sender: TObject);
    procedure cbbGrupoExit(Sender: TObject);
    procedure grdItensRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaCorTamanho;
    procedure Atualizar_xBusca;
    procedure DesabHabilCampos(ativar:boolean);
  public
    { Public declarations }
    var
      xbusca_item:string;
      xid_grupo:string;
  end;

var
  PCP_FM_M_CRP: TPCP_FM_M_CRP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, PSQ_UN_X_ITE, PCP_RN_M_CRP, uDmSgq;

procedure TPCP_FM_M_CRP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRP);
  DesabHabilCampos(true);
  dpkDataEmissao.SetFocus;
  txtEstoque.Text := '';
end;

procedure TPCP_FM_M_CRP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRP) then
      begin
        inherited;
        pnlItens.Enabled := False;
        DesabHabilCampos(false);
        btnAddItens.SetFocus;
      end;
end;

procedure TPCP_FM_M_CRP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRP) then
     begin
       inherited;
       dbGrid.SetFocus;
       DesabHabilCampos(true);
     end
  else
     begin
       if(btnAddItens.CanFocus) then
         begin;
           btnAddItens.SetFocus;
         end;
       if(dpkDataEmissao.CanFocus) then
         begin
           dpkDataEmissao.SetFocus;
         end;

     end;
end;

procedure TPCP_FM_M_CRP.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRP);
  //txtEstoque.Text := '';
 // grdItens.OnRowChanged := nil;
end;

procedure TPCP_FM_M_CRP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  PCP_RN_M_CRP.PcpOutrasValCrp;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       codigo := dmGeral.PCP_CD_M_CRP.FieldByName('ID_CRP').AsString;
       DmGeral.Grava(dmGeral.PCP_CD_M_CRP);
       inherited;
       dmGeral.PCP_CD_M_CRP.Close;
       dmGeral.PCP_CD_M_CRP.Data :=
       dmGeral.PCP_CD_M_CRP.DataRequest(
          VarArrayOf([0, codigo]));
       DesabHabilCampos(true);
      // txtEstoque.Text := '';
     //  grdItens.OnRowChanged := nil;
     end
   else
    begin
      btnAddItens.SetFocus;
    end;
end;

procedure TPCP_FM_M_CRP.btnAddItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled  := True;

  dmGeral.PCP_CD_M_CRP_ITE.Insert;
  txtEstoque.Text:='';
  txtBuscaItem.Enabled:=true;
  txtBuscaItem.SetFocus;
end;

procedure TPCP_FM_M_CRP.DesabHabilCampos(ativar:boolean);
begin
  dpkDataEmissao.Enabled := ativar;
  txtResponsavel.Enabled := ativar;
  cbbRecipiente.Enabled := ativar;
  cbbGrupo.Enabled := ativar;
  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
     begin
       cbbAlmoxarifado.Enabled := ativar;
     end;
end;


procedure TPCP_FM_M_CRP.btnFiltroClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_CRP.Close;
    dmGeral.PCP_CD_M_CRP.Data :=
    dmGeral.PCP_CD_M_CRP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
  // grdItens.OnRowChanged := grdItensRowChanged;
end;

procedure TPCP_FM_M_CRP.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');
  cbbAlmoxarifado.DropDown;
end;

procedure TPCP_FM_M_CRP.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser prenchido.');
       cbbAlmoxarifado.SetFocus;
       Exit;
     end;

  dmGeral.BusAlmox(0,dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmoxarifado.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CRP.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_CRP.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           Exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       Exit;
     end;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnlItens.Enabled := True;
  txtNLote.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_M_CRP.cbbGrupoEnter(Sender: TObject);
begin
  inherited;
   xid_grupo := dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').AsString;
   dmGeral.BusGrupoEst(1,'%');
   cbbGrupo.DropDown;
end;

procedure TPCP_FM_M_CRP.cbbGrupoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').Text = '' then
     begin
       ShowMessage('O campo "Grupo" deve ser preenchido.');
       cbbGrupo.SetFocus;
       Exit;
     end;

  if (dmGeral.PCP_CD_M_CRP_ITE.RecordCount > 0) then
     begin
       if(xid_grupo <> dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').Text) then
         begin
            dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').Text := xid_grupo;
         end;
       ShowMessage('Já tem itens no controle de recipientes!');
     end;

  dmGeral.BusGrupoEst(0,dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').Text);
  if dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       ShowMessage('Grupo não encontrado.');
       cbbGrupo.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CRP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_CRP.cbbRecipienteEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusRecipiente(1,'%');
  cbbRecipiente.DropDown;
end;

procedure TPCP_FM_M_CRP.cbbRecipienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CRP.FieldByName('ID_RPT').Text = '' then
     begin
       ShowMessage('O campo "Recipiente" deve ser preenchido.');
       cbbRecipiente.SetFocus;
       Exit;
     end;

  dmSgq.BusRecipiente(0,dmGeral.PCP_CD_M_CRP.FieldByName('ID_RPT').Text);
  if dmSgq.BUS_CD_C_RPT.IsEmpty then
     begin
       ShowMessage('Recipiente não encontrado.');
       cbbRecipiente.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CRP.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_CRP.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           Exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       Exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       Exit;
     end;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtNLote.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_M_CRP.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;
        txtNLote.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 102;
            pnlCorTamanho.Top := 12;
            pnlCorTamanho.Width := 275;

            lblCor.Left         := 140;
            lblCor.Visible      := True;

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
                  pnlCorTamanho.Left  := 102;
                  pnlCorTamanho.Top   := 12;
                  pnlCorTamanho.Width := 140;
                  lblTamanho.Visible  := True;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := False;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 102;
                  pnlCorTamanho.Top := 12;
                  pnlCorTamanho.Width := 140;
                  lblTamanho.Visible  := False;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := True;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_CRP.dbGridRowChanged(Sender: TObject);
begin
  inherited;
   if (not dmGeral.PCP_CD_M_CRP.IsEmpty) then
    begin
     if (dmGeral.PCP_CD_M_CRP_ITE.RecordCount>0) then
       begin
         if(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').AsString<>'') then
           begin
             dmGeral.BusLoteItem(dmGeral.PCP_CD_M_CRP.FieldByName('ID_EMPRESA').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').text,
                           dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').text);
             if dmGeral.EST_CD_M_LOT.IsEmpty then
                begin
                  Showmessage('O registro de saldo deste lote não foi encontrado');
                  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text := '';
                  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE').Text := '';
                  txtEstoque.Text := '';
                  txtNLote.SetFocus;
                  abort;
                end
             else
                begin
                  txtEstoque.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
                end;
           end;
       end
       else
         begin
           txtEstoque.Text := '';
         end;
  end
  else
    begin
      txtEstoque.Text := '';
    end;
end;

procedure TPCP_FM_M_CRP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_CRP.Close;
  FreeAndNil(PCP_FM_M_CRP);
end;

procedure TPCP_FM_M_CRP.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CRP.Close;
  dmGeral.PCP_CD_M_CRP.Data := dmGeral.PCP_CD_M_CRP.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_CRP.Open;

  dmGeral.AtualizarGridItens(grdItens,'INT_NOMEITE',16,12);
  dmGeral.AtualizarGridItens(grdBaixas,'INT_NOMEITE',16,12);

  dmSgq.BusRecipiente(1,'%');
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusGrupoEst(1,'%');

  xbusca_item:='ID_ITEM';
  xid_grupo := '';

  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = false then
     begin
       cbbAlmoxarifado.Enabled := false;
       cbbAlmoxarifado.Color   := $DADADA;
     end;
end;

procedure TPCP_FM_M_CRP.FormShow(Sender: TObject);
begin
  inherited;
//  grdItens.OnRowChanged := nil;
end;

procedure TPCP_FM_M_CRP.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     txtEstoque.Text := '';
     grdItensIButton.Enabled := False;
     if dmGeral.PCP_CD_M_CRP_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_CRP_ITE.Delete;
     dmGeral.PCP_CD_M_CRP_ITE.Edit;


     if (not dmGeral.PCP_CD_M_CRP.IsEmpty) then
       begin
        if(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').AsString<>'') then
          begin
            dmGeral.BusLoteItem(dmGeral.PCP_CD_M_CRP.FieldByName('ID_EMPRESA').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').text,
                      dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').text);
          if dmGeral.EST_CD_M_LOT.IsEmpty then
             begin
               Showmessage('O registro de saldo deste lote não foi encontrado');
               dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text := '';
               dmGeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE').Text := '';
               txtEstoque.Text := '';
               txtNLote.SetFocus;
               abort;
             end
         else
            begin
              txtEstoque.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
            end;
       end;
      end
      else
        begin
          txtEstoque.Text := '';
        end;

  finally
    grdItensIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_CRP.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = False then
     pnlItens.Enabled := True;

  dmGeral.PCP_CD_M_CRP_ITE.Cancel;

  if dmGeral.PCP_CD_M_CRP_ITE.IsEmpty then
     begin
       dmGeral.PCP_CD_M_CRP_ITE.Append;
       pnlItens.Enabled := True;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_CRP_ITE.Edit;
       pnlItens.Enabled := True;
       txtNLote.SetFocus;
     end;
end;

procedure TPCP_FM_M_CRP.grdItensRowChanged(Sender: TObject);
begin
  inherited;

  if (not dmGeral.PCP_CD_M_CRP.IsEmpty) then
    begin
     if (dmGeral.PCP_CD_M_CRP_ITE.RecordCount>0) then
       begin
         if(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').AsString<>'') then
           begin
             dmGeral.BusLoteItem(dmGeral.PCP_CD_M_CRP.FieldByName('ID_EMPRESA').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').text,
                           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').text,
                           dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').text);
             if dmGeral.EST_CD_M_LOT.IsEmpty then
               begin
                 Showmessage('O registro de saldo deste lote não foi encontrado');
                 dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text := '';
                 dmGeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE').Text := '';
                 txtEstoque.Text := '';
                 txtNLote.SetFocus;
                 abort;
               end
             else
               begin
                 txtEstoque.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
               end;
           end;
       end
     else
       begin
         txtEstoque.Text := '';
       end;
  end
  else
    begin
      txtEstoque.Text := '';
    end;
end;

procedure TPCP_FM_M_CRP.pnlItensExit(Sender: TObject);
begin
  inherited;

  if (btnAddItens.Focused) or (grdItens.Focused) or (cbbCor.Focused) or
     (cbbTamanho.Focused) or (not grdItensIButton.Enabled) then
      begin
        //

      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.PCP_CD_M_CRP_ITE.Cancel;
          dmGeral.PCP_CD_M_CRP_ITE.Edit;

          finally
             pnlItens.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_M_CRP.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;


           dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

            dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_CRP.txtBuscaItemExit(Sender: TObject);
var
  item: string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btnAddItens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or (txtNLote.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser preenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnlItens.Enabled := false;
             exit;
           end;
     end;



  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text  := '';
  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text  := '';

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
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text := '';
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text  := '';
       exit;
     end;

  if (dmGeral.PCP_CD_M_CRP.FieldByName('ID_GRUPO').Text <> dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').Text) then
     begin
       txtBuscaItem.SetFocus;
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text := '';
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text  := '';
       ShowMessage('Item não faz parte do grupo selecionado!');
       exit;
     end;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEITE').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.PCP_CD_M_CRP_ITE.FieldByName('INT_NOMEUND').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
     pnlItens.onExit := nil;
     ChamaCorTamanho;
  finally
     pnlItens.OnExit := pnlItensExit;
  end;

end;



procedure TPCP_FM_M_CRP.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TPCP_FM_M_CRP.Atualizar_xBusca;
begin
   if xbusca_item = 'ID_ITEM' then
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

procedure TPCP_FM_M_CRP.txtNLoteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtBuscaItem.Focused or
     grdItens.Focused or (not grdItensIButton.Enabled) then
     begin
       Exit;
     end;


  if not (trim(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
     begin
         Showmessage('O campo "Nº do lote" deve ser preenchido!!');
         txtNLote.SetFocus;
         abort;
     end;

  dmGeral.BusLoteItem(dmGeral.PCP_CD_M_CRP.FieldByName('ID_EMPRESA').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_ITEM').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_COR').text,
                      dmGeral.PCP_CD_M_CRP_ITE.FieldByName('ID_TAMANHO').text,
                      dmGeral.PCP_CD_M_CRP.FieldByName('ID_ALMOXARIFADO').text);
  if dmGeral.EST_CD_M_LOT.IsEmpty then
     begin
       Showmessage('O registro de saldo deste lote não foi encontrado');
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('NUM_LOTE').text := '';
       dmGeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE').Text := '';
       txtEstoque.Text := '';
       txtNLote.SetFocus;
       abort;
     end
  else
    begin
       txtEstoque.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
    end;
  
end;

procedure TPCP_FM_M_CRP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_CRP.txtQtdeExit(Sender: TObject);
begin
  inherited;
 { if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end; }

  if txtBuscaItem.Focused or grdItens.Focused or txtNLote.Focused  then
     begin
       Exit;
     end;


  if not (dmGeral.TesValQtde(dmGeral.PCP_CD_M_CRP_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       Abort;
     end;

  dmGeral.PCP_CD_M_CRP_ITE.Post;

  pnlItens.Enabled := False;

  btnAddItens.SetFocus;

end;

procedure TPCP_FM_M_CRP.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.PCP_CD_M_CRP.FieldByName('ID_RESPONSAVEL').AsInteger :=
                   PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

           dmGeral.PCP_CD_M_CRP.FieldByName('INT_NOMERES').AsString :=
                   PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_CRP.txtResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.BUS_CD_C_FUN.Close;

  dmGeral.PCP_CD_M_CRP.FieldByName('INT_NOMERES').Text := '';

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, txtResponsavel.Text]));

  dmGeral.PCP_CD_M_CRP.FieldByName('INT_NOMERES').AsString :=
       dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

  dmGeral.PCP_CD_M_CRP.FieldByName('ID_RESPONSAVEL').AsInteger :=
       dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
end;

end.
