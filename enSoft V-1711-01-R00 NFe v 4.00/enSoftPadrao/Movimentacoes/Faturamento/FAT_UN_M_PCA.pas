unit FAT_UN_M_PCA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvToolEdit, JvDBControls, vcl.Wwdbedit, Vcl.Mask, JvExMask,
  Vcl.Buttons, frxClass, frxDBSet, frxExportPDF, frxExportXLS, Vcl.DBCtrls,
  vcl.wwdblook, Datasnap.DBClient, Vcl.DBGrids;

type
  TFAT_FM_M_PCA = class(TPAD_FM_X_PAD)
    lblResponsavel: TLabel;
    txtNomeResp: TwwDBEdit;
    txtData: TJvDBDateEdit;
    lblData: TLabel;
    gbPedido: TGroupBox;
    dgPed: TwwDBGrid;
    dgPedIButton: TwwIButton;
    btnAddPed: TBitBtn;
    pnlPed: TPanel;
    txtCodPed: TJvDBComboEdit;
    lblPed: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    dsoPed: TwwDataSource;
    txtResponsavel: TwwDBEdit;
    lblControle: TLabel;
    txtControle: TwwDBEdit;
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    btnImprimir: TcxButton;
    FAT_FR_M_PCA: TfrxReport;
    FAT_XL_M_PCA: TfrxXLSExport;
    FAT_PD_M_PCA: TfrxPDFExport;
    FAT_DB_M_PCA: TfrxDBDataset;
    FAT_DB_M_PCA_PED: TfrxDBDataset;
    cbbMotorista: TwwDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    txtPlaca: TDBEdit;
    FAT_FR_M_PCA_ITEs: TfrxReport;
    pmImpressaoItens: TPopupMenu;
    btnImpItens: TMenuItem;
    FAT_CD_R_PCA_PED_ITE: TClientDataSet;
    FAT_DB_M_PCA_PED_ITE: TfrxDBDataset;
    grdItens: TwwDBGrid;
    lblEnderecoCobranca: TLabel;
    dsPcaPedIte: TwwDataSource;
    btnImprimirCarreg: TcxButton;
    FAT_FR_M_PCA_CAR: TfrxReport;
    FAT_DB_R_PCA_PED_ITE_CAR: TfrxDBDataset;
    FAT_CD_R_PCA_CAR: TClientDataSet;
    FAT_CD_R_PCA_PED_ITE_CAR: TClientDataSet;
    FAT_CD_R_PCA_PED_ITE_CARid_item: TIntegerField;
    FAT_CD_R_PCA_PED_ITE_CARid_cor: TIntegerField;
    FAT_CD_R_PCA_PED_ITE_CARint_nomeite: TWideStringField;
    FAT_CD_R_PCA_PED_ITE_CARint_nomecor: TWideStringField;
    FAT_CD_R_PCA_PED_ITE_CARint_id_und_venda: TWideStringField;
    FAT_CD_R_PCA_PED_ITE_CARqtde: TFloatField;
    FAT_DB_R_PCA: TfrxDBDataset;
    FAT_CD_R_PCA_CARid_carregamento: TIntegerField;
    FAT_CD_R_PCA_CARid_responsavel: TIntegerField;
    FAT_CD_R_PCA_CARdta_carregamento: TDateField;
    FAT_CD_R_PCA_CARint_nomeres: TWideStringField;
    FAT_CD_R_PCA_CARstatus: TIntegerField;
    FAT_CD_R_PCA_CARid_motorista: TIntegerField;
    FAT_CD_R_PCA_CARplaca: TWideStringField;
    FAT_CD_R_PCA_CARint_nomemot: TWideStringField;
    FAT_CD_R_PCA_CARFAT_SQ_R_PCA_PED_ITE: TDataSetField;
    FAT_CD_R_PCA_PED_ITE_CARid_grupo: TWideStringField;
    FAT_FR_M_PCA_ITE: TfrxReport;
    FAT_CD_R_PCA_PED_ITE_CARnro_lotes_opr: TWideMemoField;
    FAT_CD_R_PCA_CARseq_carreg_anual: TIntegerField;
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure btnAddPedClick(Sender: TObject);
    procedure dgPedIButtonClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtCodPedButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dgPedCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtCodPedExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure cbbMotoristaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbMotoristaExit(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
    procedure pnlPedExit(Sender: TObject);
    procedure btnImpItensClick(Sender: TObject);
    procedure FAT_DB_M_PCA_PEDCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure dgPedMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnImprimirCarregClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PCA: TFAT_FM_M_PCA;

implementation

{$R *.dfm}

uses PSQ_UN_X_FUN, uDmGeral, PSQ_UN_X_PED, enConstantes, uDmSgq, enSoftMenu;

procedure TFAT_FM_M_PCA.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PCA);
   btnImprimir.Enabled := false;
   btnImprimirCarreg.Enabled := false;
   cbbMotorista.SetFocus;
