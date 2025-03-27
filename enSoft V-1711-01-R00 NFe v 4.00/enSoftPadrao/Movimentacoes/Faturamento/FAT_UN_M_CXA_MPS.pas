unit FAT_UN_M_CXA_MPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ImgList, vcl.wwdblook, Vcl.Mask, vcl.Wwdbedit, Data.DB, vcl.wwdatsrc,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, Datasnap.DBClient ;

type
  TFAT_FM_M_CXA_MPS = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    pnlPrincipal: TPanel;
    gbxFaturamento: TGroupBox;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    rgTipoMov: TRadioGroup;
    gbDados: TGroupBox;
    Valor: TLabel;
    txtVlrMov: TwwDBEdit;
    lblConta: TLabel;
    cbbConta: TwwDBLookupCombo;
    FAT_FR_R_CXA_MPS: TfrxReport;
    FAT_XL_R_CXA_MPS: TfrxXLSExport;
    FAT_PD_R_CXA_MPS: TfrxPDFExport;
    FAT_DB_R_CXA_MPS: TfrxDBDataset;
    ds: TwwDataSource;
    cdsMPS: TClientDataSet;
    cdsMPSdta_movimento: TDateTimeField;
    cdsMPSexp_id_tipo_financeiro: TIntegerField;
    cdsMPSid_plano: TStringField;
    cdsMPSexp_id_plano: TStringField;
    cdsMPSid_tipo_financeiro: TIntegerField;
    cdsMPSint_nometif: TStringField;
    cdsMPSint_nomeplano: TStringField;
    cdsMPSint_nomeexptif: TStringField;
    cdsMPSint_nomeexpplano: TStringField;
    cdsMPSvlr_lancamento: TCurrencyField;
    cdsMPSid_conta: TIntegerField;
    cdsMPSid_exp_conta: TIntegerField;
    cdsMPSint_nomefun: TStringField;
    cdsMPSid_controle: TIntegerField;
    cdsMPSint_nomectcexp: TStringField;
    cdsMPSint_nomectc: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cbbContaEnter(Sender: TObject);
    procedure rgTipoMovClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_CXA_MPS: TFAT_FM_M_CXA_MPS;

implementation

{$R *.dfm}

uses uDmGeral,uProxy;

procedure TFAT_FM_M_CXA_MPS.btnGravarClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  VlrLancto, VlrSldCaixa: Currency;
  ContaDest,IdControleOri: Integer;
