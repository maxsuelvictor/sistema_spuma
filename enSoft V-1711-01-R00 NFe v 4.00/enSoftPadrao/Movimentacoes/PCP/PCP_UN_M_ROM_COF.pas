unit PCP_UN_M_ROM_COF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  vcl.Wwdbedit, vcl.wwdblook, Data.DB, vcl.wwdatsrc, Vcl.Buttons, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Datasnap.DBClient,winapi.MMSystem;

type
  TPCP_FM_M_ROM_COF = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dsoPed: TwwDataSource;
    dsoPedIte: TwwDataSource;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    imgBotoesInativo: TImageList;
    imgBotoesAtivoVe: TImageList;
    ImgPequenaVe: TImageList;
    ImgPequenaAz: TImageList;
    imgBotoesAtivoAz: TImageList;
    imgBotoesAtivo: TImageList;
    ImgPequena: TImageList;
    dsoPedIcf: TwwDataSource;
    lblTitulo: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtIdPedido: TwwDBEdit;
    txtDtaPedido: TJvDBDateEdit;
    txtCodCliente: TwwDBEdit;
    txtCliente: TwwDBEdit;
    txtRepresentante: TwwDBEdit;
    txtCubagem: TwwDBEdit;
    Panel2: TPanel;
    grdPedIte: TwwDBGrid;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    grdPedIcf: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Panel3: TPanel;
    btnSair: TButton;
    btnGravar: TButton;
    Panel4: TPanel;
    pnlIte: TPanel;
    lblCodBarra: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    txtDescricao: TwwDBEdit;
    txtUnd: TwwDBEdit;
    btnAddIte: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Label11: TLabel;
    Label9: TLabel;
    txtTotalItensPed: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    txtTotalItensConfPed: TEdit;
    Label14: TLabel;
    Panel7: TPanel;
    txtIdItemButton: TSpeedButton;
    txtIdItem: TwwDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    txtTotalItemConj: TwwDBEdit;
    dsPcpRomPed: TDataSource;
    txtTotalItemConjConf: TwwDBEdit;
    pnBaseBox: TPanel;
    grdItensConj: TwwDBGrid;
    Label17: TLabel;
    cdsTempItemConj: TClientDataSet;
    cdsTempItemConjid_item_conjugado: TIntegerField;
    cdsTempItemConjint_nomeite: TStringField;
    cdsTempItemConjqtde_a_inserir: TFloatField;
    cdsTempItemConjqtde_conf: TFloatField;
    dsRomPedIcj: TDataSource;
    pnlBotao: TPanel;
    Button1: TButton;
    Label18: TLabel;
    pnlQtde: TPanel;
    Label19: TLabel;
    txtQtdeInf: TEdit;
    cdsTempItemConjid_item: TIntegerField;
    cdsTempItemConjid_cor: TIntegerField;
    cdsTempItemConjid_tamanho: TIntegerField;
    cdsTempItemConjint_nomecor: TStringField;
    cdsTempItemConjint_nometam: TStringField;
    Panel8: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure txtIdItemButtonClick(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbTamEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddIteClick(Sender: TObject);
    procedure cbbTamExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure txtIdItemExit(Sender: TObject);
    procedure grdPedIcfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtIdItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdPedIcfMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure txtIdItemChange(Sender: TObject);
    procedure txtIdItemKeyPress(Sender: TObject; var Key: Char);
    procedure pnlIteExit(Sender: TObject);
    procedure  grdPedIteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdPedIcfTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure txtQtdeInfExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    function AtualizarQtdeConferida(incrementar:boolean;id_item,id_cor,id_tamanho:integer):Boolean;
    function UltimaSeqGerada:integer;
    // function BuscarIteEtq:Boolean;
    procedure ChamaCorTamanho;
    procedure ExibirTotais;
    procedure BuscarItensConj;
    procedure AtualizarStatusPed;

    var
      xCorSistema:string;
      xseq:integer;
      x_id_ped, x_id_ped_ite: Integer;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM_COF: TPCP_FM_M_ROM_COF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PCP_UN_M_ROM_COF_ETQ, enSoftMenu, PSQ_UN_X_ROM_ETQ, uProxy,
  PCP_UN_M_ROM;



{function TPCP_FM_M_ROM_COF.BuscarIteEtq:Boolean;
begin
  Result := false;
  dmGeral.BUS_CD_M_OPR_ETQ.Close;
  dmGeral.BUS_CD_M_OPR_ETQ.Data :=
      dmGeral.BUS_CD_M_OPR_ETQ.DataRequest(VarArrayOf([1,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsString,
                                                         dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsString,
                                                         dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsString]));

  if dmgeral.BUS_CD_M_OPR_ETQ.IsEmpty then
    begin
      ShowMessage('Não há item especificado na tabela de etiquetas.');
      txtIdItem.SetFocus;
      abort;
    end;


  PCP_FM_M_ROM_COF_ETQ := TPCP_FM_M_ROM_COF_ETQ.Create(Self);
  PCP_FM_M_ROM_COF_ETQ.ShowModal;

  if not dmgeral.BUS_CD_M_OPR_ETQ.IsEmpty  then
    begin
      dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsString :=  dmgeral.BUS_CD_M_OPR_ETQ.FieldByName('COD_BARRA').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger :=  dmgeral.BUS_CD_M_OPR_ETQ.FieldByName('ID_COR').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger := dmgeral.BUS_CD_M_OPR_ETQ.FieldByName('ID_TAMANHO').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger := dmgeral.BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsInteger;
      Result := true;
    end;

  PCP_FM_M_ROM_COF_ETQ.Free;
end;  }

function TPCP_FM_M_ROM_COF.UltimaSeqGerada:integer;
begin
  Result := 1;
  if dmGeral.PCP_CD_M_ROM_PED_ICF.RecordCount >0 then
     begin
       dmGeral.PCP_CD_M_ROM_PED_ICF.IndexFieldNames := 'id_sequencia';
       dmGeral.PCP_CD_M_ROM_PED_ICF.Last;
       Result := dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger + 1;
     end;
end;

procedure TPCP_FM_M_ROM_COF.AtualizarStatusPed;
begin
  { TODO -oMaxsuel -cCriação : Criado em 03/08/17 }
   dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;

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

       if dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger = 2 then
          begin
            if not (PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.IsEmpty) then
               begin
                 if dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj').AsCurrency <>
                    dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency then
                    begin
                      dmGeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 1;
                    end;
               end;
          end;
     end;
end;

procedure TPCP_FM_M_ROM_COF.BitBtn1Click(Sender: TObject);
begin
  grdpedite.SetFocus;
end;

procedure TPCP_FM_M_ROM_COF.btnAddIteClick(Sender: TObject);
begin
     dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
      pnlIte.Enabled := true;
      txtIdItem.SetFocus;
end;

procedure TPCP_FM_M_ROM_COF.btnGravarClick(Sender: TObject);
VAR
  codPedido:String;
begin

  if dmGeral.PCP_CD_M_ROM_PED_ICF.RecordCount = 0 then
    begin
      ShowMessage('Nenhum dos itens do pedido foram conferidos.');
      exit;
    end;

   if dmGeral.PCP_CD_M_ROM_PED.State in [dsBrowse] then
      begin
        dmGeral.PCP_CD_M_ROM_PED.Edit;
      end;

   AtualizarStatusPed;

   codPedido:= dmGeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString;
   if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
     begin
        ShowMessage('A conferência dos itens do pedido foi salvo com sucesso.');
        dmGeral.PCP_CD_M_ROM.Edit;
        dmGeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',VarArrayOf([codPedido]),[]);
        dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
        pnlIte.Enabled := true;
        txtIdItem.SetFocus;
     end
   else
     begin
       ShowMessage('Falha ao gravar conferência dos itens do pedido.');
     end;
end;

procedure TPCP_FM_M_ROM_COF.btnSairClick(Sender: TObject);
begin
  dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
  Close;
end;

procedure TPCP_FM_M_ROM_COF.BuscarItensConj;
var
  itens_sel: String;
begin
  {try

  dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  while not dmgeral.PCP_CD_M_ROM_PED_ITE.Eof do
    begin
      if itens_sel <> '' then
         begin
          itens_sel :=
          itens_sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;
      if itens_sel = '' then
         begin
           itens_sel :=
           itens_sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;
      dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
    end;

  PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Close;
  PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Data :=
     PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.DataRequest(
        VarArrayOf([1, itens_sel]));


  dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  while not dmgeral.PCP_CD_M_ROM_PED_ITE.Eof do
    begin
      // Irá filtrar os itens conjugados do item do pedido
      PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Filtered := true;
      PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Filter   := ' ID_ITEM = ' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString;
      while not PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Eof do
         begin
           // irá montar a qtde total de cada item conjugado
           if cdsTempItemConj.locate('ID_ITEM_CONJUGADO',PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString,[]) then
              begin
                cdsTempItemConj.edit;
                cdsTempItemConj.FieldByName('qtde_a_inserir').AsCurrency :=
                          cdsTempItemConj.FieldByName('qtde_a_inserir').AsCurrency +
                          (PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.FieldByName('qtde').AsCurrency *
                           dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency);
                cdsTempItemConj.Post;
              end
           else
              begin
                cdsTempItemConj.Insert;
                cdsTempItemConj.FieldByName('ID_ITEM_CONJUGADO').AsString :=
                   PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString;
                cdsTempItemConj.FieldByName('int_nomeite').AsString :=
                   PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.FieldByName('int_nomeite').AsString;
                cdsTempItemConj.FieldByName('qtde_a_inserir').AsCurrency :=
                          cdsTempItemConj.FieldByName('qtde_a_inserir').AsCurrency +
                          (PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.FieldByName('qtde').AsCurrency *
                           dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency);
                cdsTempItemConj.Post;
              end;
           PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Next;
         end;
      PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Filtered := false;
      dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
    end;

  PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.First;

  dmgeral.PCP_CD_M_ROM_PED_ITE.First;

  finally
    itens_sel := '';
    PCP_FM_M_ROM.BUS_CD_C_ITE_COJ.Filtered := false;
  end; }
end;

procedure TPCP_FM_M_ROM_COF.Button1Click(Sender: TObject);
begin
  pnBaseBox.visible := false;
end;

procedure TPCP_FM_M_ROM_COF.cbbCorEnter(Sender: TObject);
begin
 {  dmGeral.BusCor(1,'%');
  cbbCor.DropDown; }
end;

procedure TPCP_FM_M_ROM_COF.cbbCorExit(Sender: TObject);
begin
   {
    if grdPedIcf.Focused or btnSair.Focused  then
       begin
         pnlIte.Enabled := false;
         pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
         exit;
       end;

   if txtIdItem.Focused then
     begin
       pnlCorTamanho.Visible := false;
       Exit;
     end;


   if cbbTamanho.Focused then
       Exit;

   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMECOR').text := '';

  if ((trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').Text) = '') or
       (dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger = 0)) then
     begin

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

   if  (BuscarIteEtq=true) then
        begin
         if  (trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsString)='')  then
            begin
              ShowMessage('Cod. Barra não preenchido na tabela de etiquetas.');
              cbbTamanho.SetFocus;
              exit;
            end;
        end
      else
        begin
           cbbTamanho.SetFocus;
           exit;
        end;


   if not AtualizarQtdeConferida(true,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger) then
      begin
                    ShowMessage('O item não consta no pedido.');
                    cbbCor.SetFocus;
      end
   ELSE
      begin
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger := seq;
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_OPR_ETQ').AsInteger :=
                       StrToInt(copy(trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsString),1,7));
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := xHoraSis;
       dmGeral.PCP_CD_M_ROM_PED_ICF.Post;
       pnlIte.Enabled := false;
       pnlCorTamanho.Visible := false;
       btnAddIte.SetFocus;
       inc(seq);
      end; }

