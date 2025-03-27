unit FAT_UN_M_ROM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, vcl.wwdblook, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.ComCtrls, Datasnap.DBClient,
  vcl.Wwdbdatetimepicker;

type
  TFAT_FM_M_ROM = class(TPAD_FM_X_PAD)
    lblEmissao: TLabel;
    txtObservacao: TDBEdit;
    lblObservacao: TLabel;
    lblMotorista: TLabel;
    cbbMotorista: TwwDBLookupCombo;
    dsoNfe: TwwDataSource;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dsoNfeIte: TwwDataSource;
    FAT_FR_M_ROM: TfrxReport;
    FAT_DB_M_ROM: TfrxDBDataset;
    FAT_DB_M_ROM_NFE: TfrxDBDataset;
    FAT_DB_M_ROM_NFE_ITE: TfrxDBDataset;
    FAT_PD_M_ROM: TfrxPDFExport;
    FAT_XL_M_ROM: TfrxXLSExport;
    Label3: TLabel;
    txtItemDescricao: TDBText;
    dpkEmissao: TDBEdit;
    dsoLacre: TwwDataSource;
    txtRNTRC: TDBEdit;
    Label2: TLabel;
    btnMdfe: TButton;
    Label8: TLabel;
    cbbUnidTransp: TwwDBComboBox;
    cbbVeiculo: TwwDBLookupCombo;
    btnImpCarreg: TcxButton;
    rgTipo: TwwDBComboBox;
    Label10: TLabel;
    pcDados: TPageControl;
    tsNotaFiscal: TTabSheet;
    tsUFs: TTabSheet;
    GBFiscal: TGroupBox;
    Label1: TLabel;
    lblNf: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnAddOrdem: TBitBtn;
    dgNfe: TwwDBGrid;
    IgrdButton: TwwIButton;
    Panel1: TPanel;
    txtOrdemSaida: TJvDBComboEdit;
    dgNfeIte: TwwDBGrid;
    btnaddLacre: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    IgrdButton2: TwwIButton;
    Panel2: TPanel;
    txtlacre: TDBEdit;
    txtQtde: TDBEdit;
    txtVolume: TDBEdit;
    txtTotal: TDBEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    btnAddUf: TBitBtn;
    grdPercurso: TwwDBGrid;
    ibtnPer: TwwIButton;
    pnlUfs: TPanel;
    cbbUf: TwwDBComboBox;
    dsRomPer: TwwDataSource;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label15: TLabel;
    mmManifestosAbe: TMemo;
    Panel9: TPanel;
    Panel3: TPanel;
    lblAberto: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    pnlAberto: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    pmMenu: TPopupMenu;
    Cancelarmanifesto1: TMenuItem;
    txtChave: TDBEdit;
    lblChave: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbMotoristaEnter(Sender: TObject);
    procedure cbbMotoristaExit(Sender: TObject);
    procedure txtOrdemSaidaEnter(Sender: TObject);
    procedure txtOrdemSaidaButtonClick(Sender: TObject);
    procedure btnAddOrdemClick(Sender: TObject);
    procedure txtOrdemSaidaExit(Sender: TObject);
    procedure IgrdButtonClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FAT_DB_M_ROM_NFECheckEOF(Sender: TObject; var Eof: Boolean);
    procedure btnaddLacreClick(Sender: TObject);
    procedure IgrdButton2Click(Sender: TObject);
    procedure txtlacreExit(Sender: TObject);
    procedure btnMdfeClick(Sender: TObject);
    procedure cbbVeiculoEnter(Sender: TObject);
    procedure cbbVeiculoExit(Sender: TObject);
    procedure cbbUnidTranspEnter(Sender: TObject);
    procedure txtOrdemSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImpCargClick(Sender: TObject);
    procedure btnImpCarregClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dsoStateChange(Sender: TObject);
    procedure rgTipoExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure rgTipoEnter(Sender: TObject);
    procedure txtRNTRCExit(Sender: TObject);
    procedure dgNfeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnAddUfClick(Sender: TObject);
    procedure cbbUfExit(Sender: TObject);
    procedure grdPercursoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlUfsExit(Sender: TObject);
    procedure ibtnPerClick(Sender: TObject);
    procedure Cancelarmanifesto1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GridItem;
    procedure Atualizar_xBusca;
    procedure VerifRegistro;
    function  ExisteMDFeAberto(tipo:integer; placa: String): Boolean;
    function VerifSituacaoReg: Boolean;
    var
      xBusca_nf:string;
      valor: Currency;
  public
    { Public declarations }
    var
      xTipoAnt: Integer;
  end;

