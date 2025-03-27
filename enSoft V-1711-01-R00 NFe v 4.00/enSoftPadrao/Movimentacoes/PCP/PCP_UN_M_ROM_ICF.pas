unit PCP_UN_M_ROM_ICF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.Mask, vcl.Wwdbedit,
  System.IniFiles,Data.DB, winapi.MMSystem;

type
  TPCP_FM_M_ROM_ICF = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    dsRomIte: TDataSource;
    dsRomIcf: TDataSource;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    pnRodape: TPanel;
    btnGravar: TButton;
    btnSair: TButton;
    grdPedIcf: TwwDBGrid;
    grdItensIButton: TwwIButton;
    Panel4: TPanel;
    pnlIte: TPanel;
    lblCodBarra: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    txtIdItemButton: TSpeedButton;
    txtDescricao: TwwDBEdit;
    txtUnd: TwwDBEdit;
    txtIdItem: TwwDBEdit;
    pnlQtde: TPanel;
    Label19: TLabel;
    txtQtdeInf: TEdit;
    btnAddIte: TBitBtn;
    pnTotalItens: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    txtTotalItensCarg: TEdit;
    txtTotalItensConfCarg: TEdit;
    Panel7: TPanel;
    Panel6: TPanel;
    grdRomItens: TwwDBGrid;
    Label1: TLabel;
    txtPedido: TEdit;
    btnRealocarEtiq: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtIdItemExit(Sender: TObject);
    procedure btnAddIteClick(Sender: TObject);
    procedure txtQtdeInfExit(Sender: TObject);
    procedure grdRomItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtPedidoExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure txtIdItemEnter(Sender: TObject);
    procedure btnRealocarEtiqClick(Sender: TObject);
  private
    { Private declarations }
     var
      xCorSistema:string;
      xseq:integer;
      x_id_rom_ite: integer;
      x_id_cor_rom_ite: Integer; // Maxsuel Victor, 24/03/2025 - Utilizado quando retira um código de barra da carga
  public
    { Public declarations }
    procedure PcpRetirarItensDoRomaneio;
    function  AtualizarQtdeConferida(incrementar:boolean;id_item,id_cor,id_tamanho:integer; nome_ite: String):Boolean;
    function  AtualizarQtdeConferidaPed(incrementar:boolean;id_item,id_cor,id_tamanho,id_rom_icf,pedido:integer; nome_ite: String):Boolean;
    procedure ExibirTotais;
    procedure AtualizarStatusIte;
    procedure AtualizarStatusPed;
    procedure CarregaCores;
    procedure InserirPedIcf;
    function UltimaSeqGerada:integer;
      var
        RetirarItem: Boolean;
        xPermiteOutraCor: Boolean;

          // Variável criada em 16/06/2020, Maxsuel Victor, com o objetivo
          // de quando o usário informar um item Personalizado , o sistema não precisará
          // fazer um teste mais de 1 vez, num código do onExit do txtIdItem.
        xVerificar: Boolean;

  end;

var
  PCP_FM_M_ROM_ICF: TPCP_FM_M_ROM_ICF;


implementation

{$R *.dfm}

uses uDmGeral, uProxy, PCP_UN_M_ROM_ICF_REE;

function TPCP_FM_M_ROM_ICF.AtualizarQtdeConferida(incrementar: boolean; id_item,
  id_cor, id_tamanho: integer; nome_ite: String): Boolean;
begin
  Result := false;
   if incrementar = true then
     begin
       if dmgeral.PCP_CD_M_ROM_ITE.Locate('ID_ITEM;NOME_ITE',VarArrayOf([id_item,nome_ite]),[]) then
          begin
             try
               dmgeral.PCP_CD_M_ROM_ITE.Filtered := true;
               //dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) + ' AND ID_COR = ' + inttostr(id_cor) ;

               dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) + ' AND ID_COR = ' + inttostr(id_cor) +
                                                    ' AND NOME_ITE = ' + QuotedStr(nome_ite);

               if  ((dmgeral.PCP_CD_M_ROM_ITE.IsEmpty) or
                  ( dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                    dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsFloat)) then
                     //    dmgeral.PCP_CD_M_ROM_ITE.FieldByName('int_qtde_ped_ite').AsFloat ) then
                  begin
                    if (xPermiteOutraCor) then
                       begin
                         dmgeral.PCP_CD_M_ROM_ITE.Filtered := true;
                         dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) + ' AND NOME_ITE = ' + QuotedStr(nome_ite);
                       end;
                  end;

               //x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
               //x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

               dmgeral.PCP_CD_M_ROM_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
               dmgeral.PCP_CD_M_ROM_ITE.IndexName := 'IndQtdeConf';

               while not dmgeral.PCP_CD_M_ROM_ITE.eof do
                   begin
                     if not (dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                             dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsFloat) then
                             //dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsFloat) then
                        begin
                          dmgeral.PCP_CD_M_ROM_ITE.Edit;

                          dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                              dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat + 1;

                          dmgeral.PCP_CD_M_ROM_ITE.Post;
                          dmgeral.PCP_CD_M_ROM_ITE.Last;
                          Result := true;
                        end;
                     dmgeral.PCP_CD_M_ROM_ITE.Next
                   end;
             finally
               dmgeral.PCP_CD_M_ROM_ITE.Filtered := false;
               dmgeral.PCP_CD_M_ROM_ITE.DeleteIndex('IndQtdeConf');
             end;
         end;
     end
   else
     begin
        if dmgeral.PCP_CD_M_ROM_ITE.Locate('ID_ITEM;NOME_ITE',VarArrayOf([id_item,nome_ite]),[]) then
         begin
           try
             dmgeral.PCP_CD_M_ROM_ITE.Filtered := true;

             dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                  ' AND ID_COR = ' + inttostr(id_cor) +
                                                  ' AND NOME_ITE = ' + QuotedStr(nome_ite) +
                                                  ' AND QTDE_CONFERIDA > 0 ';

             { dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                  ' AND ID_COR = ' + inttostr(id_cor) +
                                                  ' AND QTDE_CONFERIDA > 0 '; }


             if (dmgeral.PCP_CD_M_ROM_ITE.IsEmpty) then
                 begin
                   dmgeral.PCP_CD_M_ROM_ITE.Filtered := true;
                   dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                        ' AND NOME_ITE = ' + QuotedStr(nome_ite) +
                                                        ' AND QTDE_CONFERIDA > 0 ';
                 end;
             //x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
             //x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

             dmgeral.PCP_CD_M_ROM_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
             dmgeral.PCP_CD_M_ROM_ITE.IndexName := 'IndQtdeConf';

             while not dmgeral.PCP_CD_M_ROM_ITE.eof do
               begin
                  if dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat > 0 then
                     begin
                       dmgeral.PCP_CD_M_ROM_ITE.Edit;

                       dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                                dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsFloat - 1;

                       dmgeral.PCP_CD_M_ROM_ITE.Post;
                       dmgeral.PCP_CD_M_ROM_ITE.Last;
                       Result := true;
                     end;
                  dmgeral.PCP_CD_M_ROM_ITE.Next;
               end;
           finally
             dmgeral.PCP_CD_M_ROM_ITE.Filtered := false;
             dmgeral.PCP_CD_M_ROM_ITE.DeleteIndex('IndQtdeConf');
           end;
         end;
     end;
