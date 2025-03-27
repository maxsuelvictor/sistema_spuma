unit PCP_UN_M_ROM_ICF_REE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids,
  vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, Vcl.StdCtrls, Datasnap.DBClient,
  Vcl.Mask, Vcl.DBCtrls;

type
  TPCP_FM_M_ROM_ICF_REE = class(TForm)
    Label1: TLabel;
    txtPedido: TEdit;
    dsoPedIte: TwwDataSource;
    dgPedIte: TwwDBGrid;
    dsRomIcf: TDataSource;
    grdPedIcf: TwwDBGrid;
    grdItensIButton: TwwIButton;
    BUS_CD_M_ROM_ICF: TClientDataSet;
    btnBusPedido: TButton;
    Label51: TLabel;
    Label3: TLabel;
    btnSair: TButton;
    btnRealocar: TButton;
    lblItem: TLabel;
    txtItem: TDBEdit;
    txtCor: TDBEdit;
    txtQtde: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtConferido: TDBEdit;
    Label6: TLabel;
    txtQtdeSel: TEdit;
    Label7: TLabel;
    txtQtdeRestante: TEdit;
    Label8: TLabel;
    procedure btnBusPedidoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure grdPedIcfFieldChanged(Sender: TObject; Field: TField);
    procedure dgPedIteRowChanged(Sender: TObject);
    procedure btnRealocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM_ICF_REE: TPCP_FM_M_ROM_ICF_REE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_M_ROM_ICF_REE.btnBusPedidoClick(Sender: TObject);
var
  Itens_Sel: String;
begin


   if ( trim(txtPedido.Text) = '' ) or ( trim(txtPedido.Text) = '0' ) then
      begin
         ShowMessage('O código do pedido deve ser informado.');
         abort;
      end;

    dmgeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
        dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPedido.Text]));

    if dmgeral.BUS_CD_M_PED.IsEmpty then
       begin
         ShowMessage('Pedido não encontrado.');
         txtPedido.Text := '';
         txtPedido.SetFocus;
         abort;
       end;

    if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 0 then
       begin
         ShowMessage('Pedido de venda está esperando por aprovação.');
         txtPedido.Text := '';
         txtPedido.SetFocus;
         abort;
       end;

    if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 2 then
       begin
         ShowMessage('Este pedido de venda foi reprovado.');
         txtPedido.Text := '';
         txtPedido.SetFocus;
         abort;
       end;

    if dmgeral.BUS_CD_M_PED.FieldByName('situacao').AsInteger = 3 then
       begin
         ShowMessage('Este Pedido de venda já foi faturado.');
         txtPedido.Text := '';
         txtPedido.SetFocus;
         abort;
       end;


    if not (dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',txtPedido.Text,[])) then
       begin
         ShowMessage('Pedido de venda não encontrado neste relatório de carga.');
         txtPedido.Text := '';
         txtPedido.SetFocus;
         abort;
       end;


     if not (dmgeral.BUS_CD_M_PED.IsEmpty) then
        begin
           dgPedIte.DataSource := dsoPedIte;
           txtItem.datasource := dsoPedIte;
           txtCor.datasource := dsoPedIte;
           txtQtde.datasource := dsoPedIte;
           txtConferido.datasource := dsoPedIte;


           dmgeral.PCP_CD_M_ROM_PED_ITE.First;
           while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
              begin
                 if Itens_Sel <> '' then
                    begin
                      Itens_Sel :=
                      Itens_Sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString+'''';
                    end;

                 if Itens_Sel = '' then
                    begin
                      Itens_Sel :=
                      Itens_Sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString+'''';
                    end;
                 dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
              end;
           dmgeral.PCP_CD_M_ROM_PED_ITE.First;


           BUS_CD_M_ROM_ICF.Close;
           BUS_CD_M_ROM_ICF.Data :=
               BUS_CD_M_ROM_ICF.DataRequest(
                  VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,
                                   dmgeral.PCP_CD_M_ROM.FieldByName('id_rom').AsString,
                                   txtPedido.Text, Itens_Sel]));
        end;
     dmgeral.BUS_CD_M_PED.close;
end;

procedure TPCP_FM_M_ROM_ICF_REE.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TPCP_FM_M_ROM_ICF_REE.btnRealocarClick(Sender: TObject);
var
  QtdeSel, QtdeRealocada: Currency;
  pedido: string;
  IdRom: Integer;
  Itens_Sel: String;
  id_pedido_ite: string;