end;

procedure TFAT_FM_M_PCA.acAlterarExecute(Sender: TObject);
begin
  if (not dmGeral.FAT_CD_M_PCA.IsEmpty) then
     begin
     // Alterado por Maxsuel Victor, em 03/04/2019
     // Pode acontecer de ter que retirar o pedido do carregamento devido o pedido não caber
     // no relatório de carga


     { if (dmGeral.FAT_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
         begin
            ShowMessage('Alteração não permitida, pois foi importada para MDF.');
            exit;
         end;  }
     end;

   inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PCA) then
      begin
        inherited;
        btnImprimir.Enabled := false;
        btnImprimirCarreg.Enabled := false;
        cbbMotorista.SetFocus;
      end;
end;

procedure TFAT_FM_M_PCA.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ROM) then
     begin
       inherited;
       btnImprimir.Enabled := true;
       btnImprimirCarreg.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       btnAddPed.SetFocus;
     end;
end;

procedure TFAT_FM_M_PCA.acExcluirExecute(Sender: TObject);
begin
   if (not dmGeral.FAT_CD_M_PCA.IsEmpty) then
     begin
       if (dmGeral.FAT_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
         begin
            ShowMessage('Exclusão não permitida pois este carregamento já foi importado.');
            exit;
         end;
     end;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PCA);
end;

procedure TFAT_FM_M_PCA.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.FAT_CD_M_PCA.FieldByName('ID_CARREGAMENTO').AsString;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       dmGeral.FAT_CD_M_PCA_PED.Cancel;
       DmGeral.Grava(dmGeral.FAT_CD_M_PCA);
       inherited;
       dmGeral.FAT_CD_M_PCA.Close;
       dmGeral.FAT_CD_M_PCA.Data :=
       dmGeral.FAT_CD_M_PCA.DataRequest(
                  VarArrayOf([0, codigo]));
       btnImprimir.Enabled := true;
       btnImprimirCarreg.Enabled := true;
     end
   else
     begin
       btnAddPed.SetFocus;
     end;
end;

procedure TFAT_FM_M_PCA.btnAddPedClick(Sender: TObject);
begin
  inherited;
   try
    //dmGeral.FAT_CD_M_PCA.BeforePost := nil;
    pnlPed.Enabled := True;
    dmGeral.FAT_CD_M_PCA_PED.Insert;
    txtCodPed.SetFocus;
   finally
     //dmGeral.FAT_CD_M_PCA.BeforePost := dmGeral.FAT_CD_M_PCABeforePost;
   end;
end;