end;


function TPCP_FM_M_ROM_COF.AtualizarQtdeConferida(incrementar:boolean;id_item,id_cor,id_tamanho:integer):Boolean;
begin
   Result := false;
   if incrementar = true then
     begin
       //if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([id_item,id_cor,id_tamanho]),[]) then
       if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM',VarArrayOf([id_item]),[]) then
          begin
             try
               dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
               dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) + ' AND ID_COR = ' + inttostr(id_cor) ;

               if (dmgeral.PCP_CD_M_ROM_PED_ITE.IsEmpty) or
                  ( dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                    dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat ) then
                  begin
                     dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                     dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item);
                  end;

               x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
               x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

               dmgeral.PCP_CD_M_ROM_PED_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
               dmgeral.PCP_CD_M_ROM_PED_ITE.IndexName := 'IndQtdeConf';

               while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
                   begin
                     if not (dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat =
                             dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsFloat) then
                             //dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsFloat) then
                        begin
                          dmgeral.PCP_CD_M_ROM_PED_ITE.Edit;

                          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                              dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat + 1;

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
     end
   else
     begin
        if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM',VarArrayOf([id_item]),[]) then
         begin
           try
             dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
             dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) +
                                                      ' AND ID_COR = ' + inttostr(id_cor) +
                                                      ' AND QTDE_CONFERIDA > 0 ';

             if (dmgeral.PCP_CD_M_ROM_PED_ITE.IsEmpty) then
                 begin
                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_ITEM = ' + inttostr(id_item) + ' AND QTDE_CONFERIDA > 0 ';
                 end;
             x_id_ped     := dmgeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;
             x_id_ped_ite := dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

             dmgeral.PCP_CD_M_ROM_PED_ITE.Addindex('IndQtdeConf', 'ID_ITEM;QTDE_CONFERIDA', [ixDescending]);
             dmgeral.PCP_CD_M_ROM_PED_ITE.IndexName := 'IndQtdeConf';

             while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
               begin
                  if dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat > 0 then
                     begin
                       dmgeral.PCP_CD_M_ROM_PED_ITE.Edit;

                       dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat :=
                                dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat - 1;

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
         end;
     end;
