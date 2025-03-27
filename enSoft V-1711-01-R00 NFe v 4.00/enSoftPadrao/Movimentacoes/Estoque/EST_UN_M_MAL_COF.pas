unit EST_UN_M_MAL_COF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  vcl.wwdblook, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls,
  Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids, vcl.wwdbgrid, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc;

type
  TEST_FM_M_MAL_COF = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnItensReq: TPanel;
    pnItensMal: TPanel;
    pnRodape: TPanel;
    imgBotoesAtivo: TImageList;
    btnFinalizar: TButton;
    btnSair: TButton;
    gbItens: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnItensCof: TPanel;
    lblItem: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    txtUnidade: TDBText;
    txtItemDescricao: TDBText;
    txtBuscaItemCof: TJvDBComboEdit;
    Label9: TLabel;
    dsoIteReq: TwwDataSource;
    grdItensOprReq: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label1: TLabel;
    txtQtdeCof: TDBEdit;
    lblQtde: TLabel;
    procedure txtBuscaItemCofExit(Sender: TObject);
    procedure pnItensCofExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensEnter(Sender: TObject);
    procedure txtQtdeCofExit(Sender: TObject);
  private
    { Private declarations }
    procedure EstRetirarSdlCofMalIte;
     var
        xNroLoteAnt: String;
  public
    { Public declarations }
  end;

var
  EST_FM_M_MAL_COF: TEST_FM_M_MAL_COF;

implementation

{$R *.dfm}

uses EST_UN_M_MAL, uDmSgq, uDmGeral;

procedure TEST_FM_M_MAL_COF.btnFinalizarClick(Sender: TObject);
begin
  dmGeral.EST_CD_M_MAL_ITE.cancel;
  close;
end;

procedure TEST_FM_M_MAL_COF.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TEST_FM_M_MAL_COF.btn_Add_ItensClick(Sender: TObject);
begin

  pnItensCof.Enabled  := true;

  if dmGeral.EST_CD_M_MAL_ITE.State in [dsInsert,dsEdit] then
     begin
       if trim(txtQtdeCof.Text) = '' then
          begin
            ShowMessage('O campo "Qtde" deve ser preenchido.');
            txtQtdeCof.SetFocus;
            exit;
          end;

       if trim(txtBuscaItemCof.Text) = '' then
          begin
            ShowMessage('O campo "Nro do Lote" deve ser preenchido.');
            txtBuscaItemCof.SetFocus;
            exit;
          end;
     end;

  dmGeral.EST_CD_M_MAL_ITE.Insert;
  dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency := 1;

  txtBuscaItemCof.SetFocus;
end;

procedure TEST_FM_M_MAL_COF.EstRetirarSdlCofMalIte;
var
  num_lote: String;
  qtde,sldVirtualItem: Currency;
begin

   try

   if EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Locate('num_lote',dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString,[]) then
      begin

        num_lote := dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString;
        qtde     := dmGeral.EST_CD_M_MAL_ITE.FieldByName('qtde').AsCurrency;

        EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filtered := true;

        EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filter := ' num_lote = ' + num_lote +
                                                    ' and  int_conferido > 0 ';

        if not EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.IsEmpty then
           begin
             EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.First;
             while not EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.eof do
                 begin
                   EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Edit;
                   sldVirtualItem := EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency;
                   if qtde <= sldVirtualItem  then
                      begin
                        EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency :=
                            EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency - qtde;
                        qtde := 0;
                        EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Last;
                      end
                   else
                      begin
                        EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency :=
                            EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency - sldVirtualItem;
                        qtde := qtde - sldVirtualItem;
                      end;
                   EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Next;
                 end;
           end
      end;

   finally
      EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filtered := false;
      EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.First;
   end;

end;

procedure TEST_FM_M_MAL_COF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TEST_FM_M_MAL_COF.FormShow(Sender: TObject);
begin
  dmGeral.AtualizarGridItens(grdItensOprReq,'int_nomeite',12,8);
  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',16,12);

  btn_Add_ItensClick(self);
end;

procedure TEST_FM_M_MAL_COF.grdItensEnter(Sender: TObject);
begin
  dmGeral.EST_CD_M_MAL_ITE.cancel;
end;