end;

function TPCP_FM_M_ROM_ICF.AtualizarQtdeConferidaPed(incrementar: boolean;
  id_item, id_cor, id_tamanho, id_rom_icf, pedido: integer; nome_ite: String): Boolean;
var
   continua: Boolean;
   pedidoNovo: integer;
   pedidoAntigo,cod_barra, int_nomeite: String;
begin
   Result := false;

   continua := true;

   x_id_cor_rom_ite := 0;


   if incrementar = true then
      begin
         dmgeral.PCP_CD_M_ROM_PED.IndexFieldNames := 'INT_ID_OPR;INT_DTAPEDIDO;INT_HORPEDIDO';
         dmgeral.PCP_CD_M_ROM_PED.First;
         dmgeral.PCP_CD_M_ROM_PED.recordcount;

         while (not dmgeral.PCP_CD_M_ROM_PED.Eof) and continua do
             begin
               if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM;INT_NOMEITE',VarArrayOf([id_item,nome_ite]),[]) then
                  begin
                     try
                       dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                       //dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                       //                                         ' AND ID_COR = ' + inttostr(id_cor);
                       dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                                ' AND ID_COR = ' + inttostr(id_cor) +
                                                                ' AND INT_NOMEITE = ' + QuotedStr(nome_ite);

                       if (dmgeral.PCP_CD_M_ROM_PED_ITE.IsEmpty) or
                          ( dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                            dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat ) then
                          begin
                             if (xPermiteOutraCor) then
                                begin
                                  dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                                  dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                                           ' AND INT_NOMEITE = ' + QuotedStr(nome_ite);
                                end;

                             if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item',dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                                                      []) then
                                begin
                                  x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;
                                end;
                          end
                       else
                          begin
                            if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;id_cor;id_tamanho;nome_ite',
                                          VarArrayof([dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                                                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger,
                                                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger,
                                                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString]),[]) then
                               begin
                                  x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;
                               end;
                          end;

                       //   x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
                       //   x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

                       dmgeral.PCP_CD_M_ROM_PED_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
                       dmgeral.PCP_CD_M_ROM_PED_ITE.IndexName := 'IndQtdeConf';

                       while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
                           begin
                             if not (dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                                     dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat) then
                                     //dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsFloat) then
                                begin

                                  continua := false;

                                  dmgeral.PCP_CD_M_ROM_PED_ITE.Edit;

                                  dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat + 1;
                                  //-----
                                  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString :=
                                          dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsString;
                                  //-----

                                  InserirPedIcf;

                                  dmgeral.PCP_CD_M_ROM_PED_ITE.Post;
                                  dmgeral.PCP_CD_M_ROM_PED_ITE.Last;
                                  Result := true;
                                end;
                             dmgeral.PCP_CD_M_ROM_PED_ITE.Next
                           end;
                     finally
                       dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := false;
                       dmgeral.PCP_CD_M_ROM_PED_ITE.DeleteIndex('IndQtdeConf');
                     end;
                  end;
               dmGeral.PCP_CD_M_ROM_PED.Next;
             end;
         dmGeral.PCP_CD_M_ROM_PED.First;
      end
   else
     begin
       //showmessage(dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString);

       dmgeral.PCP_CD_M_ROM_PED.IndexFieldNames := 'INT_ID_OPR;INT_DTAPEDIDO;INT_HORPEDIDO';
       dmgeral.PCP_CD_M_ROM_PED.First;

       if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
          begin
            if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM',VarArrayOf([id_item]),[]) then
               begin
                 try
                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                            ' AND ID_COR = ' + inttostr(id_cor) +
                                                            ' AND INT_NOMEITE = ' + QuotedStr(nome_ite) +
                                                            ' AND QTDE_CONFERIDA > 0 ';

                   if (dmgeral.PCP_CD_M_ROM_PED_ITE.IsEmpty) then
                       begin
                         // Quando não acha o item e cor que está no código de barra , o sistema irá buscar no ped_ite
                            // o item que tem o id_item e nome_ite igual

                         dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                         dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   :=    ' ID_ITEM = ' + inttostr(id_item)        +
                                                                     ' AND INT_NOMEITE = ' + QuotedStr(nome_ite) +
                                                                   + ' AND QTDE_CONFERIDA > 0 ';

                         // Maxsuel Victor, 24/03/25 - Utilizado para retirar a QTDE CONFERIDA, do ROM_ITE, da mesma cor que foi
                            // retirada do pedido de venda.

                         x_id_cor_rom_ite :=  dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger;
                         // -------------------------------------------------------------------------------

                         // Maxsuel Victor, 24/03/25 - No if abaixo foi adicionado a cor e nomte do item
                         if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;INT_NOMEITE;id_cor',VarArrayof([id_item,nome_ite,x_id_cor_rom_ite])) then
                            begin
                               x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;
                            end;

                       end
                   else
                      begin
                        if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;id_cor;id_tamanho;nome_ite',
                                      VarArrayof([dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                                                  dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger,
                                                  dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger,
                                                  dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString]),[]) then
                           begin
                              x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;
                           end;
                      end;
                   //   x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
                   //   x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

                   dmgeral.PCP_CD_M_ROM_PED_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
                   dmgeral.PCP_CD_M_ROM_PED_ITE.IndexName := 'IndQtdeConf';

                   while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
                     begin
                        if (dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_cor').AsInteger = x_id_cor_rom_ite ) and
                           (dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString = nome_ite ) and
                           (dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat > 0) then
                           begin

                             continua := false;

                             dmgeral.PCP_CD_M_ROM_PED_ITE.Edit;

                             dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat - 1;

                             // Maxsuel Victor, em 18/04/2019
                             // O código abaixo foi remanejado para o BeforePost de PCP_TB_M_ROM_ICF

                             {if dmGeral.PCP_CD_M_ROM_PED_ICF.Locate('cod_barra',dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
                                begin
                                  if pedido <> dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsInteger then
                                     begin
                                        pedidoNovo := dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsInteger;

                                        if dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('id_pedido;id_item;id_cor;id_tamanho;nome_ite',
                                            VarArrayof([pedido,
                                                         dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                                                         dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                                                         dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger,
                                                         dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMEITE').AsString]),[]) then
                                            begin
                                              dmgeral.PCP_CD_M_ROM_PED_ICF.edit;
                                              dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsInteger := pedidoNovo;
                                              dmgeral.PCP_CD_M_ROM_PED_ICF.post;
                                            end;
                                     end;
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.delete;
                                end; }

                             dmgeral.PCP_CD_M_ROM_PED_ITE.Post;
                             dmgeral.PCP_CD_M_ROM_PED_ITE.Last;
                             Result := true;
                           end;
                        dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
                     end;
                 finally
                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := false;
                   dmgeral.PCP_CD_M_ROM_PED_ITE.DeleteIndex('IndQtdeConf');
                 end;

                 // Ao retirar um produto (etiqueta) da carga, pode acontecer que essa etiqueta esteja com
                 // código de um outro pedido, daí o sistema tem que pegar uma outra etiqueta da carga, com o mesmo id_item,
                 // id_cor, id_tamanho e nome_ite igual e alterar o id_pedido para o id_pedido da etiqueta que foi deletada.
                 // Lembrando que o sistema irá atrás de uma etiqueta do pedido que o usuário digitou na hora de retirar o produto.
                 if pedido <> dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsInteger then
                    begin
                      int_nomeite := dmgeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString;
                      pedidoNovo  := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsInteger;

                      dmGeral.PCP_CD_M_ROM_ICF.BeforePost := nil;

                      dmGeral.PCP_CD_M_ROM_ICF.delete;

                      dmGeral.PCP_CD_M_ROM_ICF.BeforePost := dmgeral.PCP_CD_M_ROM_ICFBeforePost;

                      if dmGeral.PCP_CD_M_ROM_PED.Locate('id_pedido',pedido,[]) then
                         begin
                           if dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('id_pedido;id_item;id_cor;id_tamanho;int_nomeite',
                              VarArrayof([pedido, id_item, id_cor, id_tamanho, int_nomeite]),[]) then
                              begin
                                 cod_barra := dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString;

                                 dmgeral.PCP_CD_M_ROM_PED_ICF.edit;
                                 dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsInteger := pedidoNovo;
                                 dmgeral.PCP_CD_M_ROM_PED_ICF.post;

                                 if dmgeral.PCP_CD_M_ROM_ICF.Locate('cod_barra',VarArrayOf([cod_barra]),[]) then
                                    begin
                                      dmgeral.PCP_CD_M_ROM_ICF.edit;
                                      dmgeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsInteger := pedidoNovo;
                                      dmgeral.PCP_CD_M_ROM_ICF.post;
                                    end;
                              end
                           else
                              begin
                                if dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('id_pedido;id_item',
                                   VarArrayof([pedido, id_item]),[]) then
                                   begin
                                       cod_barra := dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString;

                                       dmgeral.PCP_CD_M_ROM_PED_ICF.edit;
                                       dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsInteger := pedidoNovo;
                                       dmgeral.PCP_CD_M_ROM_PED_ICF.post;

                                       if dmgeral.PCP_CD_M_ROM_ICF.Locate('cod_barra',VarArrayOf([cod_barra]),[]) then
                                          begin
                                            dmgeral.PCP_CD_M_ROM_ICF.edit;
                                            dmgeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsInteger := pedidoNovo;
                                            dmgeral.PCP_CD_M_ROM_ICF.post;
                                          end;
                                    end
                              end;
                         end;
                    end
                 else
                    begin
                      dmGeral.PCP_CD_M_ROM_ICF.BeforePost := nil;

                      dmGeral.PCP_CD_M_ROM_ICF.delete;

                      dmGeral.PCP_CD_M_ROM_ICF.BeforePost := dmgeral.PCP_CD_M_ROM_ICFBeforePost;
                    end;
               end;
          end;
       dmgeral.PCP_CD_M_ROM_PED.First;
     end;
end;

procedure TPCP_FM_M_ROM_ICF.AtualizarStatusIte;
begin
   { TODO -oMaxsuel -cCriação : Criado em 09/04/19 }
 {  dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;

   if dmGeral.PCP_CD_M_ROM_PED_ITE.RecordCount >0 then
     begin
       dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 2;
       dmGeral.PCP_CD_M_ROM_PED_ITE.First;
       while not dmGeral.PCP_CD_M_ROM_PED_ITE.EOF do
         begin
           //if dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsFloat <>
           if dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat <>
                     dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat   then
             begin
                dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 1;
                break;
             end;
           dmGeral.PCP_CD_M_ROM_PED_ITE.Next;
         end;
     end;  }
end;

procedure TPCP_FM_M_ROM_ICF.AtualizarStatusPed;
begin
   { TODO -oMaxsuel -cCriação : Criado em 03/08/17 }


  dmgeral.PCP_CD_M_ROM_PED.IndexFieldNames := 'INT_ID_OPR;INT_DTAPEDIDO;INT_HORPEDIDO';
  dmgeral.PCP_CD_M_ROM_PED.First;

  while (not dmgeral.PCP_CD_M_ROM_PED.Eof) do
     begin
       dmGeral.PCP_CD_M_ROM_PED.edit;
       dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;

       if dmGeral.PCP_CD_M_ROM_PED_ITE.RecordCount >0 then
          begin
            dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 2;
            dmGeral.PCP_CD_M_ROM_PED_ITE.First;
            while not dmGeral.PCP_CD_M_ROM_PED_ITE.EOF do
               begin
                 if dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat <>
                           dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat   then
                    begin
                      dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 1;
                      break;
                    end;
                 dmGeral.PCP_CD_M_ROM_PED_ITE.Next;
               end;
          end;
       dmGeral.PCP_CD_M_ROM_PED.Post;

       dmGeral.PCP_CD_M_ROM_PED.Next;
     end;
  dmGeral.PCP_CD_M_ROM_PED.First;
end;

procedure TPCP_FM_M_ROM_ICF.btnRealocarEtiqClick(Sender: TObject);
begin
    Application.CreateForm(TPCP_FM_M_ROM_ICF_REE,PCP_FM_M_ROM_ICF_REE);
    PCP_FM_M_ROM_ICF_REE.ShowModal;
    FreeAndNil(PCP_FM_M_ROM_ICF_REE);
end;

procedure TPCP_FM_M_ROM_ICF.btnAddIteClick(Sender: TObject);
begin
  dmGeral.PCP_CD_M_ROM_ICF.Insert;

  // Variável criada em 16/06/2020, Maxsuel Victor, com o objetivo
  //  de quando o usário informar um item Personalizado , o sistema não precisará
  //  fazer um teste mais de 1 vez, num código do onExit do txtIdItem.
  xVerificar := true;

  // Comentário por Maxsuel Victor, 02/08/2019
  // txtPedido.Text := '';
  pnlIte.Enabled := true;
  if RetirarItem then
     begin
        if trim(txtPedido.Text) = '' then
           txtPedido.SetFocus
        else
           txtIdItem.SetFocus;
     end
  else
     txtIdItem.SetFocus;
end;

procedure TPCP_FM_M_ROM_ICF.btnGravarClick(Sender: TObject);
var
  id_rom_ite:String;
begin

  if dmGeral.PCP_CD_M_ROM_ICF.RecordCount = 0 then
    begin
      ShowMessage('Nenhum dos itens da carga foram conferidos.');
      exit;
    end;

   if dmGeral.PCP_CD_M_ROM_ITE.State in [dsBrowse] then
      begin
        dmGeral.PCP_CD_M_ROM_PED.Edit;
      end;

   AtualizarStatusIte;
   //AtualizarStatusPed;

   id_rom_ite:= dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsString;
   if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
     begin
        ShowMessage('A conferência dos itens foram salvo com sucesso.');
        dmGeral.PCP_CD_M_ROM.Edit;
        dmGeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([id_rom_ite]),[]);
        dmGeral.PCP_CD_M_ROM_ICF.Insert;
        pnlIte.Enabled := true;
        txtIdItem.SetFocus;
     end
   else
     begin
       ShowMessage('Falha ao gravar conferência dos itens da carga.');
     end;

end;

procedure TPCP_FM_M_ROM_ICF.btnSairClick(Sender: TObject);
begin
  dmGeral.PCP_CD_M_ROM_ICF.Cancel;
  Close;
end;

procedure TPCP_FM_M_ROM_ICF.CarregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlTop.Color := codCor;
end;

procedure TPCP_FM_M_ROM_ICF.Edit1Exit(Sender: TObject);
var
  codBarra: String;
  pedido: string;
begin

    if grdPedIcf.Focused or btnSair.Focused or btnGravar.Focused or grdRomItens.Focused then
       begin
         pnlIte.Enabled := false;
         //pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_ICF.Cancel;
         exit;
       end;

    codBarra := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString;

    if codBarra= '' then
       begin
         ShowMessage('O campo Cód. de barra deve ser preenchido.');
         txtIdItem.SetFocus;
         exit;
       end;

    pedido := txtPedido.Text;

    if pedido = '' then
       begin
         ShowMessage('O campo pedido deve ser preenchido.');
         txtPedido.SetFocus;
         exit;
       end;

    if not dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
       begin
         ShowMessage('Este pedido não foi encontrado na carga.');
         txtPedido.SetFocus;
         exit;
       end;


    dmgeral.PCP_CD_M_ROM_ICF.cancel;

    if not dmgeral.PCP_CD_M_ROM_ICF.Locate('cod_barra',VarArrayOf([codBarra]),[]) then
       begin
         dmgeral.PCP_CD_M_ROM_ICF.Insert;
         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
         ShowMessage('O código de barra não consta na conferência.');
         dmgeral.PCP_CD_M_ROM_ICF.cancel;
         btnAddIteClick(self);
         exit;
       end;

    x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;

    if  AtualizarQtdeConferida(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString) then
       begin

         AtualizarQtdeConferidaPed(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,0,strtoint(txtPedido.Text),
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString);

         dmGeral.PCP_CD_M_ROM_ICF.Delete;
         ExibirTotais;
         AtualizarStatusIte;

         if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
            begin
              dmGeral.PCP_CD_M_ROM.edit;
              dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
              txtPedido.Text := '';
              btnAddIteClick(self);
            end
         else
            begin
              dmGeral.PCP_CD_M_ROM.edit;
              ShowMessage('Falha ao deletar.');
              abort;
            end;
       end
    else
       begin
         dmgeral.PCP_CD_M_ROM_ICF.Insert;
         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
         txtPedido.Text := '';
         ShowMessage('O item não consta na conferência.');
         dmgeral.PCP_CD_M_ROM_ICF.cancel;
         btnAddIteClick(self);
       end;
end;

procedure TPCP_FM_M_ROM_ICF.ExibirTotais;
var
  QtdeTot,QtdeConf: Currency;
  id_rom_ite: integer;
begin
  txtTotalItensCarg.Text := '0';
  txtTotalItensConfCarg.Text := '0';

  id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;

  QtdeTot  := 0;
  QtdeConf := 0;

  dmGeral.PCP_CD_M_ROM_ITE.First;
  while not dmGeral.PCP_CD_M_ROM_ITE.eof do
    begin
     // QtdeTot  := QtdeTot +  dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency;
      QtdeTot  := QtdeTot +  dmGeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsCurrency;
      QtdeConf := QtdeConf + dmGeral.PCP_CD_M_ROM_ITE.FieldByName('qtde_conferida').AsCurrency;
      dmGeral.PCP_CD_M_ROM_ITE.Next;
    end;

  txtTotalItensCarg.Text     := currtostr(QtdeTot);
  txtTotalItensConfCarg.Text := currtostr(QtdeConf);

  dmGeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',id_rom_ite,[]);
end;

procedure TPCP_FM_M_ROM_ICF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AtualizarStatusPed;

  if not dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
     begin
       ShowMessage('Falha ao gravar conferência dos itens do pedido.');
     end
  else
     dmGeral.PCP_CD_M_ROM.edit;

  //FreeAndNil(PCP_FM_M_ROM_ICF);
end;

procedure TPCP_FM_M_ROM_ICF.FormCreate(Sender: TObject);
begin
  carregaCores;
  // pnlDados.Enabled:= False;
  WindowState := wsMaximized;
 // self.FormStyle := fsMDIChild;
end;

procedure TPCP_FM_M_ROM_ICF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_ROM_ICF.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


  { if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean=true) then
      begin
        cbbCor.Enabled := false;
        cbbCor.Color := $00DADADA;
      end;

   if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean=true) then
      begin
        cbbTamanho.Enabled := false;
        cbbTamanho.Color := $00DADADA;
      end;  }

    dmGeral.AtualizarGridItens(grdRomItens,'int_nomeite',20,10);
    dmGeral.AtualizarGridItens(grdPedIcf,'int_nomeite',20,10);

    xseq := UltimaSeqGerada;

    dmGeral.PCP_CD_M_ROM_ICF.IndexFieldNames := 'cod_barra';

    dmGeral.PCP_CD_M_ROM_ICF.Insert;
    pnlIte.Enabled := true;

    //txtIdItem.SetFocus;

    // frmSoftMenu.rbMenu.ShowTabGroups := false;

    ExibirTotais;

    btnAddIteClick(self);

    btnGravar.Height := 36;
    btnSair.Height   := 36;
   
end;

procedure TPCP_FM_M_ROM_ICF.grdItensIButtonClick(Sender: TObject);
var
  id_item,id_cor,id_tam:integer;
begin
   if dmGeral.PCP_CD_M_ROM_ICF.RecordCount >0 then
      begin
        x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;

        if  AtualizarQtdeConferida(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString) then
           begin

             AtualizarQtdeConferidaPed(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,0,strtoint(txtPedido.text),
                         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString);

             dmGeral.PCP_CD_M_ROM_ICF.Delete;
             ExibirTotais;
             AtualizarStatusIte;
             //AtualizarStatusPed;


             if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
               begin
                 dmGeral.PCP_CD_M_ROM.edit;
                 dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
               end
             else
               begin
                 dmGeral.PCP_CD_M_ROM.edit;
                 ShowMessage('Falha ao deletar.');
                 abort;
               end;
           end

           else
             begin
               ShowMessage('O item não consta na conferência.');
             end;
      end;
end;

procedure TPCP_FM_M_ROM_ICF.grdRomItensCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   aFont.Color := clBlue;

   //if (dmGeral.PCP_CD_M_ROM_PED_ITEqtde.AsCurrency =
  { if (dmGeral.PCP_CD_M_ROM_ITEint_qtde_ped_ite.AsCurrency =
     dmGeral.PCP_CD_M_ROM_ITEqtde_conferida.AsCurrency) and

     (dmGeral.PCP_CD_M_ROM_ITEqtde_conj.AsCurrency <>
     dmGeral.PCP_CD_M_ROM_ITEqtde_conj_conf.AsCurrency)
      then
     begin
       aFont.Color := $000080FF;
       //abort;
     end
   else
     begin}
        //if (dmGeral.PCP_CD_M_ROM_PED_ITEqtde.AsCurrency =
       if (dmGeral.PCP_CD_M_ROM_ITEqtde.AsCurrency =
           dmGeral.PCP_CD_M_ROM_ITEqtde_conferida.AsCurrency) then
           begin
             aFont.Color := clGreen;
           end;
    // end;
end;

procedure TPCP_FM_M_ROM_ICF.InserirPedIcf;
begin
  dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_PEDIDO').AsInteger :=
     dmGeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsInteger;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger :=
     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger :=
     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger;


  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString :=
        dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('cod_barra').AsString;;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger :=
     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsInteger;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('int_nomeite').AsString :=
            dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMEITE').AsString;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_UNDVENDA').AsString  :=
            dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_UND_VENDA').AsString;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('int_nometam').AsString :=
           dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMETAM').AsString;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('int_nomecor').AsString :=
           dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMECOR').AsString;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_OPR_ETQ').AsInteger :=
           dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_OPR').AsInteger;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_sequencia').AsInteger := xseq;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ITEM_CONJUGADO').AsBoolean := false;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := time;

  dmGeral.PCP_CD_M_ROM_PED_ICF.Post;

 { if  dmGeral.PCP_CD_M_ROM_ICF.locate('cod_barra', dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString, []) then
      begin
        dmGeral.PCP_CD_M_ROM_ICF.edit;

        dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString :=
                dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsString;

        dmGeral.PCP_CD_M_ROM_ICF.post;
      end;   }
