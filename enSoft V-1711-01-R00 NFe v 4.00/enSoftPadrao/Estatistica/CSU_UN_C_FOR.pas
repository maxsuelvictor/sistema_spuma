unit CSU_UN_C_FOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.DBCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Buttons, Vcl.ComCtrls, vcl.wwdblook;

type
  TCSU_FM_C_FOR = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dgItens: TwwDBGrid;
    dso: TwwDataSource;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltra: TButton;
    lblCampoBusca: TLabel;
    lblTextoBuscado: TLabel;
    btnNotasFiscais: TButton;
    btnFinanceiro: TButton;
    btnEstatistica: TButton;
    btnSair: TSpeedButton;
    txtCidadeDescricao: TDBText;
    txtEstadoDescricao: TDBText;
    txtEndereco: TDBEdit;
    txtComplemento: TDBEdit;
    txtNumero: TDBEdit;
    txtCEP: TDBEdit;
    txtCaixaPostal: TDBEdit;
    txtEmail: TDBEdit;
    txtCidade: TJvDBComboEdit;
    txtBairro: TDBEdit;
    txtTelFixo: TDBEdit;
    txtTelMovel: TDBEdit;
    txtFax: TDBEdit;
    txtSituacao: TDBEdit;
    txtLimite: TDBEdit;
    dpkValidade: TJvDBDateEdit;
    lblEndereco: TLabel;
    lblCEP: TLabel;
    lblCidade: TLabel;
    lblTelFixo: TLabel;
    lblSituacao: TLabel;
    lblLimite: TLabel;
    lblSaldo: TLabel;
    lblFax: TLabel;
    lblBairro: TLabel;
    lblEmail: TLabel;
    lblComplemento: TLabel;
    lblNumero: TLabel;
    lblSexo: TLabel;
    lblCaixaPostal: TLabel;
    lblTelMovel: TLabel;
    lblValidade: TLabel;
    txtTipoForn: TwwDBLookupCombo;
    lblTipoFornecedor: TLabel;
    txtSaldo: TEdit;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltraClick(Sender: TObject);
    procedure btnNotasFiscaisClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnEstatisticaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgItensRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_FOR: TCSU_FM_C_FOR;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_C_FOR_FIN , CSU_UN_C_FOR_NFE, CSU_UN_C_FOR_STA;

procedure TCSU_FM_C_FOR.btnEstatisticaClick(Sender: TObject);
begin
 CSU_FM_C_FOR_STA := TCSU_FM_C_FOR_STA.Create(Self);
 CSU_FM_C_FOR_STA.ShowModal;
 CSU_FM_C_FOR_STA.Free;
end;

procedure TCSU_FM_C_FOR.btnFiltraClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try

    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;


    dmGeral.BUS_CD_C_FOR.Close;
    dmGeral.BUS_CD_C_FOR.Data :=
        dmGeral.BUS_CD_C_FOR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCSU_FM_C_FOR.btnFinanceiroClick(Sender: TObject);
begin
   if not dmGeral.BUS_CD_C_FOR.IsEmpty then
    begin
      dmGeral.BUS_CD_M_PAG_TIT.Close;
      dmGeral.BUS_CD_M_PAG_TIT.Data :=
              dmGeral.BUS_CD_M_PAG_TIT.DataRequest(
                  VarArrayOf([94,dmgeral.BUS_CD_C_FOR.FieldByName('id_fornecedor').Text,'']));

      CSU_FM_C_FOR_FIN := TCSU_FM_C_FOR_FIN.Create(Self);
      CSU_FM_C_FOR_FIN.ShowModal;
      CSU_FM_C_FOR_FIN.Free;
     end;
end;

procedure TCSU_FM_C_FOR.btnNotasFiscaisClick(Sender: TObject);
begin
 if not dmGeral.BUS_CD_C_FOR.IsEmpty then
    begin
      dmGeral.BUS_CD_M_NFE.Close;
      dmGeral.BUS_CD_M_NFE.Data :=
             dmGeral.BUS_CD_M_NFE.DataRequest(
                  VarArrayOf([95,  ' '''+'E'+''','''+'D'+''','''+'F'+''' '   ,
                      dmgeral.BUS_CD_C_FOR.FieldByName('id_fornecedor').Text]));

      CSU_FM_C_FOR_NFE := TCSU_FM_C_FOR_NFE.Create(Self);
      CSU_FM_C_FOR_NFE.ShowModal;
      CSU_FM_C_FOR_NFE.Free;
     end;

end;

procedure TCSU_FM_C_FOR.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_C_FOR.cbbPesquisaChange(Sender: TObject);
begin
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

procedure TCSU_FM_C_FOR.dgItensRowChanged(Sender: TObject);
begin
  txtSaldo.Text := '0,00';
  if not dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.BUS_CD_M_FOR_SLD_TIT.Close;
       dmGeral.BUS_CD_M_FOR_SLD_TIT.Data :=
              dmGeral.BUS_CD_M_FOR_SLD_TIT.DataRequest(
                   VarArrayOf([''''+dmGeral.CAD_CD_C_PARid_empresa.Text+'''',
                                dmGeral.BUS_CD_C_FORid_fornecedor.Text]));
       if not dmGeral.BUS_CD_M_FOR_SLD_TIT.IsEmpty then
          begin
            txtSaldo.Text := FormatCurr('###,###,###,###,##0.00',
                                dmGeral.BUS_CD_C_FORlim_valor.AsCurrency -
                                dmGeral.BUS_CD_M_FOR_SLD_TITvlr_saldo_tit.AsCurrency);
          end;
       dmGeral.BUS_CD_M_FOR_SLD_TIT.Close;
     end;
end;

procedure TCSU_FM_C_FOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_C_FOR.Close;
  FreeAndNil(CSU_FM_C_FOR);
end;

procedure TCSU_FM_C_FOR.FormResize(Sender: TObject);
begin
  pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
  pnlCentral.left := (pnlPRincipal.Width div 2) - (pnlCentral.width div 2);
end;

procedure TCSU_FM_C_FOR.FormShow(Sender: TObject);
begin
  dmGeral.BUS_PR_X_FOR_TFO;
  txtSaldo.Text := '';
  txtPesquisa.SetFocus;
end;

procedure TCSU_FM_C_FOR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltraClick(Self);
          end;
     end;
end;

end.
