unit CMP_UN_M_COT_ISC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBGrids;

type
  TCMP_FM_M_COT_ISC = class(TForm)
    lblTitulo: TLabel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    grdSol: TwwDBGrid;
    grdSolItens: TwwDBGrid;
    btnImporta: TButton;
    btnSair: TButton;
    dsCmpSol: TDataSource;
    dsCmpSolItens: TDataSource;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure grdSolCellChanged(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarGridItens;
    procedure ImportarParaCotCmp;
    procedure ImportarParaPedCmp;
  public
    { Public declarations }
    var
      xRegistroImport: Boolean;
      xOrigemChamada: integer;  // 0 - Cotação de compra   1 - Pedido de compra
  end;

var
  CMP_FM_M_COT_ISC: TCMP_FM_M_COT_ISC;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,UApplayClassProxy, EST_UN_M_NFE,FAT_RN_M_NFE;

procedure TCMP_FM_M_COT_ISC.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TCMP_FM_M_COT_ISC.grdSolCellChanged(Sender: TObject);
begin
  if grdSol.SelectedIndex in [1..5] then
     begin
        grdSol.Columns[grdSol.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TCMP_FM_M_COT_ISC.ImportarParaCotCmp;
var
  Existe: Boolean;
begin
    dmGeral.BUS_CD_M_SOL.First;
    if not dmGeral.BUS_CD_M_SOL.IsEmpty then
       begin
         while not dmGeral.BUS_CD_M_SOL.eof do
             begin
                 dmGeral.BUS_CD_M_SOL_ITE.First;
                 while not dmGeral.BUS_CD_M_SOL_ITE.eof do
                     begin
                       Existe := false;

                       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean and dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_COT_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_cor.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_tamanho.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_COT_ITE.Edit;
                                  dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_COT_ITE.Post;
                                end;
                           end;

                       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_COT_ITE.Locate('ID_ITEM;ID_COR',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_cor.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_COT_ITE.Edit;
                                  dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_COT_ITE.Post;
                                end;
                           end;

                       if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_COT_ITE.Locate('ID_ITEM;ID_TAMANHO',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_tamanho.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_COT_ITE.Edit;
                                  dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_COT_ITE.Post;
                                end;
                           end;


                       if not Existe then
                          begin
                             dmGeral.CMP_CD_M_COT_ITE.Insert;
                             dmGeral.CMP_CD_M_COT_ITEid_item.AsInteger                := dmGeral.BUS_CD_M_SOL_ITEid_item.AsInteger;
                             dmGeral.CMP_CD_M_COT_ITEid_busca_item.text               := dmGeral.BUS_CD_M_SOL_ITEid_busca_item.text;
                             dmGeral.CMP_CD_M_COT_ITEint_nomeite.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nomeite.text;
                             dmGeral.CMP_CD_M_COT_ITEint_undcom.text                  := dmGeral.BUS_CD_M_SOL_ITEint_undcom.text;
                             dmGeral.CMP_CD_M_COT_ITEid_cor.text                      := dmGeral.BUS_CD_M_SOL_ITEid_cor.text;
                             dmGeral.CMP_CD_M_COT_ITEint_nomecor.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nomecor.text;
                             dmGeral.CMP_CD_M_COT_ITEid_tamanho.text                  := dmGeral.BUS_CD_M_SOL_ITEid_tamanho.text;
                             dmGeral.CMP_CD_M_COT_ITEint_nometam.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nometam.text;
                             dmGeral.CMP_CD_M_COT_ITEqtde.AsFloat                     := dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                             dmGeral.CMP_CD_M_COT_ITE.Post;
                          end;
                       dmGeral.BUS_CD_M_SOL_ITE.Next;
                     end;
                 dmGeral.BUS_CD_M_SOL.Edit;
                 dmGeral.BUS_CD_M_SOLstatus.AsString          := '1';
                 dmGeral.BUS_CD_M_SOLid_cotacao_imp.AsInteger := dmGeral.CMP_CD_M_COTid_cotacao.AsInteger;
                 dmGeral.BUS_CD_M_SOLid_pedido_imp.AsInteger  := 0;
                 dmGeral.BUS_CD_M_SOL.Post;
                 dmGeral.BUS_CD_M_SOL.Next;
             end;
       end;
    dmGeral.CMP_CD_M_COT_ITE.IndexFieldNames := 'ID_ITEM';
    dmGeral.CMP_CD_M_COT_ITE.First;
end;

procedure TCMP_FM_M_COT_ISC.ImportarParaPedCmp;
var
  Existe: Boolean;
begin
    dmGeral.BUS_CD_M_SOL.First;
    if not dmGeral.BUS_CD_M_SOL.IsEmpty then
       begin
         while not dmGeral.BUS_CD_M_SOL.eof do
             begin
                 dmGeral.BUS_CD_M_SOL_ITE.First;
                 while not dmGeral.BUS_CD_M_SOL_ITE.eof do
                     begin
                       Existe := false;

                       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean and dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_PED_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_cor.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_tamanho.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_PED_ITE.Edit;
                                  dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_PED_ITE.Post;
                                end;
                           end;

                       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_PED_ITE.Locate('ID_ITEM;ID_COR',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_cor.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_PED_ITE.Edit;
                                  dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_PED_ITE.Post;
                                end;
                           end;

                       if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                           begin
                             if dmGeral.CMP_CD_M_PED_ITE.Locate('ID_ITEM;ID_TAMANHO',VarArrayOf([dmGeral.BUS_CD_M_SOL_ITEid_item.AsString,
                                                                                                        dmGeral.BUS_CD_M_SOL_ITEid_tamanho.AsString]),[]) then
                                begin
                                  Existe := true;
                                  dmGeral.CMP_CD_M_PED_ITE.Edit;
                                  dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat                     := dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat + dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                                  dmGeral.CMP_CD_M_PED_ITE.Post;
                                end;
                           end;


                       if not Existe then
                          begin
                             dmGeral.CMP_CD_M_PED_ITE.Insert;
                             dmGeral.CMP_CD_M_PED_ITEid_item.AsInteger                := dmGeral.BUS_CD_M_SOL_ITEid_item.AsInteger;
                             dmGeral.CMP_CD_M_PED_ITEid_busca_item.text               := dmGeral.BUS_CD_M_SOL_ITEid_busca_item.text;
                             dmGeral.CMP_CD_M_PED_ITEint_nomeite.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nomeite.text;
                             dmGeral.CMP_CD_M_PED_ITEint_nomeund.text                  := dmGeral.BUS_CD_M_SOL_ITEint_undcom.text;
                             dmGeral.CMP_CD_M_PED_ITEid_cor.text                      := dmGeral.BUS_CD_M_SOL_ITEid_cor.text;
                             dmGeral.CMP_CD_M_PED_ITEint_nomecor.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nomecor.text;
                             dmGeral.CMP_CD_M_PED_ITEid_tamanho.text                  := dmGeral.BUS_CD_M_SOL_ITEid_tamanho.text;
                             dmGeral.CMP_CD_M_PED_ITEint_nometam.text                 := dmGeral.BUS_CD_M_SOL_ITEint_nometam.text;
                             dmGeral.CMP_CD_M_PED_ITEqtde.AsFloat                     := dmGeral.BUS_CD_M_SOL_ITEqtde.AsFloat;
                             dmGeral.CMP_CD_M_PED_ITE.Post;
                          end;
                       dmGeral.BUS_CD_M_SOL_ITE.Next;
                     end;
                 dmGeral.BUS_CD_M_SOL.Edit;
                 dmGeral.BUS_CD_M_SOLstatus.AsString          := '1';
                 dmGeral.BUS_CD_M_SOLid_cotacao_imp.AsInteger := 0;
                 dmGeral.BUS_CD_M_SOLid_pedido_imp.AsInteger  := dmGeral.CMP_CD_M_PEDid_pedido.AsInteger;
                 dmGeral.BUS_CD_M_SOL.Post;
                 dmGeral.BUS_CD_M_SOL.Next;
             end;
       end;
    dmGeral.CMP_CD_M_PED_ITE.IndexFieldNames := 'ID_ITEM';
    dmGeral.CMP_CD_M_PED_ITE.First;
end;

procedure TCMP_FM_M_COT_ISC.AtualizarGridItens;
begin

end;

procedure TCMP_FM_M_COT_ISC.btnImportaClick(Sender: TObject);
var
  SMPrincipal : TSMClient;

begin
  if dmGeral.BUS_CD_M_SOL.IsEmpty then
     begin
       ShowMessage('Nenhuma solicitação de compra foi encontrada.');
       exit;
     end;
  try

  dmGeral.BUS_CD_M_SOL.Filtered := True;
  dmGeral.BUS_CD_M_SOL.Filter := ' SELECAO = ''1'' ';

  if dmGeral.BUS_CD_M_SOL.IsEmpty then
     begin
       showmessage('Nenhuma solicitação de compra foi selecionada.');
       exit;
     end;

  xRegistroImport := false;

  if MessageDlg('Confirma importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if xOrigemChamada = 0 then  // Cotação de compra
           ImportarParaCotCmp;

        if xOrigemChamada = 1 then // Pedido de compra
           ImportarParaPedCmp;

        xRegistroImport := true;
        close;
     end;
  finally
    dmGeral.BUS_CD_M_SOL.Filtered := false;
  end;
end;

procedure TCMP_FM_M_COT_ISC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if xRegistroImport = false then
     begin
       dmGeral.BUS_CD_M_SOL.Close;
     end;
end;

procedure TCMP_FM_M_COT_ISC.FormShow(Sender: TObject);
var
  i: integer;
begin

  xRegistroImport := false;

  btnImporta.SetFocus;

  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
          dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([90,0]));

  dmGeral.AtualizarGridItens(grdSolItens,'int_nomeite',23,12);

end;

end.