procedure TFAT_FM_M_PCA.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
  if cbbPesquisa.ItemIndex = 4 then
     begin
       dmGeral.FAT_CD_M_PCA.Close;
        dmGeral.FAT_CD_M_PCA.Data :=
        dmGeral.FAT_CD_M_PCA.DataRequest(
                      VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,FormatDateTime('yyyy',xDataSistema)]));
     end
  else
     begin
        dmGeral.FAT_CD_M_PCA.Close;
        dmGeral.FAT_CD_M_PCA.Data :=
        dmGeral.FAT_CD_M_PCA.DataRequest(
                      VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text]));
     end;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_PCA.btnImpItensClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;

  if  dmGeral.FAT_CD_M_PCA.IsEmpty then
    BEGIN
      ShowMessage('É necessário selecionar registro.');
      exit;
    END;

  if not dmGeral.FAT_CD_M_PCA.IsEmpty then
      begin
        FAT_DB_M_PCA_PED.OnCheckEOF := FAT_DB_M_PCA_PEDCheckEOF;
        codigo := dmGeral.FAT_CD_M_PCAid_carregamento.text;

        dmGeral.FAT_CD_M_PCA.Close;
        dmGeral.FAT_CD_M_PCA.Data :=
        dmGeral.FAT_CD_M_PCA.DataRequest(VarArrayOf([0,codigo]));

        if (not dmGeral.FAT_CD_M_PCA.IsEmpty) then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_M_PCA_ITE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_M_PCA.Name,xCodLme,xRevLme,nil);



            FAT_FR_M_PCA_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));


            FAT_FR_M_PCA_ITE.Variables['Opcoes'] :=  QuotedStr('');
            FAT_FR_M_PCA_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_M_PCA_ITE.PrepareReport();
            FAT_FR_M_PCA_ITE.ShowReport();
          end
        else
          begin
            ShowMessage('Registro não encontrado.');
            exit;
          end;
      end;

end;

procedure TFAT_FM_M_PCA.btnImprimirCarregClick(Sender: TObject);
var
  codigo, PathImg,nros_pedidos,ordems_de_producao: string;
  LogoEmpresa: TfrxPictureView;
  vlr_total_pedidos, total_cubagem: Currency;
begin
  inherited;

  if dmGeral.FAT_CD_M_PCA.IsEmpty then
     begin
       ShowMessage('Nenhum registro foi selecionado.');
       exit;
     end;

    FAT_CD_R_PCA_CAR.Close;
    FAT_CD_R_PCA_CAR.Data :=
         FAT_CD_R_PCA_CAR.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PCA.FieldByName('ID_CARREGAMENTO').Text]));

    if (not FAT_CD_R_PCA_CAR.IsEmpty) then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_M_PCA_CAR.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_PCA_CAR.Name,xCodLme,xRevLme,nil);

            vlr_total_pedidos := 0;
            total_cubagem := 0;

            ordems_de_producao := '';
            nros_pedidos       := '';

            dmGeral.FAT_CD_M_PCA_PED.First;
            while not dmGeral.FAT_CD_M_PCA_PED.eof do
               begin
                  total_cubagem := total_cubagem + dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_cubagem').AsCurrency;
                  vlr_total_pedidos := vlr_total_pedidos + dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_vlr_liquido').AsCurrency;
                  if pos(dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString,ordems_de_producao) = 0 then
                     begin
                       if ordems_de_producao = '' then
                          ordems_de_producao := dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString
                       else
                          begin
                            ordems_de_producao := ordems_de_producao + '; ' +
                                                  dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString;
                          end;

                     end;
                  if pos(dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').AsString,nros_pedidos) = 0 then
                     begin
                       if nros_pedidos = '' then
                          nros_pedidos := dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').AsString
                       else
                          begin
                            nros_pedidos := nros_pedidos + '; ' +
                                                  dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').AsString;
                          end;

                     end;
                  dmGeral.FAT_CD_M_PCA_PED.Next;
               end;

            FAT_FR_M_PCA_CAR.Variables['ft_cubagem_total_pedidos'] := QuotedStr(CurrToStr(total_cubagem));
            FAT_FR_M_PCA_CAR.Variables['ft_valor_total_pedidos']   := QuotedStr(FormatCurr('###,###,###,##0.00',vlr_total_pedidos));
            FAT_FR_M_PCA_CAR.Variables['ft_nro_lotes_op']   :=        QuotedStr(ordems_de_producao);
            FAT_FR_M_PCA_CAR.Variables['ft_nro_pedidos']   :=         QuotedStr(nros_pedidos);

            FAT_FR_M_PCA_CAR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));


            FAT_FR_M_PCA_CAR.Variables['Opcoes'] :=  QuotedStr('');
            FAT_FR_M_PCA_CAR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_M_PCA_CAR.PrepareReport();
            FAT_FR_M_PCA_CAR.ShowReport();
          end
        else
          begin
            ShowMessage('Registro não encontrado.');
            exit;
          end;
end;

