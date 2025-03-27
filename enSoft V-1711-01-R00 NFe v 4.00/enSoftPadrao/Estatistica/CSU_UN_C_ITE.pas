unit CSU_UN_C_ITE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Buttons, vcl.Wwdbedit, Datasnap.DBClient, Vcl.Menus,
  vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TCSU_FM_C_ITE = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    gbItens: TGroupBox;
    gbFilial: TGroupBox;
    dso: TwwDataSource;
    dsoFes: TwwDataSource;
    dsoFesAlm: TwwDataSource;
    gbBusca: TGroupBox;
    lblFormaPagamento: TLabel;
    lblTexto: TLabel;
    btnFiltrar: TButton;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    lblVlrVenda: TLabel;
    lblLocalizacao: TLabel;
    txtLocalizacao: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btnEstatistica: TButton;
    btnNotasFiscais: TButton;
    btnExtrato: TButton;
    btnSair: TSpeedButton;
    cdsTempItePrc: TClientDataSet;
    cdsTempItePrcid_item: TIntegerField;
    cdsTempItePrcprcAvista: TCurrencyField;
    cdsTempItePrcprcAprazo: TCurrencyField;
    dsTempItePrc: TwwDataSource;
    dsTempItePrcParCpg: TwwDataSource;
    cdsTempItePrcParCpg: TClientDataSet;
    cdsTempItePrcParCpgint_nomecpg: TStringField;
    cdsTempItePrcParCpgpreco01: TCurrencyField;
    cdsTempItePrcParCpgid_item: TIntegerField;
    cdsTempItePrcParCpgordem: TIntegerField;
    pnSldItens: TPanel;
    pnSldAlmItens: TPanel;
    Label2: TLabel;
    dgFes: TwwDBGrid;
    Label3: TLabel;
    dgFesAlm: TwwDBGrid;
    pnItens: TPanel;
    dgItens: TwwDBGrid;
    lblPagamentos: TLabel;
    pnPrcItem: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    txtPrcAvista: TwwDBEdit;
    txtPrcAprazo: TwwDBEdit;
    cdsTempItePrcint_nomepec: TStringField;
    cdsTempItePrcordem: TIntegerField;
    pnPrc: TPanel;
    pnPrcParCpg: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    pnPrcPec: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BUS_CD_C_ITE: TClientDataSet;
    pnPrcParFinan: TPanel;
    wwDBGrid3: TwwDBGrid;
    Panel6: TPanel;
    cdsTempPrcFinan: TClientDataSet;
    cdsTempPrcFinanid_item: TIntegerField;
    cdsTempPrcFinandesc_perfil: TStringField;
    cdsTempPrcFinanprcVista: TCurrencyField;
    cdsTempPrcFinanprc30d: TCurrencyField;
    cdsTempPrcFinanprc60d: TCurrencyField;
    cdsTempPrcFinanprc90d: TCurrencyField;
    cdsTempPrcFinanprc120d: TCurrencyField;
    lblCodificacaoLMestre: TLabel;
    cdsTempItePrcPerfil: TClientDataSet;
    dsoTempItePrcPerfil: TwwDataSource;
    cdsTempItePrcPerfildescricao: TStringField;
    cdsTempItePrcPerfilpreco_avista: TCurrencyField;
    cdsTempItePrcPerfilpreco1: TCurrencyField;
    cdsTempItePrcPerfilpreco2: TCurrencyField;
    cdsTempItePrcPerfilpreco3: TCurrencyField;
    cdsTempItePrcPerfilpreco4: TCurrencyField;
    cdsTempItePrcPerfilid_item: TIntegerField;
    dgFesSgq: TwwDBGrid;
    pnInfoMesAnt: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    btnExibirMesAnt: TButton;
    Label8: TLabel;
    Label9: TLabel;
    txtSldAntMesAnt: TwwDBEdit;
    txtEntradasMesAnt: TwwDBEdit;
    txtSaidasMesAnt: TwwDBEdit;
    txtSldMesAnt: TwwDBEdit;
    BUS_CD_M_SLD_ITE: TClientDataSet;
    BUS_DS_M_SLD_ITE: TDataSource;
    BUS_CD_M_SLD_ITEsaldo_anterior: TFloatField;
    BUS_CD_M_SLD_ITEqtde_entradas: TFloatField;
    BUS_CD_M_SLD_ITEqtde_saidas: TFloatField;
    BUS_CD_M_SLD_ITEsaldo: TFloatField;
    BUS_CD_M_SLD_ITEvlr_custo_medio: TFMTBCDField;
    BUS_CD_M_SLD_ITEvlr_custo_ult_compra: TFMTBCDField;
    Label10: TLabel;
    txtUltCompra: TwwDBEdit;
    txtAplicacao: TDBMemo;
    btnPedCmp: TButton;
    chbMostrarSldZero: TCheckBox;
    btnOrdem: TButton;
    pnPrcSerCat: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    wwDBGrid4: TwwDBGrid;
    cdsTempPrcSerCat: TClientDataSet;
    cdsTempPrcSerCatpreco_avista: TCurrencyField;
    cdsTempPrcSerCatpreco_aprazo: TCurrencyField;
    dsTempPrcSerCat: TwwDataSource;
    cdsTempPrcSerCatdescricao: TStringField;
    cdsTempPrcSerCatid_item: TIntegerField;
    pmIteCoj: TPopupMenu;
    btnIteCoj: TMenuItem;
    BUS_CD_C_ITE_LOC: TClientDataSet;
    BUS_CD_C_ITEid_item: TIntegerField;
    BUS_CD_C_ITEdescricao: TWideStringField;
    BUS_CD_C_ITEid_und_venda: TWideStringField;
    BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField;
    BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField;
    BUS_CD_C_ITEint_desc_grupo: TWideStringField;
    BUS_CD_C_ITEint_tipo_item: TWideStringField;
    BUS_CD_C_ITEint_nomegrp: TWideStringField;
    BUS_CD_C_ITEpreco_sugerido: TFMTBCDField;
    BUS_CD_C_ITECAD_SQ_C_ITE_LOC: TDataSetField;
    BUS_CD_C_ITE_LOCid_item: TIntegerField;
    BUS_CD_C_ITE_LOCid_empresa: TIntegerField;
    dsoLoc: TwwDataSource;
    BUS_CD_C_ITEaplicacao: TWideStringField;
    BUS_CD_C_ITEativo: TBooleanField;
    BUS_CD_C_ITEcod_fabrica: TWideStringField;
    dgEmpPrc: TwwDBGrid;
    dsoEmp: TwwDataSource;
    Label11: TLabel;
    txtEscaninho: TDBEdit;
    BUS_CD_C_ITE_LOCloca_rua: TWideStringField;
    BUS_CD_C_ITE_LOCloca_prateleira: TWideStringField;
    BUS_CD_C_ITE_LOCloca_escaninho: TWideStringField;
    btnLote: TMenuItem;
    pmSldAlm: TPopupMenu;
    Exibirpedidospedente1: TMenuItem;
    Label12: TLabel;
    procedure btnNotasFiscaisClick(Sender: TObject);
    procedure btnEstatisticaClick(Sender: TObject);
    procedure btnExtratoClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dgItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgItensRowChanged(Sender: TObject);
    procedure dgFesRowChanged(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dgFesDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cdsTempItePrcPerfilBeforeOpen(DataSet: TDataSet);
    procedure btnExibirMesAntClick(Sender: TObject);
    procedure BUS_CD_M_SLD_ITEBeforeOpen(DataSet: TDataSet);
    procedure btnPedCmpClick(Sender: TObject);
    procedure btnOrdemClick(Sender: TObject);
    procedure dgFesAlmCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgFesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnIteCojClick(Sender: TObject);
    procedure cbbEmpChange(Sender: TObject);
    procedure dgEmpPrcRowChanged(Sender: TObject);
    procedure Exibirpedidospedente1Click(Sender: TObject);
  private
    { Private declarations }
     procedure ExibirPrecoItem;
     function ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
     var
      xPnPrcItem,xPnPrc,xPnPrcPec,xPnPrcParCpg,xPnPrcParFinan,xPnPrcSerCat,modOficina:Boolean;
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE: TCSU_FM_C_ITE;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_C_ITE_NFE, CSU_UN_C_ITE_EST, CSU_UN_C_ITE_EXT,
  enConstantes, CSU_UN_C_ITE_CMP, CSU_UN_C_ITE_ORV, CSU_UN_C_ITE_COJ,
  CSU_UN_C_ITE_PPN;

procedure TCSU_FM_C_ITE.BitBtn1Click(Sender: TObject);
begin
  pnPrcPec.Visible := false;
end;

procedure TCSU_FM_C_ITE.btnEstatisticaClick(Sender: TObject);
begin
 if BUS_CD_C_ITE.IsEmpty then
   begin
     ShowMessage('É necessário selecionar item.');
     exit;
   end;

 CSU_FM_C_ITE_EST := TCSU_FM_C_ITE_EST.Create(Self);

 CSU_FM_C_ITE_EST.CodItem := BUS_CD_C_ITE.FieldBYName('ID_ITEM').AsString;

 CSU_FM_C_ITE_EST.ShowModal;
 CSU_FM_C_ITE_EST.Free;
end;

procedure TCSU_FM_C_ITE.btnExibirMesAntClick(Sender: TObject);
var
  dia,mes,ano: word;
  DataIni,DataFinal: String;
begin

  if dmGeral.BUS_CD_M_FES.IsEmpty then
     begin
       ShowMessage('O grid de Saldo de Itens está vazio.');
       exit;
     end;


  DecodeDate(xDataSis,ano,mes,dia);
  DataIni := '01/'+IntToStr(mes)+'/'+IntToStr(ano);
  if mes = 12 then
     begin
       mes := 1;
       ano := ano + 1;
     end
  else
     begin
       mes := mes + 1;
     end;

  DataFinal   := '01/'+IntToStr(mes)+'/'+IntToStr(ano);
  DataFinal := DateToStr( StrToDate(Datafinal)-1);

  BUS_CD_M_SLD_ITE.Close;
           BUS_CD_M_SLD_ITE.Data :=
             BUS_CD_M_SLD_ITE.DataRequest(VarArrayOf([dmGeral.BUS_CD_M_FES.FieldByName('id_empresa').AsString,
                 DataIni,DataFinal,dmGeral.BUS_CD_M_FES.FieldByName('id_item').AsString,
                 dmGeral.BUS_CD_M_FES.FieldByName('id_cor').AsString,
                 dmGeral.BUS_CD_M_FES.FieldByName('id_tamanho').AsString]));
end;

procedure TCSU_FM_C_ITE.btnExtratoClick(Sender: TObject);
begin

  if BUS_CD_C_ITE.IsEmpty then
     begin
       Showmessage('Nenhuma Item foi selecionado!.');
       exit;
     end
  else
    begin
      if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean or dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean) and
                 (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean) then
        begin
          if dmgeral.BUS_CD_M_FES_ALM.IsEmpty then
            begin
              ShowMessage('Nâo há registro de saldo para a exibição do extrato.');
              exit;
            end
          else
            begin
              dmGeral.BUS_CD_M_EXT_ITE.Close;
              dmGeral.BUS_CD_M_EXT_ITE.Data :=
                 dmGeral.BUS_CD_M_EXT_ITE.DataRequest(
                      VarArrayOf([1, dmGeral.BUS_CD_M_FES_ALMid_empresa.Text, dmGeral.BUS_CD_M_FES_ALMid_almoxarifado.Text,
                                  dmGeral.BUS_CD_M_FES_ALMid_item.Text, dmGeral.BUS_CD_M_FES_ALMid_cor.Text,
                                  dmGeral.BUS_CD_M_FES_ALMid_tamanho.Text]));
              if not dmGeral.BUS_CD_M_EXT_ITE.IsEmpty then
                 begin
                   dmGeral.BUS_CD_M_EXT_ITE.IndexFieldNames := 'DATA;ID_FEA';
                 end;
            end;
        end
  else
        begin
          if dmgeral.BUS_CD_M_FES.IsEmpty then
            begin
              ShowMessage('Nâo há registro de saldo para a exibição do extrato.');
              exit;
            end
          else
            begin
              dmGeral.BUS_CD_M_EXT_ITE.Close;
              dmGeral.BUS_CD_M_EXT_ITE.Data :=
                 dmGeral.BUS_CD_M_EXT_ITE.DataRequest(
                      VarArrayOf([0, dmGeral.BUS_CD_M_FESid_empresa.Text, '', dmGeral.BUS_CD_M_FESid_item.Text,
                        dmGeral.BUS_CD_M_FESid_cor.Text, dmGeral.BUS_CD_M_FESid_tamanho.Text]));
              if not dmGeral.BUS_CD_M_EXT_ITE.IsEmpty then
                begin
                  dmGeral.BUS_CD_M_EXT_ITE.IndexFieldNames := 'DATA;ID_FEA';
                end;
            end;

        end;

      CSU_FM_C_ITE_EXT := TCSU_FM_C_ITE_EXT.Create(Self);
      CSU_FM_C_ITE_EXT.ShowModal;
      CSU_FM_C_ITE_EXT.Free;
    end;