procedure TEST_FM_M_MAL_COF.grdItensIButtonClick(Sender: TObject);
begin
try
   grdItensIButton.Enabled := false;
   if dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
      begin
        ShowMessage('Não há registro para excluir.');
        abort;
      end;

    EstRetirarSdlCofMalIte;
    dmGeral.EST_CD_M_MAL_ITE.Delete;

    btn_Add_ItensClick(self);
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_MAL_COF.grdItensMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //if pnItensCof.Enabled = false then
  //   pnItensCof.Enabled := true;

  dmGeral.EST_CD_M_MAL_ITE.cancel;

  pnItensCof.Enabled := false;

  btn_Add_Itens.SetFocus;
  //txtBuscaItemCof.SetFocus;

 { if dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_MAL_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.EST_CD_M_MAL_ITE.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;  }
end;

procedure TEST_FM_M_MAL_COF.pnItensCofExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnFinalizar.Focused then
           begin
             btnFinalizarClick(self);
             exit;
           end;
        if btnSair.Focused  then
           begin
              btnSairClick(Self);
              exit;
           end;

        dmGeral.EST_CD_M_MAL_ITE.Cancel;
        dmGeral.EST_CD_M_MAL_ITE.edit;

        {if not dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
           begin
             txtSaldo.Text := '';
             if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text) <> '' then
                begin
                   if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text) <> '' then
                      begin
                          dmGeral.BusLoteItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').text,
                                              dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').text);
                          if not dmGeral.EST_CD_M_LOT.IsEmpty then
                             txtSaldo.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
                      end
                   else
                      begin
                         if dmGeral.BusSaldoItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text,
                            dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,
                            saldo_fisico) then
                            begin
                               txtSaldo.Text := saldo_fisico;
                            end;
                      end;
                end;
           end; }
        finally
           pnItensCof.Enabled := false;
        end;
      end;

end;