procedure TFAT_FM_M_PCA.btnImprimirClick(Sender: TObject);
var
  codigo, PathImg, ordems_de_producao: string;
  LogoEmpresa: TfrxPictureView;
  vlr_total_pedidos,total_cubagem: Currency;
begin
  inherited;


  if  dmGeral.FAT_CD_M_PCA.IsEmpty then
    BEGIN
      ShowMessage('É necessário selecionar registro.');
      exit;
    END;

  if not dmGeral.FAT_CD_M_PCA.IsEmpty then
      begin
        FAT_DB_M_PCA_PED.OnCheckEOF := nil;
        codigo := dmGeral.FAT_CD_M_PCAid_carregamento.text;

        dmGeral.FAT_CD_M_PCA.Close;
        dmGeral.FAT_CD_M_PCA.Data :=
        dmGeral.FAT_CD_M_PCA.DataRequest(VarArrayOf([0,codigo]));

        if (not dmGeral.FAT_CD_M_PCA.IsEmpty) then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_M_PCA_ITE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_PCA_ITE.Name,xCodLme,xRevLme,nil);


            vlr_total_pedidos := 0;
            total_cubagem := 0;

            ordems_de_producao := '';

            dmGeral.FAT_CD_M_PCA_PED.First;
            while not dmGeral.FAT_CD_M_PCA_PED.eof do
               begin
                  total_cubagem := total_cubagem + dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_cubagem').AsCurrency;
                  vlr_total_pedidos := vlr_total_pedidos + dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_vlr_liquido').AsCurrency;


                  if pos(dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString,ordems_de_producao) = 0 then
                     begin
                       if ordems_de_producao = '' then
                          ordems_de_producao := dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString
                       else
                          begin
                            ordems_de_producao := ordems_de_producao + '; ' +
                                                  dmGeral.FAT_CD_M_PCA_PED.FieldByName('int_num_lote_opr').AsString;
                          end;

                     end;

                  dmGeral.FAT_CD_M_PCA_PED.Next;
               end;



            {FAT_FR_M_PCA.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));


            FAT_FR_M_PCA.Variables['Opcoes'] :=  QuotedStr('');
            FAT_FR_M_PCA.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_M_PCA.PrepareReport();
            FAT_FR_M_PCA.ShowReport();}


            dmgeral.FAT_CD_M_PCA_PED.IndexFieldNames := 'int_nomecli';

            FAT_FR_M_PCA_ITE.Variables['ft_cubagem_total_pedidos'] := QuotedStr(CurrToStr(total_cubagem));
            FAT_FR_M_PCA_ITE.Variables['ft_valor_total_pedidos']   := QuotedStr(FormatCurr('###,###,###,##0.00',vlr_total_pedidos));
            FAT_FR_M_PCA_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FAT_FR_M_PCA_ITE.Variables['ft_nro_lotes_op']   :=        QuotedStr(ordems_de_producao);
            FAT_FR_M_PCA_ITE.Variables['Opcoes'] :=  QuotedStr('');
            FAT_FR_M_PCA_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FAT_FR_M_PCA_ITE.PrepareReport();
            FAT_FR_M_PCA_ITE.ShowReport();

            dmgeral.FAT_CD_M_PCA_PED.IndexFieldNames := 'id_pedido';

          end
        else
          begin
            ShowMessage('Registro não encontrado.');
            exit;
          end;
      end;

end;

procedure TFAT_FM_M_PCA.cbbMotoristaEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusMotorista(1,'%');
  cbbMotorista.DropDown;
end;

procedure TFAT_FM_M_PCA.cbbMotoristaExit(Sender: TObject);
begin
  inherited;
  if dmGeral.FAT_CD_M_PCA.FieldByName('id_motorista').Text <> '' then
    begin
      dmSgq.BUS_CD_C_MTA.Close;
      dmSgq.BUS_CD_C_MTA.Data :=
        dmSgq.BUS_CD_C_MTA.DataRequest(
          VarArrayOf([0, dmGeral.FAT_CD_M_PCA.FieldByName('id_motorista').Text]));

      dmGeral.FAT_CD_M_PCA.FieldByName('placa').Text := dmSgq.BUS_CD_C_MTA.FieldByName('placa').Text
    end;
