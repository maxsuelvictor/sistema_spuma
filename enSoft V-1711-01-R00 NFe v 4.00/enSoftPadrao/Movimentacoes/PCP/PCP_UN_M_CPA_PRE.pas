unit PCP_UN_M_CPA_PRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExExtCtrls, System.IniFiles,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Datasnap.DBClient,
  dxGDIPlusClasses;

type
  TPCP_FM_M_CPA_PRE = class(TForm)
    btnAtualizarSaldoEst: TBitBtn;
    btnZerarEstoque: TBitBtn;
    btnZerarQtdeProduzida: TBitBtn;
    pnZerarOp: TPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblTipoItem: TLabel;
    cbbTipoItem: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnRecomecar: TButton;
    btnSair: TBitBtn;
    Label2: TLabel;
    txtOpIni: TEdit;
    btnExecutarZerarOp: TBitBtn;
    BUS_CD_M_OPR_OPP_INT: TClientDataSet;
    cdsOppOpp_AZerar: TClientDataSet;
    imPasso2: TImage;
    imPasso3: TImage;
    lblTempo: TLabel;
    Button1: TButton;
    BUS_CD_M_OPR_OPP_INTid_opr: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_opr_opp: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_item: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_cor: TIntegerField;
    BUS_CD_M_OPR_OPP_INTid_tamanho: TIntegerField;
    BUS_CD_M_OPR_OPP_INTqtde_a_produzir: TFloatField;
    BUS_CD_M_OPR_OPP_INTqtde_produzida: TFloatField;
    BUS_CD_M_OPR_OPP_INTqtde_a_produzir_orig: TFloatField;
    BUS_CD_M_OPR_OPP_INTid_resp_alt: TIntegerField;
    imPasso4: TImage;
    procedure btnRecomecarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTipoItemChange(Sender: TObject);
    procedure btnAtualizarSaldoEstClick(Sender: TObject);
    procedure btnZerarEstoqueClick(Sender: TObject);
    procedure btnZerarQtdeProduzidaClick(Sender: TObject);
    procedure btnExecutarZerarOpClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure RecomecarCont;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_CPA_PRE: TPCP_FM_M_CPA_PRE;

implementation

{$R *.dfm}

uses PCP_UN_M_CPA, uProxy, enFunc, uDmGeral;

procedure TPCP_FM_M_CPA_PRE.btnAtualizarSaldoEstClick(Sender: TObject);
var
   SMPrincipal: TSMClient;
   tipo_item: string;
   resultado: Boolean;
begin

  if (cbbTipoItem.ItemIndex = 0) then
     begin
       Showmessage('Não foi selecionado nenhum Tipo de Item.');
       exit;
     end;

  try
    Screen.Cursor := crHourGlass;

     // Buscará as OP partindo da OP informada , com as qtde que já saiu na carga para
     // cada item do opr_opp.
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    if (cbbTipoItem.ItemIndex <> 1)  then
       tipo_item   := copy(cbbTipoItem.Text,0,2)
    else tipo_item   := '';

    lblTempo.Visible := true;
    PCP_FM_M_CPA_PRE.refresh;

    resultado   := SMPrincipal.enCorrigirEstoque(dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                             tipo_item);

    if resultado = true then
       begin
       {  cbbTipoItem.Enabled := false;
         btnAtualizarSaldoEst.Enabled := false;
         btnZerarEstoque.Enabled := true;
         imPasso2.Visible := true;}
       end;

  finally
    lblTempo.Visible := false;
    Screen.Cursor := crDefault;
    FreeAndNil(SMPrincipal);
  end;


end;

procedure TPCP_FM_M_CPA_PRE.btnExecutarZerarOpClick(Sender: TObject);
var
  dataOpOppInt: OleVariant;
  SMPrincipal: TSMClient;
  v_saldo_saida_rest: Currency;
  Arquivo: TiniFile;
