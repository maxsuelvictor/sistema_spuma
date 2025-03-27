unit PSQ_UN_X_PBX_TIT;

interface

uses
  Winapi.Windows, Winapi.Messages,System.IniFiles,System.SysUtils, System.Variants,System.Math, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  Datasnap.DBClient, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.ImgList, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPSQ_FM_X_PBX_TIT = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    dsoTitulos: TwwDataSource;
    dsPagPag: TwwDataSource;
    pnFiltro: TPanel;
    pnDados: TPanel;
    Label4: TLabel;
    lblEmpLogada: TLabel;
    dbGridTitulos: TwwDBGrid;
    lblAliquotasTaxas: TLabel;
    lblEmpresaLog: TLabel;
    cdsTemp: TClientDataSet;
    cdsTempid_empresa: TIntegerField;
    cdsTempdescricao: TStringField;
    dsTemp: TDataSource;
    grdBxaNEmp: TwwDBGrid;
    cdsTempselecao: TBooleanField;
    Panel4: TPanel;
    lblAberto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    pnlAberto: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    gbFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltro: TcxButton;
    ImgPequenaVe: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequena: TImageList;
    btnSelecionarTit: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure dbGridTitulosDblClick(Sender: TObject);
    procedure dbGridTitulosKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridTitulosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdBxaNEmpFieldChanged(Sender: TObject; Field: TField);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnSelecionarTitClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    procedure ExibirDados;
    procedure CarregarTitulos;
    var
     xCorSistema, rEmpresa:string;
  public
    { Public declarations }
    xTitulos:String;
  end;

var
  PSQ_FM_X_PBX_TIT: TPSQ_FM_X_PBX_TIT;
  xChamada: integer;
         // 1 - Pela tela FIN_FM_M_PBX
         // 2 - Pela tela FIN_FM_M_BRD



implementation

{$R *.dfm}

uses uDmGeral, FIN_UN_M_BRD;