end;

procedure TCSU_FM_C_ITE.btnFiltrarClick(Sender: TObject);
VAR
  xMostrarSldZero,xEmpresa:String;
begin
  Screen.Cursor := crHourGlass;
  try

  BUS_CD_M_SLD_ITE.Close;

  if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

  xMostrarSldZero := '0';

  if chbMostrarSldZero.Checked = true then
    begin
      xMostrarSldZero := '1';
    end;

  xEmpresa := '';
  if cbbPesquisa.Items[cbbPesquisa.ItemIndex]='Loca-Rua' then
    begin
      xEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
    end;


  BUS_CD_C_ITE.Close;
  BUS_CD_C_ITE.Data :=
    BUS_CD_C_ITE.DataRequest(
      VarArrayOf([cbbPesquisa.ItemIndex+100, txtPesquisa.Text,xMostrarSldZero,xEmpresa]));

  BUS_CD_C_ITE.IndexFieldNames := 'descricao';
  finally
     Screen.Cursor := crDefault;
     btnFiltrar.SetFocus;
  end;

  BUS_CD_C_ITE.First;
end;

procedure TCSU_FM_C_ITE.btnIteCojClick(Sender: TObject);
begin

 if not BUS_CD_C_ITE.IsEmpty then
    begin
      CSU_FM_C_ITE_COJ := TCSU_FM_C_ITE_COJ.Create(Self);
      CSU_FM_C_ITE_COJ.xCodItem := BUS_CD_C_ITE.FieldByName('ID_ITEM').text;
      CSU_FM_C_ITE_COJ.ShowModal;
      CSU_FM_C_ITE_COJ.Free;
    end;