procedure TEST_FM_M_MAL_COF.txtBuscaItemCofExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
  desc_cor, desc_tam, id_cor, id_tamanho, num_lote,msg : string;
  qtde: Currency;
  sldVirtualItem: Currency;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin
       if (btnFinalizar.Focused) or (btnSair.Focused) then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if txtQtdeCof.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       pnItensCof.Enabled := false;
       exit;

     end
  else
     begin
       if txtQtdeCof.Focused then
          begin
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
            exit;
          end;

       if (btn_Add_Itens.Focused) and (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString) = '')  then
          begin
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
            exit;
          end;

       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean = true then
          begin
             msg := '';
             if (dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado').AsInteger = 0)   or
                (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado').text) = '') then
                begin
                  msg := 'O campo "Almoxarifado" deve ser preenchido.'+#13+#10;
                end;
             if (dmGeral.EST_CD_M_MAL.FieldByName('int_indicadortme').AsInteger = 2) and
                ((dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado_dest').AsInteger = 0)   or
                (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado_dest').text) = '')) then
                begin
                  msg := 'O campo "Alm. Dest" deve ser preenchido.'+#13+#10;
                end;

             if (msg <> '') then
                begin
                  ShowMessage(msg);
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
                  abort;
                end;
          end;

       if (dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').AsInteger = 0)   or
          (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').text) = '') then
          begin
            ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
            abort;
          end;

       if dmGeral.EST_CD_M_MAL_ITE.state in [dsBrowse] then
          dmGeral.EST_CD_M_MAL_ITE.edit;
     end;


   dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text := '';
   dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';


   try
     pnItensCof.onExit := nil;
     if (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString) <> '') then
       begin
        dmGeral.EST_CD_M_LOT.Data :=
              dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([16, dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').AsString,
                                                       trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString)]));
        if dmGeral.EST_CD_M_LOT.IsEmpty then
           begin
             Showmessage('O registro de saldo deste lote não foi encontrado.');
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';

             txtBuscaItemCof.SetFocus;
             abort;
           end;
       end;

     dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_LOT.FieldByName('ID_ITEM').AsString]));

     if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
       begin
         ShowMessage('Digitação de nº do lote não é permitido para este item.');
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';
         txtBuscaItemCof.SetFocus;
         exit;
       end;

     dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString);
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_COMPRA').AsString;
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').AsString;

     dmGeral.BusCor(0,dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').AsString);
     if (not dmGeral.BUS_CD_C_COR.IsEmpty) then
       begin
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString :=
                 dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
       end;
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').AsString;
     dmGeral.BusTamanho(0,dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').AsString);
     if (not dmGeral.BUS_CD_C_TAM.IsEmpty) then
       begin
         dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString :=
                 dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
       end;

     if dmGeral.EST_CD_M_MAL_ITE.State in [dsInsert] then
       begin
        pnItensCof.Enabled := true;

        id_item       := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString;
        id_busca_item := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
        desc          := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString;
        und           := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString;
        id_cor        := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString;
        id_tamanho    := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString;
        num_lote      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString;
        desc_cor      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString;
        desc_tam      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString;
        qtde          := dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency;

        dmGeral.EST_CD_M_MAL_ITE.cancel;



        if(dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_MAL_ITE,EST_FM_M_MAL.Name,id_item,id_cor,id_tamanho,
            dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,num_lote)) or
           (dmGeral.EST_CD_M_MAL_ITE.Locate('NUM_LOTE', num_lote,[])) then
            begin
              dmGeral.EST_CD_M_MAL_ITE.Edit;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency :=
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency + qtde;

              {ShowMessage('Este nro de lote já foi digitado em outro registro.');
              dmGeral.EST_CD_M_MAL_ITE.Insert;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := '';
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := '';
              txtBuscaItem.SetFocus;
              abort; }
            end
          else
            begin
              dmGeral.EST_CD_M_MAL_ITE.Insert;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := id_item;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := desc;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := und;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := id_cor;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := num_lote;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency        := qtde;
            end;
     end;


     if not EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Locate('num_lote',num_lote,[]) then
        begin
          Showmessage('Lote não encontrado na requisição.');
          dmGeral.EST_CD_M_MAL_ITE.cancel;
          dmGeral.EST_CD_M_MAL_ITE.Insert;
          dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency  := 1;
          txtBuscaItemCof.SetFocus;
          exit;
        end;

     EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filtered := true;

     EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filter := ' num_lote = ' + num_lote + ' and int_saldo > 0 ' +
                                                 ' and int_saldo <> int_conferido '   ;

     if not EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.IsEmpty then
        begin
          EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.First;
          while not EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.eof do
             begin
               EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Edit;
               sldVirtualItem := EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_saldo').AsCurrency -
                                 EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency;
               if sldVirtualItem >= qtde then
                  EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency :=
                      EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.FieldByName('int_conferido').AsCurrency + qtde
               else
                  begin
                    Showmessage('Quantidade excedeu o saldo restante!' + #13 +
                                'Saldo restante: ' + CurrToStr(sldVirtualItem) + #13 +
                                'Qtde informada: ' + Currtostr(Qtde));
                    dmGeral.EST_CD_M_MAL_ITE.cancel;
                    dmGeral.EST_CD_M_MAL_ITE.Insert;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency  := 1;
                    txtBuscaItemCof.SetFocus;
                    exit;
                  end;
               EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Next;
             end;
        end
     else
        begin
          ShowMessage('Quantidade não pode ser inserida pois a conferência deste item já foi feita.');
          dmGeral.EST_CD_M_MAL_ITE.cancel;
          dmGeral.EST_CD_M_MAL_ITE.Insert;
          dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency  := 1;
          txtBuscaItemCof.SetFocus;
          exit;
        end;


     dmGeral.EST_CD_M_MAL_ITE.Post;
     dmGeral.EST_CD_M_MAL_ITE.Insert;
     dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency  := 1;
     txtBuscaItemCof.SetFocus;

   finally
     pnItensCof.OnExit := pnItensCofExit;
     EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.Filtered := false;
     EST_FM_M_MAL.BUS_CD_M_OPR_REQ_ITE.First;
   end;

end;

procedure TEST_FM_M_MAL_COF.txtQtdeCofExit(Sender: TObject);
begin

  if (btnFinalizar.Focused) or (btnSair.Focused) then
      begin
        exit;
      end;

  if not (dmGeral.TesValQtde(dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtdeCof.SetFocus;
       abort;
     end;
end;

end.