begin


   if (trim(txtOpIni.text)= '' ) or (trim(txtOpIni.text)= '0') then
      begin
        ShowMessage('É preciso preencher o código da O.P de partida.');
        exit;
      end;


  try
     // Buscará as OP partindo da OP informada , com as qtde que já saiu na carga para
     // cada item do opr_opp.
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    SMPrincipal.enSgqFinBuscarOprOppComSaida(txtOpIni.text,dataOpOppInt);

    cdsOppOpp_AZerar.Data := dataOpOppInt;

  finally
    FreeAndNil(SMPrincipal);
  end;


  // Busca todos os opr_opp partindo da op informada, para que a qtde produzida seja atualizada.
  BUS_CD_M_OPR_OPP_INT.Close;
  BUS_CD_M_OPR_OPP_INT.Data :=
        BUS_CD_M_OPR_OPP_INT.DataRequest(
              VarArrayOf([6,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,txtOpIni.text]));


  while not  BUS_CD_M_OPR_OPP_INT.Eof do
     begin
       if BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency > 0 then
          begin
            BUS_CD_M_OPR_OPP_INT.edit;
            BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency := 0;
            BUS_CD_M_OPR_OPP_INT.Post;
          end;
       BUS_CD_M_OPR_OPP_INT.next;
     end;
  if BUS_CD_M_OPR_OPP_INT.ChangeCount > 0 then
     begin
       if BUS_CD_M_OPR_OPP_INT.ApplyUpdates(0) <> 0 then
          begin
            Showmessage('Erro ao atualizar a qtde para valor 0 nas Ordens de Produção.');
            BUS_CD_M_OPR_OPP_INT.cancel;
            abort;
          end;
     end;

  BUS_CD_M_OPR_OPP_INT.First;

  // Irá alimentar a qtde produzida do item , em cima daquilo que já saiu (que foi pistoloado)
  // para quando chegar o momento da CONTAGEM, o sistema irá pegar adicionar no campo qtde_produzida também

  while not cdsOppOpp_AZerar.eof do
     begin
       v_saldo_saida_rest := cdsOppOpp_AZerar.FieldByName('qtde_saida').AsCurrency;
       BUS_CD_M_OPR_OPP_INT.Filtered := true;
       BUS_CD_M_OPR_OPP_INT.Filter := ' id_opr = ' + cdsOppOpp_AZerar.FieldByName('id_opr').AsString +
                                      ' and id_item = ' + cdsOppOpp_AZerar.FieldByName('id_item').AsString +
                                      ' and id_cor = ' + cdsOppOpp_AZerar.FieldByName('id_cor').AsString;
       while not BUS_CD_M_OPR_OPP_INT.Eof do
          begin
            if v_saldo_saida_rest > 0 then
               begin
                 if (v_saldo_saida_rest) >= (BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency) then
                     begin
                       BUS_CD_M_OPR_OPP_INT.Edit;
                       BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency :=
                          BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;
                       BUS_CD_M_OPR_OPP_INT.Post;

                       v_saldo_saida_rest := v_saldo_saida_rest - BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;
                     end
                 else
                     begin
                       BUS_CD_M_OPR_OPP_INT.Edit;
                       BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency := v_saldo_saida_rest;
                       BUS_CD_M_OPR_OPP_INT.Post;
                     end;
               end;
            BUS_CD_M_OPR_OPP_INT.Next;
          end;
       cdsOppOpp_AZerar.Next;
     end;
  BUS_CD_M_OPR_OPP_INT.Filtered := false;


  if BUS_CD_M_OPR_OPP_INT.ApplyUpdates(0) <> 0 then
     begin
       ShowMessage('Erro ao tentar fazer a atualiação');
     end
  else
     begin
       ShowMessage('O valor do campo "quantidade produzida" das OPs foi reconstruído baseado nas saídas com sucesso!');

       if not FileExists(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini') then
           begin
             Showmessage('Arquivo ContagemProAcab.Ini não encontrado.');
             abort;
           end
       else
           begin
             Arquivo := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini');
             Arquivo.WriteString('CONTAGEM','INICIAR_CONTAGEM','SIM');

             imPasso4.Visible := true;

             Showmessage('Você será realocado para a tela de contagem para poder iniciar a contagem!');

             PCP_FM_M_CPA.btnIncluir.Enabled          := true;
             PCP_FM_M_CPA.btnEncerrarContagem.Enabled := true;
             close;
           end;
     end;
end;

procedure TPCP_FM_M_CPA_PRE.btnRecomecarClick(Sender: TObject);
begin
   RecomecarCont;
end;

procedure TPCP_FM_M_CPA_PRE.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TPCP_FM_M_CPA_PRE.btnZerarEstoqueClick(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var
   SMPrincipal: TSMClient;
   tipo_item: string;
   resultado: Boolean;
   Arquivo: TInifile;

begin

  if Dc_MessageDlgCheck('Ao fazer este passo, a contagem só poderá ser feita depois de terminar os passos seguintes!'
                        + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', @MostraMensagem) = 7 then
     begin
       //
     end
  else
     begin
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini') then
             begin
               Arquivo := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini');
               Arquivo.WriteString('CONTAGEM','INICIAR_CONTAGEM','NAO');
             end
          else
             begin
               Arquivo := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini');
               Arquivo.EraseSection('CONTAGEM');
               Arquivo.WriteString('CONTAGEM','INICIAR_CONTAGEM','NAO');
             end;

          Screen.Cursor := crHourGlass;

          //  Irá zerar o estoque

          SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
          tipo_item   := copy(cbbTipoItem.Text,0,2);
          lblTempo.Visible := true;
          PCP_FM_M_CPA_PRE.refresh;

          resultado   := SMPrincipal.enZerarContagem(dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                                   tipo_item,true,false);

          if resultado = true then
             begin
               imPasso3.Visible := true;
               if tipo_item = '04' then  // Produto acabado
                  begin
                    btnZerarEstoque.Enabled := false;
                    btnZerarQtdeProduzida.Enabled := true;
                  end;
             end;

        finally
          lblTempo.Visible := false;
          Screen.Cursor := crDefault;
          FreeAndNil(SMPrincipal);
        end;
     end;
end;

procedure TPCP_FM_M_CPA_PRE.btnZerarQtdeProduzidaClick(Sender: TObject);
var
  dataOpOppInt: OleVariant;
  SMPrincipal: TSMClient;
  v_saldo_saida_rest: Currency;
  Arquivo: TiniFile;
begin




  try
     // Buscará as OP partindo da OP informada , com as qtde que já saiu na carga para
     // cada item do opr_opp.
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    SMPrincipal.enSgqFinBuscarOprOppComSaida('1',dataOpOppInt);

    cdsOppOpp_AZerar.Data := dataOpOppInt;

  finally
    FreeAndNil(SMPrincipal);
  end;


  // Busca todos os opr_opp partindo da op informada, para que a qtde produzida seja atualizada.
  BUS_CD_M_OPR_OPP_INT.Close;
  BUS_CD_M_OPR_OPP_INT.Data :=
        BUS_CD_M_OPR_OPP_INT.DataRequest(
              VarArrayOf([7,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));


  while not  BUS_CD_M_OPR_OPP_INT.Eof do
     begin
       if BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency > 0 then
          begin
            BUS_CD_M_OPR_OPP_INT.edit;
            BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency := 0;
            BUS_CD_M_OPR_OPP_INT.Post;
          end;
       BUS_CD_M_OPR_OPP_INT.next;
     end;
  if BUS_CD_M_OPR_OPP_INT.ChangeCount > 0 then
     begin
       if BUS_CD_M_OPR_OPP_INT.ApplyUpdates(0) <> 0 then
          begin
            Showmessage('Erro ao atualizar a qtde para valor 0 nas Ordens de Produção.');
            BUS_CD_M_OPR_OPP_INT.cancel;
            abort;
          end;
     end;

  BUS_CD_M_OPR_OPP_INT.First;

  // Irá alimentar a qtde produzida do item , em cima daquilo que já saiu (que foi pistoloado)
  // para quando chegar o momento da CONTAGEM, o sistema irá pegar adicionar no campo qtde_produzida também

  while not cdsOppOpp_AZerar.eof do
     begin
       v_saldo_saida_rest := cdsOppOpp_AZerar.FieldByName('qtde_saida').AsCurrency;
       BUS_CD_M_OPR_OPP_INT.Filtered := true;
       BUS_CD_M_OPR_OPP_INT.Filter := ' id_opr = ' + cdsOppOpp_AZerar.FieldByName('id_opr').AsString +
                                      ' and id_item = ' + cdsOppOpp_AZerar.FieldByName('id_item').AsString +
                                      ' and id_cor = ' + cdsOppOpp_AZerar.FieldByName('id_cor').AsString;
       while not BUS_CD_M_OPR_OPP_INT.Eof do
          begin
            if v_saldo_saida_rest > 0 then
               begin
                 if (v_saldo_saida_rest) >= (BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency) then
                     begin
                       BUS_CD_M_OPR_OPP_INT.Edit;
                       BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency :=
                          BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;
                       BUS_CD_M_OPR_OPP_INT.Post;

                       v_saldo_saida_rest := v_saldo_saida_rest - BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_a_produzir').AsCurrency;
                     end
                 else
                     begin
                       BUS_CD_M_OPR_OPP_INT.Edit;
                       BUS_CD_M_OPR_OPP_INT.FieldByName('qtde_produzida').AsCurrency := v_saldo_saida_rest;
                       BUS_CD_M_OPR_OPP_INT.Post;
                     end;
               end;
            BUS_CD_M_OPR_OPP_INT.Next;
          end;
       cdsOppOpp_AZerar.Next;
     end;
  BUS_CD_M_OPR_OPP_INT.Filtered := false;


  if BUS_CD_M_OPR_OPP_INT.ApplyUpdates(0) <> 0 then
     begin
       ShowMessage('Erro ao tentar fazer a atualiação');
     end
  else
     begin
       ShowMessage('O valor do campo "quantidade produzida" das OPs foi reconstruído baseado nas saídas com sucesso!');

       if not FileExists(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini') then
           begin
             Showmessage('Arquivo ContagemProAcab.Ini não encontrado.');
             abort;
           end
       else
           begin
             Arquivo := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ContagemProAcab.Ini');
             Arquivo.WriteString('CONTAGEM','INICIAR_CONTAGEM','SIM');

             imPasso4.Visible := true;

             Showmessage('Você será realocado para a tela de contagem para poder iniciar a contagem!');

             PCP_FM_M_CPA.btnIncluir.Enabled          := true;
             PCP_FM_M_CPA.btnEncerrarContagem.Enabled := true;
             close;
           end;
     end;
end;

procedure TPCP_FM_M_CPA_PRE.Button1Click(Sender: TObject);
begin
 cbbTipoItem.ItemIndex         := 6; // cbbTipoItem.ItemIndex +1;
 {
  cbbTipoItem.Enabled := false;
  btnAtualizarSaldoEst.Enabled := false;
  btnZerarEstoque.Enabled := true;
  imPasso2.Visible := true;  }

   btnAtualizarSaldoEst.Enabled  := false;
   btnZerarEstoque.Enabled       := false;
   btnZerarQtdeProduzida.Enabled := true;
end;

procedure TPCP_FM_M_CPA_PRE.cbbTipoItemChange(Sender: TObject);
begin
  if cbbTipoItem.Text = 'Nenhum' then
     begin
       RecomecarCont;
     end
  else
     begin
       btnAtualizarSaldoEst.Enabled := true;
       btnZerarEstoque.Enabled := true;
     end;
end;

procedure TPCP_FM_M_CPA_PRE.FormShow(Sender: TObject);
begin
  RecomecarCont;

end;

procedure TPCP_FM_M_CPA_PRE.RecomecarCont;
begin
//  cbbTipoItem.Enabled           := false;
  cbbTipoItem.ItemIndex         := 6;
  btnAtualizarSaldoEst.Enabled  := true;
  btnZerarEstoque.Enabled       := true;
  btnZerarQtdeProduzida.Enabled := false;
  // pnZerarOp.Enabled       := false;
  //txtOpIni.Color         := clBtnFace;
  imPasso2.Visible := false;
  imPasso3.Visible := false;
  imPasso4.Visible := false;
  lblTempo.visible := false;
end;

end.