procedure TPSQ_FM_X_PBX_TIT.CarregarTitulos;
begin

      try


        dmGeral.BUS_CD_M_PAG_TIT.Filtered := true;
        dmGeral.BUS_CD_M_PAG_TIT.Filter := 'INT_SELECAO=TRUE';


        if (xChamada =1) then
           begin
              try
                dmGeral.FIN_CD_M_PBX_TIT.BeforePost := nil;
                dmGeral.BUS_CD_M_PAG_TIT.First;
                while not dmGeral.BUS_CD_M_PAG_TIT.EOF do
                  begin
                   if not dmGeral.FIN_CD_M_PBX_TIT.Locate('id_titulo',dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString,[]) then
                      begin
                        dmGeral.FIN_CD_M_PBX_TIT.Insert;
                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString :=
                           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('INT_COD_PLANO').AsString :=
                           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_PLANO').AsString;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('INT_NOMEPCT').AsString :=
                           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('INT_NOMEPCT').AsString;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('int_historico').AsString :=
                           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('historico').AsString;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('dta_vencimento').AsDateTime :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('num_parcela').AsString :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('num_parcela').AsString;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsInteger := 0;
                        if  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime<xDataSis then
                            begin
                              dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsFloat:=
                                 (xDataSis - dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime);
                            end;

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_juros').asCurrency:=
                          RoundTo( (((dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency*
                              dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_juros').AsCurrency)/100)/30)*
                              dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsFloat,-2);

                        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').asCurrency:=
                          RoundTo( ((dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency*
                             dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_multa').AsCurrency)/100),-2);

                       dmGeral.FIN_CD_M_PBX_TIT.Post;
                     end;

                   dmGeral.BUS_CD_M_PAG_TIT.Next;
                  end;
             finally
               dmGeral.FIN_CD_M_PBX_TIT.BeforePost := dmGeral.FIN_CD_M_PBX_TITBeforePost;
             end;
           end;

         if (xChamada=2) then
           begin
              try
                FIN_FM_M_BRD.FIN_CD_M_BRD.BeforePost := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.BeforePost := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.AfterPost := nil;

                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_desconto.OnChange := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_juros.OnChange := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_multa.OnChange := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_pagamento.OnChange := nil;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITper_desconto.OnChange := nil;

                dmGeral.BUS_CD_M_PAG_TIT.First;
                while not dmGeral.BUS_CD_M_PAG_TIT.EOF do
                  begin
                   if not FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.Locate('id_titulo',dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString,[]) then
                      begin
                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.Insert;
                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString :=
                           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('int_nomefor').AsString :=
                                dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomefor').AsString;


                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('int_nomeccu').AsString :=
                              dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomecusto').AsString;


                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_plano').AsString :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_plano').AsString;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_ccusto').AsString :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_ccusto').AsString;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('int_nomepct').AsString :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomepct').AsString;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('num_parcela').AsString :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('num_parcela').AsString;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('dta_vencimento').AsDateTime :=
                                 dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('atraso').AsInteger := 0;
                        if  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime<xDataSis then
                            begin
                              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('atraso').AsFloat:=
                                 (xDataSis - dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime);
                            end;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').asCurrency:=
                           (((FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency*
                              dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_juros').AsCurrency)/100)/30)*
                              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('atraso').AsFloat;

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').asCurrency:=
                           ((FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency*
                             dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_multa').AsCurrency)/100);

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_a_pagar').AsCurrency  :=
                            FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency -
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_desconto').AsCurrency +
                              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').AsCurrency +
                                FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').AsCurrency;


                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_RESTANTE').AsCurrency:=
                            RoundTo( (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_A_PAGAR').AsCurrency-
                              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency),-2);

                        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.Post;
                     end;

                    dmGeral.BUS_CD_M_PAG_TIT.Next;
                  end;
              finally
                FIN_FM_M_BRD.FIN_CD_M_BRD.BeforePost := FIN_FM_M_BRD.FIN_CD_M_BRDBeforePost;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.BeforePost :=  FIN_FM_M_BRD.FIN_CD_M_BRD_TITBeforePost;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.AfterPost :=  FIN_FM_M_BRD.FIN_CD_M_BRD_TITAfterPost;

                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_desconto.OnChange :=
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_descontoChange;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_juros.OnChange :=
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_jurosChange;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_multa.OnChange :=
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_multaChange;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_pagamento.OnChange :=
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_pagamentoChange;
                FIN_FM_M_BRD.FIN_CD_M_BRD_TITper_desconto.OnChange :=
                             FIN_FM_M_BRD.FIN_CD_M_BRD_TITper_descontoChange;
              end;
           end;


       finally
         dmGeral.BUS_CD_M_PAG_TIT.Filtered := false;

       end;

end;





procedure TPSQ_FM_X_PBX_TIT.dbGridTitulosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (xDataSis = dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;
end;

procedure TPSQ_FM_X_PBX_TIT.btnFiltroClick(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
  try
    inherited;

    if rEmpresa <> '' then
      begin
        case cbbPesquisa.ItemIndex of
           0: begin
                dmGeral.BUS_CD_M_PAG_TIT.Close;
                dmGeral.BUS_CD_M_PAG_TIT.Data :=
                dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([102, rEmpresa,
                                                                 dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString,
                                                                 StringReplace(txtPesquisa.Text, ',', '.', []),xTitulos]));
              end;
           1: begin
                dmGeral.BUS_CD_M_PAG_TIT.Close;
                dmGeral.BUS_CD_M_PAG_TIT.Data :=
                dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([92,rEmpresa,
                                                                 dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString,xTitulos]));
              end;
         end;
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_PBX_TIT.btnSelecionarTitClick(Sender: TObject);
begin
  CarregarTitulos;
  Close;
end;

procedure TPSQ_FM_X_PBX_TIT.carregaCores;
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
    pnlCima.Color := codCor;
    pnlTop.Color := codCor;
end;


procedure TPSQ_FM_X_PBX_TIT.cbbPesquisaChange(Sender: TObject);
begin
   txtPesquisa.Text := '';
end;

procedure TPSQ_FM_X_PBX_TIT.dbGridTitulosDblClick(Sender: TObject);
begin

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_tit').AsBoolean = true)) then
     begin
        if not dmGeral.FIN_CD_M_PBX_TIT.IsEmpty then
           begin
             if dmGeral.FIN_CD_M_PBX_TIT.State in [dsInsert, dsEdit] then
                dmGeral.FIN_CD_M_PBX_TIT.FieldByName('per_desconto').asFloat:= 0;
           end;


        PSQ_FM_X_PBX_TIT.Close;
     end;
end;

procedure TPSQ_FM_X_PBX_TIT.dbGridTitulosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    dbGridTitulosDblClick(self);
  end;
end;

procedure TPSQ_FM_X_PBX_TIT.ExibirDados;
begin
   // Comentado por Maxsuel Victor, em 24/07/2016
   //rEmpresa := ''''+dmGeral.FIN_CD_M_PBX.FieldByName('ID_EMPRESA').AsString+'''';
   rEmpresa := ''''+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'''';

 { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
     begin
        lblEmpresaLog.Caption := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;

        cdsTemp.Close;
        cdsTemp.CreateDataSet;

        dmGeral.CAD_CD_C_PAR_BXP.First;
        while not dmGeral.CAD_CD_C_PAR_BXP.eof do
           begin
             if dmGeral.CAD_CD_C_PAR_BXP.FieldByName('permite_baixar').AsBoolean then
                begin
                  cdsTemp.Insert;
                  cdsTemp.FieldByName('selecao').AsBoolean    := true;
                  cdsTemp.FieldByName('id_empresa').AsInteger := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsInteger;
                  cdsTemp.FieldByName('descricao').AsString   := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString;
                  cdsTemp.Post;
                end;
             dmGeral.CAD_CD_C_PAR_BXP.Next;
           end;
        dmGeral.CAD_CD_C_PAR_BXP.First;

        cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First;
     end
  else
     begin
       pnFiltro.Visible := false;
     end; }


  if not cdsTemp.IsEmpty then
     begin
        cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First;
     end;

  if xChamada = 1 then  // Chamada pela tela FIN_FM_M_PBX
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([92, rEmpresa,
                                                             dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString,xTitulos]));
     end;

  if xChamada = 2 then   // Chamada pela tela FIN_FM_M_BRD
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([96, rEmpresa,xTitulos]));
     end;


  if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
    begin
      dmGeral.BUS_CD_M_PAG_TIT.IndexFieldNames := 'DTA_VENCIMENTO';
    end;
end;

procedure TPSQ_FM_X_PBX_TIT.FormCreate(Sender: TObject);
begin
   carregaCores;
end;

procedure TPSQ_FM_X_PBX_TIT.FormShow(Sender: TObject);
begin
  try
    { if xChamada = 1 then  // Chamada pela tela FIN_FM_M_PBX
       begin
        gbFiltro.Visible := true;
       end
     else
       begin
        gbFiltro.Visible := false;
       end; }


   grdBxaNEmp.OnFieldChanged := nil;


  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_tit').AsBoolean = true)) then
     begin
       dbGridTitulos.RemoveField('int_selecao');
       btnSelecionarTit.Visible := false;
     end;


  gbFiltro.Visible := true;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
     begin
        lblEmpresaLog.Caption := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;

        cdsTemp.Close;
        cdsTemp.CreateDataSet;

        dmGeral.CAD_CD_C_PAR_BXP.First;
        while not dmGeral.CAD_CD_C_PAR_BXP.eof do
           begin
             if dmGeral.CAD_CD_C_PAR_BXP.FieldByName('permite_baixar').AsBoolean then
                begin
                  cdsTemp.Insert;
                  cdsTemp.FieldByName('selecao').AsBoolean    := true;
                  cdsTemp.FieldByName('id_empresa').AsInteger := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsInteger;
                  cdsTemp.FieldByName('descricao').AsString   := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString;
                  cdsTemp.Post;
                end;
             dmGeral.CAD_CD_C_PAR_BXP.Next;
           end;
        dmGeral.CAD_CD_C_PAR_BXP.First;

     {  cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First; }
     end
  else
     begin
       pnFiltro.Visible := false;
     end;

  ExibirDados;
  dbGridTitulos.SetFocus;
  finally
     grdBxaNEmp.OnFieldChanged :=   grdBxaNEmpFieldChanged
  end;
end;

procedure TPSQ_FM_X_PBX_TIT.grdBxaNEmpFieldChanged(Sender: TObject;
  Field: TField);
var
  IdEmpresa: integer;
begin
  IdEmpresa :=  cdsTemp.FieldByName('id_empresa').AsInteger;
  if Field.FieldName = 'selecao' then
     begin
       {if not cdsTemp.IsEmpty then
         begin
           cdsTemp.Edit;
           cdsTemp.Post;
           cdsTemp.Edit; }

           ExibirDados;
       //  end;
     end;

  cdsTemp.Locate('ID_EMPRESA',IdEmpresa,[]);
end;

procedure TPSQ_FM_X_PBX_TIT.lblTituloMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

end.