var
  FAT_FM_M_ROM: TFAT_FM_M_ROM;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_NFE, uProxy, FAT_UN_M_MDF, uDmSgq, FAT_UN_M_ROM_PCA;

procedure TFAT_FM_M_ROM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ROM);
  btnImprime.Enabled:= False;
  btnMdfe.Enabled := False;
  lblNf.Caption := '<F7> Cód. Pedido';
  xTipoAnt := -1;
  cbbMotorista.SetFocus;
end;

procedure TFAT_FM_M_ROM.acAlterarExecute(Sender: TObject);
begin

  VerifRegistro;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ROM) then
      begin
        inherited;
        btnImprime.Enabled:= False;
        btnMdfe.Enabled := False;
        cbbMotorista.SetFocus;
      end;
end;

procedure TFAT_FM_M_ROM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ROM) then
     begin
       inherited;
       btnImprime.Enabled:= True;
       btnMdfe.Enabled := True;
       pcDados.ActivePage := tsNotaFiscal;
       dbGrid.SetFocus;
     end
  else
     begin
       dpkEmissao.SetFocus;
     end;
end;

procedure TFAT_FM_M_ROM.acExcluirExecute(Sender: TObject);
begin

  VerifSituacaoReg;

  ShowMessage('Registro de manifesto não pode ser excluído por medida de segurança.' + #13 +
              'Mas você pode cancelar esse registro clicando com o direito do mouse sobre o registro.');

  //inherited;
  // O código abaixo foi comentado por Maxsuel Victor , em 16/10/2021
    //  VerifRegistro;
    //  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ROM);
end;

procedure TFAT_FM_M_ROM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.FAT_CD_M_ROM.FieldByName('ID_ROMANEIO').AsString;

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      DmGeral.Grava(dmGeral.FAT_CD_M_ROM);
      inherited;
      dmGeral.FAT_CD_M_ROM.Close;
      dmGeral.FAT_CD_M_ROM.Data :=
      dmGeral.FAT_CD_M_ROM.DataRequest(
              VarArrayOf([0, codigo]));

      btnImprime.Enabled:= True;
      btnMdfe.Enabled := True;
      pcDados.ActivePage := tsNotaFiscal;
     end
    else
     begin
       cbbMotorista.SetFocus;
     end;
end;



procedure TFAT_FM_M_ROM.btnaddLacreClick(Sender: TObject);
begin
  inherited;
   try
    dmGeral.FAT_CD_M_ROM.BeforePost := nil;
    panel2.Enabled := True;
    dmGeral.FAT_CD_M_ROM_LAC.Insert;
    txtLacre.SetFocus;
   finally
     dmGeral.FAT_CD_M_ROM.BeforePost := dmGeral.FAT_CD_M_ROMBeforePost;
   end;
end;

procedure TFAT_FM_M_ROM.btnAddOrdemClick(Sender: TObject);
begin
  inherited;
  {if (dmGeral.FAT_CD_M_ROM.FieldByName('ID_PCA').AsString <> '') then
    begin
      ShowMessage('É necessário deletar os pedidos importados do carregamento.');
      exit;
    end;}

   try
    dmGeral.FAT_CD_M_ROM.BeforePost := nil;
    panel1.Enabled := True;
    dmGeral.FAT_CD_M_ROM_NFE.Insert;
    dmGeral.FAT_CD_M_ROM_NFE.FieldByName('importada').AsBoolean := false;

    txtOrdemSaida.SetFocus;
   finally
     dmGeral.FAT_CD_M_ROM.BeforePost := dmGeral.FAT_CD_M_ROMBeforePost;
   end;
end;

procedure TFAT_FM_M_ROM.btnFiltroClick(Sender: TObject);
begin
  inherited;
  if txtPesquisa.Text <> '' then
    begin
      if cbbPesquisa.ItemIndex = 0 then
        begin
          dmGeral.FAT_CD_M_ROM.Close;
          dmGeral.FAT_CD_M_ROM.Data :=
          dmGeral.FAT_CD_M_ROM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
        end
      else
        begin
          dmGeral.FAT_CD_M_ROM.Close;
          dmGeral.FAT_CD_M_ROM.Data :=
          dmGeral.FAT_CD_M_ROM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text, txtPesquisa.Text]));
        end;
    end
  else
    ShowMessage('Ao menos um caracter deve ser digitado!');
end;