begin
  if dmGeral.PCP_CD_M_ROM_PED_ITE.IsEmpty then
     begin
       ShowMessage('Não há item selecionado para poder fazer a realocação.');
       exit;
     end;

  if dmGeral.PCP_CD_M_ROM_PED_ITE.IsEmpty then
     begin
       ShowMessage('Não há etiqueta selecionada para poder fazer a realocação.');
       exit;
     end;

  BUS_CD_M_ROM_ICF.Filtered := true;
  BUS_CD_M_ROM_ICF.filter := 'int_selecao = true';
  if BUS_CD_M_ROM_ICF.IsEmpty then
     begin
       ShowMessage('Nenhuma etiqueta foi selecionada para a realocação.');
       exit;
     end;

  id_pedido_ite :=  dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsString;

  dgPedIte.DataSource := nil;

  QtdeSel :=  StrToCurr(txtQtdeSel.Text);
  QtdeRealocada := 0;

  pedido := txtPedido.Text;

  dmGeral.PCP_CD_M_ROM_PED.First;

  BUS_CD_M_ROM_ICF.First;
  while not BUS_CD_M_ROM_ICF.eof do
     begin
       dmGeral.PCP_CD_M_ROM_PED.First;
       if (QtdeSel <> QtdeRealocada) then
           begin
             while not dmGeral.PCP_CD_M_ROM_PED.eof do
                 begin
                   dmGeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                   dmGeral.PCP_CD_M_ROM_PED_ITE.Filter := ' id_pedido = ' + BUS_CD_M_ROM_ICF.FieldByName('id_pedido').AsString +
                                                          ' and id_item = ' + BUS_CD_M_ROM_ICF.FieldByName('id_item').AsString +
                                                          ' and id_cor = ' + BUS_CD_M_ROM_ICF.FieldByName('id_cor').AsString +
                                                          ' and int_nomeite = ' + QuotedStr(BUS_CD_M_ROM_ICF.FieldByName('int_nomeite').AsString) +
                                                          ' and qtde_conferida > 0 ';

                   if not dmGeral.PCP_CD_M_ROM_PED_ITE.IsEmpty then
                      begin
                        dmGeral.PCP_CD_M_ROM_PED_ITE.Edit;
                        dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency :=
                                dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency - 1;
                        dmGeral.PCP_CD_M_ROM_PED_ITE.Post;

                        if dmGeral.PCP_CD_M_ROM_PED_ICF.locate('cod_barra', BUS_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
                           begin
                             dmGeral.PCP_CD_M_ROM_PED_ICF.edit;
                             dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsString := pedido;
                             dmGeral.PCP_CD_M_ROM_PED_ICF.post;
                           end;

                        if dmGeral.PCP_CD_M_ROM_ICF.locate('cod_barra', BUS_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
                           begin
                             dmGeral.PCP_CD_M_ROM_ICF.edit;
                             dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString := pedido;
                             dmGeral.PCP_CD_M_ROM_ICF.post;
                           end;

                        QtdeRealocada := QtdeRealocada + 1;
                      end
                   else
                      begin
                        dmGeral.PCP_CD_M_ROM_PED_ITE.Filtered :=  true;
                        dmGeral.PCP_CD_M_ROM_PED_ITE.Filter   :=  ' id_pedido  = ' + BUS_CD_M_ROM_ICF.FieldByName('id_pedido').AsString +
                                                                  ' and id_item  = ' + BUS_CD_M_ROM_ICF.FieldByName('id_item').AsString +
                                                                  ' and int_nomeite = ' + QuotedStr(BUS_CD_M_ROM_ICF.FieldByName('int_nomeite').AsString) +
                                                                  ' and qtde_conferida > 0 ';
                        if not dmGeral.PCP_CD_M_ROM_PED_ITE.IsEmpty then
                           begin
                             dmGeral.PCP_CD_M_ROM_PED_ITE.Edit;

                             dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency :=
                                dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency - 1;
                             dmGeral.PCP_CD_M_ROM_PED_ITE.Post;


                             if dmGeral.PCP_CD_M_ROM_PED_ICF.locate('cod_barra', BUS_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
                                begin
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.edit;
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsString := pedido;
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.post;
                                end;

                             if dmGeral.PCP_CD_M_ROM_ICF.locate('cod_barra', BUS_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
                                begin
                                  dmGeral.PCP_CD_M_ROM_ICF.edit;
                                  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString := pedido;
                                  dmGeral.PCP_CD_M_ROM_ICF.post;
                                end;

                             QtdeRealocada := QtdeRealocada + 1;
                           end;
                      end;
                   dmGeral.PCP_CD_M_ROM_PED_ITE.Filtered := false;

                   dmGeral.PCP_CD_M_ROM_PED.Next;
                 end;
           end;
       BUS_CD_M_ROM_ICF.Next;
     end;



  BUS_CD_M_ROM_ICF.First;

  if QtdeRealocada > 0 then
     begin
        if dmGeral.PCP_CD_M_ROM_PED.Locate('id_pedido',pedido,[]) then
           begin
             if dmGeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite', id_pedido_ite, []) then
                begin
                   dmGeral.PCP_CD_M_ROM_PED_ITE.edit;

                   dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency :=
                        dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency + QtdeRealocada;

                   dmGeral.PCP_CD_M_ROM_PED_ITE.post;
                end;
           end;
        IdRom := dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_rom').AsInteger;

        dmGeral.PCP_CD_M_ROM.ApplyUpdates(0);

        dmGeral.PCP_CD_M_ROM.Close;
                      dmGeral.PCP_CD_M_ROM.Data :=
                      dmGeral.PCP_CD_M_ROM.DataRequest(
                              VarArrayOf([0, IdRom]));

        dmGeral.PCP_CD_M_ROM_PED.locate('id_pedido',pedido,[]);
        dmGeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite', id_pedido_ite, []);

        dmgeral.BUS_CD_M_PED.Close;
            dmGeral.BUS_CD_M_PED.Data :=
              dmGeral.BUS_CD_M_PED.DataRequest(
                VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPedido.Text]));

        Itens_Sel := '';

        if not (dmgeral.BUS_CD_M_PED.IsEmpty) then
            begin
               dgPedIte.DataSource := dsoPedIte;


               dmgeral.PCP_CD_M_ROM_PED_ITE.First;
               while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
                  begin
                     if Itens_Sel <> '' then
                        begin
                          Itens_Sel :=
                          Itens_Sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString+'''';
                        end;

                     if Itens_Sel = '' then
                        begin
                          Itens_Sel :=
                          Itens_Sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString+'''';
                        end;
                     dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
                  end;
               dmgeral.PCP_CD_M_ROM_PED_ITE.First;


               BUS_CD_M_ROM_ICF.Close;
               BUS_CD_M_ROM_ICF.Data :=
                   BUS_CD_M_ROM_ICF.DataRequest(
                      VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,
                                       dmgeral.PCP_CD_M_ROM.FieldByName('id_rom').AsString,
                                       txtPedido.Text, Itens_Sel]));
            end;
           dmgeral.BUS_CD_M_PED.close;
     end;


