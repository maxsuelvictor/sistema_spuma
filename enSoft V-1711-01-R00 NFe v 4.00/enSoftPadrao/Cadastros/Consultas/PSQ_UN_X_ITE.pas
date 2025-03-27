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
  dxSkinXmas2008Blue,System.Generics.Collections, Vcl.Mask, vcl.Wwdbedit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, Vcl.DBCtrls;

type
  TPSQ_FM_X_ITE = class(TPAD_FM_X_PSQ)
    BUS_CD_C_ITE: TClientDataSet;
    BUS_CD_C_FES: TClientDataSet;
    pcSaldos: TPageControl;
    tsSaldo: TTabSheet;
    tsSaldoAlmox: TTabSheet;
    grdSld: TwwDBGrid;
    dsFes: TwwDataSource;
    grdSldAlm: TwwDBGrid;
    BUS_CD_C_FES_ALM: TClientDataSet;
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
    pmIteCoj: TPopupMenu;
    btnIteConj: TMenuItem;
    dsoLoc: TwwDataSource;
    BUS_CD_C_ITE_LOC: TClientDataSet;
    lblLocalizacao: TLabel;
    txtLocalizacao: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    txtEscaninho: TDBEdit;
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
    procedure btnIteConjClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarSaldoDoItem;
    procedure PreencherTipoItem;
    procedure ExibirPrecoItem;
    var
      GridPrcPerf,GridPrcVista:Boolean;
  public
    { Public declarations }
    ListaForms: TDictionary<String,Integer>;
    xPerfilCliPsqItem: String;
    modOficina:Boolean;
  end;

var
  PSQ_FM_X_ITE: TPSQ_FM_X_ITE;
  xFormRespPSQ_ITE:String;
  xBusIteFloDes: Boolean = False;
  rTipoItem: String;
  id_categ_vei:Integer = 0;
  xVendedor_externo: String;
implementation

{$R *.dfm}

uses uDmGeral, enConstantes, CSU_UN_C_ITE_COJ;

procedure TPSQ_FM_X_ITE.btnIteConjClick(Sender: TObject);
begin
  //inherited;
  if not BUS_CD_C_ITE.IsEmpty then
    begin
      CSU_FM_C_ITE_COJ := TCSU_FM_C_ITE_COJ.Create(Self);
      CSU_FM_C_ITE_COJ.xCodItem := BUS_CD_C_ITE.FieldByName('ID_ITEM').text;
      CSU_FM_C_ITE_COJ.ShowModal;
      CSU_FM_C_ITE_COJ.Free;
    end;
end;

