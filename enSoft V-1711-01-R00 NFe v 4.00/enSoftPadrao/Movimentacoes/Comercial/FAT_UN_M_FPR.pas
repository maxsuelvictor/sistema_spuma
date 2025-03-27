unit FAT_UN_M_FPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids,
  vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, vcl.Wwdbedit, Vcl.Mask, JvExMask,
  JvToolEdit, JvExStdCtrls, JvEdit, JvValidateEdit, Math;

type
  TFAT_FM_M_FPR = class(TForm)
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    Label1: TLabel;
    pnlBaixo: TPanel;
    dso: TwwDataSource;
    dsoItens: TwwDataSource;
    btnAtuPreco: TBitBtn;
    GroupBox1: TGroupBox;
    txtCodNfe: TJvComboEdit;
    Label2: TLabel;
    txtNomeEmi: TwwDBEdit;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtVlrTotal: TwwDBEdit;
    GroupBox2: TGroupBox;
    grdItens: TwwDBGrid;
    Label97: TLabel;
    Label7: TLabel;
    txtTotCusFixMen: TJvValidateEdit;
    Label6: TLabel;
    Label24: TLabel;
    txtTotVenMedMen: TJvValidateEdit;
    Label9: TLabel;
    Label10: TLabel;
    txtPerCusFixVenMen: TJvValidateEdit;
    Label11: TLabel;
    txtPerICMSobVen: TJvValidateEdit;
    Label12: TLabel;
    txtPerSimples: TJvValidateEdit;
    Label13: TLabel;
    txtPerComissoes: TJvValidateEdit;
    Label14: TLabel;
    txtPerFretesVen: TJvValidateEdit;
    Label15: TLabel;
    txtPerCusFinSobVen: TJvValidateEdit;
    Label16: TLabel;
    txtPerLucDesSobVen: TJvValidateEdit;
    Label17: TLabel;
    txtTotIncid: TJvValidateEdit;
    txtMarckDiv: TJvValidateEdit;
    Label18: TLabel;
    Label19: TLabel;
    txtMarckMult: TJvValidateEdit;
    Label20: TLabel;
    Label21: TLabel;
    txtPrecVenCalc: TJvValidateEdit;
    Label22: TLabel;
    Label23: TLabel;
    txtPrecVenPrat: TJvValidateEdit;
    Label8: TLabel;
    txtPerPrcPrazo: TJvValidateEdit;
    Label25: TLabel;
    Label26: TLabel;
    txtPrecVenPratPrazo: TJvValidateEdit;
    Label27: TLabel;
    Label28: TLabel;
    txtPrcAvistaAtual: TJvValidateEdit;
    txtPrcAPrazoAtual: TJvValidateEdit;
    Label29: TLabel;
    Label30: TLabel;
    btnNovaNota: TButton;
    procedure txtCodNfeButtonClick(Sender: TObject);
    procedure txtCodNfeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure txtPerCusFixVenMenExit(Sender: TObject);
    procedure txtPerICMSobVenExit(Sender: TObject);
    procedure txtPerSimplesExit(Sender: TObject);
    procedure txtPerComissoesExit(Sender: TObject);
    procedure txtPerFretesVenExit(Sender: TObject);
    procedure txtPerCusFinSobVenExit(Sender: TObject);
    procedure txtPerLucDesSobVenExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensRowChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtuPrecoClick(Sender: TObject);
    procedure grdItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtPerPrcPrazoExit(Sender: TObject);
    procedure txtPrecVenPratExit(Sender: TObject);
    procedure btnNovaNotaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirCustMens;
    procedure VendasMedMens;
    procedure PreencherCampos;
    procedure CalcTotIncid;
    procedure LimparCampos;
    procedure RecalPreco;
    procedure AtualizarPrc;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_FPR: TFAT_FM_M_FPR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_NFE, uProxy, enFunc;

procedure TFAT_FM_M_FPR.LimparCampos;
begin
  txtPerICMSobVen.Value    := 0;
  txtPerSimples.Value      := 0;
  txtPerComissoes.Value    := 0;
  txtPerFretesVen.Value    := 0;
  txtPerCusFinSobVen.Value := 0;
  txtPerLucDesSobVen.Value := 0;
  txtMarckDiv.Value        := 0;
  txtMarckMult.Value       := 0;
  txtTotIncid.Value        := 0;
