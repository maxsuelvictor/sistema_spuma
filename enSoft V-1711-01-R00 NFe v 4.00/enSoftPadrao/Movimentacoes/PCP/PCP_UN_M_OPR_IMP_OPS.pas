unit PCP_UN_M_OPR_IMP_OPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,frxClass,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  frxDBSet, frxExportXLS, frxExportPDF, System.Math;

type
  TPCP_FM_M_OPR_IMP_OPS = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    cbbTipoSetor: TComboBox;
    Label2: TLabel;
    PCP_PD_M_OPR: TfrxPDFExport;
    PCP_XL_M_OPR: TfrxXLSExport;
    PCP_DB_M_OPR: TfrxDBDataset;
    PCP_FR_M_OPR_ITE_COL: TfrxReport;
    PCP_DB_M_OPR_OPP: TfrxDBDataset;
    PCP_DB_M_OPR_OPS: TfrxDBDataset;
    rgSetor: TRadioGroup;
    PCP_FR_M_OPR_ITE_CCT: TfrxReport;
    PCP_FR_M_OPR_ITE: TfrxReport;
    PCP_FR_M_OPR_ITE_BOR: TfrxReport;
    PCP_FR_M_OPR_ITE_MTB: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
     codOpr:String;
  end;

var
  PCP_FM_M_OPR_IMP_OPS: TPCP_FM_M_OPR_IMP_OPS;


implementation

{$R *.dfm}

uses uDmGeral, PCP_UN_M_OPR, enConstantes;

procedure TPCP_FM_M_OPR_IMP_OPS.btnImprimirClick(Sender: TObject);
var
 { codigo,codTipoSet,PathImg,filtro: String;
  LogoEmpresa: TfrxPictureView;
  Ped_Sel: String;
  TotLiq , Cubagem: Currency;}

  PathImg, Ped_Sel: String;
  LogoEmpresa: TfrxPictureView;
  TotLiq, Cubagem: Currency;
  opcao_rel: String;

  dia,mes, ano: word;
