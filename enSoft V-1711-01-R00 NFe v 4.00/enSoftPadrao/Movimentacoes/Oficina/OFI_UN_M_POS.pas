unit OFI_UN_M_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.Wwdbedit, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  Vcl.DBCtrls;

type
  TOFI_FM_M_POS = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblData: TLabel;
    rgSituacao: TDBRadioGroup;
    txtDataPosVenda: TJvDBDateEdit;
    txtCodPosVenda: TwwDBEdit;
    lblNOrdemServico: TLabel;
    GroupBox1: TGroupBox;
    txtCliente: TwwDBEdit;
    txtVeiculo: TwwDBEdit;
    txtFone: TwwDBEdit;
    txtCelular: TwwDBEdit;
    txtDataEntrada: TJvDBDateEdit;
    txtKm: TwwDBEdit;
    txtReclamacaoCliente: TwwDBEdit;
    txtProblema: TwwDBEdit;
    gbItens: TGroupBox;
    dgNfeIte: TwwDBGrid;
    lblSolucao: TLabel;
    txtSolucao: TwwDBEdit;
    lblObservacaoPosVenda: TLabel;
    txtObservacaoPosVenda: TwwDBEdit;
    txtOrdem: TJvDBComboEdit;
    lblCliente: TLabel;
    lblVeiculo: TLabel;
    lblFone: TLabel;
    lblCelular: TLabel;
    lblDataEntrada: TLabel;
    lblKm: TLabel;
    lblReclamacaoCliente: TLabel;
    lblProblema: TLabel;
    dsoOrd: TwwDataSource;
    dsoNfe: TwwDataSource;
    dsoNfeIte: TwwDataSource;
    gbNfe: TGroupBox;
    dgNfe: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure txtOrdemExit(Sender: TObject);
    procedure dgNfeIteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure acGravarExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtOrdemButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_POS: TOFI_FM_M_POS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OFI_ORD;

procedure TOFI_FM_M_POS.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_POS);
   txtOrdem.SetFocus;
end;

procedure TOFI_FM_M_POS.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_POS) then
      begin
        inherited;
         dmGeral.BUS_CD_M_ORV.Close;
         dmGeral.BUS_CD_M_ORV.Data :=
         dmGeral.BUS_CD_M_ORV.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString,
                                                        dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','1']));

         dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
         dmgeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([13,dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString]));

        txtOrdem.Enabled := false;
        rgSituacao.SetFocus;
      end;
end;

procedure TOFI_FM_M_POS.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_POS) then
     begin
       inherited;
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_ORV.Close;
       txtOrdem.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       rgSituacao.SetFocus;
     end;
end;

procedure TOFI_FM_M_POS.acExcluirExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_POS);
end;

procedure TOFI_FM_M_POS.acGravarExecute(Sender: TObject);
var
  codigo:string;
begin
  inherited;

  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     dmGeral.OFI_CD_M_POS.FieldByName('HOR_POSVENDA').AsDateTime := xHoraSis;
     codigo := dmGeral.OFI_CD_M_POS.FieldByName('ID_POSVENDA').AsString;
     DmGeral.Grava(dmGeral.OFI_CD_M_POS);

     inherited;
     dmGeral.OFI_CD_M_POS.Close;
     dmGeral.OFI_CD_M_POS.Data :=
             dmGeral.OFI_CD_M_POS.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
     dmGeral.BUS_CD_M_NFE.Close;
     dmGeral.BUS_CD_M_ORV.Close;
     txtOrdem.Enabled := true;
    end
  else
    begin
      rgSituacao.SetFocus;
    end;
end;

procedure TOFI_FM_M_POS.btnFiltroClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.OFI_CD_M_POS.Close;
    dmGeral.OFI_CD_M_POS.Data :=
    dmGeral.OFI_CD_M_POS.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_POS.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  if (cbbPesquisa.ItemIndex in [0,1,3]) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;

  if (cbbPesquisa.ItemIndex = 2 ) then
    begin
       txtPesquisa.NumbersOnly := false;
    end;
  txtPesquisa.Text := '';
