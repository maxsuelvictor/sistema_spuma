unit PCP_UN_R_ACR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, JvExExtCtrls, JvExtComponent, JvPanel, Datasnap.DBClient;

type
  TPCP_FM_R_ACR = class(TPAD_FM_X_REL)
    rgFiltrarPor: TRadioGroup;
    txtNProtocolo: TEdit;
    lblNProtocolo: TLabel;
    lblPeriodo: TLabel;
    Label3: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    PCP_XL_R_ACR: TfrxXLSExport;
    PCP_PD_R_ACR: TfrxPDFExport;
    PCP_DB_R_ACR: TfrxDBDataset;
    PCP_DB_R_ACR_ITE: TfrxDBDataset;
    PCP_DB_R_ACR_ITE_PCN: TfrxDBDataset;
    PCP_DB_R_ACR_ITE_PCR: TfrxDBDataset;
    PCP_DB_R_ACR_ITE_PDT: TfrxDBDataset;
    PCP_DB_R_ACR_ITE_PRC: TfrxDBDataset;
    PCP_FR_R_ACR_FRM: TfrxReport;
    PCP_FR_R_ACR: TfrxReport;
    PCP_CD_R_ACR: TClientDataSet;
    PCP_CD_R_ACRid_acr: TIntegerField;
    PCP_CD_R_ACRid_empresa: TIntegerField;
    PCP_CD_R_ACRdata_atendimento: TDateField;
    PCP_CD_R_ACRcod_lme: TWideStringField;
    PCP_CD_R_ACRrev_lme: TWideStringField;
    PCP_CD_R_ACRnro_protocolo: TWideStringField;
    PCP_CD_R_ACRtipo_cliente: TIntegerField;
    PCP_CD_R_ACRpessoa: TIntegerField;
    PCP_CD_R_ACRid_cliente: TIntegerField;
    PCP_CD_R_ACRid_representante: TIntegerField;
    PCP_CD_R_ACRnome_consumidor: TWideStringField;
    PCP_CD_R_ACRcnpj_cpf_consumidor: TWideStringField;
    PCP_CD_R_ACRbairro_consumidor: TWideStringField;
    PCP_CD_R_ACRendereco_consumidor: TWideStringField;
    PCP_CD_R_ACRcep_consumidor: TWideStringField;
    PCP_CD_R_ACRfone_consumidor: TWideStringField;
    PCP_CD_R_ACRid_cidade: TWideStringField;
    PCP_CD_R_ACRid_atendente: TIntegerField;
    PCP_CD_R_ACRnumero_nf: TIntegerField;
    PCP_CD_R_ACRobservacao: TWideStringField;
    PCP_CD_R_ACRnro_end_consumidor: TWideStringField;
    PCP_CD_R_ACRdta_nf: TDateField;
    PCP_CD_R_ACRid_busca_clirep: TIntegerField;
    PCP_CD_R_ACRint_nomecli: TWideStringField;
    PCP_CD_R_ACRint_nomerep: TWideStringField;
    PCP_CD_R_ACRint_nomecid: TWideStringField;
    PCP_CD_R_ACRint_uf: TWideStringField;
    PCP_CD_R_ACRint_tipocli: TWideMemoField;
    PCP_CD_R_ACRint_pessoa: TWideMemoField;
    PCP_CD_R_ACRPCP_SQ_R_ACR_ITE: TDataSetField;
    PCP_CD_R_ACRhora_atendimento: TSQLTimeStampField;
    PCP_CD_R_ACRint_nomeate: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure rgFiltrarPorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_ACR: TPCP_FM_R_ACR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_R_ACR.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_ACR.ExibirRel;
var
  xNroProt, xDataIni, xDataFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  if rgFiltrarPor.ItemIndex = 1 then
     begin
        xDataIni := deInicial.Text;
        xDataFin := deFinal.Text;

        xNroProt := '';
     end
  else
     begin
        xNroProt := txtNProtocolo.Text;

        xDataIni := '';
        xDataFin := '';
     end;

   if rgFiltrarPor.ItemIndex = 1 then
      begin
         xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
         xOpcoes := xOpcoes + 'Período: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
      end
   else
      begin
         xOpcoes := '';
      end;

   PCP_CD_R_ACR.Close;
   PCP_CD_R_ACR.Data :=
           PCP_CD_R_ACR.DataRequest(
                   VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text, xNroProt, xDataIni, xDataFin]));

   if not PCP_CD_R_ACR.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Atendimento das Reclamações de Clientes' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_ACR.FindObject('imgEmpresa1'));

                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_ACR.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_ACR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_ACR.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_ACR.PrepareReport();
            PCP_FR_R_ACR.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Atendimento das Reclamações de Clientes - Formulário' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_ACR_FRM.FindObject('imgEmpresa2'));

                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_ACR_FRM.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_ACR_FRM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             PCP_FR_R_ACR_FRM.Variables['Opcoes'] := QuotedStr(xOpcoes);
             PCP_FR_R_ACR_FRM.PrepareReport();
             PCP_FR_R_ACR_FRM.ShowReport();
           end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TPCP_FM_R_ACR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_ACR);
end;

procedure TPCP_FM_R_ACR.FormCreate(Sender: TObject);
begin
  inherited;
  rgFiltrarPor.ItemIndex := 0;
  txtNProtocolo.Enabled := True;
  deInicial.Enabled := False;
  deFinal.Enabled := False;
  txtNProtocolo.SetFocus;
end;

procedure TPCP_FM_R_ACR.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_ACR.rgFiltrarPorClick(Sender: TObject);
begin
  inherited;
  if (rgFiltrarPor.ItemIndex = 0) then
     begin
        txtNProtocolo.Enabled := True;
        deInicial.Enabled := False;
        deFinal.Enabled := False;
        deInicial.Text := '  /  /    ';
        deFinal.Text := '  /  /    ';
     end
  else
     begin
        txtNProtocolo.Enabled := False;
        txtNProtocolo.Text := '';
        deInicial.Enabled := True;
        deFinal.Enabled := True;
     end;
end;

function TPCP_FM_R_ACR.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) and (rgFiltrarPor.ItemIndex = 1) then
         begin
           mens := mens +  '.O período deve ser preenchido.' + #13;
         end;
  if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;
    if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        Result := False;
        exit;
      end;
end;

end.