end;

procedure TPCP_FM_M_ROM_ICF_REE.dgPedIteRowChanged(Sender: TObject);
begin
   txtQtdeSel.Text := '0';
   txtQtdeRestante.Text := '0';

   txtQtdeRestante.Text := CurrToStr( dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsCurrency -
                                      dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency );
end;

procedure TPCP_FM_M_ROM_ICF_REE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_ROM_ICF_REE.FormShow(Sender: TObject);
begin
   txtQtdeSel.Text := '0';
   txtQtdeRestante.Text := '0';

   dgPedIte.DataSource := nil;

    BUS_CD_M_ROM_ICF.Close;
           BUS_CD_M_ROM_ICF.Data :=
               BUS_CD_M_ROM_ICF.DataRequest(
                  VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,
                                   -1,0,'''0''']));

    txtItem.datasource := nil;
    txtCor.datasource := nil;
    txtQtde.datasource := nil;
    txtConferido.datasource := nil;


end;

procedure TPCP_FM_M_ROM_ICF_REE.grdPedIcfFieldChanged(Sender: TObject;
  Field: TField);
var
  Qtde, RestaConferir: Currency;
begin
  if Field.FieldName = 'int_selecao' then
     begin
       {dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString]));

       if dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean then}

       if (dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_item').AsString =
           BUS_CD_M_ROM_ICF.FieldByName('id_item').AsString)  and

          (dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_nomeite').AsString =
           BUS_CD_M_ROM_ICF.FieldByName('int_nomeite').AsString) then
          begin
             if BUS_CD_M_ROM_ICF.FieldByName('int_selecao').AsBoolean then
                begin

                  RestaConferir := dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsCurrency -
                                   dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency;

                  if (RestaConferir = 0) then
                     begin
                       ShowMessage('Não há necessidade de realocar etiqueta para o item selecionado pois ele já está totalmente conferido.');
                       BUS_CD_M_ROM_ICF.cancel;
                       exit;
                     end;

                  qtde := StrToCurr(txtQtdeSel.Text);

                  RestaConferir := RestaConferir - qtde;

                  if not (RestaConferir > 0) then
                     begin
                       ShowMessage('Os itens já marcados para realocar já atende o item selecionado.');
                       BUS_CD_M_ROM_ICF.cancel;
                       exit;
                     end;

                  qtde := qtde + 1;
                  txtQtdeSel.Text := CurrToStr(qtde);

                  txtQtdeRestante.Text := CurrToStr( dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsCurrency -
                                          (dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency + qtde) );
                end
             else
                begin
                  qtde := StrToCurr(txtQtdeSel.Text);
                  if qtde > 0 then
                     begin
                       qtde := qtde - 1;
                       txtQtdeSel.Text := CurrToStr(qtde);
                     end;

                  txtQtdeRestante.Text := CurrToStr( dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsCurrency -
                                          (dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency + qtde));
                end;
          end
       else
          begin
            Showmessage('Esse item não corresponde com o item seleciondo para poder realocar.');
            BUS_CD_M_ROM_ICF.cancel;
          end;
     end;
end;

end.