end;

procedure TOFI_FM_M_POS.dgNfeIteCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
     if (dmGeral.BUS_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
     begin
       AFont.Color := clMaroon;
     end;
end;

procedure TOFI_FM_M_POS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_M_POS);
end;

procedure TOFI_FM_M_POS.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_POS.Close;
  dmGeral.OFI_CD_M_POS.Data := dmGeral.OFI_CD_M_POS.DataRequest(VarArrayOf([0, '']));
  dmGeral.OFI_CD_M_POS.Open;
end;

procedure TOFI_FM_M_POS.txtOrdemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OFI_ORD := TPSQ_FM_X_OFI_ORD.Create(Self);
   PSQ_FM_X_OFI_ORD.ShowModal;
      if not dmGeral.BUS_CD_M_ORV.IsEmpty then
         begin
           dmGeral.OFI_CD_M_POS.FieldByName('id_ordem').Text :=
               dmGeral.BUS_CD_M_ORV.FieldByName('id_ordem').AsString;
         end;
   PSQ_FM_X_OFI_ORD.Free;
end;

procedure TOFI_FM_M_POS.txtOrdemExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_M_NFE.Close;
  dmGeral.BUS_CD_M_OFI_POS.Close;
  dmGeral.BUS_CD_M_ORV.Close;
  if (dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString = '') then
    begin
      ShowMessage('Nº Ordem deve ser preenchido.');
      txtOrdem.SetFocus;
      exit;
    end;



  dmGeral.BUS_CD_M_OFI_POS.Data :=
  dmGeral.BUS_CD_M_OFI_POS.DataRequest(VarArrayOf([4,dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString]));

  if (not dmGeral.BUS_CD_M_OFI_POS.IsEmpty) then
    begin
      ShowMessage('Ordem de serviço já utilizado no Pós-Venda.');
      dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMECLI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMEVEI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELFIXO').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELMOVEL').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_DTAEMISSAOORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_KMATUALORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSRECORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSPRO').AsString := '';
      txtOrdem.SetFocus;
      exit;
    end;


  dmGeral.BUS_CD_M_ORV.Data :=
  dmGeral.BUS_CD_M_ORV.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString,
                                                 dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1','1']));

  if (dmGeral.BUS_CD_M_ORV.IsEmpty) then
    begin
      ShowMessage('Ordem de serviço inválido.');
      dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMECLI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMEVEI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELFIXO').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELMOVEL').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_DTAEMISSAOORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_KMATUALORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSRECORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSPRO').AsString := '';
      dmGeral.BUS_CD_M_ORV.Close;
      txtOrdem.SetFocus;
      exit;
    end;


  if (dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger <> 3) then
    begin
      ShowMessage('Ordem de serviço tem que ser faturada.');
      dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMECLI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMEVEI').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELFIXO').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_TELMOVEL').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_DTAEMISSAOORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_KMATUALORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSRECORV').AsString := '';
      dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSPRO').AsString := '';
      dmGeral.BUS_CD_M_ORV.Close;
      txtOrdem.SetFocus;
      exit;
    end;

  dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMECLI').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('INT_NOMECLI').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_NOMEVEI').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('INT_NOMEVEI').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_TELFIXO').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('INT_TELFIX').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_TELMOVEL').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('INT_TELMOV').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_DTAEMISSAOORV').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('DTA_EMISSAO').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_KMATUALORV').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('KM_ATUAL').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSRECORV').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('OBS_RECLAMACAO').AsString;
  dmGeral.OFI_CD_M_POS.FieldByName('INT_OBSPRO').AsString :=
          dmGeral.BUS_CD_M_ORV.FieldByName('OBS_PROBLEMA').AsString;

  dmGeral.BUS_CD_M_NFE.Close;
   dmGeral.BUS_CD_M_NFE.Data :=
          dmgeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([13,dmGeral.OFI_CD_M_POS.FieldByName('ID_ORDEM').AsString]));


end;

end.