end;




procedure TPCP_FM_M_ROM_COF.cbbTamanhoEnter(Sender: TObject);
begin
   {dmGeral.BusTamanho(1,'%');
   cbbTamanho.DropDown; }
end;

procedure TPCP_FM_M_ROM_COF.cbbTamanhoExit(Sender: TObject);
begin

  { if grdPedIcf.Focused or btnSair.Focused  then
       begin
         pnlIte.Enabled := false;
         pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
         exit;
       end;


   if txtIdItem.Focused then
     begin
       pnlCorTamanho.Visible := false;
       Exit;
     end;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMETAM').text := '';

  if ((trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text) = '') or
      (dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger = 0))  then
     begin

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean  then
    begin
     cbbCor.SetFocus;
    end
  else
    begin
      if  (BuscarIteEtq=true) then
        begin
         if  (trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsString)='')  then
            begin
              ShowMessage('Cod. Barra não preenchido na tabela de etiquetas.');
              cbbTamanho.SetFocus;
              exit;
            end;
        end
      else
        begin
           cbbTamanho.SetFocus;
           exit;
        end;


      if not AtualizarQtdeConferida(true,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger) then
        begin
            ShowMessage('O item não consta no pedido.');
            cbbTamanho.SetFocus;
        end
      else
         begin
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger := seq;
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_OPR_ETQ').AsInteger :=
                           StrToInt(copy(trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsString),1,7));
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := xHoraSis;

           dmGeral.PCP_CD_M_ROM_PED_ICF.Post;
           pnlIte.Enabled := false;
           pnlCorTamanho.Visible := false;
           btnAddIte.SetFocus;
           inc(seq);
         end;
    end;  }