end;

procedure TFAT_FM_M_FPR.PreencherCampos;
begin
  //txtPerCusFixVenMen.Value := dmGeral.CAD_CD_C_PAR_CTRfp_per_cust_ven_mens.AsCurrency;
  txtPerICMSobVen.Value    := dmGeral.CAD_CD_C_PAR_CTRfp_per_icms_ven.AsCurrency;
  txtPerSimples.Value      := dmGeral.CAD_CD_C_PAR_CTRfp_per_simples.AsCurrency;
  txtPerComissoes.Value    := dmGeral.CAD_CD_C_PAR_CTRfp_per_comissao.AsCurrency;
  txtPerFretesVen.Value    := dmGeral.CAD_CD_C_PAR_CTRfp_per_frete_ven.AsCurrency;
  txtPerCusFinSobVen.Value := dmGeral.CAD_CD_C_PAR_CTRfp_per_cust_fin_ven.AsCurrency;
  txtPerPrcPrazo.Value     := dmGeral.CAD_CD_C_PAR_CTRfp_per_prc_prz_ven_prat.AsCurrency;
end;

procedure TFAT_FM_M_FPR.RecalPreco;
begin
  txtPrecVenCalc.Value := 0;
  txtPrecVenPrat.Value := 0;
  txtPrecVenPratPrazo.Value := 0;

  if not dmGeral.BUS_CD_M_NFE_ITE_2.IsEmpty then
     begin
        if (txtMarckMult.AsCurrency > 0) and
           (dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('vlr_custo').AsCurrency > 0) then
            begin
              txtPrecVenCalc.Value := roundTo(txtMarckMult.AsCurrency * dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('vlr_custo').AsCurrency,-2);
              txtPrecVenPrat.Value := txtPrecVenCalc.Value;
              txtPrecVenPratPrazo.Value := txtPrecVenPrat.Value;

              if txtPerPrcPrazo.Value > 0 then
                 begin
                   txtPrecVenPratPrazo.Value := txtPrecVenPratPrazo.Value +  (
                                                    ( txtPrecVenPrat.Value * txtPerPrcPrazo.Value) / 100
                                                                              );
                 end;
            end;
     end;

end;

procedure TFAT_FM_M_FPR.txtCodNfeButtonClick(Sender: TObject);
begin
  PSQ_FM_X_NFE := TPSQ_FM_X_NFE.Create(Self);
  PSQ_FM_X_NFE.RGTipoNota.ItemIndex := 0;
  PSQ_FM_X_NFE.RGTipoNota.Visible   := False;
  PSQ_FM_X_NFE.ShowModal;
  if not PSQ_FM_X_NFE.BUS_CD_M_NFE.IsEmpty then
    begin
      txtCodNfe.Text := PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('NUMERO').AsString;
    end;
   PSQ_FM_X_NFE.Free;
end;

procedure TFAT_FM_M_FPR.txtCodNfeExit(Sender: TObject);
begin
  if (trim(txtCodNfe.text) <> '') and (StrToInt(txtCodNfe.text) > 0)  then
     begin
       dmGeral.BUS_CD_M_NFE_2.Close;
       dmGeral.BUS_CD_M_NFE_2.Data :=
           dmGeral.BUS_CD_M_NFE_2.DataRequest(VarArrayOf([1, dmgeral.CAD_CD_C_PARid_empresa.Text, 'E',
                                                       txtCodNfe.text]));
       if dmGeral.BUS_CD_M_NFE_2.IsEmpty then
          begin
             Showmessage('Nota fiscal não existe.');
             txtCodNfe.Text := '';
             txtCodNfe.SetFocus;
             exit;
          end;
     end;
end;

procedure TFAT_FM_M_FPR.txtPerComissoesExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerCusFinSobVenExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerCusFixVenMenExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerFretesVenExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerICMSobVenExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerLucDesSobVenExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerPrcPrazoExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPerSimplesExit(Sender: TObject);
begin
  CalcTotIncid;
end;

