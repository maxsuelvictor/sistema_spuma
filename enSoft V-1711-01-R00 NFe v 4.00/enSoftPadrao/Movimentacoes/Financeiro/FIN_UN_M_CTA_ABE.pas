unit FIN_UN_M_CTA_ABE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.wwdblook, JvExMask, JvToolEdit,
  JvDBControls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.Menus;

type
  TFIN_FM_M_CTA_ABE = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    dso: TwwDataSource;
    pnlDados: TPanel;
    Label2: TLabel;
    txtEmpresa: TDBEdit;
    lblAniversario: TLabel;
    dpkData: TJvDBDateEdit;
    txtUsuario: TDBEdit;
    lblUsuario: TLabel;
    lblConta: TLabel;
    cbbConta: TwwDBLookupCombo;
    cbbECF: TwwDBLookupCombo;
    lblECF: TLabel;
    lblVlrResuprimento: TLabel;
    txtVlrSuprimento: TDBEdit;
    pnDadosCartoes: TPanel;
    pnDadosGridUsu: TPanel;
    wwDBGrid1: TwwDBGrid;
    btnAbreCaixa: TBitBtn;
    btnGravaAbertura: TBitBtn;
    btnFechaCaixa: TBitBtn;
    BUS_DS_M_CXA_RES_CAR: TwwDataSource;
    pgDadosCartoes: TPageControl;
    tsResumoCar: TTabSheet;
    tsDetCarNF: TTabSheet;
    tsDetRbxCar: TTabSheet;
    tsCartoes: TTabSheet;
    grdResCartao: TwwDBGrid;
    grdDetNFCartao: TwwDBGrid;
    BUS_CD_M_CXA_DET_CNF: TwwDataSource;
    BUS_DS_M_CXA_DET_CRB: TwwDataSource;
    grdDetBxaCartao: TwwDBGrid;
    BUS_DS_M_CXA_CAR: TwwDataSource;
    grdCartoesDia: TwwDBGrid;
    tsDetRcrCar: TTabSheet;
    grdDetRcrCartao: TwwDBGrid;
    BUS_DS_M_CXA_DET_CRC: TwwDataSource;
    pmReabreCaixa: TPopupMenu;
    btnReabreCaixa: TMenuItem;
    procedure btnGravaAberturaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAbreCaixaClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure btnFechaCaixaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdResCartaoEnter(Sender: TObject);
    procedure grdResCartaoExit(Sender: TObject);
    procedure grdDetNFCartaoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdDetBxaCartaoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdResCartaoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdDetRcrCartaoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnReabreCaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CTA_ABE: TFIN_FM_M_CTA_ABE;

implementation

{$R *.dfm}

uses uDmGeral, enFunc,uProxy, FAT_RN_M_CXA, FIN_UN_M_CTA_REA;

procedure TFIN_FM_M_CTA_ABE.btnGravaAberturaClick(Sender: TObject);
var
  msg:String;