end;

procedure TPCP_FM_M_ROM_COF.cbbTamEnter(Sender: TObject);
begin
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_ROM_COF.cbbTamExit(Sender: TObject);
begin

   if grdPedIcf.Focused or btnSair.Focused  or btnGravar.Focused  then
       begin
         dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
         exit;
       end;


   if txtIdItem.Focused then
       Exit;

  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMETAM').text := '';

  if ((trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text) = '') or
      (dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger = 0))  then
     begin

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
    begin
     cbbCor.SetFocus;
    end
  else
    begin
      if not AtualizarQtdeConferida(true,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                     dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                     dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger) then
        begin
            ShowMessage('O item não consta no pedido.');
            cbbTamanho.SetFocus;
        end
      else
         begin
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger := xseq;
           dmGeral.PCP_CD_M_ROM_PED_ICF.Post;
           pnlIte.Enabled := false;
           btnAddIte.SetFocus;
           inc(xseq);
         end;
    end;

end;

procedure TPCP_FM_M_ROM_COF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if not (cdsTempItemConj.IsEmpty) then
      begin
        cdsTempItemConj.EmptyDataSet;
      end;
   cdsTempItemConj.close;

   FreeAndNil(PCP_FM_M_ROM_COF);
   //frmSoftMenu.rbMenu.ShowTabGroups := true;
end;

procedure TPCP_FM_M_ROM_COF.FormCreate(Sender: TObject);
begin
  carregaCores;
  // pnlDados.Enabled:= False;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;

  //BuscarItensConj;
end;

procedure TPCP_FM_M_ROM_COF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = VK_F4 then
     begin
       pnBaseBox.Left  := 300;
       pnBaseBox.height  := 211;
       pnBaseBox.Top   := 289;
       pnBaseBox.width := 659;
       pnBaseBox.visible := true;
       grdItensConj.SetFocus;
     end;