procedure TFAT_FM_M_ROM.btnMdfeClick(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       ShowMessage('Nenhum romaneio foi selecionado.');
       exit;
     end;

  FAT_FM_M_MDF := TFAT_FM_M_MDF.Create(Self);
  FAT_FM_M_MDF.ShowModal;
end;

procedure TFAT_FM_M_ROM.Cancelarmanifesto1Click(Sender: TObject);
begin
  inherited;

   VerifSituacaoReg;

   if MessageDlg('Confirma o cancelamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      begin
        abort;
      end;

   if (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger   = 0)   and
      (trim(dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString) = '')  then
      begin

         dmGeral.FAT_CD_M_ROM.edit;
         if not dmGeral.FAT_CD_M_ROM_NFE.IsEmpty then
            begin
              while not dmGeral.FAT_CD_M_ROM_NFE.eof do
                    dmGeral.FAT_CD_M_ROM_NFE.delete;
            end;

         if dmGeral.FAT_CD_M_ROM_PER.IsEmpty then
            begin
              while not dmGeral.FAT_CD_M_ROM_PER.eof do
                    dmGeral.FAT_CD_M_ROM_PER.delete;
            end;


         dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean  := true;

         dmGeral.FAT_CD_M_ROM.FieldByName('canc_motivo').AsString   := 'Cancelamento simples sem ainda ter gerado MDF-e' ;
         dmGeral.FAT_CD_M_ROM.FieldByName('canc_data').AsDateTime   := date;
         dmGeral.FAT_CD_M_ROM.FieldByName('canc_usuario').AsInteger := xfuncionario;

         try

           dmGeral.FAT_CD_M_ROM.BeforePost := nil;
           dmGeral.FAT_CD_M_ROM.Post;
         finally
           dmGeral.FAT_CD_M_ROM.BeforePost := dmGeral.FAT_CD_M_ROMBeforePost;
         end;

         try
           if dmGeral.FAT_CD_M_ROM.ApplyUpdates(0) = 0 then
               begin
                 ShowMessage('Manifesto eletrônico cancelado com sucesso!');
               end
         except
           on e:exception do
              begin
                dmGeral.FAT_CD_M_ROM.Cancel;
                Showmessage('Erro ao tentar gravar os dados do Manifesto: ' + #13 + e.Message);
              end;
         end;
      end;

end;

procedure TFAT_FM_M_ROM.btnImpCargClick(Sender: TObject);
begin
  inherited;
  FAT_FM_M_ROM_PCA := TFAT_FM_M_ROM_PCA.Create(Self);
  FAT_FM_M_ROM_PCA.ShowModal;
 
end;

procedure TFAT_FM_M_ROM.btnImpCarregClick(Sender: TObject);
begin
  inherited;

  if rgTipo.ItemIndex = -1 then
     begin
       ShowMessage('O campo "Tipo" deve ser prenchido.');
       rgTipo.SetFocus;
       exit;
     end;

  if rgTipo.ItemIndex = 1 then
     begin
       ShowMessage('Não é permito para manifesto do tipo "Fornecedores".');
       exit;
     end;




  FAT_FM_M_ROM_PCA := TFAT_FM_M_ROM_PCA.Create(Self);
  FAT_FM_M_ROM_PCA.ShowModal;
end;

procedure TFAT_FM_M_ROM.btnImprimeClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.FAT_CD_M_ROM.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(FAT_FR_M_ROM.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
     // dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_ROM.Name,xCodLme,xRevLme,nil);
     // FAT_FR_M_ROM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

      FAT_FR_M_ROM.PrepareReport();
      FAT_FR_M_ROM.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum Romaneio Selecionado!');
        exit;
    end;
end;

procedure TFAT_FM_M_ROM.cbbMotoristaEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusMotorista(1,'%');
  cbbMotorista.DropDown;
end;

procedure TFAT_FM_M_ROM.cbbMotoristaExit(Sender: TObject);
begin
  inherited;
    if trim(dmGeral.FAT_CD_M_ROM.FieldByName('id_motorista').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           exit;
         end;
               Showmessage('O campo "Motorista" deve ser preenchido.');
       dmGeral.FAT_CD_M_ROM.FieldByName('id_motorista').Text := '';
       cbbMotorista.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_ROM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_ROM.cbbUfExit(Sender: TObject);
var
  uf: String;
begin
  inherited;

  if grdPercurso.Focused then
     exit;

  if trim(dmgeral.FAT_CD_M_ROM_PER.FieldByName('uf').AsString) = '' then
     begin
       ShowMessage('O campo "UF" deve ser preenchido!');
       cbbUf.SetFocus;
       exit;
     end;

  uf := dmgeral.FAT_CD_M_ROM_PER.FieldByName('uf').AsString;

  dmgeral.FAT_CD_M_ROM_PER.cancel;

  if not (dmGeral.FAT_CD_M_ROM_PER.IsEmpty) then
     begin
       if dmGeral.FAT_CD_M_ROM_PER.Locate('uf',uf,[]) then
          begin
            ShowMessage('UF já informada!');
            dmGeral.FAT_CD_M_ROM_PER.Insert;
            cbbUf.SetFocus;
            exit;
          end
     end;

  dmGeral.FAT_CD_M_ROM_PER.Insert;
  dmGeral.FAT_CD_M_ROM_PER.FieldByName('uf').AsString := uf;

  dmgeral.FAT_CD_M_ROM_PER.Post;
  btnAddUf.SetFocus;
end;

procedure TFAT_FM_M_ROM.cbbUnidTranspEnter(Sender: TObject);
begin
  inherited;
  cbbUnidTransp.DropDown;
end;

procedure TFAT_FM_M_ROM.cbbVeiculoEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusVeiculo(1,'%');
  cbbVeiculo.DropDown;
end;

procedure TFAT_FM_M_ROM.cbbVeiculoExit(Sender: TObject);
begin
  inherited;
  dmgeral.FAT_CD_M_ROM.FieldByName('veiculo').AsString := dmgeral.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString;


  ExisteMDFeAberto(0,dmgeral.FAT_CD_M_ROM.FieldByName('id_placa').AsString);

end;

procedure TFAT_FM_M_ROM.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

   // Situação de Romaneio gerado Manifesto Eletrônico
   if (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
      begin
        AFont.Color := clGreen;
      end;

   // Situação do Manifesto eletrônico cancelado
   if (dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean) then
      begin
        AFont.Color := clRed;
      end;

   // Situação do Manifesto eletrônico encerrado
   if (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_encerrado').AsBoolean) then
      begin
        AFont.Color := clNavy;
      end;
end;

procedure TFAT_FM_M_ROM.dbGridDblClick(Sender: TObject);
begin
  inherited;
  btnImpCarreg.Enabled := false;
end;

procedure TFAT_FM_M_ROM.dgNfeCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   AFont.Color := clMaroon;
   if (dmGeral.FAT_CD_M_ROM_NFE.FieldByName('IMPORTADA').AsBoolean) then
      begin
        AFont.Color := clGreen;
      end;
end;

procedure TFAT_FM_M_ROM.dsoStateChange(Sender: TObject);
begin
  inherited;
  if not dso.dataset.IsEmpty then
     begin
       lblNf.Caption := '<F7> Nro NF';
     end;
end;

function TFAT_FM_M_ROM.ExisteMDFeAberto(tipo:integer;placa: String): Boolean;
var
  msg: string;
begin


  dmGeral.BUS_CD_M_ROM.Close;

  if tipo = 0 then // Busca manifesto aberto somente de uma placa.
     begin
        dmGeral.BUS_CD_M_ROM.Data :=
                dmGeral.FAT_CD_M_ROM.DataRequest(VarArrayOf([5, placa]));
        dmGeral.BUS_CD_M_ROM.Open;
        if not (dmGeral.BUS_CD_M_ROM.IsEmpty) then
           begin
             ShowMessage('Para esta placa ('+placa+') existe manifesto a ser encerrado: ' + #13 +
                         'Código do manifesto: ' + dmGeral.BUS_CD_M_ROM.FieldByName('id_romaneio').AsString + #13 +
                         'Data : ' + dmGeral.BUS_CD_M_ROM.FieldByName('dta_emissao').AsString + #13 +
                         'Com motorista : ' + dmGeral.BUS_CD_M_ROM.FieldByName('int_nomemta').AsString);
           end;
     end;


  if tipo = 1 then // Busca os manifesto em aberto independente das placas.
     begin
        dmGeral.BUS_CD_M_ROM.Data :=
                dmGeral.FAT_CD_M_ROM.DataRequest(VarArrayOf([6]));
        dmGeral.BUS_CD_M_ROM.Open;
        if not dmGeral.BUS_CD_M_ROM.IsEmpty then
           begin
             msg := 'Manifestos que faltam encerrar: ' + #13 + #13;
             dmGeral.BUS_CD_M_ROM.First;
             while not (dmGeral.BUS_CD_M_ROM.eof) do
                begin
                  msg := msg +  'Código do manifesto: ' + dmGeral.BUS_CD_M_ROM.FieldByName('id_romaneio').AsString + #13 +
                                'há ' + FloatToStr(date - dmGeral.BUS_CD_M_ROM.FieldByName('dta_emissao').AsDateTime) + ' dias, ' +
                                'Placa: ' + dmGeral.BUS_CD_M_ROM.FieldByName('id_placa').AsString + #13 +
                                'Data: ' + dmGeral.BUS_CD_M_ROM.FieldByName('dta_emissao').AsString + #13 +
                                'Com motorista : ' + dmGeral.BUS_CD_M_ROM.FieldByName('int_nomemta').AsString + #13
                                 + '----------' + #13;
                  mmManifestosAbe.lines.add('Código do manifesto: ' + dmGeral.BUS_CD_M_ROM.FieldByName('id_romaneio').AsString + #13 +
                                ' - há ' + FloatToStr(date - dmGeral.BUS_CD_M_ROM.FieldByName('dta_emissao').AsDateTime) + ' dias,  ' +
                                ' - Placa: ' + dmGeral.BUS_CD_M_ROM.FieldByName('id_placa').AsString + #13 +
                                ' - Data: ' + dmGeral.BUS_CD_M_ROM.FieldByName('dta_emissao').AsString + #13 +
                                ' - Com motorista : ' + dmGeral.BUS_CD_M_ROM.FieldByName('int_nomemta').AsString);

                  mmManifestosAbe.lines.add('----------');


                  dmGeral.BUS_CD_M_ROM.Next;
                end;
           end;
        if trim(msg) <> '' then
           begin
             ShowMessage(msg);
           end;
     end;


  dmGeral.BUS_CD_M_ROM.close;
end;

procedure TFAT_FM_M_ROM.FAT_DB_M_ROM_NFECheckEOF(Sender: TObject; var Eof: Boolean);
var
  qtde,Peso : integer;
begin
  inherited;
  qtde := 0;
  Peso := 0;
  dmgeral.FAT_CD_M_ROM_NFE_ITE.First;
  while not dmgeral.FAT_CD_M_ROM_NFE_ITE.Eof do
    begin
      qtde := qtde + dmgeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('qtde').AsInteger;
      Peso := Peso + dmgeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('peso_liquido').AsInteger;
      dmgeral.FAT_CD_M_ROM_NFE_ITE.Next;
    end;
    FAT_FR_M_ROM.Variables['qtde'] := qtde;
    FAT_FR_M_ROM.Variables['peso'] := peso;
end;

procedure TFAT_FM_M_ROM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_ROM.Close;
  FreeAndNil(FAT_FM_M_ROM);
end;

procedure TFAT_FM_M_ROM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_ROM.Close;
  dmGeral.FAT_CD_M_ROM.Data := dmGeral.FAT_CD_M_ROM.DataRequest(VarArrayOf([0, '']));
  dmGeral.FAT_CD_M_ROM.Open;
  dmGeral.AtualizarGridItens(dgNfeIte,'int_nomeite',7,9);

  dmSgq.BusMotorista(1,'%');
end;

procedure TFAT_FM_M_ROM.FormShow(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean= true then
    begin
      btnImpCarreg.Visible := false;
    end;
  txtPesquisa.SetFocus;
  pcDados.ActivePage := tsNotaFiscal;

  mmManifestosAbe.Lines.Clear;

  ExisteMDFeAberto(1,'');
end;


procedure TFAT_FM_M_ROM.grdPercursoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  cbbUf.Enabled := false;
  dmgeral.FAT_CD_M_ROM_PER.Cancel;

end;

procedure TFAT_FM_M_ROM.GridItem;
begin
  {dmgeral.BUS_CD_M_NFE.Close;
  dmgeral.BUS_CD_M_NFE.Data :=
  dmgeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([0, 'S' ,dmGeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').Text]));}

  dmgeral.BUS_CD_M_NFE_ITE.First;
  while not dmgeral.BUS_CD_M_NFE_ITE.Eof do
    begin

      dmgeral.FAT_CD_M_ROM_NFE_ITE.Insert;

      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_ROMANEIO').AsInteger   :=  dmgeral.FAT_CD_M_ROM.FieldByName('ID_ROMANEIO').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_FISCAL').AsInteger     :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger  :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_ITEM').AsInteger       :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('QTDE').AsCurrency         :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_COR').AsInteger        :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_COR').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMEITE').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMEUND').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMECOR').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').AsString;
      dmGeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('INT_NOMETAM').AsString    :=  dmgeral.BUS_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString;
      dmgeral.FAT_CD_M_ROM_NFE_ITE.Post;

      dmgeral.BUS_CD_M_NFE_ITE.Next;
    end;
end;

procedure TFAT_FM_M_ROM.ibtnPerClick(Sender: TObject);
begin
  inherited;
  try
     IbtnPer.Enabled := false;
     if dmGeral.FAT_CD_M_ROM_PER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_ROM_PER.Delete;

  finally
    IbtnPer.Enabled := true;
  end;
end;

procedure TFAT_FM_M_ROM.txtlacreExit(Sender: TObject);
begin
  inherited;
  if dmgeral.FAT_CD_M_ROM_LAC.FieldByName('LACRE').Text = '' then
    begin
      ShowMessage('Lacre deve ser preenchido.');
    end
  else
    begin
      dmgeral.FAT_CD_M_ROM_LAC.Post;
      btnAddLacre.SetFocus;
      panel2.Enabled := False;
    end;
end;

procedure TFAT_FM_M_ROM.txtOrdemSaidaButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_NFE := TPSQ_FM_X_NFE.Create(Self);
  PSQ_FM_X_NFE.RGTipoNota.Visible := False;

  if rgTipo.ItemIndex = 1 then
     PSQ_FM_X_NFE.RGTipoNota.ItemIndex := 0;
  if rgTipo.ItemIndex = 2 then
     PSQ_FM_X_NFE.RGTipoNota.ItemIndex := 3;

  PSQ_FM_X_NFE.RGTipoNota.Enabled := False;
  PSQ_FM_X_NFE.Panel3.Left :=12;
  PSQ_FM_X_NFE.Panel3.Top := 17;
  PSQ_FM_X_NFE.btnPesquisa.Left := 384;
  PSQ_FM_X_NFE.btnPesquisa.Top := 67;
  PSQ_FM_X_NFE.btnSair.Left := 470;
  PSQ_FM_X_NFE.btnSair.Top := 67;
  PSQ_FM_X_NFE.gbxFiltro.Height := 103;
  PSQ_FM_X_NFE.Height := 515;
  lblNF.Caption := '<F7> Nro NF';
  PSQ_FM_X_NFE.ShowModal;

  if not PSQ_FM_X_NFE.BUS_CD_M_NFE.IsEmpty then
     begin
       if lblNf.Caption = '<F7> Cód. Pedido' then
          begin
            dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text :=
                    PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsString;
          end;

       if lblNf.Caption = '<F7> Nro NF' then
          begin
            dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text :=
                    PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
          end;


       {IdFiscal := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
        Numero   := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
        Cliente  := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString;
        Valor    := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency;
        //ChaveNfe := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString;

        dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NUMERONF').AsString := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;

        dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text :=  PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;

        dmGeral.BUS_CD_C_CLI.Close;
              dmGeral.BUS_CD_C_CLI.Data :=
              dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([1, dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECLI').Text]));

        dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_FONEFIXOCLI').AsString := dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;
        dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECID').AsString := dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;
        dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECLI').AsString := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString;
       }
     end;
  PSQ_FM_X_NFE.BUS_CD_M_NFE.Free;

  //txtOrdemSaidaExit(Self);
end;

procedure TFAT_FM_M_ROM.txtOrdemSaidaEnter(Sender: TObject);
begin
  inherited;
  txtOrdemSaida.Text := '';
end;

procedure TFAT_FM_M_ROM.txtOrdemSaidaExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  IdFiscal,NomeEmitente,Numero,ChaveNfe,id_emitente:string;

begin
  inherited;



  if btnCancelar.Focused or btnGrava.Focused then
     begin
       if dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text = '' then
          begin
             dmgeral.FAT_CD_M_ROM_NFE.Cancel;
             exit;
          end;
     end;

  if rgTipo.ItemIndex = -1 then // Cliente
     begin
       ShowMessage('O campo "Tipo" deve ser prenchido.');
       dmgeral.FAT_CD_M_ROM_NFE.Cancel;
       rgTipo.SetFocus;
       exit;
     end;


  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  try
  if dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text = '' then   //Era INT_NUMERONF
     begin
       if not dgnfe.Focused then
          ShowMessage('Número da nota deve ser preenchido.');
     end
  else
    begin
      if dmGeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').AsString = '' then
        begin
          if rgTipo.ItemIndex = 0 then // Cliente
             begin
                if lblNf.Caption = '<F7> Cód. Pedido' then
                  begin
                   dmgeral.BUS_CD_M_NFE.Close;
                   dmgeral.BUS_CD_M_NFE.Data :=
                   dmgeral.BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([9,dmGeral.FAT_CD_M_ROM.FieldByName('ID_EMPRESA').AsString,'S', dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text]));
                  end
                else
                  begin
                   dmgeral.BUS_CD_M_NFE.Close;
                   dmgeral.BUS_CD_M_NFE.Data :=
                   dmgeral.BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([1,dmGeral.FAT_CD_M_ROM.FieldByName('ID_EMPRESA').AsString,'S', dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text])); //Era INT_NUMERONF
                  end;
             end;
          if rgTipo.ItemIndex = 1 then // Fornecedores(Entrada)
             begin
               dmgeral.BUS_CD_M_NFE.Close;
               dmgeral.BUS_CD_M_NFE.Data :=
               dmgeral.BUS_CD_M_NFE.DataRequest(
                       VarArrayOf([1,dmGeral.FAT_CD_M_ROM.FieldByName('ID_EMPRESA').AsString,'E', dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text])); //Era INT_NUMERONF
             end;
          if rgTipo.ItemIndex = 2 then // Fornecedores(Devolução)
             begin
               dmgeral.BUS_CD_M_NFE.Close;
               dmgeral.BUS_CD_M_NFE.Data :=
               dmgeral.BUS_CD_M_NFE.DataRequest(
                       VarArrayOf([1,dmGeral.FAT_CD_M_ROM.FieldByName('ID_EMPRESA').AsString,'D', dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text])); //Era INT_NUMERONF
             end;


          if (not dmGeral.BUS_CD_M_NFE.IsEmpty) then
             begin
              IdFiscal     := dmgeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
              Numero       := dmgeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
              NomeEmitente := dmgeral.BUS_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString;
              id_emitente  := dmgeral.BUS_CD_M_NFE.FieldByName('ID_EMITENTE').AsString;
              Valor        := dmgeral.BUS_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency;
             end
          else
             begin
               ShowMessage('Nota fiscal não encontrada.');
               txtOrdemSaida.Text := '';
               exit;
             end;
        end;

      if dmgeral.FAT_CD_M_ROM_NFE.State in [dsInsert] then
        begin

          dmgeral.FAT_CD_M_ROM_NFE.cancel;
          if dmgeral.FAT_CD_M_ROM_NFE.Locate('ID_FISCAL',IdFiscal,[]) or
              SMPrincipal.enVerifNfeDupRom(dmgeral.CAD_CD_C_PARid_empresa.Text, dmgeral.FAT_CD_M_ROMid_romaneio.Text, IdFiscal) then
            begin

              ShowMessage('Nota Fiscal já utilizada em outro manifesto eletrônico.');
              dmgeral.FAT_CD_M_ROM_NFE.edit;
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').Text    := '';
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_BUSCA_NFE').Text := '';
              txtOrdemsaida.SetFocus;
              abort;
            end
          else
            begin
              if rgTipo.ItemIndex = 0 then
                 begin
                    dmGeral.BUS_CD_C_CLI.Close;
                    dmGeral.BUS_CD_C_CLI.Data :=
                    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, id_emitente]));
                 end;

              if rgTipo.ItemIndex in [1,2] then
                 begin
                    dmGeral.BUS_CD_C_FOR.Close;
                    dmGeral.BUS_CD_C_FOR.Data :=
                            dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, id_emitente]));
                 end;

              dmgeral.FAT_CD_M_ROM_NFE.Insert;
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_ROMANEIO').AsString       := dmgeral.FAT_CD_M_ROM.FieldByName('ID_ROMANEIO').AsString;
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').AsString         := IdFiscal;
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NUMERONF').AsString      := numero;
              dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMEEMI').AsString       := NomeEmitente;

              if rgTipo.ItemIndex = 0 then
                 begin
                   dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_FONEFIXO').AsString      := dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;
                   dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECID').AsString       := dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;
                 end;

              if rgTipo.ItemIndex in [1,2] then
                 begin
                   dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_FONEFIXO').AsString      := dmGeral.BUS_CD_C_FOR.FieldByName('TEL_FIXO').AsString;
                   dmgeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECID').AsString       := dmGeral.BUS_CD_C_FOR.FieldByName('INT_NOMECID').AsString;
                 end;

              dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_VLRLIQUIDO').AsCurrency  := valor;

              //dmgeral.FAT_CD_M_ROM_NFE_ITE.Insert;
              GridItem;
              dmgeral.FAT_CD_M_ROM_NFE.Post;

              btnAddOrdem.SetFocus;
              panel1.Enabled := False;
            end;
        end;
    end;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TFAT_FM_M_ROM.txtOrdemSaidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TFAT_FM_M_ROM.Atualizar_xBusca;
begin
    if (lblNf.Caption = '<F7> Cód. Pedido') and
       (rgTipo.ItemIndex = 0) then
       begin
         lblNf.Caption := '<F7> Nro NF';
       end
    else
      begin
         if (rgTipo.ItemIndex = 0) then
            lblNf.Caption := '<F7> Cód. Pedido';
      end;
end;

procedure TFAT_FM_M_ROM.btnAddUfClick(Sender: TObject);
begin
  inherited;

    cbbUf.Enabled := true;
    dmGeral.FAT_CD_M_ROM_PER.Insert;
    cbbUf.SetFocus;
end;

procedure TFAT_FM_M_ROM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_M_ROM.txtRNTRCExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    begin
      exit;
    end;
  if (length(txtRNTRC.Text)>0) and (length(txtRNTRC.Text)<>8) then
    begin
      Showmessage('O RNTRC deve conter 8 digitos!');
      dmGeral.FAT_CD_M_ROM.FieldByName('RNTRC').AsString := '';
    end;
end;

procedure TFAT_FM_M_ROM.VerifRegistro;
begin
 if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       Showmessage('Não há registro!');
       abort;
     end;

  // Situação de Romaneio gerado Manifesto Eletrônico
  if (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
      begin
        Showmessage('Esse registro já teve o manifesto gerado.');
        abort;
      end;

  // Situação do Manifesto eletrônico cancelado
  if (dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean) then
      begin
        Showmessage('Esse registro já foi cancelado.');
        abort;
      end;
end;

function TFAT_FM_M_ROM.VerifSituacaoReg: Boolean;
var
   mens: string;
begin

   mens:= '';

   if dmGeral.FAT_CD_M_ROM.IsEmpty then
      begin
        mens := 'Não há registro para ser cancelado.';
      end;

   if dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean = true then
      begin
        mens := 'Registro já cancelado.';
      end;

   if trim(dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString) <> '' then
      begin
        mens := 'Este tipo de cancelamento não pode ser feito pois o MDF-e já foi gerado!' ;
      end;

   if dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1 then
      begin
        mens :=  'Manisfesto já foi encerrado!';
      end;

   if trim(mens) <> '' then
      begin
        Showmessage(mens);
        abort;
      end;
end;

procedure TFAT_FM_M_ROM.IgrdButton2Click(Sender: TObject);
begin
  inherited;
    try
    IgrdButton2.Enabled := false;
     if dmGeral.FAT_CD_M_ROM_LAC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_ROM_LAC.Delete;
  finally
    IgrdButton2.Enabled := true;
  end;
end;

procedure TFAT_FM_M_ROM.IgrdButtonClick(Sender: TObject);
begin
  inherited;
   try
     IgrdButton.Enabled := false;
     if dmGeral.FAT_CD_M_ROM_NFE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_ROM_NFE.Delete;

     if dmGeral.FAT_CD_M_ROM_NFE.IsEmpty then
        begin
          dmGeral.FAT_CD_M_ROM.FieldByName('ID_PCA').AsString := '';
        end;

  finally
    IgrdButton.Enabled := true;
  end;
end;
procedure TFAT_FM_M_ROM.Panel1Exit(Sender: TObject);
begin
  inherited;
 { if (btnAddOrdem.Focused) or (dgNfe.Focused) or
     (not IgrdButton.Enabled) then
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

        dmGeral.FAT_CD_M_ROM_NFE.Cancel;
        dmGeral.FAT_CD_M_ROM_NFE.edit;

        finally
           Panel1.Enabled := false;
        end;
      end; }
end;

procedure TFAT_FM_M_ROM.pnlDadosDblClick(Sender: TObject);
begin
  inherited;
   btnImpCarreg.Enabled := true;
end;

procedure TFAT_FM_M_ROM.pnlUfsExit(Sender: TObject);
begin
  inherited;
   if (btnAddUf.Focused) or (grdPercurso.Focused) or
     (not ibtnPer.Enabled) then
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

        dmGeral.FAT_CD_M_ROM_PER.Cancel;
        dmGeral.FAT_CD_M_ROM_PER.edit;

        finally
           Panel1.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_ROM.rgTipoEnter(Sender: TObject);
begin
  inherited;
  xTipoAnt := rgTipo.ItemIndex;
  rgTipo.DropDown;
end;

procedure TFAT_FM_M_ROM.rgTipoExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_ROM_NFE.Cancel;
  if not dmGeral.FAT_CD_M_ROM_NFE.IsEmpty then
     begin
       Showmessage('Já existe nota fiscal lançada.');
       rgTipo.ItemIndex := xTipoAnt;
       dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger := xTipoAnt;
       exit;
     end;

  if rgTipo.ItemIndex = 1 then
     begin
       lblNf.Caption := '<F7> Nro NF';
     end;
end;

end.