begin
  cdsMPS.EmptyDataSet;

  if dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency < 0 then
     begin
       ShowMessage('Valor inválido!');
       dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').FocusControl;
       exit;
     end;

  if dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency = 0 then
     begin
       ShowMessage('O campo "Valor" deve ser preenchido!');
       dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').FocusControl;
       exit;
     end;


  if rgTipoMov.ItemIndex = 1 then // Sangria
     begin
       if dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_conta').AsInteger = 0 then
          begin
             ShowMessage('O campo "Conta(destino)" deve ser preenchido!');
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_conta').FocusControl;
             exit;
          end;

              // Busca saldo do Crédito do cliente
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
          VlrSldCaixa :=
               SMPrincipal.enVerSaldoDiaCxa(dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsInteger,
                                            dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger,
                                            dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger);
       finally
          FreeAndNil(SMPrincipal);
       end;

       if dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency > VlrSldCaixa then
          begin
            ShowMessage('Este valor não pode ser transferido.' + #13 +
                        'Saldo do caixa menor!');
            dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').FocusControl;
            exit;
          end;
     end;


  if MessageDlg('Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ORIGEM').AsInteger    := 8;

        if rgTipoMov.ItemIndex = 0 then
           begin
             // Suprimento
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DEB_CRE').AsInteger  := 1;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString  := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_suprim').text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_TIF_SUPRIM').AsInteger;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('HISTORICO').AsString :=
                    'Lançamento ref. ao suprimento do caixa : ' + dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').Text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('id_abertura').AsInteger   :=
                     dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsInteger :=
                     dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger;



             cdsMPS.Insert;
             cdsMPS.FieldByName('INT_NOMEFUN').AsString :=  dmGeral.FIN_CD_M_CXA.FieldByName('INT_NOMEFUN').AsString;
             cdsMPS.FieldByName('ID_CONTROLE').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTROLE').AsInteger;
             cdsMPS.FieldByName('DTA_MOVIMENTO').AsDateTime := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DTA_LANCAMENTO').AsDateTime;
             cdsMPS.FieldByName('VLR_LANCAMENTO').AsCurrency := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency;
             cdsMPS.FieldByName('ID_CONTA').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsInteger;

             dmGeral.BusContaCorr(0, dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString);
             if (not dmGeral.BUS_CD_C_CTC.IsEmpty) then
                begin
                  cdsMPS.FieldByName('INT_NOMECTC').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
                end;

             cdsMPS.FieldByName('ID_PLANO').AsString := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString;
             dmGeral.BusPlanoCta(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString);
             if (not dmGeral.BUS_CD_C_PCT.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMEPLANO').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.FieldByName('ID_TIPO_FINANCEIRO').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
              dmGeral.BusTipoFin(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString);
             if (not dmGeral.BUS_CD_C_TIF.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMETIF').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.Post;
             dmGeral.Grava(dmGeral.BUS_CD_M_CTA_CXA);
             FAT_FR_R_CXA_MPS.Variables['sangria'] := false;
             FAT_FR_R_CXA_MPS.Variables['titulo'] := QuotedStr('Registro de Entrada');
             FAT_FR_R_CXA_MPS.Variables['Opcoes'] := QuotedStr('');
             FAT_FR_R_CXA_MPS.ShowReport();
             close;

           end;

        if rgTipoMov.ItemIndex = 1 then
           begin
             cdsMPS.Insert;

             VlrLancto := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency;
             ContaDest := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_conta').AsInteger;
             IdControleOri := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('id_controle').AsInteger;
             // Sangria (Débito)

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DEB_CRE').AsInteger            := 0;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString            :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_PLANO_SANGRIA').text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_ID_TIF_SANGRIA').AsInteger;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('HISTORICO').AsString           :=
                    'Lançamento ref. a sangria do caixa: ' + dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').Text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('id_abertura').AsInteger   :=
                     dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsInteger           :=
                     dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger;

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_controle').AsInteger    := 0;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_plano').AsString        :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_PLANO_SANGRIA').text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_tipo_financeiro').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_TIF_SANGRIA').AsInteger;


             cdsMPS.FieldByName('INT_NOMEFUN').AsString :=  dmGeral.FIN_CD_M_CXA.FieldByName('INT_NOMEFUN').AsString;
             cdsMPS.FieldByName('ID_CONTROLE').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTROLE').AsInteger;
             cdsMPS.FieldByName('DTA_MOVIMENTO').AsDateTime := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DTA_LANCAMENTO').AsDateTime;
             cdsMPS.FieldByName('VLR_LANCAMENTO').AsCurrency := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency;

             cdsMPS.FieldByName('ID_CONTA').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsInteger;
             dmGeral.BusContaCorr(0,cdsMPS.FieldByName('ID_CONTA').AsString);
             if (not dmGeral.BUS_CD_C_CTC.IsEmpty) then
                begin
                  cdsMPS.FieldByName('INT_NOMECTC').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
                end;

             cdsMPS.FieldByName('ID_PLANO').AsString := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString;
             dmGeral.BusPlanoCta(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString);
             if (not dmGeral.BUS_CD_C_PCT.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMEPLANO').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.FieldByName('ID_TIPO_FINANCEIRO').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
              dmGeral.BusTipoFin(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString);
             if (not dmGeral.BUS_CD_C_TIF.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMETIF').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.FieldByName('ID_EXP_CONTA').AsInteger := ContaDest;
              dmGeral.BusContaCorr(0,cdsMPS.FieldByName('ID_EXP_CONTA').AsString);
             if (not dmGeral.BUS_CD_C_CTC.IsEmpty) then
                begin
                  cdsMPS.FieldByName('INT_NOMECTCEXP').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
                end;

             cdsMPS.FieldByName('EXP_ID_PLANO').AsString := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString;
             dmGeral.BusPlanoCta(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString);
             if (not dmGeral.BUS_CD_C_PCT.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMEEXPPLANO').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger := dmGeral.BUS_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger;
              dmGeral.BusTipoFin(0,dmGeral.BUS_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString);
             if (not dmGeral.BUS_CD_C_TIF.IsEmpty) then
               begin
                 cdsMPS.FieldByName('INT_NOMEEXPTIF').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;
               end;

             cdsMPS.Post;

             // Contra partida (Crédito)
             dmGeral.BUS_CD_M_CTA_CXA.Insert;

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency := VlrLancto;
             dmGeral.BUS_CD_M_CXA.Close;
             dmGeral.BUS_CD_M_CXA.Data :=
             dmGeral.BUS_CD_M_CXA.DataRequest(VarArrayOf([95,dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsInteger,
                                                              IntToStr(ContaDest)]));

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('id_abertura').AsInteger     :=
                     dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').AsInteger;

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DTA_MOVIMENTO').AsDateTime     :=
                     dmGeral.BUS_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

            

             dmGeral.BUS_CD_M_CXA.Close;

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('id_conta').AsInteger        := ContaDest;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_controle').AsInteger := IdControleOri;

             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('DEB_CRE').AsInteger            := 1;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString            :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_PLANO_SANGRIA').text;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_EXP_ID_TIF_SANGRIA').AsInteger;
             dmGeral.BUS_CD_M_CTA_CXA.FieldByName('HISTORICO').AsString           :=
                    'Lançamento ref. a transf. da sangria do caixa : ' + dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').Text;

             dmGeral.Grava(dmGeral.BUS_CD_M_CTA_CXA);
             FAT_FR_R_CXA_MPS.Variables['sangria'] := true;
             FAT_FR_R_CXA_MPS.Variables['titulo'] := QuotedStr('Registro de Saída');
             FAT_FR_R_CXA_MPS.Variables['Opcoes'] := QuotedStr('');
             FAT_FR_R_CXA_MPS.ShowReport();
             close;
           end;
     end;
end;

procedure TFAT_FM_M_CXA_MPS.btnSairClick(Sender: TObject);
begin
  if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
     begin
       dmGeral.BUS_CD_M_CTA_CXA.cancel;
     end;
  dmGeral.BUS_CD_M_CTA_CXA.Close;
  close;
end;

procedure TFAT_FM_M_CXA_MPS.cbbContaEnter(Sender: TObject);
begin
  // Irá mostrar as contas do tipo "Caixa".
  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([2,dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsInteger,dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger ]));


  cbbConta.DropDown;

end;

procedure TFAT_FM_M_CXA_MPS.FormCreate(Sender: TObject);
begin

  dmGeral.BUS_CD_M_CTA_CXA.Close;
  dmGeral.BUS_CD_M_CTA_CXA.Data :=
          dmGeral.BUS_CD_M_CTA_CXA.DataRequest(VarArrayOf([0,'']));

  dmGeral.BUS_CD_M_CTA_CXA.Insert;

  // Irá mostrar as contas do tipo "Caixa".
  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([2,dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsInteger,dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger ]));

  cdsMPS.CreateDataSet;
end;

procedure TFAT_FM_M_CXA_MPS.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_MPS.rgTipoMovClick(Sender: TObject);
begin

  dmGeral.BUS_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency := 0;
  cbbConta.text := '';
  dmGeral.BUS_CD_M_CTA_CXA.FieldByName('exp_id_controle').AsInteger := 0;
  gbDados.Enabled := true;
  if rgTipoMov.ItemIndex = 0 then
     begin
       lblConta.enabled := false;
       cbbConta.Enabled := false;
       txtVlrMov.SetFocus;
     end;

  if rgTipoMov.ItemIndex = 1 then
     begin
       lblConta.enabled := true;
       cbbConta.Enabled := true;
       txtVlrMov.SetFocus;
     end;

end;

end.