end;

procedure TPCP_FM_M_ROM_ICF.PcpRetirarItensDoRomaneio;
begin
   if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;id_cor;id_tamanho;nome_ite',
      VarArrayof([dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString]),[]) then
      begin
        dmgeral.PCP_CD_M_ROM_ITE.edit;
        dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsCurrency :=
          dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsCurrency -
          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency;
        dmgeral.PCP_CD_M_ROM_ITE.post;
      end;
end;

procedure TPCP_FM_M_ROM_ICF.txtIdItemEnter(Sender: TObject);
begin
{  if RetirarItem then
     begin
       if (txtPedido.CanFocus) and (trim(txtPedido.Text) = '') then
          txtPedido.SetFocus;
     end; }
end;

procedure TPCP_FM_M_ROM_ICF.txtIdItemExit(Sender: TObject);
var
  codigo,codBarra,cor,tamanho,id_opr,pcp_obs_item:String;
  SMPrincipal : TSMClient;
  Retorno: string;
  qtdeInserir, contador: Currency;

  pedido: string;
begin

    if txtPedido.Focused then
       begin
         exit;
       end;

    if grdPedIcf.Focused or btnSair.Focused or btnGravar.Focused or
       grdRomItens.Focused or txtPedido.Focused or btnRealocarEtiq.Focused then
       begin
         pnlIte.Enabled := false;
         //pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_ICF.Cancel;
         txtPedido.Text := '';
         exit;
       end;

    codBarra := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString;

    if codBarra= '' then
       begin
         ShowMessage('O campo Cód. de barra deve ser preenchido.');
         txtIdItem.SetFocus;
         exit;
       end;

     if not RetirarItem then  // Se for para fazer a conferência normal dos itens irá entrar nesse IF
        begin
           dmGeral.PCP_CD_M_ROM_ICF.Cancel;
           if dmGeral.PCP_CD_M_ROM_ICF.Locate('COD_BARRA',VarArrayOf([codBarra]),[]) then
             begin
               if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Ja_Inserida.wav') then
                   begin
                     sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Ja_Inserida.wav'),SND_LOOP);
                   end;
               ShowMessage('Item com cód. barra '+ codBarra+' já foi inserido.');
               dmGeral.PCP_CD_M_ROM_ICF.Insert;
               txtIdItem.Text := '';
               txtIdItem.SetFocus;
               exit;
             end;



           try
             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             retorno := SMPrincipal.enSgqPcpVerifEtqRomPed(dmGeral.PCP_CD_M_ROM.FieldByName('id_empresa').AsString,
                                                dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsString,
                                                codBarra);
             if retorno <> '' then
                begin
                  if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Em_Outra_Coferencia.wav') then
                     begin
                       sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Em_Outra_Coferencia.wav'),SND_LOOP);
                     end;
                  ShowMessage('Esta etiqueta já foi utilizada em outra conferência: ' + #13 +
                              retorno);
                  dmGeral.PCP_CD_M_ROM_ICF.Insert;
                  txtIdItem.Text := '';
                  txtIdItem.SetFocus;
                  exit;
                end;
           finally
               FreeAndNil(SMPrincipal);
           end;



           dmGeral.PCP_CD_M_ROM_ICF.Insert;
           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;

            // Comentado por Maxsuel Victor , em 15/09/2017
           {dmGeral.BUS_CD_M_ROM_ETQ.Close;
           dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                   dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([5,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString])); }

           dmGeral.BUS_CD_M_ROM_ETQ.Close;
           dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                   dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([4,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,
                   dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));



           // Esse IF foi criardo em 16/06 por Maxsuel Victor, para que o sistema verique
           //   se existe item com a cor que está sendo pistolada , se não exisitir o sistema irá perguntar se é para
           //   prosseguir.  e Quando for pistolado um item Personalizado com cor diferente o sistema só irá fazer
           //   checagem do primeiro item pistolado pois os demais não serão feito essa verificação.
           if xVerificar then
              begin
                 xPermiteOutraCor := false;

                 if not (dmGeral.PCP_CD_M_ROM_ITE.Locate('id_item', dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_item').AsString, [])) then
                    begin
                      ShowMessage('O item deste código de barra: '+ codBarra+', não existe neste relatório de carga.');
                      dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                      txtIdItem.Text := '';
                      dmGeral.PCP_CD_M_ROM_ICF.cancel;
                      btnAddIteClick(self);
                      exit;
                    end
                 else
                    begin
                      try
                      dmGeral.PCP_CD_M_ROM_ITE.Filtered := true;
                      dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_item').AsString +
                                                           ' AND NOME_ITE = ' + QuotedStr(dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('int_nomeite').AsString) +
                                                           ' AND ID_COR = ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_cor').AsString;
                      if (dmGeral.PCP_CD_M_ROM_ITE.IsEmpty) or
                         ((dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsString =
                           dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsString)) then
                         begin
                            dmGeral.PCP_CD_M_ROM_ITE.Filtered := true;

                            dmgeral.PCP_CD_M_ROM_ITE.Filter   := ' ID_ITEM = ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_item').AsString +
                                                                 ' AND NOME_ITE = ' + QuotedStr(dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('int_nomeite').AsString) +
                                                                 ' AND ID_COR <> ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_cor').AsString;

                            dmgeral.PCP_CD_M_ROM_ITE.First;
                            while not dmgeral.PCP_CD_M_ROM_ITE.eof do
                                begin
                                  if (not (dmGeral.PCP_CD_M_ROM_ITE.IsEmpty)) and
                                     ((dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE_CONFERIDA').AsString <>
                                       dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsString))then
                                     begin
                                       if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\cor_item_nao_existe.wav') then
                                          begin
                                            sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\cor_item_nao_existe.wav'),SND_LOOP);
                                          end;

                                       if MessageDlg('Não existe produto com essa cor. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                          begin
                                            xPermiteOutraCor := true;
                                            dmgeral.PCP_CD_M_ROM_ITE.Last;
                                          end
                                       else
                                          begin
                                             dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                                             txtIdItem.Text := '';
                                             dmGeral.PCP_CD_M_ROM_ICF.cancel;
                                             btnAddIteClick(self);
                                             exit;
                                          end;
                                     end;
                                  dmgeral.PCP_CD_M_ROM_ITE.Next;
                                end;
                         end
                      else
                         begin
                           // Maxsuel Victor, 14/06/21 , para o caso de existir item para ser pistolado onde
                           // no ROM_ITE é uma cor  e  no ROM_PED_ITE do pedido de venda é uma outra cor.
                           // Pois aconteceu de faltar pistolar 4 base box de cor BEGE, sendo que nos pedidos
                           // só faltava 4 base box de cor CINZA.
                           // Utilizando essa variável para TRUE resolveu a situação.

                              // Por Maxsuel Victor, 30/10/2024 para poder funcionar a questão da cor.
                                 // exemplo:  Item cor azul, ir para item cor azul, se não, deve perguntar se aceita cor diferente.

                                   // xPermiteOutraCor := true;
                         end;
                      finally
                         dmGeral.PCP_CD_M_ROM_ITE.Filtered := false;
                         dmGeral.PCP_CD_M_ROM_ITE.First;
                      end;
                    end;
              end;

           if not dmGeral.BUS_CD_M_ROM_ETQ.IsEmpty then
              begin
                if dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_ors_saida').AsInteger > 0 then
                   begin
                     if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Utilizada_Por_OF.wav') then
                        begin
                          sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Utilizada_Por_OF.wav'),SND_LOOP);
                        end;

                     Showmessage('Esta etiqueta já foi dada saída na ordem de faturamento :' +
                              dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_ors_saida').AsString + ', em ' +
                              dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('dta_saida').AsString+'.');

                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                     txtIdItem.Text := '';
                     dmGeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                   end;

                if dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_epp').AsInteger = 0 then
                   begin
                     if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Sem_Entrada.wav') then
                        begin
                          sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Sem_Entrada.wav'),SND_LOOP);
                        end;
                     Showmessage('Esta etiqueta ainda não foi dada entrada no estoque!');
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                     txtIdItem.Text := '';
                     dmGeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                   end;

                codigo  := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsString;
                cor     := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsString;
                tamanho := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsString;
                id_opr  := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_opr').AsString;
                pcp_obs_item := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('pcp_obs_item').AsString;


                dmGeral.BusItens(0,dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsString);
                dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);

                contador := 0;
                qtdeInserir := 1;
               // x_id_ped     := 0;
                x_id_rom_ite := 0;

                if dmGeral.BUS_CD_C_GRU.FieldByName('sgq_inf_qtde_ite_carg').AsBoolean then
                   begin
                     if strtoint(txtQtdeInf.Text) = 0 then
                        begin
                          pnlQtde.visible := true;
                          txtQtdeInf.setfocus;
                          exit;
                        end
                     else
                        begin
                          qtdeInserir := strtoint(txtQtdeInf.Text);
                          txtQtdeInf.Text := '0';

                          if dmGeral.BUS_CD_C_GRU.FieldByName('sgq_descartar_op_etq_cof').AsBoolean = false then
                             begin
                               dmGeral.BUS_CD_M_ROM_ETQ.Close;
                               dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                                  dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([21,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                  codigo,cor,tamanho,pcp_obs_item,id_opr,codBarra,currtostr(qtdeInserir)]));
                             end
                          else
                             begin
                               dmGeral.BUS_CD_M_ROM_ETQ.Close;
                                dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                                  dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([22,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                  codigo,cor,tamanho,pcp_obs_item,codBarra,currtostr(qtdeInserir)]));
                             end;
                          dmGeral.BUS_CD_M_ROM_ETQ.First;
                        end;
                   end;

                 while not (qtdeInserir = contador) do
                    begin
                       IF AtualizarQtdeConferida(true,dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger,
                          dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger,
                          dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsInteger,
                          dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMEITE').AsString) then
                          begin

                            codBarra := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('cod_barra').AsString;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger :=
                               dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger :=
                               dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger;


                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger :=
                               dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsInteger;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('int_nomeite').AsString :=
                                      dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMEITE').AsString;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_UNDVENDA').AsString  :=
                                      dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_UND_VENDA').AsString;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('int_nometam').AsString :=
                                     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMETAM').AsString;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('int_nomecor').AsString :=
                                     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMECOR').AsString;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_OPR_ETQ').AsInteger :=
                                                 dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_OPR').AsInteger;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_rom_icf').AsInteger := xseq;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ITEM_CONJUGADO').AsBoolean := false;

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := time;


                            { Este campo é alimentado na rotina abaixo ->  AtualizarQtdeConferidaPed

                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString :=
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_pedido').AsString;
                            }

                            AtualizarQtdeConferidaPed(true,dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger,
                                     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger,
                                     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsInteger,xSeq,0,
                                     dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('INT_NOMEITE').AsString);



                            dmGeral.PCP_CD_M_ROM_ICF.Post;


                            ExibirTotais;
                            contador := contador + 1;


                            dmGeral.PCP_CD_M_ROM_ICF.Insert;
                            inc(xseq);

                            if qtdeInserir > 1 then
                               begin
                                 dmGeral.BUS_CD_M_ROM_ETQ.Next;
                               end;
                          end
                       else
                          begin
                            if dmgeral.PCP_CD_M_ROM_ITE.Locate('ID_ITEM;NOME_ITE',
                                       VarArrayOf([dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger,
                                                   dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('int_nomeite').AsString]),[]) then
                               begin
                                 if pnlQtde.visible = true then
                                    pnlQtde.visible := false;

                                 if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav') then
                                    begin
                                      sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav'),SND_LOOP);
                                    end;

                                 ShowMessage('Conferência está completa!');
                                 dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                                 txtIdItem.Text := '';
                                 pnlQtde.visible := false;
                                 dmGeral.PCP_CD_M_ROM_ICF.cancel;
                                 btnAddIteClick(self);
                                 exit;
                               end
                            else
                               begin
                                 if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\item_nao_consta.wav') then
                                    begin
                                      sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\item_nao_consta.wav'),SND_LOOP);
                                    end;

                                  ShowMessage('O item não consta no carregamento.');
                                  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                                  txtIdItem.Text := '';
                                  pnlQtde.visible := false;
                                  dmGeral.PCP_CD_M_ROM_ICF.cancel;
                                  btnAddIteClick(self);
                                  exit;
                               end;

                            if qtdeInserir = contador then
                               begin
                                  txtIdItem.Text := '';
                               end;
                          end;


                         //AtualizarStatusIte;
                         //AtualizarStatusPed;


                         if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
                           begin
                              //dmGeral.PCP_CD_M_ROM_ICF.Insert;
                              //dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
                              dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
                              dmGeral.PCP_CD_M_ROM_ICF.Insert;
                           end
                         else
                           begin
                             ShowMessage('Falha ao gravar a conferência dos itens do pedido.');
                             abort;
                           end;
                    end;
               end
            else
               begin
                 if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Nao_Encontrada.wav') then
                    begin
                      sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Nao_Encontrada.wav'),SND_LOOP);
                    end;
                 ShowMessage('Não foi encontrado item correspondente com cod. barra.');

                 dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := '';
                 txtIdItem.Text := '';
                 dmGeral.PCP_CD_M_ROM_ICF.cancel;
                 btnAddIteClick(self);
                 //txtIdItem.Text := '';
               end;

              if x_id_rom_ite > 0  then
                 begin
                   //dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
                   dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
                   dmGeral.PCP_CD_M_ROM_ICF.Insert;
                 end;


              pnlQtde.visible := false;

              xVerificar := true;
              txtIdItem.SetFocus;
              dmGeral.BUS_CD_C_GRU.close;
        end
     else
        begin

          codBarra := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString;

          if codBarra= '' then
             begin
               ShowMessage('O campo Cód. de barra deve ser preenchido.');
               txtIdItem.SetFocus;
               exit;
             end;

          pedido := txtPedido.Text;

          if pedido = '' then
             begin
               ShowMessage('O campo pedido deve ser preenchido.');
               txtPedido.SetFocus;
               exit;
             end;

          if not dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
             begin
               ShowMessage('Este pedido não foi encontrado na carga.');
               txtPedido.SetFocus;
               exit;
             end;

          dmgeral.PCP_CD_M_ROM_ICF.cancel;

          if not dmgeral.PCP_CD_M_ROM_ICF.Locate('cod_barra',VarArrayOf([codBarra]),[]) then
             begin
               dmgeral.PCP_CD_M_ROM_ICF.Insert;
               dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
               ShowMessage('O código de barra não consta na conferência.');
               dmgeral.PCP_CD_M_ROM_ICF.cancel;
               btnAddIteClick(self);
               exit;
             end
          else
             begin

                dmgeral.BUS_CD_M_PED.Close;
                 dmGeral.BUS_CD_M_PED.Data :=
                   dmGeral.BUS_CD_M_PED.DataRequest(
                      VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString]));


                if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 0 then
                   begin
                     ShowMessage('O pedido de venda dessa etiqueta está esperando por aprovação.');
                     dmgeral.PCP_CD_M_ROM_ICF.Insert;
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
                     dmgeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                   end;

                if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 2 then
                   begin
                     ShowMessage('O pedido de venda da etiqueta foi reprovado.');
                     dmgeral.PCP_CD_M_ROM_ICF.Insert;
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
                     dmgeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                   end;

                if dmgeral.BUS_CD_M_PED.FieldByName('situacao').AsInteger = 3 then
                   begin
                     ShowMessage('O pedido de venda que está apontado para esta etiqueta já foi faturado.');
                     dmgeral.PCP_CD_M_ROM_ICF.Insert;
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
                     dmgeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                   end;


               // Teste para verificar se o item escolhido para ser retirado , existe no pedido apontado
              // if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_PEDIDO').AsString,[]) then
               if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
                  begin
                    // Comentado por Maxsuel Victor, 27/09/2019, O sistema tem que procurar o item no pedido indepente da cor.
                    {if not dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('ID_ITEM;ID_COR;ID_TAMANHO;INT_NOMEITE;ID_PEDIDO',
                                VarArrayOf([dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsString,
                                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsString,
                                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsString,
                                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString,
                                            pedido]),[]) then }

                     if not dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('ID_ITEM;ID_TAMANHO;INT_NOMEITE;ID_PEDIDO',
                                VarArrayOf([dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsString,
                                            //dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsString,
                                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsString,
                                            dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString,
                                            pedido]),[]) then
                        begin
                           dmgeral.PCP_CD_M_ROM_ICF.Insert;
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
                           // Maxsuel Victor, em 03/05/2019
                           //Isso quer dizer que estão tentando retirar um item de um pedido, que na verdade, não existe mais
                           //desse item, conferência.
                           ShowMessage('Não existe conferência para este item no pedido informado.');
                           dmgeral.PCP_CD_M_ROM_ICF.cancel;
                           btnAddIteClick(self);
                           exit;
                        end;
                  end;
             end;

          //showmessage(dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString);

          x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;

          if  AtualizarQtdeConferida(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString) then
             begin
               //showmessage(dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString);
               AtualizarQtdeConferidaPed(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,0,strtoint(txtPedido.Text),
                           dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString);

               //dmGeral.PCP_CD_M_ROM_ICF.Delete;
               ExibirTotais;
               AtualizarStatusIte;

               if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
                  begin
                    dmGeral.PCP_CD_M_ROM.edit;
                    dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
                    btnAddIteClick(self);
                  end
               else
                  begin
                    dmGeral.PCP_CD_M_ROM.edit;
                    ShowMessage('Falha ao deletar.');
                    abort;
                  end;
             end
          else
             begin
               dmgeral.PCP_CD_M_ROM_ICF.Insert;
               dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
               ShowMessage('O item não consta na conferência.');
               dmgeral.PCP_CD_M_ROM_ICF.cancel;
               btnAddIteClick(self);
             end;
        end;