begin
  inherited;

  try
    opcao_rel := '2';
    if not(InputQuery('Opção', '1-Todos;   2-Restante a produzir > 0;   3-Qtde a produzir=0;   4-Restante a produzir=0', opcao_rel)) then
       exit;

    if (opcao_rel <> '1') and (opcao_rel <> '2') and (opcao_rel <> '3') and (opcao_rel <> '4') then
       begin
         Showmessage('Opção inválida para a impressão!');
         exit;
       end;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    begin

      if dmGeral.PCP_CD_M_OPR_OPP.IsEmpty then
         begin
           ShowMessage('Não há registro para imprimir!');
           abort;
         end;

      dmGeral.PCP_CD_M_OPR_OPP.IndexFieldNames := 'int_id_grupo;int_nomeite';

      if rgSetor.ItemIndex = 0 then
         begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_ITE_COL.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
         end;

      if rgSetor.ItemIndex = 1 then
         begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_ITE_CCT.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
         end;

      if rgSetor.ItemIndex = 2 then
         begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_ITE.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
         end;


      dmGeral.PCP_CD_M_OPR_PED.First;
      while not dmGeral.PCP_CD_M_OPR_PED.eof do
         begin
            if Ped_Sel <> '' then
               begin
                 Ped_Sel :=
                 Ped_Sel + ',' +''''+dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
            if Ped_Sel = '' then
               begin
                 Ped_Sel :=
                 Ped_Sel +''''+ dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
           dmGeral.PCP_CD_M_OPR_PED.Next;
         end;
      dmGeral.PCP_CD_M_OPR_PED.First;

      TotLiq  := 0;
      Cubagem := 0;

      if trim(Ped_Sel) = '' then
         begin
           Ped_Sel := '''-1''';
         end;

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, Ped_Sel]));

      dmGeral.BUS_CD_M_PED.First;
      while not dmGeral.BUS_CD_M_PED.eof do
         begin
           TotLiq  := TotLiq  + dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;
           Cubagem := Cubagem + dmGeral.BUS_CD_M_PED.FieldByName('cubagem').AsCurrency;
           dmGeral.BUS_CD_M_PED.Next;
         end;
      //dmGeral.BUS_CD_M_PED.Close;

      if dmGeral.BUS_CD_M_PED.IsEmpty then
         begin
            TotLiq := 0;
            dmGeral.PCP_CD_M_OPR_OPP.first;
            while not dmGeral.PCP_CD_M_OPR_OPP.eof do
               begin
                 if dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsCurrency > 0 then
                    begin
                      dmgeral.BusItens(0,dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_item').AsString);
                      if dmgeral.BUS_CD_C_ITE.FieldByName('cubagem').AsFloat > 0 then
                         begin
                           Cubagem := Cubagem + RoundTo( (dmgeral.BUS_CD_C_ITE.FieldByName('cubagem').AsCurrency *
                                                 dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsCurrency),-2);
                         end;
                    end;
                 dmGeral.PCP_CD_M_OPR_OPP.Next;
                 dmgeral.BUS_CD_C_ITE.close;
               end;
            dmGeral.PCP_CD_M_OPR_OPP.First;
         end;
      dmGeral.BUS_CD_M_PED.Close;

      if opcao_rel = '2' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;

           case rgSetor.ItemIndex of
              0:
                 dmGeral.PCP_CD_M_OPR_OPP.Filter := ' int_exibe_na_impressao_op = true and int_rastrea_bordadeira = true and (qtde_a_produzir - qtde_produzida) > 0 ';
              1:
                 dmGeral.PCP_CD_M_OPR_OPP.Filter := ' int_exibe_na_impressao_op = true and int_rastrea_colagem_tampo_alfin = true and (qtde_a_produzir - qtde_produzida) > 0 ';
              2:
                 dmGeral.PCP_CD_M_OPR_OPP.Filter := ' int_exibe_na_impressao_op = true and int_rastrea_colagem_molas  = true and (qtde_a_produzir - qtde_produzida) > 0 ';
              3:
                 dmGeral.PCP_CD_M_OPR_OPP.Filter := ' int_exibe_na_impressao_op = true and int_rastrea_corte_costura  = true and (qtde_a_produzir - qtde_produzida) > 0 ';
              4:
                 dmGeral.PCP_CD_M_OPR_OPP.Filter := ' int_exibe_na_impressao_op = true and int_rastrea_montagem_caixa_box   = true and (qtde_a_produzir - qtde_produzida) > 0 ';
           else
              dmGeral.PCP_CD_M_OPR_OPP.Filter := ' (qtde_a_produzir - qtde_produzida) > 0 ';
           end;

         end;
      if opcao_rel = '3' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;
           dmGeral.PCP_CD_M_OPR_OPP.Filter := ' qtde_a_produzir = 0 ';
         end;

      if opcao_rel = '4' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;
           dmGeral.PCP_CD_M_OPR_OPP.Filter := ' (qtde_a_produzir - qtde_produzida) = 0 ';
         end;

      DecodeDate(xDataSis,ano,mes,dia);

      if rgSetor.ItemIndex = 0 then
         begin
            PCP_FR_M_OPR_ITE_BOR.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE_BOR.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE_BOR.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE_BOR.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE_BOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE_BOR.Variables['ft_Ano_Bordadeira'] := QuotedStr(IntToStr(ano));
            PCP_FR_M_OPR_ITE_BOR.PrepareReport();
            PCP_FR_M_OPR_ITE_BOR.ShowReport();
         end;

      if rgSetor.ItemIndex in [1,2] then
         begin

            if rgSetor.ItemIndex = 1 then
               begin
                 TfrxReportPage(PCP_FR_M_OPR_ITE_COL.FindObject('Page1')).Visible := false;
                 TfrxReportPage(PCP_FR_M_OPR_ITE_COL.FindObject('Page2')).Visible := true;
               end;
            if rgSetor.ItemIndex = 2 then
               begin
                  TfrxReportPage(PCP_FR_M_OPR_ITE_COL.FindObject('Page1')).Visible := true;
                  TfrxReportPage(PCP_FR_M_OPR_ITE_COL.FindObject('Page2')).Visible := false;
               end;

            PCP_FR_M_OPR_ITE_COL.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE_COL.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE_COL.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE_COL.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE_COL.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE_COL.Variables['ft_Ano_Colagem'] := QuotedStr(IntToStr(ano));
            PCP_FR_M_OPR_ITE_COL.PrepareReport();
            PCP_FR_M_OPR_ITE_COL.ShowReport();
         end;

       {if rgSetor.ItemIndex in [2] then
         begin
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE_COL_ALF.Variables['ft_Ano_Colagem'] := QuotedStr(IntToStr(ano));
            PCP_FR_M_OPR_ITE_COL_ALF.PrepareReport();
            PCP_FR_M_OPR_ITE_COL_ALF.ShowReport();
         end; }

      if rgSetor.ItemIndex = 3 then
         begin
            PCP_FR_M_OPR_ITE_CCT.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE_CCT.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE_CCT.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE_CCT.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE_CCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE_CCT.Variables['ft_AnoCorteCostura'] := QuotedStr(IntToStr(ano));
            PCP_FR_M_OPR_ITE_CCT.PrepareReport();
            PCP_FR_M_OPR_ITE_CCT.ShowReport();
         end;

      if rgSetor.ItemIndex = 4 then
         begin
            PCP_FR_M_OPR_ITE_MTB.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE_MTB.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE_MTB.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE_MTB.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE_MTB.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE_MTB.PrepareReport();
            PCP_FR_M_OPR_ITE_MTB.ShowReport();
         end;

      if rgSetor.ItemIndex = 5 then
         begin
            PCP_FR_M_OPR_ITE.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
            PCP_FR_M_OPR_ITE.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
            PCP_FR_M_OPR_ITE.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
            PCP_FR_M_OPR_ITE.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
            PCP_FR_M_OPR_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            PCP_FR_M_OPR_ITE.PrepareReport();
            PCP_FR_M_OPR_ITE.ShowReport();
         end;
    end
  else
    begin
      ShowMessage('Nenhuma OPR selecionada!');
      exit;
    end;
  finally
    dmGeral.PCP_CD_M_OPR_OPP.Filtered := false;
  end;


  {
  dmGeral.PCP_CD_M_OPR.Close;
         dmGeral.PCP_CD_M_OPR.Data :=
         dmGeral.PCP_CD_M_OPR.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                              codOpr]));
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    begin

      dmGeral.PCP_CD_M_OPR_PED.First;
      while not dmGeral.PCP_CD_M_OPR_PED.eof do
         begin
            if Ped_Sel <> '' then
               begin
                 Ped_Sel :=
                 Ped_Sel + ',' +''''+dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
            if Ped_Sel = '' then
               begin
                 Ped_Sel :=
                 Ped_Sel +''''+ dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
           dmGeral.PCP_CD_M_OPR_PED.Next;
         end;
      dmGeral.PCP_CD_M_OPR_PED.First;

      TotLiq  := 0;
      Cubagem := 0;

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, Ped_Sel]));

      dmGeral.BUS_CD_M_PED.First;
      while not dmGeral.BUS_CD_M_PED.eof do
         begin
           TotLiq  := TotLiq  + dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;
           Cubagem := Cubagem + dmGeral.BUS_CD_M_PED.FieldByName('cubagem').AsCurrency;
           dmGeral.BUS_CD_M_PED.Next;
         end;
      dmGeral.BUS_CD_M_PED.Close;


      try
       codigo := copy(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex],1,pos(' - ',cbbTipoSetor.Items[cbbTipoSetor.ItemIndex])-1);
       dmGeral.PCP_CD_M_OPR_OPS.Filtered := true;
       filtro := '(id_setor='+codigo+')';
       if codigo='1' then
         filtro := filtro + ' and ((int_cod_tipo_rast=1) or (int_cod_tipo_rast=2))';

       dmGeral.PCP_CD_M_OPR_OPS.Filter := filtro;


       if  dmGeral.PCP_CD_M_OPR_OPS.RecordCount >0 then
         begin
            dmgeral.BusSetor(0,codigo);


             if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger=1 then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['tipo_setor'] := QuotedStr(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex]);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.ShowReport();
              end;

           }
           // if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [0,3]  {(codigo='3') or (codigo='0')}
              //then
           {
           if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [0,3] then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));

                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 3 then
                  begin
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabLote'] := QuotedStr('Lote Bordadeira');
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabItem'] := QuotedStr('Faixa');
                  end;
                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 0 then
                  begin
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabLote']   := QuotedStr('Lote Espuma');
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabItem']   := QuotedStr('Lamina');
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['tipo_setor'] := QuotedStr(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex]);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.ShowReport();
              end;

           }
            //if   dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [2,4]    {(codigo='4') OR (codigo='2')}
              // then
           {
           if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [2,4] then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));

                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 2 then
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['cabItem'] := QuotedStr('Tampo');
                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 4 then
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['cabItem'] := QuotedStr('Faixa');


                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.ShowReport();
              end;
        end
      else
        begin
           ShowMessage('Nenhum registro encontrado!');
        end;

      finally
        dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
      end;

    end
  else
    begin
      ShowMessage('Registro não encontrado');
    end; }