procedure TFAT_FM_M_FPR.txtPrecVenPratExit(Sender: TObject);
begin

  txtPrecVenPratPrazo.Value := 0;

  if txtPrecVenPrat.Value > 0 then
     begin
        txtPrecVenPratPrazo.Value := txtPrecVenPrat.Value;

        if txtPerPrcPrazo.Value > 0 then
           begin
             txtPrecVenPratPrazo.Value := txtPrecVenPratPrazo.Value +  (
                                              ( txtPrecVenPrat.Value * txtPerPrcPrazo.Value) / 100
                                                                        );
           end;
     end;
end;

procedure TFAT_FM_M_FPR.VendasMedMens;
var
  SMPrincipal : TSMClient;
  Ano,Mes,Dia: Word;
begin


   // Total de Venda Média do Item


   DecodeDate(now,Ano,Mes,Dia);

   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   try
    txtTotVenMedMen.Value := SMPrincipal.enBusTotVendMed(IntToStr(Ano),IntToStr(Mes),''''+dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString+''''
                                                            );
   finally
    FreeAndNil(SMPrincipal);
   end;
end;

procedure TFAT_FM_M_FPR.AtualizarPrc;
var
  SMPrincipal : TSMClient;
  retorno: String;
  IdSequencia: String;
begin

   IdSequencia :=  dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_sequencia').AsString;

   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   try
    retorno :=  SMPrincipal.enAtuPrcIte(
                              dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_fiscal').AsString,
                              dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_sequencia').AsString,
                              dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_item').AsString,
                              txtTotCusFixMen.Value,
                              txtTotVenMedMen.Value,
                              txtPerCusFixVenMen.Value,
                              txtPerICMSobVen.Value,
                              txtPerSimples.Value,
                              txtPerComissoes.Value,
                              txtPerFretesVen.Value,
                              txtPerCusFinSobVen.Value,
                              txtPerLucDesSobVen.Value,
                              txtTotIncid.Value,
                              txtMarckDiv.Value,
                              txtMarckMult.Value,
                              txtPerPrcPrazo.Value,
                              txtPrecVenCalc.value,
                              txtPrecVenPrat.Value,
                              txtPrecVenPratPrazo.Value);
   finally
      FreeAndNil(SMPrincipal);
   end;

   if retorno = 'OK' then
      begin
        Showmessage('Item atualizado com sucesso.');
      end
   else
      begin
        Showmessage(retorno);
      end;


   dmGeral.BUS_CD_M_NFE_2.Close;
   dmGeral.BUS_CD_M_NFE_2.Data :=
       dmGeral.BUS_CD_M_NFE_2.DataRequest(VarArrayOf([1, dmgeral.CAD_CD_C_PARid_empresa.Text, 'E',
                                                   txtCodNfe.text]));

   dmGeral.BUS_CD_M_NFE_ITE_2.Locate('id_sequencia',IdSequencia,[]);

   grdItens.SetFocus;
end;