end;


procedure TPCP_FM_M_ROM_ICF.txtPedidoExit(Sender: TObject);
var
  codBarra: String;
  pedido: string;
begin
  if grdPedIcf.Focused or btnSair.Focused or btnGravar.Focused or
     grdRomItens.Focused  then
     begin
         pnlIte.Enabled := false;
         //pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_ICF.Cancel;
         exit;
     end;

   //  Comentário inserido por Maxsuel Victor 02/08/2019
   { codBarra := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString;

    if codBarra= '' then
       begin
         ShowMessage('O campo Cód. de barra deve ser preenchido.');
         txtIdItem.SetFocus;
         exit;
       end; }

    pedido := txtPedido.Text;

    if pedido = '' then
       begin
         ShowMessage('O campo pedido deve ser preenchido.');
         txtPedido.SetFocus;
         exit;
       end;

    dmgeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
        dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, pedido]));

    if dmgeral.BUS_CD_M_PED.IsEmpty then
       begin
         ShowMessage('Pedido não encontrado.');
         txtPedido.SetFocus;
         dmgeral.BUS_CD_M_PED.Close;
         exit;
       end;

    if dmgeral.BUS_CD_M_PED.FieldByName('SITUACAO').AsInteger = 3 then
       begin
         ShowMessage('Este pedido já foi faturado!');
         txtPedido.text := '';
         txtPedido.SetFocus;
         dmgeral.BUS_CD_M_PED.Close;
         exit;
       end;

    dmgeral.BUS_CD_M_PED.Close;

    if not dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
       begin
         ShowMessage('Este pedido não foi encontrado na carga.');
         txtPedido.SetFocus;
         exit;
       end;

    //  Comentário inserido por Maxsuel Victor 02/08/2019
    {
    dmgeral.PCP_CD_M_ROM_ICF.cancel;

    if not dmgeral.PCP_CD_M_ROM_ICF.Locate('cod_barra',VarArrayOf([codBarra]),[]) then
       begin
         dmgeral.PCP_CD_M_ROM_ICF.Insert;
         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
         ShowMessage('O código de barra não consta na conferência.');
         dmgeral.PCP_CD_M_ROM_ICF.cancel;
         btnAddIteClick(self);
         exit;
       end
    else
       begin
         // Teste para verificar se o item escolhido para ser retirado , existe no pedido apontado
        // if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_PEDIDO').AsString,[]) then
         if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',pedido,[]) then
            begin
               if not dmgeral.PCP_CD_M_ROM_PED_ICF.Locate('ID_ITEM;ID_COR;ID_TAMANHO;INT_NOMEITE;ID_PEDIDO',
                          VarArrayOf([dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsString,
                                      dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsString,
                                      dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsString,
                                      dmGeral.PCP_CD_M_ROM_ICF.FieldByName('INT_NOMEITE').AsString,
                                      pedido]),[]) then
                  begin
                     dmgeral.PCP_CD_M_ROM_ICF.Insert;
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
                     // Maxsuel Victor, em 03/05/2019
                     //Isso quer dizer que estão tentando retirar um item de um pedido, que na verdade, não existe mais
                     //desse item, conferência.
                     ShowMessage('Não existe conferência para este item no pedido informado.');
                     dmgeral.PCP_CD_M_ROM_ICF.cancel;
                     btnAddIteClick(self);
                     exit;
                  end;
            end;
       end;



    x_id_rom_ite := dmGeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger;

    if  AtualizarQtdeConferida(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger) then
       begin
         //showmessage(dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').AsString);
         AtualizarQtdeConferidaPed(false,dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger,0,strtoint(txtPedido.Text));

         //dmGeral.PCP_CD_M_ROM_ICF.Delete;
         ExibirTotais;
         AtualizarStatusIte;

         if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
            begin
              dmGeral.PCP_CD_M_ROM.edit;
              dmgeral.PCP_CD_M_ROM_ITE.Locate('id_rom_ite',VarArrayOf([x_id_rom_ite]),[]);
              btnAddIteClick(self);
            end
         else
            begin
              dmGeral.PCP_CD_M_ROM.edit;
              ShowMessage('Falha ao deletar.');
              abort;
            end;
       end
    else
       begin
         dmgeral.PCP_CD_M_ROM_ICF.Insert;
         dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString := codBarra;
         ShowMessage('O item não consta na conferência.');
         dmgeral.PCP_CD_M_ROM_ICF.cancel;
         btnAddIteClick(self);
       end; }
