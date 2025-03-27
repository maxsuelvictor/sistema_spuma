unit PSQ_UN_X_ITE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, Vcl.ComCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue,System.Generics.Collections, Vcl.Mask, vcl.Wwdbedit;

type
  TPSQ_FM_X_ITE = class(TPAD_FM_X_PSQ)
    pcSaldos: TPageControl;
    tsSaldo: TTabSheet;
    tsSaldoAlmox: TTabSheet;
    grdSld: TwwDBGrid;
    dsFes: TwwDataSource;
    grdSldAlm: TwwDBGrid;
    dsFesAlm: TwwDataSource;
    pnTítulosItens: TPanel;
    dsUltNfeIte: TwwDataSource;
    cbTipoItem: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cbClassItens: TComboBox;
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
    pnPrcItem: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    txtPrcAvista: TwwDBEdit;
    txtPrcAprazo: TwwDBEdit;
    cdsTempItePrcParCpgordem: TIntegerField;
    pnPrc: TPanel;
    pnPrcParCpg: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDadosUltCompra: TPanel;
    grdUltNfeIte: TwwDBGrid;
    Panel3: TPanel;
    pnlPrecoFinan: TPanel;
    Panel4: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    cdsTempItePrcPerfil: TClientDataSet;
    cdsTempItePrcPerfildescricao: TStringField;
    dsoTempItePrcPerfil: TwwDataSource;
    cdsTempItePrcPerfilpreco1: TCurrencyField;
    cdsTempItePrcPerfilpreco2: TCurrencyField;
    cdsTempItePrcPerfilpreco3: TCurrencyField;
    cdsTempItePrcPerfilpreco4: TCurrencyField;
    cdsTempItePrcPerfilpreco_avista: TCurrencyField;
    cdsTempItePrcPerfilid_item: TIntegerField;
    procedure btnPesquisaClick(Sender: TObject);
    procedure grdSldCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsTempItePrcPerfilBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure BuscarSaldoDoItem;
    procedure PreencherTipoItem;
    procedure ExibirPrecoItem;
  public
    { Public declarations }
    ListaForms: TDictionary<String,Integer>;
    xPerfilCliPsqItem: String;
  end;

var
  PSQ_FM_X_ITE: TPSQ_FM_X_ITE;
  xFormRespPSQ_ITE:String;
  xBusIteFloDes: Boolean = False;
  rTipoItem: String;
implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TPSQ_FM_X_ITE.btnPesquisaClick(Sender: TObject);
begin
  inherited;

  { index 0  - Código interno item
      index 1  - Descrição
      index 2  - Código de barra
      index 3  - Código de fábrica
      index 4  - Loc. rua
      index 5  - Aplicação
      index 6  - Descrição do fornecedor
      index 7  - Código do Grupo
      index 8  - Descrição do Grupo
      index 9  - Referência do item
      index 10 - ID_NCM
      index 11 - Ativo e Destino reclamado
      index 12 - Fornecedor
    }

  rTipoItem := '';
  if cbTipoItem.ItemIndex > 0 then
     begin
       rTipoItem := copy(cbTipoItem.Items[cbTipoItem.ItemIndex],1,2);
     end;

  dmGeral.BUS_CD_CSU_ITE.Close;
  dmGeral.BUS_CD_CSU_ITE.Data :=
       dmGeral.BUS_CD_CSU_ITE.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_ITE.BuscarSaldoDoItem;