procedure TFAT_FM_M_FPR.btnAtuPrecoClick(Sender: TObject);
begin

  if dmGeral.BUS_CD_M_NFE_ITE_2.IsEmpty then
     begin
       ShowMessage('Nenhuma item foi selecionado.');
       exit;
     end;

  if (txtPrecVenPrat.Value < 0) then
     begin
       ShowMessage('O "Preço à vista praticado" não pode ser menor que 0.');
       exit;
     end;

  if (txtPrecVenPrat.Value = 0) then
     begin
       ShowMessage('O "Preço à vista praticado" não pode ser igual a 0.');
       exit;
     end;

  if (txtPrecVenPratPrazo.Value = 0) then
     begin
       ShowMessage('O "Preço a prazo praticado" não pode ser igual a 0.');
       exit;
     end;


  if (txtPrecVenPratPrazo.Value < txtPrecVenPrat.Value) then
     begin
       ShowMessage('O "Preço a prazo praticado" não pode ser menor que o "Preço à vista praticado".');
       exit;
     end;

  if Dc_MessageDlgCheck('Atualiza o preço do item: ' +
                dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_item').AsString +'-'+
                dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('int_desc_item').AsString + ' ?'
                  , mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', nil) <> 7 then
     begin
       AtualizarPrc;
     end;
end;

procedure TFAT_FM_M_FPR.btnNovaNotaClick(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE_2.Close;
   dmGeral.BUS_CD_M_NFE_2.Data :=
       dmGeral.BUS_CD_M_NFE_2.DataRequest(VarArrayOf([0, '']));

  txtCodNfe.SetFocus;

  txtCodNfe.Text       := '';
  txtPrecVenPrat.Value := 0;
  txtPrecVenPratPrazo.Value := 0;
end;

procedure TFAT_FM_M_FPR.CalcTotIncid;
begin
  txtTotIncid.Value :=

  txtPerCusFixVenMen.Value +
  txtPerICMSobVen.Value    +
  txtPerSimples.Value      +
  txtPerComissoes.Value    +
  txtPerFretesVen.Value    +
  txtPerCusFinSobVen.Value +
  txtPerLucDesSobVen.Value;

 //// if txtTotIncid.Value > 0  then
  //   begin
       txtMarckDiv.Value := (100-txtTotIncid.Value)/100;

       txtMarckMult.Value := (100/txtMarckDiv.Value)/100;
  RecalPreco;

//  txtPrecVenCalc.Value := 0;

 { if not dmGeral.BUS_CD_M_NFE_2.IsEmpty then
     begin
       txtPrecVenCalc.Value := txtMarckMult.Value *  dmGeral.BUS_CD_M_NFE_2.FieldByName('vlr_custo').AsCurrency;
     end;}
 //    end
  {else
     begin
       txtMarckDiv.Value  := 100;
       txtMarckMult.Value := (100/txtMarckDiv.Value)/100;
     end;}
end;

procedure TFAT_FM_M_FPR.ExibirCustMens;
var
  SMPrincipal : TSMClient;
  Ano,Mes,Dia: Word;
begin

  // Total dos custos fixos mensais :

  DecodeDate(now,Ano,Mes,Dia);

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    txtTotCusFixMen.Value := SMPrincipal.enBusTotPagMed(''''+dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString+'''',
                                                        '''0''');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TFAT_FM_M_FPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_NFE_2.Close;
end;

procedure TFAT_FM_M_FPR.FormCreate(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_2.Close;
   dmGeral.BUS_CD_M_NFE_2.Data :=
       dmGeral.BUS_CD_M_NFE_2.DataRequest(VarArrayOf([0, '']));

end;

procedure TFAT_FM_M_FPR.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_FPR.FormShow(Sender: TObject);
begin
  dmGeral.AtualizarGridItens(grdItens,'int_desc_item',10,9);
  ExibirCustMens;
  VendasMedMens;
  txtPerCusFixVenMen.Value := 0;
  if (txtTotCusFixMen.value > 0) and (txtTotVenMedMen.value > 0) then
      txtPerCusFixVenMen.Value := roundTo((txtTotCusFixMen.value / txtTotVenMedMen.value) * 100,-2);

  PreencherCampos;

  CalcTotIncid;

  txtCodNfe.SetFocus;


end;

procedure TFAT_FM_M_FPR.grdItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('fp_calculado').AsBoolean then
      begin
        aFont.Color := clGreen;
      end;
end;

procedure TFAT_FM_M_FPR.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{  if not dmGeral.BUS_CD_M_NFE_ITE_2.IsEmpty then
     begin
       dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('int_id_grupo').AsString);
       txtPerLucDesSobVen.Value := dmGeral.BUS_CD_C_GRU.FieldByName('fp_per_lucro_ven').AsCurrency;
     end;
  CalcTotIncid;     }
end;

procedure TFAT_FM_M_FPR.grdItensRowChanged(Sender: TObject);
begin
  txtPrcAvistaAtual.Value := 0;
  txtPrcAPrazoAtual.Value := 0;

  if not dmGeral.BUS_CD_M_NFE_ITE_2.IsEmpty then
     begin
       dmGeral.BusItens(0,dmGeral.BUS_CD_M_NFE_ITE_2.FieldByName('id_item').AsString);
       if not dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
            txtPrcAvistaAtual.Value := dmGeral.BUS_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
            txtPrcAPrazoAtual.Value := dmGeral.BUS_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency;
          end;
       dmGeral.BUS_CD_C_ITE.close;
     end;
  RecalPreco;
end;

end.