end;

procedure TFAT_FM_M_PCA.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if (cbbPesquisa.ItemIndex in [1,2]) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TFAT_FM_M_PCA.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.FAT_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
    begin
       AFont.Color := clBlue;
    end;
end;

procedure TFAT_FM_M_PCA.dbGridDblClick(Sender: TObject);
begin
  inherited;
  btnImprimir.Enabled := false;
end;

procedure TFAT_FM_M_PCA.dgPedCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_SITAPROV').AsInteger <> 1) then
    begin
       AFont.Color := clREd;
    end;
end;

procedure TFAT_FM_M_PCA.dgPedIButtonClick(Sender: TObject);
begin
  inherited;
   try

     dgPedIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PCA_PED.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

      dmGeral.BUS_CD_M_PCP_ROM.Close;
        dmGeral.BUS_CD_M_PCP_ROM.Data :=
          dmGeral.BUS_CD_M_PCP_ROM.DataRequest(
                  VarArrayOf([7, dmGeral.FAT_CD_M_PCA.FieldByName('id_carregamento').AsString]));
      if not dmGeral.BUS_CD_M_PCP_ROM.IsEmpty then
         begin
           if dmGeral.BUS_CD_M_PCP_ROM_PED.Locate('id_pedido',
                      dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').AsString,[]) then
              begin
                ShowMessage('Não é permitido retirar o pedido deste carregamento.' + #13 +
                            'Este pedido foi importado para o relatório de carga: ' +
                             dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString);
                dmGeral.BUS_CD_M_PCP_ROM.Close;
                exit;
              end;

         end;
     dmGeral.BUS_CD_M_PCP_ROM.Close;

     dmGeral.FAT_CD_M_PCA_PED.Delete;
  finally
    dgPedIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PCA.dgPedMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlPed.Enabled = false then
     pnlPed.Enabled := true;

  dmGeral.FAT_CD_M_PCA_PED_ITE.cancel;

  if dmGeral.FAT_CD_M_PCA_PED.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PCA_PED.Append;
       pnlPed.Enabled := true;
       if txtCodPed.canfocus then
          txtCodPed.SetFocus;
     end
  else
     begin
       dmGeral.FAT_CD_M_PCA_PED.cancel;
       pnlPed.Enabled := false;
       if btnAddPed.canfocus then
          btnAddPed.SetFocus;
     end;
end;

procedure TFAT_FM_M_PCA.FAT_DB_M_PCA_PEDCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
   FAT_CD_R_PCA_PED_ITE.Close;
   FAT_CD_R_PCA_PED_ITE.Data :=
   FAT_CD_R_PCA_PED_ITE.DataRequest(
                  VarArrayOf([0,dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString]));
end;

procedure TFAT_FM_M_PCA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FAT_CD_R_PCA_PED_ITE.Close;
  dmGeral.FAT_CD_M_PCA.Close;
  FreeAndNil(FAT_FM_M_PCA);
end;

procedure TFAT_FM_M_PCA.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_PCA.Close;
  dmGeral.FAT_CD_M_PCA.Data := dmGeral.FAT_CD_M_PCA.DataRequest(VarArrayOf([0, '']));
  dmGeral.FAT_CD_M_PCA.Open;
end;

procedure TFAT_FM_M_PCA.FormShow(Sender: TObject);
begin
  inherited;
  dmSgq.BusMotorista(1,'%');
end;

procedure TFAT_FM_M_PCA.pnlDadosDblClick(Sender: TObject);
begin
  inherited;
   btnImprimir.Enabled := true;
end;

procedure TFAT_FM_M_PCA.pnlPedExit(Sender: TObject);
begin
  inherited;
  if (btnAddPed.Focused) or (dgPed.Focused) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.FAT_CD_M_PCA_PED.Cancel;
        dmGeral.FAT_CD_M_PCA_PED.edit;
        finally
           pnlPed.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_PCA.txtCodPedButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_PED := TPSQ_FM_X_PED.Create(Self);
  FormOrigem := FAT_FM_M_PCA.Name;
  PSQ_FM_X_PED.ShowModal;
  if not dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
        txtCodPed.Text := dmGeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
        txtCodPed.SetFocus;
     end;
  dmGeral.BUS_CD_M_PED.Close;
end;

procedure TFAT_FM_M_PCA.txtCodPedExit(Sender: TObject);
var
  pedido: string;
begin
  inherited;

  if dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btnAddPed.Focused then
          exit;

       if dgPed.Focused then
          exit;

       if not dgPedIButton.Enabled then
          exit;

       pnlPed.Enabled := false;
       exit;
     end
  else
     begin
       if dmGeral.FAT_CD_M_PCA_PED.state in [dsBrowse] then
          dmGeral.FAT_CD_M_PCA_PED.edit;
     end;

   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_SITAPROV').AsString := '';
   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_NOMECLI').AsString  := '';
   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_NOMECID').AsString  := '';
  if (trim(dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString) = '') then
    begin
      ShowMessage('Pedido deve ser preenchido.');
      txtCodPed.Text := '';
      txtCodPed.SetFocus;
      exit;
    end;

  dmGeral.BUS_CD_M_PED.Close;
         dmGeral.BUS_CD_M_PED.Data :=
         dmGeral.BUS_CD_M_PED.DataRequest(
                        VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                      dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString]));
  if dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
       ShowMessage('Pedido não encontrado.');
       dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
       txtCodPed.Text := '';
       txtCodPed.SetFocus;
       exit;
     end;


  if (dmGeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsString <> '1') then
      begin
        ShowMessage('Só é permitido pedido aprovado!');
        dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
        txtCodPed.Text := '';
        txtCodPed.SetFocus;
        exit;
      end;

  if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = false) then
      if (dmGeral.BUS_CD_M_PED.FieldByName('situacao').AsString <> '0') then
         begin
            ShowMessage('Só é permitido pedido digitado!');
            dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
            txtCodPed.Text := '';
            txtCodPed.SetFocus;
            exit;
         end;

  if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) then
     begin
        if (dmGeral.BUS_CD_M_PED.FieldByName('situacao').AsString <> '2')   then
           begin
              ShowMessage('Só é permitido pedido Em produção!');
              dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
              txtCodPed.Text := '';
              txtCodPed.SetFocus;
              exit;
           end
     end
  else
      begin
        if (dmGeral.BUS_CD_M_PED.FieldByName('situacao').AsString <> '0') then
           begin
              ShowMessage('Só é permitido pedido digitado!');
              dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
              txtCodPed.Text := '';
              txtCodPed.SetFocus;
              exit;
           end;
      end;

   pedido := dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString;
   dmGeral.FAT_CD_M_PCA_PED.cancel;

   dmGeral.BUS_CD_M_PCP_ROM.Close;
   dmGeral.BUS_CD_M_PCP_ROM.Data :=
       dmGeral.BUS_CD_M_PCP_ROM.DataRequest(
            VarArrayOf([6, pedido]));
   if not dmGeral.BUS_CD_M_PCP_ROM.IsEmpty then
      begin
        ShowMessage('Este pedido de venda já foi separado no relatório de carga: ' + dmGeral.BUS_CD_M_PCP_ROMid_rom.text);
        dmGeral.BUS_CD_M_PCP_ROM.Close;
        dmGeral.FAT_CD_M_PCA_PED.insert;
        dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
        txtCodPed.Text := '';
        txtCodPed.SetFocus;
        exit;
      end;


   if dmGeral.FAT_CD_M_PCA_PED.Locate('ID_PEDIDO',pedido,[]) then
     begin
       ShowMessage('Pedido já existe neste carregamento.');
       dmGeral.FAT_CD_M_PCA_PED.insert;
       dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
       txtCodPed.Text := '';
       txtCodPed.SetFocus;
       exit;
     end;

   dmGeral.FAT_CD_M_PCA_PED.insert;
   dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := pedido;

   dmGeral.BUS_CD_M_FAT_PCA_PED.Close;
   dmGeral.BUS_CD_M_FAT_PCA_PED.Data :=
   dmGeral.BUS_CD_M_FAT_PCA_PED.DataRequest(
                  VarArrayOf([1,dmGeral.FAT_CD_M_PCA.FieldByName('ID_CARREGAMENTO').AsString,
                                dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString]));

   if (not dmgeral.BUS_CD_M_FAT_PCA_PED.IsEmpty) then
      begin
        //if dmGeral.BUS_CD_M_FAT_PCA_PED.FieldByName('STATUS').AsInteger = 0 then
        //  begin
             ShowMessage('Pedido já existe no carregamento: ' +
                          dmGeral.BUS_CD_M_FAT_PCA_PED.FieldByName('ID_CARREGAMENTO').AsString);
             dmGeral.FAT_CD_M_PCA_PED.FieldByName('ID_PEDIDO').AsString := '';
             txtCodPed.Text := '';
             txtCodPed.SetFocus;
             exit;
        //  end;
      end;

   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_SITAPROV').AsInteger :=
                               dmGeral.BUS_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger;
   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_NOMECLI').AsString :=
                               dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString;
   dmGeral.FAT_CD_M_PCA_PED.FieldByName('INT_NOMECID').AsString :=
                               dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECID').AsString;


   if dmGeral.FAT_CD_M_PCA_PED.State in [dsInsert] then
      begin
         if not dmGeral.BUS_CD_M_PED_ITE.IsEmpty then
            begin
              pnlPed.OnExit := nil;
              dmGeral.BUS_CD_M_PED_ITE.First;
              while not dmGeral.BUS_CD_M_PED_ITE.eof do
                    begin
                      dmGeral.FAT_CD_M_PCA_PED_ITE.Append;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_carregamento').AsInteger :=
                            dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_carregamento').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_pedido').AsInteger :=
                            dmGeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_sequencia').AsInteger :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_item').AsInteger       :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_item').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('INT_NOMEITE').AsString     :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('pcp_obs_item').AsString    :=
                            dmGeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_cor').AsInteger       :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_cor').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('INT_NOMECOR').AsString       :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('id_tamanho').AsInteger   :=
                             dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_tamanho').AsInteger;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.FieldByName('qtde').AsCurrency       :=
                            dmGeral.BUS_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;

                      dmGeral.FAT_CD_M_PCA_PED_ITE.Post;
                      dmGeral.BUS_CD_M_PED_ITE.Next;
                    end;
              dmGeral.FAT_CD_M_PCA_PED_ITE.IndexFieldNames := 'INT_NOMEITE';
              pnlPed.OnExit := pnlPedExit;
            end;
      end;


   dmGeral.FAT_CD_M_PCA_PED.Post;

   pnlPed.Enabled := false;

  //ActiveControl := nil;
  //PostMessage(btnAddPed.Handle, WM_SETFOCUS, 0, 0);

  btnAddPedClick(self);

  //btnAddPed.SetFocus;