end;

procedure TPCP_FM_M_ROM_ICF.txtQtdeInfExit(Sender: TObject);
var
   codigo,cor,tamanho,pcp_obs_item,id_opr,cod_barra: String;
begin

   if strtoint(txtQtdeInf.Text) > 0 then
      begin
        codigo := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsString;
        cor     := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsString;
        tamanho := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsString;
        id_opr  := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('id_opr').AsString;
        pcp_obs_item := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('pcp_obs_item').AsString;
        cod_barra := txtIdItem.Text;

        if dmGeral.BUS_CD_C_GRU.FieldByName('sgq_descartar_op_etq_cof').AsBoolean = false then
           begin
             dmGeral.BUS_CD_M_ROM_ETQ.Close;
             dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([21,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                codigo,cor,tamanho,pcp_obs_item,id_opr,cod_barra,txtQtdeInf.Text]));
           end
        else
           begin
             dmGeral.BUS_CD_M_ROM_ETQ.Close;
             dmGeral.BUS_CD_M_ROM_ETQ.Data :=
                dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([22,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                codigo,cor,tamanho,pcp_obs_item,cod_barra,txtQtdeInf.Text]));
           end;

        if dmGeral.BUS_CD_M_ROM_ETQ.RecordCount < strtoint(txtQtdeInf.Text) then
           begin
             ShowMessage('Não há saldo usuficiente para atender a quantidade digitada!');
             txtQtdeInf.text := '0';
             pnlQtde.visible := false;
             xVerificar := true;
             txtIdItem.SetFocus;
             //abort;
           end
        else
           begin
             xVerificar:= false;
             txtIdItemExit(self);
           end;
      end;
end;

function TPCP_FM_M_ROM_ICF.UltimaSeqGerada: integer;
begin
  Result := 1;
  if dmGeral.PCP_CD_M_ROM_ICF.RecordCount >0 then
     begin
       dmGeral.PCP_CD_M_ROM_ICF.IndexFieldNames := 'id_rom_icf';
       dmGeral.PCP_CD_M_ROM_ICF.Last;
       Result := dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_rom_icf').AsInteger + 1;
     end;
end;

end.