end;

procedure TPCP_FM_M_OPR_IMP_OPS.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPCP_FM_M_OPR_IMP_OPS.FormShow(Sender: TObject);
begin


  { dmgeral.BUS_PR_X_SE1;
   dmGeral.BUS_CD_X_SE1.First;
   while not dmGeral.BUS_CD_X_SE1.EOF do
     BEGIN
       cbbTipoSetor.AddItem(dmGeral.BUS_CD_X_SE1.FieldByName('CODIGO').AsString+' - '+
                            dmGeral.BUS_CD_X_SE1.FieldByName('DESCRICAO').AsString,nil);


       dmGeral.BUS_CD_X_SE1.Next;
     END; }


   dmgeral.BusSetor(1,'%');
   dmGeral.BUS_CD_C_SET.First;
   while not dmGeral.BUS_CD_C_SET.EOF do
     BEGIN
       cbbTipoSetor.AddItem(dmGeral.BUS_CD_C_SET.FieldByName('tipo').AsString+' - '+
                            dmGeral.BUS_CD_C_SET.FieldByName('ID_SETOR').AsString+' - '+
                            dmGeral.BUS_CD_C_SET.FieldByName('descricao').AsString,nil);
       dmGeral.BUS_CD_C_SET.Next;
     END;



   cbbTipoSetor.ItemIndex := 0;
end;

end.