end;

procedure TFAT_FM_M_PCA.txtPlacaExit(Sender: TObject);
begin
  inherited;
  btnAddPed.SetFocus;
end;

procedure TFAT_FM_M_PCA.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
  PSQ_FM_X_FUN.ShowModal;
  if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PCA.FieldByName('ID_RESPONSAVEL').AsInteger :=
               PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
       dmGeral.FAT_CD_M_PCA.FieldByName('int_nomeresp').text       :=
               PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;
   PSQ_FM_X_FUN.Free;
end;

procedure TFAT_FM_M_PCA.txtResponsavelExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_PCA.FieldByName('ID_RESPONSAVEL').AsString = '') then
      begin
        ShowMessage('O campo "Responsável" deve ser preenchido.');
        txtResponsavel.SetFocus;
        exit;
      end;

    dmGeral.BusFuncionario(0,dmGeral.FAT_CD_M_PCA.FieldByName('ID_RESPONSAVEL').AsString);

    if dmGeral.BUS_CD_C_FUN.IsEmpty then
      begin
        ShowMessage('Funcionário não cadastrado.');
        txtResponsavel.Text := '';
        txtResponsavel.SetFocus;
        exit;
      end;

    if (dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = false) then
      begin
        ShowMessage('Funcionário inativo.');
        txtResponsavel.Text := '';
        txtResponsavel.SetFocus;
        exit;
      end;


    dmGeral.FAT_CD_M_PCA.FieldByName('INT_NOMERESP').AsString := dmgeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

end.
