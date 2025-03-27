unit PCP_UN_M_ROM_VLC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, frxClass, frxDBSet, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_M_ROM_VLC = class(TForm)
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    lblOrde: TLabel;
    cbbMotorista: TComboBox;
    btnSair: TButton;
    Button1: TButton;
    PCP_FR_M_VRE: TfrxReport;
    BUS_CD_R_ROM_VLC: TClientDataSet;
    BUS_CD_R_ROM_VLC_PED: TClientDataSet;
    BUS_CD_R_ROM_VLCid_rom: TIntegerField;
    BUS_CD_R_ROM_VLCid_empresa: TIntegerField;
    BUS_CD_R_ROM_VLCdta_emissao: TDateField;
    BUS_CD_R_ROM_VLCid_responsavel: TIntegerField;
    BUS_CD_R_ROM_VLCid_motorista: TIntegerField;
    BUS_CD_R_ROM_VLCobservacao: TWideStringField;
    BUS_CD_R_ROM_VLCcod_lme: TWideStringField;
    BUS_CD_R_ROM_VLCrev_lme: TWideStringField;
    BUS_CD_R_ROM_VLCplaca: TWideStringField;
    BUS_CD_R_ROM_VLClot_qtde_total: TFloatField;
    BUS_CD_R_ROM_VLChor_emissao: TTimeField;
    BUS_CD_R_ROM_VLChor_alt: TTimeField;
    BUS_CD_R_ROM_VLCid_resp_alt: TIntegerField;
    BUS_CD_R_ROM_VLCdta_alt: TDateField;
    BUS_CD_R_ROM_VLChor_fin: TTimeField;
    BUS_CD_R_ROM_VLCdta_fin: TDateField;
    BUS_CD_R_ROM_VLCid_resp_fin: TIntegerField;
    BUS_CD_R_ROM_VLCped_ite_qtde_total: TIntegerField;
    BUS_CD_R_ROM_VLCid_pca: TIntegerField;
    BUS_CD_R_ROM_VLCqtde_total_ite_conf: TFloatField;
    BUS_CD_R_ROM_VLCnome: TWideStringField;
    BUS_CD_R_ROM_VLCvlr_carga: TFMTBCDField;
    BUS_CD_R_ROM_VLCBUS_SQ_R_ROM_VLC_PED: TDataSetField;
    BUS_CD_R_ROM_VLC_PEDid_pedido: TIntegerField;
    BUS_CD_R_ROM_VLC_PEDdta_pedido: TDateField;
    BUS_CD_R_ROM_VLC_PEDnome: TWideStringField;
    BUS_CD_R_ROM_VLC_PEDvlr_liquido: TFMTBCDField;
    BUS_DB_R_ROM_VLC: TfrxDBDataset;
    BUS_DB_R_ROM_VLC_PED: TfrxDBDataset;
    BUS_CD_R_ROM_VLC_PEDid_cliente: TIntegerField;
    BUS_CD_R_ROM_VLC_PEDint_nomeven: TWideStringField;
    cbVisPed: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM_VLC: TPCP_FM_M_ROM_VLC;

implementation

{$R *.dfm}

uses uDmSgq, enFunc, PCP_UN_M_ROM, uDmGeral;

procedure TPCP_FM_M_ROM_VLC.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TPCP_FM_M_ROM_VLC.Button1Click(Sender: TObject);
var
  mens, PathImg: String;
  LogoEmpresa2: TfrxPictureView;
  SubReport: TfrxSubreport;
  IdMta: String;
  NomeMotorista: String;
begin
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      exit;
    end;

  IdMta :=  copy(cbbMotorista.text,34,4);

  BUS_CD_R_ROM_VLC.Close;
    BUS_CD_R_ROM_VLC.Data :=
       BUS_CD_R_ROM_VLC.DataRequest(
            VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text,
                       deInicial.Text, deFinal.Text, IdMta]));

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not BUS_CD_R_ROM_VLC.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa2 := TfrxPictureView(PCP_FR_M_VRE.FindObject('imgEmpresa2'));
          if Assigned(LogoEmpresa2) then
            LogoEmpresa2.Picture.LoadFromFile(PathImg);
        end;
      SubReport := TfrxSubreport(PCP_FR_M_VRE.FindObject('srptPedidos'));

      if cbVisPed.Checked = false then
         begin
           SubReport.Visible := false;
         end;

      PCP_FR_M_VRE.Variables['ft_periodo'] := QuotedStr('Período : ' + deInicial.Text + ' até ' + deFinal.text);
      NomeMotorista := copy(cbbMotorista.text,1,30);
      PCP_FR_M_VRE.Variables['ft_motorista'] := QuotedStr(NomeMotorista);

      PCP_FR_M_VRE.PrepareReport();
      PCP_FR_M_VRE.ShowReport();

    end
  else
    begin
      ShowMessage('Nenhum relatório de carga foi selecionado!');
    end;

end;

procedure TPCP_FM_M_ROM_VLC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TPCP_FM_M_ROM_VLC.FormShow(Sender: TObject);
begin
  dmsgq.BUS_CD_C_MTA.Close;
  dmsgq.BUS_CD_C_MTA.Data :=
      dmsgq.BUS_CD_C_MTA.DataRequest(VarArrayOf([1,'%']));
  dmsgq.BUS_CD_C_MTA.First;
  while not dmsgq.BUS_CD_C_MTA.eof do
     begin
       cbbMotorista.Items.Add(GeraEspDir(copy(dmsgq.BUS_CD_C_MTA.FieldByName('NOME').AsString,1,30),30)
                               + ' - ' + StrZero(dmsgq.BUS_CD_C_MTA.FieldByName('ID_MOTORISTA').AsFloat,4,0) );
       dmsgq.BUS_CD_C_MTA.Next;
     end;
  dmsgq.BUS_CD_C_MTA.First;
end;

end.