procedure TPSQ_FM_X_ITE.btnPesquisaClick(Sender: TObject);
var
  xEmpresa:String;
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
  xEmpresa := '';
  if cmbParametro.Items[cmbParametro.ItemIndex]='Loca-Rua' then
    begin
      xEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
    end;


  rTipoItem := '';
  if cbTipoItem.ItemIndex > 0 then
     begin
       rTipoItem := copy(cbTipoItem.Items[cbTipoItem.ItemIndex],1,2);
     end;

  if (xFormRespPSQ_ITE = 'CTC_FM_M_CEP') and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean) then
      begin
        if cbTipoItem.ItemIndex = 3 then
           begin
             BUS_CD_C_ITE.Close;
              BUS_CD_C_ITE.Data :=
                  BUS_CD_C_ITE.DataRequest(
                      VarArrayOf([103, xFormRespPSQ_ITE+edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex,xEmpresa]));
           end
        else
           begin
              BUS_CD_C_ITE.Close;
              BUS_CD_C_ITE.Data :=
                  BUS_CD_C_ITE.DataRequest(
                      VarArrayOf([cmbParametro.ItemIndex, xFormRespPSQ_ITE+edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex,xEmpresa]));
           end;
      end
  else
      begin
        // iF colocado em 11/09/2023, a pedido de Caio, para vendedor externo não ter
           // acesso aos itens personalizados
        if xFormRespPSQ_ITE = 'FAT_FM_M_PED' then
           begin
             BUS_CD_C_ITE.Close;
             BUS_CD_C_ITE.Data :=
                 BUS_CD_C_ITE.DataRequest(
                     VarArrayOf([cmbParametro.ItemIndex, 'FAT_FM_M_PED-'+xVendedor_externo+edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex,xEmpresa]));

           end
        else
           begin
              if cbTipoItem.ItemIndex = 3 then
                 begin
                   BUS_CD_C_ITE.Close;
                    BUS_CD_C_ITE.Data :=
                        BUS_CD_C_ITE.DataRequest(
                            VarArrayOf([103, edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex,xEmpresa]));
                 end
              else
                 begin
                   BUS_CD_C_ITE.Close;
                   BUS_CD_C_ITE.Data :=
                       BUS_CD_C_ITE.DataRequest(
                           VarArrayOf([cmbParametro.ItemIndex,edtPesquisa.Text,rTipoItem,cbClassItens.ItemIndex,xEmpresa]));
                 end;
           end;
      end;

 { ActiveControl := nil;
  PostMessage(dbGrid.Handle, WM_SETFOCUS, 0, 0);
  dbGrid.SetFocus;  }

  //dbGrid.SetFocus;
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
  BUS_CD_C_FES.Close;
        BUS_CD_C_FES.Data :=  BUS_CD_C_FES.DataRequest(VarArrayOf([90,'0']));
  BUS_CD_C_FES_ALM.Close;

  BUS_CD_C_FES_ALM.Data := BUS_CD_C_FES_ALM.DataRequest( VarArrayOf([90,'0']));
  //  BUS_CD_C_FES.Close;
  //  BUS_CD_C_FES_ALM.Close;
  if not BUS_CD_C_ITE.IsEmpty then
     begin
        BUS_CD_C_FES.Close;
        BUS_CD_C_FES.Data :=

        BUS_CD_C_FES.DataRequest(
           VarArrayOf([90,BUS_CD_C_ITE.FieldByName('ID_ITEM').Text]));

        if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
           begin
              BUS_CD_C_FES_ALM.Close;
              BUS_CD_C_FES_ALM.Data :=

              BUS_CD_C_FES_ALM.DataRequest(
                 VarArrayOf([90,BUS_CD_C_ITE.FieldByName('ID_ITEM').Text]));
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

  dmGeral.BUS_CD_M_ULT_NFE_ITE.close;
  dmGeral.BUS_CD_M_ULT_NFE_ITE.Open;
  dmGeral.BUS_CD_M_ULT_NFE_ITE.EmptyDataSet;

  if not BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.BusUltPrcNfeIte(dmGeral.CAD_CD_C_PARid_empresa.AsInteger,
                               BUS_CD_C_ITE.FieldByName('ID_ITEM').Text,
                               '','');

       BUS_CD_C_ITE_LOC.Close;
         BUS_CD_C_ITE_LOC.Data :=
             BUS_CD_C_ITE_LOC.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.AsInteger,
                                                        BUS_CD_C_ITE.FieldByName('ID_ITEM').text]));

     end;

  ExibirPrecoItem;
end;

procedure TPSQ_FM_X_ITE.edtPesquisaExit(Sender: TObject);
begin
  inherited;
   if trim(edtPesquisa.text) <> '' then
      begin
        btnPesquisaClick(self);

        {ActiveControl := nil;
        PostMessage(dbGrid.Handle, WM_SETFOCUS, 0, 0);
        dbGrid.SetFocus;         }
        dbGrid.SetFocus;
      end;

end;