end;

procedure TCSU_FM_C_ITE.btnNotasFiscaisClick(Sender: TObject);
begin
  if BUS_CD_C_ITE.IsEmpty then
     begin
       Showmessage('Nenhuma Item foi selecionado!.');
       exit;
     end
  else
    begin
      dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.Close;
      dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.Data :=
             dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.DataRequest(
                  VarArrayOf([ '' ,  ' '''+'S'+''','''+'R'+''' ' ,
                      ''''+ BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));

      dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.Close;
      dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.Data :=
             dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.DataRequest(
                  VarArrayOf([ '' ,  ' '''+'E'+''','''+'D'+''' '  ,
                      ''''+BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));

      CSU_FM_C_ITE_NFE := TCSU_FM_C_ITE_NFE.Create(Self);
      CSU_FM_C_ITE_NFE.ShowModal;
      CSU_FM_C_ITE_NFE.Free;
    end;
end;

procedure TCSU_FM_C_ITE.btnOrdemClick(Sender: TObject);
begin
  if BUS_CD_C_ITE.IsEmpty then
     begin
       Showmessage('Nenhuma Item foi selecionado!.');
       exit;
     end;


  dmGeral.BUS_CD_M_CSU_ORV_ITE.Close;
  dmGeral.BUS_CD_M_CSU_ORV_ITE.Data :=
  dmGeral.BUS_CD_M_CSU_ORV_ITE.DataRequest(
                  VarArrayOf([ '' ,  ' '''+'0'+''','''+'1'+''','''+'2'+''' ' ,
                      ''''+ BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));


  CSU_FM_C_ITE_ORV := TCSU_FM_C_ITE_ORV.Create(Self);
  CSU_FM_C_ITE_ORV.ShowModal;
  CSU_FM_C_ITE_ORV.Free;
end;

procedure TCSU_FM_C_ITE.btnPedCmpClick(Sender: TObject);
begin
  if BUS_CD_C_ITE.IsEmpty then
     begin
       Showmessage('Nenhuma Item foi selecionado!.');
       exit;
     end;


  dmGeral.BUS_CD_M_CSU_CMP_ITE.Close;
  dmGeral.BUS_CD_M_CSU_CMP_ITE.Data :=
  dmGeral.BUS_CD_M_CSU_CMP_ITE.DataRequest(
                  VarArrayOf([ '' ,  ' '''+'0'+''','''+'1'+''' ' ,
                      ''''+ BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));


  CSU_FM_C_ITE_CMP := TCSU_FM_C_ITE_CMP.Create(Self);
  CSU_FM_C_ITE_CMP.ShowModal;
  CSU_FM_C_ITE_CMP.Free;
end;

procedure TCSU_FM_C_ITE.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_ITE.BUS_CD_M_SLD_ITEBeforeOpen(DataSet: TDataSet);
begin
  //EST_CD_M_FESVLR_CUSTO_MEDIO.DisplayFormat       :=CMascaraValor;
  BUS_CD_M_SLD_ITEvlr_custo_ult_compra.DisplayFormat  :=CMascaraValor;
end;

procedure TCSU_FM_C_ITE.Button1Click(Sender: TObject);
begin
  pnPrcItem.Visible := false;
end;

procedure TCSU_FM_C_ITE.Button2Click(Sender: TObject);
begin
  pnPrcParCpg.Visible := false;
end;

procedure TCSU_FM_C_ITE.Button3Click(Sender: TObject);
begin
  pnPrcItem.Visible := true;
  pnPrcParCpg.Visible := true;
  pnPrcPec.Visible := true;
end;

procedure TCSU_FM_C_ITE.Button4Click(Sender: TObject);
begin
  pnPrc.Visible := false;
end;

procedure TCSU_FM_C_ITE.cbbEmpChange(Sender: TObject);
begin
  if not BUS_CD_C_ITE.IsEmpty then
    ExibirPrecoItem;
end;

procedure TCSU_FM_C_ITE.cdsTempItePrcPerfilBeforeOpen(DataSet: TDataSet);
begin
  cdsTempItePrcPerfilpreco_avista.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco1.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco2.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco3.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco4.DisplayFormat         :=CMascaraValor;
end;

procedure TCSU_FM_C_ITE.dgFesAlmCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if dmGeral.BUS_CD_M_FES_ALMsaldo_fisico.AsInteger > 0 then
    txtSldMesAnt.Font.Color := clWindowText
  else
    txtSldMesAnt.Font.Color := clRed;
end;

procedure TCSU_FM_C_ITE.dgFesCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  //if (Field.FieldName = 'vlr_custo_medio') or (Field.FieldName = 'vlr_custo_ult_compra') then
    //AFont.Style := [fsBold];
  if dmGeral.BUS_CD_M_FESsaldo_fisico.AsInteger <= 0 then
    begin
      if (Field.FieldName = 'saldo_fisico') then
        AFont.Color := clRed;
    end
  else
    begin
      if (Field.FieldName = 'saldo_fisico') then
        AFont.Color := clWindowText;
    end;
end;

procedure TCSU_FM_C_ITE.dgFesDblClick(Sender: TObject);
begin
if dmGeral.BUS_CD_M_FES.IsEmpty then
     begin
       Showmessage('Nenhuma empresa foi encontrada no grid de Saldo de Itens.');
       exit;
     end;


 if not BUS_CD_C_ITE.IsEmpty then
    begin
      dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.Close;
      dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.Data :=
             dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI.DataRequest(
                  VarArrayOf([ ''''+dmGeral.BUS_CD_M_FESid_empresa.Text+'''',  ' '''+'S'+''','''+'R'+''' ' ,
                      ''''+BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));

      dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.Close;
          dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.Data :=
                 dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR.DataRequest(
                      VarArrayOf([ ''''+dmGeral.BUS_CD_M_FESid_empresa.Text+'''',  ' '''+'E'+''','''+'D'+''' '  ,
                          ''''+BUS_CD_C_ITE.FieldByName('id_item').Text+'''']));

      CSU_FM_C_ITE_NFE := TCSU_FM_C_ITE_NFE.Create(Self);
      CSU_FM_C_ITE_NFE.ShowModal;
      CSU_FM_C_ITE_NFE.Free;
    end;
end;

procedure TCSU_FM_C_ITE.dgFesRowChanged(Sender: TObject);
begin
 BUS_CD_M_SLD_ITE.Close;

 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean=true) and (not BUS_CD_C_ITE.IsEmpty) then
    begin
      dmGeral.BUS_CD_M_FES_ALM.Close;
      dmGeral.BUS_CD_M_FES_ALM.Data :=
      dmGeral.BUS_CD_M_FES_ALM.DataRequest(VarArrayOf([90, BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));
    end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true) then
     begin
       if (not dmGeral.BUS_CD_M_FES.IsEmpty) and (dmGeral.BUS_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger>0) then
         BEGIN
            dmGeral.BUS_CD_C_PAR.Locate('ID_EMPRESA',dmGeral.BUS_CD_M_FES.FieldByName('ID_EMPRESA').AsString,[]);
            ExibirPrecoItem;
            BUS_CD_C_ITE_LOC.Filter := 'ID_EMPRESA='+dmGeral.BUS_CD_M_FES.FieldByName('ID_EMPRESA').AsString;
         END;
     end;
end;

procedure TCSU_FM_C_ITE.dgItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if BUS_CD_C_ITE.FieldByName('ativo').AsBoolean = false then
     begin
       AFont.Style := [fsBold];
       AFont.Style := [fsStrikeOut];
       aFont.Color := clBlack;
     end
  else
     Begin
       AFont.Style := [];
       aFont.Color := clBlack;
     End;

  if (Field.FieldName = 'preco_sugerido') then
    AFont.Style := [fsBold];
end;

procedure TCSU_FM_C_ITE.dgItensRowChanged(Sender: TObject);
begin
  BUS_CD_M_SLD_ITE.Close;

  if not BUS_CD_C_ITE.IsEmpty then
    begin
      if not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
         begin
           dmGeral.BUS_CD_M_FES.Close;
           dmGeral.BUS_CD_M_FES.Data :=
             dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([90, BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));
         end
      else
         begin
           dmGeral.BUS_CD_M_FES.Close;
           dmGeral.BUS_CD_M_FES.Data :=
             dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([92, BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));
         end;
    end
  else
    begin
      dmGeral.BUS_CD_M_FES.Close;
      dmGeral.BUS_CD_M_FES_ALM.Close;
    end;

  ExibirPrecoItem;
end;

procedure TCSU_FM_C_ITE.Exibirpedidospedente1Click(Sender: TObject);
begin

 CSU_FM_C_ITE_PPN := TCSU_FM_C_ITE_PPN.Create(Self);
 xTela_CSU_FM_C_ITE_PPN := 'CSU_FM_C_ITE';
 CSU_FM_C_ITE_PPN.ShowModal;
 CSU_FM_C_ITE_PPN.Free;
end;

procedure TCSU_FM_C_ITE.ExibirPrecoItem;
begin
  pnPrcItem.Visible := xPnPrcItem;
  pnPrc.Visible := xPnPrc;
  pnPrcPec.Visible := xPnPrcPec;
  pnPrcParCpg.Visible := xPnPrcParCpg;
  pnPrcParFinan.Visible := xPnPrcParFinan;
  pnPrcSerCat.Visible := xPnPrcSerCat;


  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and
      (not BUS_CD_C_ITE.IsEmpty) and (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09')) then
       begin
         cdsTempPrcSerCat.EmptyDataSet;
         cdsTempPrcSerCat.Insert;
         cdsTempPrcSerCat.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                      dmGeral.CalcPrecoItem(1,'0','0',cdsTempPrcSerCat,false,true,0,0,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);

         pnPrcItem.Visible := false;
         pnPrc.Visible := true;
         pnPrcPec.Visible := false;
         pnPrcParCpg.Visible := false;
         pnPrcParFinan.Visible := false;
         pnPrcSerCat.Visible := true;

         exit;
       end
   else
      begin
         if not cdsTempPrcSerCat.IsEmpty then
           begin
            cdsTempPrcSerCat.EmptyDataSet;
           end;
         {if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true)) or
            (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09')  then
           begin
             pnPrcSerCat.Visible := false;
           end;}
      end;





   if ((not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true)) or (modOficina=true)) then
     begin
       cdsTempItePrcParCpg.Close;
        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = true) then
          begin
            if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').IsNull) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = false)) AND
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').IsNull) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = false))  then
              begin
                if not BUS_CD_C_ITE.IsEmpty then
                    begin
                      cdsTempItePrc.Open;
                      cdsTempItePrc.EmptyDataSet;
                      cdsTempItePrc.Insert;
                      cdsTempItePrc.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

                      dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrc,false,true,0,0,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);
                      cdsTempItePrc.Post;
                      cdsTempItePrc.IndexFieldNames := 'ordem';
                      cdsTempItePrc.First;
                    end
                 else
                    begin
                      if not cdsTempItePrc.IsEmpty then
                         cdsTempItePrc.EmptyDataSet
                    end;
              end;

              {if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true then
                begin  }
                  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
                     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) then
                    begin
                      if not BUS_CD_C_ITE.IsEmpty  then
                         begin
                          cdsTempItePrcPerfil.EmptyDataSet;
                          cdsTempItePrcPerfil.Insert;
                          cdsTempItePrcPerfil.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                          dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrcPerfil,false,true,0,1,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);
                         end
                      else
                         begin
                            if not cdsTempItePrcPerfil.IsEmpty then
                              cdsTempItePrcPerfil.EmptyDataSet
                         end;
                    end;
              { end;}


            {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) then
                begin

                     cdsTempItePrcPerfil.EmptyDataSet;
                     if not BUS_CD_C_ITE.IsEmpty then
                        begin
                           dmGeral.BUS_CD_C_ITE_PRC.Close;
                           dmGeral.BUS_CD_C_ITE_PRC.Data :=
                           dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf([BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,'']));
                        end
                     else
                        begin
                           dmGeral.BUS_CD_C_ITE_PRC.Close;
                           dmGeral.BUS_CD_C_ITE_PRC.Data :=
                           dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf(['0','']));
                        end;
                     while not dmGeral.BUS_CD_C_ITE_PRC.eof do
                       begin
                          cdsTempItePrcPerfil.Insert;
                          cdsTempItePrcPerfil.FieldByName('descricao').AsString :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('INT_DESC_PEC').AsString;

                          cdsTempItePrcPerfil.FieldByName('AVISTA').AsCurrency :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P30').AsCurrency :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO1').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P60').AsCurrency :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO2').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P90').AsCurrency :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO3').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P120').AsCurrency :=
                                        dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO4').AsCurrency;

                          cdsTempItePrcPerfil.Post;
                          dmGeral.BUS_CD_C_ITE_PRC.Next;
                       end;
                     cdsTempItePrcPerfil.First;
                      dmGeral.BUS_CD_C_ITE_PRC.Close;
                end
            else if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true)  then
              begin
                if not BUS_CD_C_ITE.IsEmpty then
                  begin
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0, BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));

                  end
                else
                  begin
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));
                  end;

                 cdsTempItePrcPerfil.EmptyDataSet;

                     while not dmGeral.BUS_CD_C_CSU_ITE_PRF.eof do
                       begin
                          cdsTempItePrcPerfil.Insert;
                          cdsTempItePrcPerfil.FieldByName('descricao').AsString :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('DESCRICAO').AsString;

                          cdsTempItePrcPerfil.FieldByName('AVISTA').AsCurrency :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('AVISTA').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P30').AsCurrency :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('P30').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P60').AsCurrency :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('P60').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P90').AsCurrency :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('P90').AsCurrency;

                          cdsTempItePrcPerfil.FieldByName('P120').AsCurrency :=
                                        dmGeral.BUS_CD_C_CSU_ITE_PRF.FieldByName('P120').AsCurrency;

                          cdsTempItePrcPerfil.Post;
                          dmGeral.BUS_CD_C_CSU_ITE_PRF.Next;
                       end;
                     cdsTempItePrcPerfil.First;
                     dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;

              end;  }








            { if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true)  then
              begin
                if not BUS_CD_C_ITE.IsEmpty then
                  begin
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0, BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));

                  end
                else
                  begin
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
                    dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));
                  end;
              end; }

          end
       else
          begin
              if {(dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and  }
                 (((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                   (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true)) then
                 begin
                      if not BUS_CD_C_ITE.IsEmpty  then
                         begin
                          cdsTempItePrcPerfil.EmptyDataSet;
                          cdsTempItePrcPerfil.Insert;
                          cdsTempItePrcPerfil.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                          dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrcPerfil,false,true,0,1,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);
                         end
                      else
                         begin
                            if not cdsTempItePrcPerfil.IsEmpty then
                              cdsTempItePrcPerfil.EmptyDataSet
                         end;
                 end
              else
                 begin
                  if not BUS_CD_C_ITE.IsEmpty then
                     begin
                       cdsTempItePrc.EmptyDataSet;

                       cdsTempItePrc.Insert;
                       cdsTempItePrc.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                       cdsTempItePrc.FieldByName('prcAvista').AsCurrency := 0;
                       cdsTempItePrc.FieldByName('prcAprazo').AsCurrency := 0;
                       cdsTempItePrc.Post;

                       cdsTempItePrc.Edit;
                       dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrc,true,false,0,0,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);
                       cdsTempItePrc.Post;
                     end
                  else
                     begin
                       if not cdsTempItePrc.IsEmpty then
                          cdsTempItePrc.EmptyDataSet
                     end;
                 end;
          end


     end
  else
     begin
       cdsTempItePrc.close;

       if not BUS_CD_C_ITE.IsEmpty then
          begin
             cdsTempItePrcParCpg.EmptyDataSet;
             cdsTempItePrcParCpg.Insert;
             cdsTempItePrcParCpg.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
             dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrcParCpg,false,true,0,0,0,dmGeral.BUS_CD_C_PAR.FieldByname('ID_EMPRESA').AsInteger);
             if cdsTempItePrcParCpg.State in [dsInsert, dsEdit] then
                cdsTempItePrcParCpg.Post;
             cdsTempItePrcParCpg.IndexFieldNames := 'ordem';
             cdsTempItePrcParCpg.First;
          end
       else
           begin
             if not cdsTempItePrcParCpg.IsEmpty then
                cdsTempItePrcParCpg.EmptyDataSet
           end;
     end;
end;

procedure TCSU_FM_C_ITE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BUS_CD_C_ITE_LOC.Filtered := false;
  BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
  FreeAndNil(CSU_FM_C_ITE);
end;

procedure TCSU_FM_C_ITE.FormCreate(Sender: TObject);
begin
  dmGeral.BusEmpresa(1,'%');

  dmGeral.BUS_CD_C_PAR.Locate('ID_EMPRESA',dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,[]);

  BUS_CD_C_ITE_LOC.Filtered := true;
  BUS_CD_C_ITE_LOC.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  pnInfoMesAnt.Visible := false;
 // O comando atualizargrid só modifica o grid depois de aberto o cds; Esaú
  if not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       dgFes.Align := alClient;
       dgFesSgq.Visible := false;

       dmGeral.BUS_CD_M_FES.Open;
       dmGeral.BUS_CD_M_FES.Data :=
          dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([92, -1]));
     end
  else
     begin
       pnInfoMesAnt.Visible := true;
       dgFes.visible  := false;
       dgFesSgq.Align := alClient;

       dmGeral.BUS_CD_M_FES.Open;
       dmGeral.BUS_CD_M_FES.Data :=
       dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([90, -1]));
     end;

  cdsTempItePrc.CreateDataSet;
  cdsTempItePrcParCpg.CreateDataSet;
  cdsTempItePrcPerfil.CreateDataSet;
  cdsTempPrcSerCat.CreateDataSet;

   if (not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean=true)) then
    begin
      dgItens.PopupMenu := nil;
    end;
end;

procedure TCSU_FM_C_ITE.FormResize(Sender: TObject);
begin
  pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
  pnlCentral.left := (pnlPRincipal.Width div 2) - (pnlCentral.width div 2);
end;


function TCSU_FM_C_ITE.ExisteListaMestre(const fazer_busca,exibi_mensagens: boolean; name_formulario: string; var codigo, revisao: string): Boolean;
var
  codigo_lista_mestre: String;
begin
  result := true;
  if fazer_busca = true then
     begin
       if not dmGeral.cad_cd_c_par_ctr.fieldByName('ID_LME').isnull then
          begin
            codigo_lista_mestre := dmGeral.cad_cd_c_par_ctr.FieldByName('ID_LME').AsString;
          end
       else
          begin
            if exibi_mensagens then
               begin
                 Showmessage('Código da lista mestre não foi encontrado nos parâmetros .');
               end;
            result := false;
          end;
       if result = true then
          begin
            dmGeral.BUS_CD_C_LME_DOC_DPG.Close;
            dmGeral.BUS_CD_C_LME_DOC_DPG.Data :=
            dmGeral.BUS_CD_C_LME_DOC_DPG.DataRequest(VarArrayOf([0,codigo_lista_mestre, name_formulario]));
            if dmGeral.BUS_CD_C_LME_DOC_DPG.IsEmpty then
               begin
                 if exibi_mensagens then
                    begin
                      Showmessage('A codificação da lista mestre para este documento não foi encontrado.');
                    end;
                 result := false;
               end
            else
               begin
                 codigo  := dmGeral.BUS_CD_C_LME_DOC_DPG.FieldByName('CODIGO').AsString;
                 revisao := dmGeral.BUS_CD_C_LME_DOC_DPG.FieldByName('REVISAO').AsString;
               end;
            dmGeral.BUS_CD_C_LME_DOC_DPG.Close;
          end;
     end;
end;



procedure TCSU_FM_C_ITE.FormShow(Sender: TObject);
var
  codigo,revisao:string;
begin
   if ExisteListaMestre(true,false,self.Name,codigo,revisao) then
     begin
       lblCodificacaoLMestre.Caption := 'Codificação: ' + codigo + '      Rev.: ' + revisao+'    ';
     end
  else
     begin
       lblCodificacaoLMestre.Caption := 'Sem codificação.  ';
     end;

  if (not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean=true)) then
     pmIteCoj.Items[0].Visible:=false
  else
     pmIteCoj.Items[0].Visible:=true;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('rev').AsBoolean=true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean=true) then
    begin
     dgItens.ColumnByName('int_lote_gru').Visible := true;
     pmIteCoj.Items[1].Visible:=true;
    end
  else
    begin
     dgItens.ColumnByName('int_lote_gru').Visible := false;
     pmIteCoj.Items[1].Visible:=false;
    end;


  // O comando atualizargrid só modifica o grid depois de aberto o cds; Esaú
  dmgeral.AtualizarGridItens(dgFes,'int_nomefan',12,8);
  dmgeral.AtualizarGridItens(dgFesSgq,'int_nomefan',18,11);
  dmgeral.AtualizarGridItens(dgFesAlm,'int_nomealm',20,12);

  dmgeral.BusFuncionario(0,IntToStr(xFuncionario));
  if not ((dmGeral.BUS_CD_C_FUN.FieldByname('seg_habilitar_seg').AsBoolean=true) and
          (dmGeral.BUS_CD_C_FUN.FieldByname('seg_vis_custo_csu_ite').AsBoolean=true)) then
    begin
     dgFes.ColumnByName('vlr_custo_medio').Visible := false;
     dgFes.ColumnByName('vlr_custo_ult_compra').Visible := false;
     dgFes.ColumnByName('data_ult_movimento').Visible := false;
     dgFes.ColumnByName('int_nomefan').DisplayWidth  :=
         dgFes.ColumnByName('int_nomefan').DisplayWidth +
         dgFes.ColumnByName('vlr_custo_medio').DisplayWidth +
         dgFes.ColumnByName('vlr_custo_ult_compra').DisplayWidth +
         dgFes.ColumnByName('data_ult_movimento').DisplayWidth;
    end;

  dmGeral.BUS_CD_M_FES.Close;
  dmGeral.BUS_CD_M_FES_ALM.Close;

  pnPrc.Visible := false;

  modOficina:=false;
  if  dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean  then
    modOficina:=true;


  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) and (modOficina=false)) then
     begin
       pnPrcItem.Visible := false;
       pnPrcPec.Visible := false;
       pnPrcParFinan.Visible := false;
       pnPrc.Visible := true;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) then
          begin
             pnPrcItem.Visible := false;
             pnPrcParCpg.Visible := false;
             pnPrcParFinan.Visible := false;
             pnPrc.Visible := true;

          end;

        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = True) or
           ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = True) and
            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) then
          begin
             pnPrcItem.Visible := false;
             pnPrcParCpg.Visible := false;
             pnPrc.Visible := true;

             pnPrcPec.Visible := false;
             pnPrcParFinan.Visible := true;
          end;
     end;


   if  pnPrc.Visible = true then
    begin
      if pnPrcParFinan.Visible = true then
        pnPrcParFinan.Align := alClient;

      if ((pnPrcPec.Visible = true) and
          (pnPrcParCpg.Visible = false) and
          (pnPrcParFinan.Visible = false)) then
        pnPrcPec.Align := alClient;
    end;





   xPnPrcItem := pnPrcItem.Visible;
   xPnPrc := pnPrc.Visible;
   xPnPrcPec :=  pnPrcPec.Visible;
   xPnPrcParCpg := pnPrcParCpg.Visible;
   xPnPrcParFinan := pnPrcParFinan.Visible;
   xPnPrcSerCat := pnPrcSerCat.Visible;



  //if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean or dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean) and
  if not (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean)   then
    begin
      pnSldAlmItens.Visible := false;

      {label3.Visible := true;
      dgFesAlm.Visible := true;
      gbItens.Height := 346;}
    end;
 { else
    begin
      label3.Visible := false;
      dgFesAlm.Visible := false;
      gbItens.Height := 225;
    end;}


  if dmGeral.CAD_CD_C_PAR_MODcmp.AsBoolean = true then
    begin
      btnPedCmp.Visible := true;
      {btnNotasFiscais.Width := 83;
      btnExtrato.Left := 609;
      btnExtrato.Width := 73;  }
    end
  else
    begin
      btnPedCmp.Visible := false;
     { btnNotasFiscais.Width := 120;
      btnExtrato.Left := 562;
      btnExtrato.Width := 120;}
    end;

   if (dmGeral.CAD_CD_C_PAR_MODome.AsBoolean = true) or
      (dmGeral.CAD_CD_C_PAR_MODota.AsBoolean = true) or
      (dmGeral.CAD_CD_C_PAR_MODoqp.AsBoolean = true)  then
    begin
      btnOrdem.Visible := true;
    end
   else
    begin
      btnOrdem.Visible := false;
    end;

  if dmGeral.BUS_CD_C_FUN.FieldByName('seg_vis_nota_csu_ite').AsBoolean then
     begin
       btnNotasFiscais.Visible := true;
     end
  else
     begin
       btnNotasFiscais.Visible := false;
     end;

  {if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true) then
     dgEmpPrc.Visible := true
  else
     dgEmpPrc.Visible := false;   }


  txtPesquisa.SetFocus;

  dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
  dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_csu_ite').AsString <> '' then
     cbbPesquisa.ItemIndex := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_csu_ite').AsInteger;

  //pnPrcItem.Visible := false;



end;
procedure TCSU_FM_C_ITE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltrarClick(Self);
          end;
     end;
end;

procedure TCSU_FM_C_ITE.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName = 'prcAvista') or (Field.FieldName = 'prcAprazo') then
    AFont.Style := [fsBold];
end;

procedure TCSU_FM_C_ITE.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName = 'preco1') then
    AFont.Style := [fsBold];
end;

procedure TCSU_FM_C_ITE.wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName = 'preco_avista') or (Field.FieldName = 'preco1') or (Field.FieldName = 'preco2') or (Field.FieldName = 'preco3') or (Field.FieldName = 'preco4') then
    AFont.Style := [fsBold];
end;

procedure TCSU_FM_C_ITE.dgEmpPrcRowChanged(Sender: TObject);
begin
   if (not BUS_CD_C_ITE.IsEmpty) and (dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger>0) then
      ExibirPrecoItem;
end;

end.