end;

procedure TPCP_FM_M_ROM_COF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_ROM_COF.FormShow(Sender: TObject);
begin
    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


   if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean=true) then
      begin
        cbbCor.Enabled := false;
        cbbCor.Color := $00DADADA;
      end;

   if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean=true) then
      begin
        cbbTamanho.Enabled := false;
        cbbTamanho.Color := $00DADADA;
      end;

    dmGeral.AtualizarGridItens(grdPedIte,'int_nomeite',20,10);
    dmGeral.AtualizarGridItens(grdPedIcf,'int_nomeite',20,10);

    xseq := UltimaSeqGerada;

    dmGeral.PCP_CD_M_ROM_PED_ICF.IndexFieldNames := 'cod_barra';

    dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
    pnlIte.Enabled := true;

    txtIdItem.SetFocus;
   // frmSoftMenu.rbMenu.ShowTabGroups := false;

    ExibirTotais;
end;

procedure TPCP_FM_M_ROM_COF.grdItensIButtonClick(Sender: TObject);
var
  id_item,id_cor,id_tam:integer;
begin
   if dmGeral.PCP_CD_M_ROM_PED_ICF.RecordCount >0 then
      begin
        x_id_ped := dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').AsInteger;

        if  AtualizarQtdeConferida(false,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                         dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                         dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger) then
           begin
             dmGeral.PCP_CD_M_ROM_PED_ICF.Delete;
             ExibirTotais;
             AtualizarStatusPed;

             if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
               begin
                 dmGeral.PCP_CD_M_ROM.edit;
                 dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
               end
             else
               begin
                 dmGeral.PCP_CD_M_ROM.edit;
                 ShowMessage('Falha ao deletar.');
                 abort;
               end;
           end
        else
            {if (dmGeral.PCP_CD_M_ROM_PED_ICJ.locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([
                dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger,
                dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger,
                dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger]),[])) then
                begin }

            if (dmGeral.PCP_CD_M_ROM_PED_ICJ.locate('ID_ITEM',VarArrayOf([
                dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger]),[])) then
                begin
                  if dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency > 0 then
                     begin
                       dmGeral.PCP_CD_M_ROM_PED_ICF.Delete;
                       dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency :=
                              dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency - 1;
                     end;

                  dmGeral.PCP_CD_M_ROM_PED_ICJ.edit;
                  if dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency > 0 then
                     dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency :=
                             dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency - 1;
                  dmGeral.PCP_CD_M_ROM_PED_ICJ.Post;

                  if dmGeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite',
                             dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('id_ped_ite').AsString,[]) then
                     begin
                       dmGeral.PCP_CD_M_ROM_PED_ITE.edit;
                       dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conj_conf').AsCurrency :=
                               dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conj_conf').AsCurrency - 1;
                       dmGeral.PCP_CD_M_ROM_PED_ITE.Post;
                     end;

                  AtualizarStatusPed;

                   if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
                      begin
                        dmGeral.PCP_CD_M_ROM.edit;
                        dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
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

procedure TPCP_FM_M_ROM_COF.grdPedIcfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f7 then
      begin
        if lblCodBarra.Caption = '<F7> Cod. Barra' then
          begin
            lblCodBarra.Caption := '<F7> Cod. Item';
            txtIdItem.DataField := 'id_item';

          end
        else if lblCodBarra.Caption = '<F7> Cod. Item' then
          begin
             lblCodBarra.Caption := '<F7> Cod. Barra';
             txtIdItem.DataField := 'cod_barra';
          end;

        dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
        if lblCodBarra.Caption = '<F7> Cod. Item' then
          begin
            btnAddIte.SetFocus;
          end
        else
          begin
             dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
             pnlIte.Enabled := true;
             txtIdItem.SetFocus;
          end;
      end;
end;

procedure TPCP_FM_M_ROM_COF.grdPedIcfMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   pnlIte.Enabled := false;
   dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
end;

procedure TPCP_FM_M_ROM_COF.grdPedIcfTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  if AFieldName = 'id_item' then
     begin
       dmGeral.PCP_CD_M_ROM_PED_ICF.IndexFieldNames := 'id_item';
     end;

  if AFieldName = 'cod_barra' then
     begin
       dmGeral.PCP_CD_M_ROM_PED_ICF.IndexFieldNames := 'cod_barra';
     end;

end;