procedure TPSQ_FM_X_ITE.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {if (Key = VK_RETURN)  then
    begin
      btnPesquisaClick(self);

      {ActiveControl := nil;
      PostMessage(dbGrid.Handle, WM_SETFOCUS, 0, 0);
      dbGrid.SetFocus;         }
     { dbGrid.SetFocus;
    end; }
end;

procedure TPSQ_FM_X_ITE.ExibirPrecoItem;
begin
  pnlPrecoFinan.Visible := GridPrcPerf;
  pnPrcItem.Visible := GridPrcVista;

  if ((not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true)) or (modOficina=true)) then
     begin
       cdsTempItePrcParCpg.Close;

        if not BUS_CD_C_ITE.IsEmpty then
           begin
             cdsTempItePrc.Open;
             cdsTempItePrc.EmptyDataSet;

             cdsTempItePrc.Insert;
             cdsTempItePrc.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
             cdsTempItePrc.FieldByName('prcAvista').AsCurrency := 0;
             cdsTempItePrc.FieldByName('prcAprazo').AsCurrency := 0;
             cdsTempItePrc.Post;

             cdsTempItePrc.Edit;
             dmGeral.CalcPrecoItem(1,xPerfilCliPsqItem,'0',cdsTempItePrc,true,false,0,0,id_categ_vei);
             cdsTempItePrc.Post;


             if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and
                 ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = true) or
                 (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true)) and
                 (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09')) then
               begin
                  pnPrcItem.Visible := true;
                  pnlPrecoFinan.Visible := false;
                  exit;
               end;

           end
        else
           begin
             if not cdsTempItePrc.IsEmpty then
                cdsTempItePrc.EmptyDataSet
           end;

       { if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true then
          begin }
              if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true) then
                begin
                  if not BUS_CD_C_ITE.IsEmpty  then
                     begin
                      cdsTempItePrcPerfil.EmptyDataSet;
                      cdsTempItePrcPerfil.Insert;
                      cdsTempItePrcPerfil.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
                      dmGeral.CalcPrecoItem(1,xPerfilCliPsqItem,'0',cdsTempItePrcPerfil,true,false,0,1);
                     end
                  else
                     begin
                        if not cdsTempItePrcPerfil.IsEmpty then
                          cdsTempItePrcPerfil.EmptyDataSet
                     end;


                  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and
                     ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = true) or
                     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true)) and
                     (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09')) then
                   begin
                      pnlPrecoFinan.Visible := false;
                   end;
                end;

         { end;}
     end
  else
     begin
       cdsTempItePrc.close;

       if not BUS_CD_C_ITE.IsEmpty then
          begin

             cdsTempItePrcParCpg.EmptyDataSet;
             cdsTempItePrcParCpg.Insert;
             cdsTempItePrcParCpg.FieldByName('ID_ITEM').AsInteger := BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

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
  BUS_CD_C_ITE_LOC.Close;
end;

procedure TPSQ_FM_X_ITE.FormCreate(Sender: TObject);
begin
  inherited;
  xFormRespPSQ_ITE := '';

  cdsTempItePrc.CreateDataSet;
  cdsTempItePrcParCpg.CreateDataSet;
  cdsTempItePrcPerfil.CreateDataSet;

  xPerfilCliPsqItem := '0';





  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) then
     begin
        ListaForms := TDictionary<String,Integer>.Create;
        ListaForms.Add('FAT_FM_M_IQM',0);
        ListaForms.Add('CMP_FM_M_SOL',0);
        ListaForms.Add('CMP_FM_M_PED',0);
        ListaForms.Add('EST_FM_M_NFE',0);
        ListaForms.Add('FAT_FM_M_PED',5);
     end;

  BUS_CD_C_ITE.Close;
  BUS_CD_C_ITE.Data := BUS_CD_C_ITE.DataRequest(VarArrayOf([0, '','',cbClassItens.ItemIndex]));

  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       tsSaldoAlmox.TabVisible := false;
     end;

  pnlDadosUltCompra.Visible := false;
  dmGeral.BusFuncionario2(0,IntToStr(xFuncionario));
  if dmGeral.BUS_CD_C_FU2seg_vis_ult_cmp_ite.AsBoolean and (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean or dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean) then
    pnlDadosUltCompra.Visible := True
  else
    pnlDadosUltCompra.Visible := False;

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
   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_psq_ite').AsString <> '' then
     cmbParametro.ItemIndex := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_psq_ite').AsInteger;

  if (not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean=true)) then
    begin
      dbGrid.PopupMenu := nil;
    end;

end;

procedure TPSQ_FM_X_ITE.FormShow(Sender: TObject);
begin
  inherited;

  rTipoItem := '';

  PreencherTipoItem;

  pnPrcItem.Visible       := true;
  pnPrcParCpg.Visible     := false;
  pnlPrecoFinan.Visible   := false;

  GridPrcPerf := pnlPrecoFinan.Visible;
  GridPrcVista := pnPrcItem.Visible;

  pnlDadosUltCompra.Align := alClient;

  modOficina:=false;
  if  dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean OR
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean  then
    modOficina:=true;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true) and (modOficina=false)) then
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
      { if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
         BEGIN }
           if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = True) or
              ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = True) and
              (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean = True))   then
             begin
                 pnPrcItem.Visible := false;
                 pnlPrecoFinan.Visible   := true;
             end;
       {  END; }
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
        BUS_CD_C_ITE.Close;
        BUS_CD_C_ITE.Data :=
        BUS_CD_C_ITE.DataRequest(
           VarArrayOf([11, '',rTipoItem,cbClassItens.ItemIndex]));
    end;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Close;
  dmGeral.BUS_CD_C_CSU_ITE_PRF.Data :=
  dmGeral.BUS_CD_C_CSU_ITE_PRF.DataRequest(VarArrayOf([0,'']));

  GridPrcPerf := pnlPrecoFinan.Visible;
  GridPrcVista := pnPrcItem.Visible;
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