begin
   if dmGeral.FIN_CD_M_CXA.FieldByName('VLR_SUPRIMENTO').AsCurrency > 0 then
     begin
      msg := '';
      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_tif_suprim').AsString = '' then
       begin
         msg := msg + 'Tipo Financeiro.'+#13+#10;
       end;

      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_suprim').AsString = '' then
       begin
         msg := msg + 'Plano de Contas.'+#13+#10;
       end;

      if msg <> '' then
       begin
        ShowMessage('Deve-se preencher na tela de parâmetros na aba Financeiro e no bloco Suprimentos os seguintes campos:'+#13+#10+msg);
        exit;
       end;
     end;
   try
     dmGeral.FIN_CD_M_CXA.Post;
     dmGeral.FIN_CD_M_CXA.ApplyUpdates(0);
     Showmessage('Gravação realizada com sucesso.');
     FIN_FM_M_CTA_ABE.Close;
   except
     on e:EReconcileError do
       begin
         showmessage(e.Message);
       end;
   end;
end;

procedure TFIN_FM_M_CTA_ABE.btnReabreCaixaClick(Sender: TObject);
begin
   FIN_FM_M_CTA_REA := TFIN_FM_M_CTA_REA.Create(Self);
   FIN_FM_M_CTA_REA.ShowModal;
   FIN_FM_M_CTA_REA.Free;
   //Atualizar caixa
   FormShow(self);
end;

procedure TFIN_FM_M_CTA_ABE.btnAbreCaixaClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  Conta: String;
begin
  try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    conta := SMPrincipal.enVerSldCxaEmAberto(dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                                             IntToStr(xFuncionario));
    if conta <> '' then
       begin
          dmGeral.BusContaCorr(0,conta);

          dmGeral.BUS_CD_C_CXA_BCO.Close;
          dmGeral.BUS_CD_C_CXA_BCO.Data :=
                  dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([5,conta,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));
          if not dmGeral.BUS_CD_C_CXA_BCO.IsEmpty  then
             begin
               ShowMessage('Você só poderá abrir o caixa "' +
                            dmGeral.BUS_CD_C_CTC.FieldByName('id_conta').AsString+'-'+ dmGeral.BUS_CD_C_CTC.FieldByName('descricao').AsString
                            + '", pois ele ainda possui saldo.');
             end
          else
             begin
               ShowMessage('É preciso resolver a situação da conta: "' +
                           dmGeral.BUS_CD_C_CTC.FieldByName('id_conta').AsString+'-'+ dmGeral.BUS_CD_C_CTC.FieldByName('descricao').AsString + '", '+
                           'pois está com saldo diferente de R$ 0,00.' + #13 +
                           'No momento esta conta está sendo utilizada por outro usuário!' );
               ShowMessage('Não há conta disponível para ser aberta pois todas as contas estão sendo utilizadas por outros usuários!');
               abort;
             end;
          dmGeral.BUS_CD_C_CTC.Close;
       end;

    dmGeral.FIN_CD_M_CXA.Insert;
    dmGeral.FIN_CD_M_CXA.FieldByName('int_nomepar').AsString:=
      dmGeral.CAD_CD_C_PAR.FieldByName('emp_razao').AsString;
    pnlDados.Enabled := True;
    btnGravaAbertura.Enabled:= true;
    cbbConta.setfocus;
    btnAbreCaixa.Enabled:= false;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TFIN_FM_M_CTA_ABE.btnFechaCaixaClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  DadosCar: TClientDataSet;
  ExisteCar: Boolean;
  IdTitulos: String;
  retorno: String;
begin
  if FatValidaCtaAber(dmGeral.BUS_CD_M_CXA_RES_CAR,dmGeral.BUS_CD_M_CXA_DET_CRB,
                                                dmGeral.BUS_CD_M_CXA_DET_CNF,dmGeral.BUS_CD_M_CXA_CAR) then
     begin
        if MessageDlg('Confirma o fechamento deste caixa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin

             ExisteCar := false;
             //Busca sequencia no servidor

             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             try
               DadosCar      := TClientDataSet.Create(nil);
               IdTitulos     := '';
               if not dmGeral.BUS_CD_M_CXA_CAR.IsEmpty then
                  begin
                    dmGeral.BUS_CD_M_CXA_CAR.First;
                    while not (dmGeral.BUS_CD_M_CXA_CAR.Eof)  do
                        begin
                          if IdTitulos <> '' then
                             begin
                               IdTitulos :=
                               IdTitulos + ',' +''''+ dmGeral.BUS_CD_M_CXA_CAR.FieldByName('id_titulo').AsString+'''';
                             end;
                          if IdTitulos = '' then
                             begin
                               IdTitulos :=
                               IdTitulos +''''+dmGeral.BUS_CD_M_CXA_CAR.FieldByName('id_titulo').AsString+'''';
                             end;
                          dmGeral.BUS_CD_M_CXA_CAR.Next;
                        end;
                    dmGeral.BUS_CD_M_CXA_CAR.First;


                    ExisteCar := true;
                    FAT_RN_M_CXA.FatAtuDadosCarCtaAbe(dmGeral.BUS_CD_M_CXA_RES_CAR,dmGeral.BUS_CD_M_CXA_DET_CRB,
                                                      dmGeral.BUS_CD_M_CXA_DET_CRC,
                                                      dmGeral.BUS_CD_M_CXA_DET_CNF,dmGeral.BUS_CD_M_CXA_CAR);
                    DadosCar.data := dmGeral.BUS_CD_M_CXA_CAR.Data;

                  end
               else
                  DadosCar.data := dmGeral.BUS_CD_M_CXA_CAR.Data;

               retorno := SMPrincipal.enFecharCaixa(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                    IntToStr(xFuncionario),Screen.ActiveForm.Name,
                                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger,
                                      dmGeral.FIN_CD_M_CXA.FieldByName('STATUS').AsInteger,
                                      ExisteCar,IdTitulos,DadosCar);
               if retorno = 'OK' then
                  begin
                    Showmessage('Caixa fechado com sucesso!');
                    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
                       btnAbreCaixa.PopupMenu := pmReabreCaixa;
                  end
               else
                  begin
                    ShowMessage('Erro: ' + retorno);
                  end;
             finally
               dmGeral.BUS_CD_M_CXA_RES_CAR.Close;
               dmGeral.BUS_CD_M_CXA_DET_CNF.Close;
               dmGeral.BUS_CD_M_CXA_DET_CRB.Close;
               dmGeral.BUS_CD_M_CXA_DET_CRC.Close;
               dmGeral.BUS_CD_M_CXA_CAR.close;
               FreeAndNil(SMPrincipal);
             end;

             dmGeral.FIN_CD_M_CXA.Close;
             dmGeral.FIN_CD_M_CXA.Data :=
             dmGeral.FIN_CD_M_CXA.DataRequest(
                VarArrayOf([0, '']));
             Close;
           end;
     end;
end;

procedure TFIN_FM_M_CTA_ABE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.BUS_CD_C_ECF.Close;
  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.FIN_CD_M_CXA.Close;
  action:=caFree;
//  FreeAndNil(FIN_FM_M_CTA_ABE);
end;

procedure TFIN_FM_M_CTA_ABE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFIN_FM_M_CTA_ABE.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_C_ECF.Close;
          dmGeral.BUS_CD_C_ECF.Data :=
                  dmGeral.BUS_CD_C_ECF.DataRequest(VarArrayOf([4,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([3,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));


  btnFechaCaixa.Enabled   := false;
  btnAbreCaixa.Enabled    := true;
  btnGravaAbertura.Enabled:= false;

  lblVlrResuprimento.Visible := true;
  txtVlrSuprimento.Visible   := true;
  lblVlrResuprimento.Caption := 'Vlr. Suprimento :';

  btnAbreCaixa.PopupMenu := nil;
  if dmGeral.FIN_CD_M_CXA.RecordCount>0 then
     begin

       lblVlrResuprimento.Visible := false;
       txtVlrSuprimento.Visible   := false;
       btnAbreCaixa.Enabled:= false;
       btnGravaAbertura.Enabled:= false;
       btnFechaCaixa.Enabled:= true;

       if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_inf_lote_car_fech').AsBoolean then
          begin
            grdResCartao.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]
          end;

       dmGeral.BUS_CD_M_CXA_RES_CAR.Close;
       dmGeral.BUS_CD_M_CXA_RES_CAR.Data :=
       dmGeral.BUS_CD_M_CXA_RES_CAR.DataRequest(
          VarArrayOf([dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));

       dmGeral.BUS_CD_M_CXA_DET_CNF.Close;
       dmGeral.BUS_CD_M_CXA_DET_CNF.Data :=
       dmGeral.BUS_CD_M_CXA_DET_CNF.DataRequest(
          VarArrayOf([dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));

       dmGeral.BUS_CD_M_CXA_DET_CRB.Close;
       dmGeral.BUS_CD_M_CXA_DET_CRB.Data :=
       dmGeral.BUS_CD_M_CXA_DET_CRB.DataRequest(
          VarArrayOf([dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));

       dmGeral.BUS_CD_M_CXA_DET_CRC.Close;
       dmGeral.BUS_CD_M_CXA_DET_CRC.Data :=
       dmGeral.BUS_CD_M_CXA_DET_CRC.DataRequest(
          VarArrayOf([dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));

       dmGeral.BUS_CD_M_CXA_CAR.Close;
       dmGeral.BUS_CD_M_CXA_CAR.Data :=
       dmGeral.BUS_CD_M_CXA_CAR.DataRequest(
          VarArrayOf([dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));

     end
   else
     begin
       if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
        btnAbreCaixa.PopupMenu := pmReabreCaixa;
     end;
  pnlDados.Enabled := False;
end;

procedure TFIN_FM_M_CTA_ABE.grdDetBxaCartaoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_CXA_DET_CRB.FieldByName('FAIXA').AsString = 'SEM FAIXA') or
     (dmGeral.BUS_CD_M_CXA_DET_CRB.FieldByName('TAXA').AsFloat  = 0)  then
      Afont.Color := clRed;
end;

procedure TFIN_FM_M_CTA_ABE.grdDetNFCartaoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_CXA_DET_CNF.FieldByName('FAIXA').AsString = 'SEM FAIXA') or
     (dmGeral.BUS_CD_M_CXA_DET_CNF.FieldByName('TAXA').AsFloat  = 0)  then
      Afont.Color := clRed;
end;

procedure TFIN_FM_M_CTA_ABE.grdDetRcrCartaoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_CXA_DET_CRC.FieldByName('FAIXA').AsString = 'SEM FAIXA') or
     (dmGeral.BUS_CD_M_CXA_DET_CRC.FieldByName('TAXA').AsFloat  = 0)  then
      Afont.Color := clRed;
end;

procedure TFIN_FM_M_CTA_ABE.grdResCartaoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_inf_lote_car_fech').AsBoolean then
     if Field.FieldName = 'num_lote' then
        begin
           ABrush.Color := clBtnFace;
        end;

end;

procedure TFIN_FM_M_CTA_ABE.grdResCartaoEnter(Sender: TObject);
begin
  FIN_FM_M_CTA_ABE.KeyPreview := false;
  if dmGeral.BUS_CD_M_CXA_RES_CAR.IsEmpty then
     begin
       grdResCartao.ReadOnly := true;
     end;
end;

procedure TFIN_FM_M_CTA_ABE.grdResCartaoExit(Sender: TObject);
begin
  FIN_FM_M_CTA_ABE.KeyPreview := true;
  grdResCartao.ReadOnly := false;
end;

procedure TFIN_FM_M_CTA_ABE.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if dmGeral.FIN_CD_M_CXA.FieldByName('STATUS').AsInteger=0 then
    begin
      aFont.Color := clBlue;
      afont.Style := [fsBold];
    end
  else if dmGeral.FIN_CD_M_CXA.FieldByName('STATUS').AsInteger=1 then
     begin
      aFont.Color := clRed; //Vermelho
      afont.Style := [fsBold];
    end;
end;

end.