procedure TPCP_FM_M_ROM_COF.grdPedIteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

  aFont.Color := clBlue;

   //if (dmGeral.PCP_CD_M_ROM_PED_ITEqtde.AsCurrency =
   if (dmGeral.PCP_CD_M_ROM_PED_ITEint_qtde_ped_ite.AsCurrency =
     dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conferida.AsCurrency) and

     (dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conj.AsCurrency <>
     dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conj_conf.AsCurrency)
      then
     begin
       aFont.Color := $000080FF;
       //abort;
     end
   else
     begin
        //if (dmGeral.PCP_CD_M_ROM_PED_ITEqtde.AsCurrency =
       if (dmGeral.PCP_CD_M_ROM_PED_ITEint_qtde_ped_ite.AsCurrency =
           dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conferida.AsCurrency) and

           (dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conj.AsCurrency =
           dmGeral.PCP_CD_M_ROM_PED_ITEqtde_conj_conf.AsCurrency)
            then
           begin
             aFont.Color := clGreen;
           end;
     end;
end;

procedure TPCP_FM_M_ROM_COF.pnlIteExit(Sender: TObject);
begin
  pnlIte.Enabled := false;
end;

procedure TPCP_FM_M_ROM_COF.txtIdItemButtonClick(Sender: TObject);
begin
  // Comentado por Maxsuel Victor, em 25/02/2019
  // Essa função abaixo de consultar foi comentada a pedido de Allison.

     {
      PSQ_FM_X_ROM_ETQ := TPSQ_FM_X_ROM_ETQ.Create(Self);
      PSQ_FM_X_ROM_ETQ.xTelaOrigROM_ETQ := '';
      PSQ_FM_X_ROM_ETQ.ShowModal;
      if not PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsInteger :=
              PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.FieldByName('COD_BARRA').AsInteger;
         end;
      PSQ_FM_X_ROM_ETQ.Free;  }

end;


procedure TPCP_FM_M_ROM_COF.txtIdItemChange(Sender: TObject);
begin
  {if lblCodBarra.Caption = '<F7> Cod. Barra' then
      begin
         if Length(txtIdItem.Text)=17 then
           begin
             txtIdItemExit(Self);
           end;
      end;  }
end;

procedure TPCP_FM_M_ROM_COF.ChamaCorTamanho;
begin


       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

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

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;

               end;
         end;

end;




procedure TPCP_FM_M_ROM_COF.ExibirTotais;
var
  QtdeTot,QtdeConf: Currency;
  id_ped_ite: String;
begin
  txtTotalItensPed.Text := '0';
  txtTotalItensConfPed.Text := '0';

  id_ped_ite := dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsString;

  QtdeTot  := 0;
  QtdeConf := 0;

  dmGeral.PCP_CD_M_ROM_PED_ITE.First;
  while not dmGeral.PCP_CD_M_ROM_PED_ITE.eof do
    begin
     // QtdeTot  := QtdeTot +  dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency;
      QtdeTot  := QtdeTot +  dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsCurrency;
      QtdeConf := QtdeConf + dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency;
      dmGeral.PCP_CD_M_ROM_PED_ITE.Next;
    end;

  txtTotalItensPed.Text     := currtostr(QtdeTot);
  txtTotalItensConfPed.Text := currtostr(QtdeConf);

  dmGeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite',id_ped_ite,[]);
end;

procedure TPCP_FM_M_ROM_COF.txtIdItemExit(Sender: TObject);
var
  codigo,codBarra,cor,tamanho,id_opr,pcp_obs_item:String;
  SMPrincipal : TSMClient;
  Retorno: string;
  qtdeInserir, contador: Currency;
