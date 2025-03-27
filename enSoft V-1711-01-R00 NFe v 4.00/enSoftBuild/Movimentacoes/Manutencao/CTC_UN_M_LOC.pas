unit CTC_UN_M_LOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.Mask, vcl.Wwdbedit, JvExMask, JvToolEdit,
  Vcl.Buttons, JvDBControls, Vcl.DBCtrls, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS;

type
  TCTC_FM_M_LOC = class(TPAD_FM_X_PAD)
    lblcodigo: TLabel;
    txtcodigo: TwwDBEdit;
    lblcontrato: TLabel;
    lblnotafiscal: TLabel;
    lblData: TLabel;
    lblObra: TLabel;
    lblfornecedor: TLabel;
    txtcontrato: TwwDBEdit;
    txtnotafiscal: TwwDBEdit;
    cbbObra: TwwDBLookupCombo;
    dbveiculo: TGroupBox;
    pnlItem: TPanel;
    btnaddItem: TBitBtn;
    dgItem: TwwDBGrid;
    dsoItem: TwwDataSource;
    lblveiculo: TLabel;
    lbldescricao: TLabel;
    lblunitario: TLabel;
    lblqtde: TLabel;
    lbldatafinal: TLabel;
    lbldatainicial: TLabel;
    txtVeiculo: TJvDBComboEdit;
    txtUnitario: TwwDBEdit;
    txtQtde: TwwDBEdit;
    dgItemIButton: TwwIButton;
    dpkData: TJvDBDateEdit;
    dpkInicial: TJvDBDateEdit;
    dpkFinal: TJvDBDateEdit;
    txtFornecedor: TJvDBComboEdit;
    txtDescricao: TDBText;
    txtfrete: TwwDBEdit;
    txtdesconto: TwwDBEdit;
    txttotal: TwwDBEdit;
    lblfrete: TLabel;
    lbldesconto: TLabel;
    lbltotal: TLabel;
    CTC_DB_M_LOC: TfrxDBDataset;
    CTC_DB_M_LOC_MEQ: TfrxDBDataset;
    CTC_FR_M_LOC: TfrxReport;
    CTC_XL_M_LOC: TfrxXLSExport;
    CTC_PD_M_LOC: TfrxPDFExport;
    txtdescricaofornecedor: TDBText;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnaddItemClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbObraEnter(Sender: TObject);
    procedure cbbObraExit(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure dgItemIButtonClick(Sender: TObject);
    procedure dgItemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlItemExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtVeiculoButtonClick(Sender: TObject);
    procedure txtVeiculoExit(Sender: TObject);
    procedure dpkFinalExit(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure txtfreteExit(Sender: TObject);
    procedure txtdescontoExit(Sender: TObject);
  private
    { Private declarations }
    procedure CalcTotal;
  public
    { Public declarations }
  end;

var
  CTC_FM_M_LOC: TCTC_FM_M_LOC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_VEI, uDmCtc;

procedure TCTC_FM_M_LOC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE);
  pnlItem.Enabled  := False;
  txtcontrato.SetFocus;
end;

procedure TCTC_FM_M_LOC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_CFE) then
      begin
        inherited;
        pnlItem.Enabled  := False;
        txtcontrato.SetFocus;
      end;
end;

procedure TCTC_FM_M_LOC.acCancelarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_LOC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtcontrato.SetFocus;
     end;
end;

procedure TCTC_FM_M_LOC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_LOC);
end;

procedure TCTC_FM_M_LOC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_LOC.FieldByName('ID_LOC').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_LOC);
  inherited;
  dmCtc.CTC_CD_M_LOC.Close;
  dmCtc.CTC_CD_M_LOC.Data :=
  dmCtc.CTC_CD_M_LOC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_LOC.btnaddItemClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_LOC_MEQ.Insert;
  pnlItem.Enabled  := True;
  txtveiculo.SetFocus;
end;