begin
{ Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, int(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }

    { Filtros do EST_CD_M_FES_ALM:
      Index 0 - Empresa, Item, almoxarifado
      Index 1 - Empresa, Item, Cor, almoxarifado
      Index 2 - Empresa, Item, Tamanho, almoxarifado
      Index 3 - Empresa, Item, Cor,Tamanho, almoxarifado
      Index 4 - empresa, in(item),  in(cores), almoxarifado
      Index 5 - empresa, in(item),  in(tamanho), almoxarifado
      Index 6 - empresa, int(item), in(cor) in(tamanho), almoxarifado
      Index 7 - empresa, in(item), almoxarifado
      }
  dmGeral.BUS_CD_M_FES.Close;
        dmGeral.BUS_CD_M_FES.Data :=  dmGeral.BUS_CD_M_FES.DataRequest(VarArrayOf([90,'0']));
  dmGeral.BUS_CD_M_FES_ALM.Close;

  dmGeral.BUS_CD_M_FES_ALM.Data := dmGeral.BUS_CD_M_FES_ALM.DataRequest( VarArrayOf([90,'0']));
  //  BUS_CD_C_FES.Close;
  //  BUS_CD_C_FES_ALM.Close;
  if not dmGeral.BUS_CD_CSU_ITE.IsEmpty then
     begin
        dmGeral.BUS_CD_M_FES.Close;
        dmGeral.BUS_CD_M_FES.Data :=

        dmGeral.BUS_CD_M_FES.DataRequest(
           VarArrayOf([90,dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').Text]));

        if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
           begin
              dmGeral.BUS_CD_M_FES_ALM.Close;
              dmGeral.BUS_CD_M_FES_ALM.Data :=

              dmGeral.BUS_CD_M_FES_ALM.DataRequest(
                 VarArrayOf([90,dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').Text]));
           end;
     end;

end;

procedure TPSQ_FM_X_ITE.cdsTempItePrcPerfilBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTempItePrcPerfilpreco_avista.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco1.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco2.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco3.DisplayFormat         :=CMascaraValor;
  cdsTempItePrcPerfilpreco4.DisplayFormat         :=CMascaraValor;
end;

procedure TPSQ_FM_X_ITE.cmbParametroChange(Sender: TObject);
begin
  //inherited;

   edtPesquisa.Text := '';

  if cmbParametro.ItemIndex in [0] then
     begin
       edtPesquisa.NumbersOnly := True;
     end
  else
     begin
       edtPesquisa.NumbersOnly := False;
     end;
  edtPesquisa.SetFocus;

end;

procedure TPSQ_FM_X_ITE.ComboBox1Change(Sender: TObject);
begin
 // inherited;
 
end;

procedure TPSQ_FM_X_ITE.dbGridRowChanged(Sender: TObject);
begin
  inherited;

  BuscarSaldoDoItem;

 {
   //O sistema não tem reigstro de nota fiscal no banco. Resp:Luan
 dmGeral.BUS_CD_M_ULT_NFE_ITE.close;
  dmGeral.BUS_CD_M_ULT_NFE_ITE.Open;
  dmGeral.BUS_CD_M_ULT_NFE_ITE.EmptyDataSet;

  if not dmGeral.BUS_CD_CSU_ITE.IsEmpty then
     begin
       dmGeral.BusUltPrcNfeIte(dmGeral.CAD_CD_C_PARid_empresa.AsInteger,
                               dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').Text,
                               '','');
     end; }

  ExibirPrecoItem;
end;

procedure TPSQ_FM_X_ITE.ExibirPrecoItem;
begin
  if not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       cdsTempItePrcParCpg.Close;

        if not dmGeral.BUS_CD_CSU_ITE.IsEmpty then
           begin
             cdsTempItePrc.EmptyDataSet;

             cdsTempItePrc.Insert;
             cdsTempItePrc.FieldByName('ID_ITEM').AsInteger := dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').AsInteger;
             cdsTempItePrc.FieldByName('prcAvista').AsCurrency := 0;
             cdsTempItePrc.FieldByName('prcAprazo').AsCurrency := 0;
             cdsTempItePrc.Post;

             cdsTempItePrc.Edit;
             dmGeral.CalcPrecoItem(1,xPerfilCliPsqItem,'0',cdsTempItePrc,true,false);
             cdsTempItePrc.Post;
           end
        else
           begin
             if not cdsTempItePrc.IsEmpty then
                cdsTempItePrc.EmptyDataSet
           end;

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true then
          begin
              if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) then
                begin
                  if not dmGeral.BUS_CD_CSU_ITE.IsEmpty  then
                     begin
                      cdsTempItePrcPerfil.EmptyDataSet;
                      cdsTempItePrcPerfil.Insert;
                      cdsTempItePrcPerfil.FieldByName('ID_ITEM').AsInteger := dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').AsInteger;
                      dmGeral.CalcPrecoItem(1,xPerfilCliPsqItem,'0',cdsTempItePrcPerfil,true,false,0,1);
                     end
                  else
                     begin
                        if not cdsTempItePrcPerfil.IsEmpty then
                          cdsTempItePrcPerfil.EmptyDataSet
                     end;
                end;

          end;
     end
  else
     begin
       cdsTempItePrc.close;

       if not dmGeral.BUS_CD_CSU_ITE.IsEmpty then
          begin

             cdsTempItePrcParCpg.EmptyDataSet;
             cdsTempItePrcParCpg.Insert;
             cdsTempItePrcParCpg.FieldByName('ID_ITEM').AsInteger := dmGeral.BUS_CD_CSU_ITE.FieldByName('ID_ITEM').AsInteger;

             dmGeral.CalcPrecoItem(1,'0','0',cdsTempItePrcParCpg,true,false);
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

procedure TPSQ_FM_X_ITE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
end;

procedure TPSQ_FM_X_ITE.FormCreate(Sender: TObject);
begin
  inherited;
  xFormRespPSQ_ITE := '';

  cdsTempItePrc.CreateDataSet;
  cdsTempItePrcParCpg.CreateDataSet;
  cdsTempItePrcPerfil.CreateDataSet;

  xPerfilCliPsqItem := '0';

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
        ListaForms := TDictionary<String,Integer>.Create;
        ListaForms.Add('FAT_FM_M_IQM',0);
        ListaForms.Add('CMP_FM_M_SOL',0);
        ListaForms.Add('CMP_FM_M_PED',0);
        ListaForms.Add('EST_FM_M_NFE',0);
        ListaForms.Add('FAT_FM_M_PED',5);
     end;


   {As inilicializações dos dataSet teve que ser feita no botão OnClick que chama essa tela.Resp:Luan
  dmGeral.BUS_CD_CSU_ITE.Close;
  dmGeral.BUS_CD_CSU_ITE.Data := dmGeral.BUS_CD_CSU_ITE.DataRequest(VarArrayOf([0, '','',cbClassItens.ItemIndex]));
   }



  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       tsSaldoAlmox.TabVisible := false;
     end;

  pnlDadosUltCompra.Visible := false;
  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));


  //Código foi retirado pois não ná nota fiscal no banco.Resp.:Luan
  {if dmGeral.BUS_CD_C_FUN_LOGseg_vis_ult_cmp_ite.AsBoolean and (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean or dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean) then
    pnlDadosUltCompra.Visible := True
  else
    pnlDadosUltCompra.Visible := False;}

  if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean or dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean then
    begin
      label2.Visible     := True;
      cbtipoitem.Visible := True;
    end
  else
    begin
      label2.Visible     := False;
      label3.Left        := 8;
      label3.Top         := 22;
      cbtipoitem.Visible := False;
      cbClassItens.Left  := 8;
      cbClassItens.Top   := 37;
    end;

  cmbParametro.ItemIndex := 1;

end;

procedure TPSQ_FM_X_ITE.FormShow(Sender: TObject);
begin
  inherited;

  rTipoItem := '';

  PreencherTipoItem;

  pnPrcItem.Visible       := true;
  pnPrcParCpg.Visible     := false;
  pnlPrecoFinan.Visible   := false;

  pnlDadosUltCompra.Align := alClient;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       if xFormRespPSQ_ITE <> '' then
          begin
             if ListaForms.ContainsKey(xFormRespPSQ_ITE) then
                cbtipoitem.ItemIndex := ListaForms[xFormRespPSQ_ITE];
          end;
       pnPrcItem.Visible := false;
       pnPrcParCpg.Visible := true;
       pnlDadosUltCompra.Align := alRight;

       if  ListaForms.ContainsKey(xFormRespPSQ_ITE) then
          begin
            if xFormRespPSQ_ITE <> 'FAT_FM_M_PED' then
               begin
                  pnPrcParCpg.Visible := false;
                  pnlDadosUltCompra.Align := alClient;
               end;
          end;

     end
  else
     begin
       cbtipoitem.ItemIndex := 0; // todos.
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
         BEGIN
           if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = True) then
             begin
                 pnPrcItem.Visible := false;
                 pnlPrecoFinan.Visible   := true;
             end;
         END;
     end;

  if (pnPrcParCpg.Visible = false) and (pnlDadosUltCompra.Visible = false) and (pnlPrecoFinan.Visible = false) then
     begin
       pnPrc.Visible := false;
     end;

  pcSaldos.ActivePage := tsSaldo;  // Isso é feito pra que as colunas abaixo verdadeiramente se escondam

  grdSld.ColumnByName('int_nomefan').DisplayWidth :=
      (grdSld.ColumnByName('int_nomefan').DisplayWidth + 26);


  pcSaldos.ActivePage := tsSaldoAlmox; // Isso é feito pra que as colunas abaixo verdadeiramente se escondam

  grdSldAlm.ColumnByName('int_nomefan').DisplayWidth :=
      grdSldAlm.ColumnByName('int_nomefan').DisplayWidth + 26;  // 13 Cor  13 Tamanho

  pcSaldos.ActivePage := tsSaldo;

 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean=true) and
    (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean=true) then
    begin
      grdSld.ColumnByName('int_nomefan').DisplayWidth :=
      (grdSld.ColumnByName('int_nomefan').DisplayWidth - 26);

      pcSaldos.ActivePage := tsSaldoAlmox; // Isso é feito pra que as colunas abaixo recebam as modificações
      grdSldAlm.ColumnByName('int_nomefan').DisplayWidth :=
                grdSldAlm.ColumnByName('int_nomefan').DisplayWidth - 26;
    end
 else
    begin
       if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
          begin
            grdSld.ColumnByName('int_nomefan').DisplayWidth :=
                  (grdSld.ColumnByName('int_nomefan').DisplayWidth - 15);

            grdSld.ColumnByName('int_nometam').Visible := false;

            pcSaldos.ActivePage := tsSaldoAlmox; // Isso é feito pra que as colunas abaixo recebam as modificações

            grdSldAlm.ColumnByName('int_nomefan').DisplayWidth :=
                grdSldAlm.ColumnByName('int_nomefan').DisplayWidth - 13;
            grdSldAlm.ColumnByName('int_nometam').Visible := false;
          end
       else
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true then
                begin
                  grdSld.ColumnByName('int_nomefan').DisplayWidth :=
                        (grdSld.ColumnByName('int_nomefan').DisplayWidth - 11);
                  grdSld.ColumnByName('int_nomecor').Visible := false;

                  pcSaldos.ActivePage := tsSaldoAlmox; // Isso é feito pra que as colunas abaixo recebam as modificações
                  grdSldAlm.ColumnByName('int_nomefan').DisplayWidth :=
                      grdSldAlm.ColumnByName('int_nomefan').DisplayWidth - 13;
                  grdSldAlm.ColumnByName('int_nomecor').Visible := false;
                end
             else
                begin
                  grdSld.ColumnByName('int_nomecor').Visible    := false;
                  grdSldAlm.ColumnByName('int_nomecor').Visible := false;

                  grdSld.ColumnByName('int_nometam').Visible    := false;
                  grdSldAlm.ColumnByName('int_nometam').Visible := false;
                end;
          end;
    end;

  dmGeral.AtualizarGridItens(grdUltNfeIte,'fantasia',5,7);

  pcSaldos.ActivePage := tsSaldo;

  if xBusIteFloDes  then
    begin
        dmGeral.BUS_CD_CSU_ITE.Close;
        dmGeral.BUS_CD_CSU_ITE.Data :=
        dmGeral.BUS_CD_CSU_ITE.DataRequest(
           VarArrayOf([11, '',rTipoItem,cbClassItens.ItemIndex]));
    end;


    //DataSet não é utilizado no sistema.Resp:Luan
  {dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
  dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));}
end;

procedure TPSQ_FM_X_ITE.grdSldCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

  if dbGrid.Canvas.Brush.Color = clWindow then
     dbGrid.Canvas.Brush.Color := clWhite
  else
     if dbGrid.Canvas.Brush.Color = clWhite then
        dbGrid.Canvas.Brush.Color := $00FDD8C8
end;
procedure TPSQ_FM_X_ITE.PreencherTipoItem;
var
  i: integer;
begin
  cbTipoItem.Items.Clear;
  cbTipoItem.Items.Add('Todos');
  dmGeral.BUS_PR_X_TIP(dmGeral.BUS_CD_X_TIP);
  if not dmGeral.BUS_CD_X_TIP.IsEmpty then
     begin
       while not dmGeral.BUS_CD_X_TIP.eof do
          begin
            cbTipoItem.Items.Add(dmGeral.BUS_CD_X_TIP.FieldByName('CODIGO').Asstring + '-'+
                                 dmGeral.BUS_CD_X_TIP.FieldByName('DESCRICAO').Asstring);
            dmGeral.BUS_CD_X_TIP.Next;
          end;
     end;
  cbTipoItem.ItemIndex := 0;
end;

end.