begin
     if grdPedIcf.Focused or btnSair.Focused or btnGravar.Focused or grdPedIte.Focused or
        grdItensConj.Focused then
       begin
         pnlIte.Enabled := false;
         pnlCorTamanho.Visible := false;
         dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
         exit;
       end;

       codBarra := dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString;
       if codBarra= '' then
         begin
           ShowMessage('Deve ser preenchido cód. de barra');
           txtIdItem.SetFocus;
           exit;
         end;

       dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
       if dmGeral.PCP_CD_M_ROM_PED_ICF.Locate('COD_BARRA',VarArrayOf([codBarra]),[]) then
         begin
           if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Ja_Inserida.wav') then
               begin
                 sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\Etiqueta_Ja_Inserida.wav'),SND_LOOP);
               end;
           ShowMessage('Item com cód. barra '+ codBarra+' já foi inserido.');
           dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
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
            dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
            txtIdItem.Text := '';
            txtIdItem.SetFocus;
            exit;
          end;
       finally
         FreeAndNil(SMPrincipal);
       end;




       dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
       dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := codBarra;

        // Comentado por Maxsuel Victor , em 15/09/2017
       {dmGeral.BUS_CD_M_ROM_ETQ.Close;
       dmGeral.BUS_CD_M_ROM_ETQ.Data :=
               dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([5,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
            dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString])); }

       dmGeral.BUS_CD_M_ROM_ETQ.Close;
       dmGeral.BUS_CD_M_ROM_ETQ.Data :=
               dmGeral.BUS_CD_M_ROM_ETQ.DataRequest(VarArrayOf([4,dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString,
               dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));


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

                 dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
                 txtIdItem.Text := '';
                 dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
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
                 dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
                 txtIdItem.Text := '';
                 dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
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
            x_id_ped     := 0;
            x_id_ped_ite := 0;

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
                      dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_TAMANHO').AsInteger) then
                      begin

                        codBarra := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('cod_barra').AsString;

                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger :=
                           dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger;

                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger :=
                           dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger;


                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := codBarra;

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

                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger := xseq;

                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ITEM_CONJUGADO').AsBoolean := false;

                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
                        dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := time;
                        dmGeral.PCP_CD_M_ROM_PED_ICF.Post;
                        dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
                        inc(xseq);
                        ExibirTotais;
                        contador := contador + 1;

                        if qtdeInserir > 1 then
                           begin
                             dmGeral.BUS_CD_M_ROM_ETQ.Next;
                           end;
                      end
                   else
                      begin
                        if dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('ID_ITEM',VarArrayOf([dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger]),[]) then
                           begin
                             if pnlQtde.visible = true then
                                pnlQtde.visible := false;

                             if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav') then
                                begin
                                  sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav'),SND_LOOP);
                                end;
                             ShowMessage('Conferência está completa!');
                             dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
                             txtIdItem.Text := '';
                             dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
                             btnAddIteClick(self);
                             exit;
                           end
                        else
                           begin
                             try

                             dmgeral.PCP_CD_M_ROM_PED_ICJ.Filtered := true;
                             dmgeral.PCP_CD_M_ROM_PED_ICJ.Filter   := ' ID_ITEM = ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsString ;

                             if (dmgeral.PCP_CD_M_ROM_PED_ICJ.IsEmpty) then
                                begin
                                  if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\item_nao_consta_no_pedido.wav') then
                                     begin
                                        sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\item_nao_consta_no_pedido.wav'),SND_LOOP);
                                     end;
                                  ShowMessage('O item não consta no pedido.');
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
                                  txtIdItem.Text := '';
                                  dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
                                  btnAddIteClick(self);
                                  exit;
                                end;

                             dmgeral.PCP_CD_M_ROM_PED_ICJ.Filtered := true;
                             dmgeral.PCP_CD_M_ROM_PED_ICJ.Filter   := ' ID_ITEM = ' + dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsString +
                                                                      ' and QTDE_A_INSERIR <> QTDE_CONF ' ;

                            if not (dmgeral.PCP_CD_M_ROM_PED_ICJ.IsEmpty) then
                                begin
                                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := true;
                                   dmgeral.PCP_CD_M_ROM_PED_ITE.Filter   := ' ID_PED_ITE = ' + dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('ID_PED_ITE').AsString;

                                   if dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj').AsCurrency > 0 then
                                       begin
                                         if dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj').AsCurrency =
                                            dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency then
                                            begin
                                              if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav') then
                                                 begin
                                                   sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav'),SND_LOOP);
                                                 end;
                                              ShowMessage('Conferência de base box está completa!');
                                              dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
                                              btnAddIteClick(self);
                                              txtIdItem.Text := '';
                                              txtIdItem.SetFocus;
                                              exit;
                                            end;
                                       end;

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_ITEM').AsInteger :=
                                       dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_ITEM').AsInteger;

                                   codBarra := dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('cod_barra').AsString;

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := codBarra;

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger :=
                                       dmGeral.BUS_CD_M_ROM_ETQ.FieldByName('ID_COR').AsInteger;

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

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_SEQUENCIA').AsInteger := xseq;

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ITEM_CONJUGADO').AsBoolean := true;

                                   dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency :=
                                       dmGeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency + 1;

                                   dmGeral.PCP_CD_M_ROM_PED_ITE.edit;
                                   dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conj_conf').AsCurrency :=
                                       dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde_conj_conf').AsCurrency + 1;
                                   dmGeral.PCP_CD_M_ROM_PED_ITE.Post;

                                   dmGeral.PCP_CD_M_ROM_PED_ICJ.edit;
                                   dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency :=
                                       dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency + 1;
                                   dmGeral.PCP_CD_M_ROM_PED_ICJ.Post;

                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('HOR_CONFERENCIA').AsDateTime := time;
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.Post;
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
                                   inc(xseq);
                                   contador := contador + 1;
                                end
                             else
                                begin
                                   if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav') then
                                      begin
                                        sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_ROM\conferencia_completa.wav'),SND_LOOP);
                                      end;
                                   ShowMessage('Conferência está completa!');
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
                                   dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
                                   btnAddIteClick(self);
                                   txtIdItem.Text := '';
                                   exit;

                                end;
                             finally
                               dmgeral.PCP_CD_M_ROM_PED_ICJ.Filtered := false;
                               dmgeral.PCP_CD_M_ROM_PED_ITE.Filtered := false;
                             end;
                           end;
                        if qtdeInserir = contador then
                           begin
                              txtIdItem.Text := '';
                           end;
                      end;


                     AtualizarStatusPed;


                     if dmGeral.PCP_CD_M_ROM.ApplyUpdates(0)=0 then
                       begin
                          //dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
                          dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
                          dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite',VarArrayOf([x_id_ped_ite]),[]);
                          dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
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

             dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('cod_barra').AsString := '';
             txtIdItem.Text := '';
             dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;
             btnAddIteClick(self);
             //txtIdItem.Text := '';
           end;

          if x_id_ped_ite > 0  then
             begin
               dmgeral.PCP_CD_M_ROM_PED.Locate('id_pedido',VarArrayOf([x_id_ped]),[]);
               dmgeral.PCP_CD_M_ROM_PED_ITE.Locate('id_ped_ite',VarArrayOf([x_id_ped_ite]),[]);
               dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
             end;


          pnlQtde.visible := false;

          txtIdItem.SetFocus;
          dmGeral.BUS_CD_C_GRU.close;



end;

procedure TPCP_FM_M_ROM_COF.txtIdItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  // Comentado por Maxsuel Victor, em 25/02/2019
  // Essa função abaixo de consultar foi comentada a pedido de Allison.

          {  if key = vk_f3 then
           begin
             PSQ_FM_X_ROM_ETQ := TPSQ_FM_X_ROM_ETQ.Create(Self);
            PSQ_FM_X_ROM_ETQ.ShowModal;
            if not PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.IsEmpty then
               begin
                 dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('COD_BARRA').AsInteger :=
                    PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.FieldByName('COD_BARRA').AsInteger;
               end;
            PSQ_FM_X_ROM_ETQ.Free;
           end;     }








   {if key = vk_f7 then
      begin
        if lblCodBarra.Caption = '<F7> Cod. Barra' then
          begin
            lblCodBarra.Caption := '<F7> Cod. Item';
            txtIdItem.OnExit := nil;

            txtIdItem.DataField := 'id_item';

            txtIdItem.OnExit := txtIdItemExit;

          end
        else if lblCodBarra.Caption = '<F7> Cod. Item' then
          begin
             lblCodBarra.Caption := '<F7> Cod. Barra';

             txtIdItem.OnExit := nil;
             txtIdItem.DataField := 'cod_barra';
             txtIdItem.OnExit := txtIdItemExit;
          end;

        dmGeral.PCP_CD_M_ROM_PED_ICF.Cancel;
        dmGeral.PCP_CD_M_ROM_PED_ICF.Insert;
        txtIdItem.Text := '';
        txtIdItem.SetFocus;
      end; }
end;

procedure TPCP_FM_M_ROM_COF.txtIdItemKeyPress(Sender: TObject; var Key: Char);
begin
  if  not ( Key in ['0'..'9', Chr(8)] ) then
      Key := #0;
end;

procedure TPCP_FM_M_ROM_COF.txtQtdeInfExit(Sender: TObject);
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
             txtIdItem.SetFocus;
             //abort;
           end
        else
           txtIdItemExit(self);
      end;
end;

procedure TPCP_FM_M_ROM_COF.carregaCores;
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



end.