procedure TCTC_FM_M_LOC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_LOC.Close;
    dmCtc.CTC_CD_M_LOC.Data :=
    dmCtc.CTC_CD_M_LOC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_LOC.btnImprimeClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmCtc.CTC_CD_M_LOC.IsEmpty then
      begin
        codigo := dmCtc.ctc_cd_m_locid_loc.text;

        dmCtc.CTC_CD_M_LOC.Close;
        dmCtc.CTC_CD_M_LOC.Data :=
        dmCtc.CTC_CD_M_LOC.DataRequest(VarArrayOf([0, codigo]));

        if not dmCtc.CTC_CD_M_LOC.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(CTC_FR_M_LOC.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      begin
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                end;
             CTC_FR_M_LOC.PrepareReport();
             CTC_FR_M_LOC.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TCTC_FM_M_LOC.CalcTotal;
var
total: currency;
begin
  total := 0;

  dmCtc.ctc_cd_m_loc_meq.First;
  while not dmCtc.ctc_cd_m_loc_meq.Eof do
    begin
      total:= total + dmCtc.ctc_cd_m_loc_meq.FieldByName('total').AsCurrency;
      dmCtc.ctc_cd_m_loc_meq.Next;
    end;

  dmCtc.ctc_cd_m_loc.FieldByName('vlr_total').AsCurrency := total +
    dmCtc.ctc_cd_m_loc.FieldByName('vlr_frete').AsCurrency -
    dmCtc.ctc_cd_m_loc.FieldByName('vlr_desconto').AsCurrency;
end;

procedure TCTC_FM_M_LOC.cbbObraEnter(Sender: TObject);
begin
  inherited;
  dmCtc.BusObra(1,'%');
  cbbobra.DropDown;
end;

procedure TCTC_FM_M_LOC.cbbObraExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_LOC.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmCtc.CTC_CD_M_LOC.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_LOC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_LOC.dgItemIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgItemIButton.Enabled := false;
     if dmCtc.CTC_CD_M_LOC_MEQ.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_LOC_MEQ.Delete;
     dmCtc.CTC_CD_M_LOC_MEQ.Edit;
  finally
    dgItemIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_M_LOC.dgItemMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItem.Enabled = false then
     pnlItem.Enabled := true;

  dmCtc.CTC_CD_M_LOC_MEQ.cancel;

  if dmCtc.CTC_CD_M_LOC_MEQ.IsEmpty then
     begin
       dmCtc.CTC_CD_M_LOC_MEQ.Append;
       pnlItem.Enabled := true;
       txtveiculo.SetFocus;
     end
  else
     begin
       dmCtc.CTC_CD_M_LOC_MEQ.Edit;
       pnlItem.Enabled := true;
       txtveiculo.SetFocus;
     end;
end;

procedure TCTC_FM_M_LOC.dpkFinalExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtveiculo.Focused or txtQtde.Focused or txtUnitario.Focused
     or dpkInicial.Focused then
     begin
       Exit;
     end;

  dmCtc.ctc_cd_m_loc_meq.FieldByName('total').AsCurrency := dmCtc.ctc_cd_m_loc_meq.FieldByName('qtde').AsCurrency *
    dmCtc.ctc_cd_m_loc_meq.FieldByName('vlr_unitario').AsCurrency;

  dmCtc.CTC_CD_M_LOC_MEQ.Post;

  CalcTotal;

  pnlItem.Enabled := False;
  btnAddItem.SetFocus;
end;

procedure TCTC_FM_M_LOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_LOC.Close;
  FreeAndNil(CTC_FM_M_LOC);
end;

procedure TCTC_FM_M_LOC.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_LOC.Close;
  dmCtc.CTC_CD_M_LOC.Data := dmCtc.CTC_CD_M_LOC.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_LOC.Open;

  dmCtc.BusObra(1,'%');
 end;

procedure TCTC_FM_M_LOC.pnlItemExit(Sender: TObject);
begin
  inherited;
  if (btnaddItem.Focused) or (dgItem.Focused) or
     (not dgItemIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             Exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              Exit;
           end;

        dmCtc.CTC_CD_M_LOC_MEQ.Cancel;
        dmCtc.CTC_CD_M_LOC_MEQ.edit;

        finally
           pnlItem.Enabled := False;
        end;
      end;
end;

procedure TCTC_FM_M_LOC.txtdescontoExit(Sender: TObject);
begin
  inherited;
  CalcTotal;
end;

procedure TCTC_FM_M_LOC.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;

      if not dmCtc.CTC_CD_M_LOC.IsEmpty then
         begin
           dmCtc.CTC_CD_M_LOC.FieldByName('ID_FORNECEDOR').AsInteger:=
             PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

           dmCtc.CTC_CD_M_LOC.FieldByName('INT_NOMEFOR').AsString:=
             PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCTC_FM_M_LOC.txtFornecedorExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_LOC.FieldByName('id_fornecedor').Text) = '' then
     begin
       ShowMessage('O campo "Fornecedor" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFornecedor(0,dmCtc.CTC_CD_M_LOC.FieldByName('id_fornecedor').Text);
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       ShowMessage('Fornecedor não Cadastrado.');
     end;
  dmCtc.CTC_CD_M_LOC.FieldByName('INT_NOMEFOR').AsString:=
             dmgeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
 end;

procedure TCTC_FM_M_LOC.txtfreteExit(Sender: TObject);
begin
  inherited;
  CalcTotal;
end;

procedure TCTC_FM_M_LOC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCTC_FM_M_LOC.txtVeiculoButtonClick(Sender: TObject);
begin
  inherited;
 PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
   PSQ_FM_X_VEI.ShowModal;

      if not dmCtc.CTC_CD_M_LOC_MEQ.IsEmpty then
         begin
           dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('ID_VEICULO').AsInteger:=
             PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsInteger;

           dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('INT_NOMEVEI').AssTRING:=
             PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('DESCRICAO').AssTRING;
         end;
   PSQ_FM_X_VEI.Free;
end;

procedure TCTC_FM_M_LOC.txtVeiculoExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('id_veiculo').Text) = '' then
     begin
       ShowMessage('O campo "Veículo" não foi preenchido.');
       exit;
     end;

  dmGeral.BusVeiculo(0,dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('id_veiculo').Text);
  if dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       ShowMessage('Veículo não Cadastrado.');
       dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('id_veiculo').Text := '';
     end;
  end;

end.
