unit FIN_UN_M_ECH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient,
  RDprint, frxClass, frxDBSet, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TFIN_FM_M_ECH = class(TPAD_FM_X_REL)
    gbPreencher: TGroupBox;
    Label1: TLabel;
    txtnominal: TEdit;
    Label2: TLabel;
    gbDados: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    txtnumero: TEdit;
    txtultiliza: TEdit;
    dpkData: TJvDateEdit;
    txtBanco: TEdit;
    Label5: TLabel;
    txtagencia: TEdit;
    Label6: TLabel;
    rgImpressao: TRadioGroup;
    cds_Cheque: TClientDataSet;
    cds_ChequeVALOR: TCurrencyField;
    cds_ChequeEXTENSO_1: TStringField;
    cds_ChequeEXTENSO_2: TStringField;
    cds_ChequeNOMINAL: TStringField;
    cds_ChequeDATA_MES: TStringField;
    cds_ChequeDATA_DIA: TStringField;
    cds_ChequeDATA_ANO: TStringField;
    cds_ChequeMUNICIPIO: TStringField;
    cds_ChequeCHEQUE: TStringField;
    cds_ChequeBANCO: TStringField;
    cds_ChequeUTILIZADO: TStringField;
    cds_ChequeAGENCIA: TStringField;
    FIN_FR_M_ECH: TfrxReport;
    FIN_DP_M_ECH: TfrxDBDataset;
    RDCheque: TRDprint;
    txtValor: TJvValidateEdit;
    Label7: TLabel;
    txtLinha: TEdit;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rgImpressaoClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos: Boolean;
    Function Extenso(Valor: double):string;
    Function Ext3(Parte:string):string;
    function Repete(Caractere : char; nCaracteres : integer) : string;
    function MesExt( Mes:Word ) : string;

    const
      Centenas: array[1..9] of string[12]=('CEM','DUZENTOS','TREZENTOS','QUATROCENTOS',
                                           'QUINHENTOS','SEISCENTOS','SETECENTOS',
                                           'OITOCENTOS','NOVECENTOS');
      Dezenas : array[2..9] of string[10]=('VINTE','TRINTA','QUARENTA','CINQUENTA',
                                           'SESSENTA','SETENTA','OITENTA','NOVENTA');
      Dez     : array[0..9] of string[10]=('DEZ','ONZE','DOZE','TREZE','QUATORZE',
                                           'QUINZE','DEZESSEIS','DEZESSETE',
                                           'DEZOITO','DEZENOVE');
      Unidades: array[1..9] of string[10]=('HUM','DOIS','TRES','QUATRO','CINCO',
                                           'SEIS','SETE','OITO','NOVE');
      MoedaSingular = 'REAL';
      MoedaPlural   = 'REAIS';
      CentSingular  = 'CENTAVO';
      CentPlural    = 'CENTAVOS';
      Zero          = 'ZERO';

  public
    { Public declarations }
  end;

var
  FIN_FM_M_ECH: TFIN_FM_M_ECH;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFIN_FM_M_ECH.btnImprimirClick(Sender: TObject);
Var Lin:Integer;
    ValorExtenso:String;
    Mes,Ano,Dia: Word;
    Mes1,Ano1,Dia1: Word;
    i:Integer;
begin
  inherited;
  if txtLinha.Text <> '' then
    Lin := StrToInt(txtLinha.Text)
  else
    Lin := 0;

  if TestarCampos then
    begin
      ValorExtenso:=Extenso(txtValor.Value);
      ValorExtenso:=ValorExtenso+Repete('*',115-(Length(ValorExtenso)));

      DecodeDate(dpkData.Date, Ano, Mes, Dia);

      cds_Cheque.EmptyDataSet;
      cds_cheque.Insert;
      cds_cheque.FieldByName('VALOR').AsCurrency:=txtValor.Value;
      cds_cheque.FieldByName('NOMINAL').AsString:=txtNominal.Text;
      cds_cheque.FieldByName('EXTENSO_1').AsString:=Copy(ValorExtenso,01,52);
      cds_cheque.FieldByName('EXTENSO_2').AsString:=Copy(ValorExtenso,53,52);
      cds_cheque.FieldByName('MUNICIPIO').AsString:=DmGeral.CAD_CD_C_PAR.FieldByname('int_nomecid').asString;
      cds_cheque.FieldByName('DATA_DIA').AsString:=Copy(DateToStr(dpkData.Date),1,2);
      cds_cheque.FieldByName('DATA_MES').AsString:=MesExt(Mes);
      cds_cheque.FieldByName('DATA_ANO').AsString:=Copy(DateToStr(dpkData.Date),7,4);
      cds_cheque.FieldByName('CHEQUE').AsString:=txtnumero.Text;
      cds_cheque.FieldByName('UTILIZADO').AsString:=txtUltiliza.Text;
      cds_cheque.FieldByName('BANCO').AsString:=txtBanco.Text;
      cds_cheque.FieldByName('AGENCIA').AsString:=txtAgencia.Text;
      cds_cheque.Post;

      if rgimpressao.ItemIndex = 1 then
        begin

          RDCheque.TamanhoQteLinhas      := 1;     //era 18 Linhas (deve ser 1 quando for CUPOM)
          RDCheque.TamanhoQteColunas     := 96;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
          //RDCheque.PortaComunicacao      :=DmGeral.cds_Parametros.FieldByname('IMPRESSORA_PROMISSORIA').asString;
          RDCheque.FonteTamanhoPadrao    := s12cpp; // Fonte Comprimido em 20 cpp
          RDCheque.OpcoesPreview.Preview := false;
          RDCheque.Abrir;

          RDCheque.impval(01+Lin,60,'#,###,##0.00',txtValor.Value,[]);
          RDCheque.imp(  03+Lin,10,Copy(ValorExtenso,01,60));
          //RDCheque.impf(  04,05,'',[comp17]);
          RDCheque.imp(  05+Lin,01,Copy(ValorExtenso,61,60));


          RDCheque.impf(  07+Lin,01,txtNominal.Text,[]);


          DecodeDate(dpkData.Date, Ano1, Mes1, Dia1);
          RDCheque.imp(   08+Lin,34,DmGeral.CAD_CD_C_PAR.FieldByname('int_nomecid').asString+'       '+
                                Copy(DateToStr(dpkData.Date),1,2)+
                                '  '+MesExt(Mes1) );

          RDCheque.imp(   08+Lin,72, Copy(DateToStr(dpkData.Date),7,4));

          for i := Lin+9 to 18 do
            begin
             RDCheque.imp(i,01,' ');
            end;
          RDCheque.OpcoesPreview.Preview := true;
          RDCheque.TamanhoQteLinhas      := 18;
          RDCheque.fechar;


        end
      else
        begin
          FIN_FR_M_ECH.Variables['topo'] := QuotedStr(IntToStr(Lin));
          FIN_FR_M_ECH.PrepareReport();
          FIN_FR_M_ECH.ShowReport();
        end;
    end;
end;

function TFIN_FM_M_ECH.Ext3(Parte: string): string;
var
  Base: string;
  digito: integer;
begin
  Base:='';
 digito:=StrToInt(Parte[1]);
 if digito=0 then
  Base:=''
 else
  Base:=Centenas[digito];
 if (digito = 1) and (Parte > '100') then
  Base:='CENTO';
 Digito:=StrToInt(Parte[2]);
 if digito = 1 then
  begin
   Digito:=StrToInt(Parte[3]);
   if Base <> '' then
    Base:=Base + ' E ';
   Base:=Base + Dez[Digito];
  end
 else
  begin
   if (Base <> '') and (Digito > 0) then
    Base:=Base+' E ';
   if Digito > 1 then
    Base:=Base + Dezenas[digito];
   Digito:=StrToInt(Parte[3]);
   if Digito > 0 then
    begin
     if Base <> '' then Base:=Base+' E ';
     Base:=Base+Unidades[Digito];
    end;
  end;
 Result:=Base;
end;

function TFIN_FM_M_ECH.Extenso(Valor: double): string;
var
  ComoTexto: string;
  Parte: string;
begin
  Result:='';
 ComoTexto:=FloatToStrF(Abs(Valor),ffFixed,18,2);
// Acrescenta zeros a esquerda ate 12 digitos
 while length(ComoTexto) < 15 do
  Insert('0',ComoTexto,1);
// Retira caracteres a esquerda para o máximo de 12 digitos
 while length(ComoTexto) > 15 do
  delete(ComoTexto,1,1);

// Calcula os bilhões
 Parte:=Ext3(copy(ComoTexto,1,3));
 if StrToInt(copy(ComoTexto,1,3)) = 1 then
  Parte:=Parte + ' BILHAO'
 else
  if Parte <> '' then
   Parte:=Parte + ' BILHOES';
 Result:=Parte;

// Calcula os nilhões
 Parte:=Ext3(copy(ComoTexto,4,3));
 if Parte <> '' then
  begin
   if Result <> '' then
    Result:=Result+', ';
   if StrToInt(copy(ComoTexto,4,3)) = 1 then
    Parte:=Parte + ' MILHAO'
   else
    Parte:=Parte + ' MILHOES';
   Result:=Result + Parte;
  end;

// Calcula os nilhares
 Parte:=Ext3(copy(ComoTexto,7,3));
 if Parte <> '' then
  begin
   if Result <> '' then
    Result:=Result + ', ';
   Parte:=Parte + ' MIL';
   Result:=Result + Parte;
  end;

// Calcula as unidades
 Parte:=Ext3(copy(ComoTexto,10,3));
 if Parte <> '' then
  begin
   if Result <> '' then
    if Frac(Valor) = 0 then
     Result:=Result + ' E '
    else
     Result:=Result + ', ';
   Result:=Result + Parte;
  end;

// Acrescenta o texto da moeda
 if Int(Valor) = 1 then
  Parte:=' ' + MoedaSingular
 else
  Parte:=' ' + MoedaPlural;
 if copy(ComoTexto,7,6) = '000000' then
  Parte:='DE ' + MoedaPlural;
 Result:=Result + Parte;

// Se o valor for zero, limpa o resultado
 if int(Valor) = 0 then Result:='';

//Calcula os centavos
 Parte:=Ext3('0'+copy(ComoTexto,14,2));
 if Parte <> '' then
  begin
   if Result <> '' then
    Result:=Result + ' E ';
   if Parte = Unidades[1] then
    Parte:=Parte + ' '+CentSingular
   else
    Parte:=Parte + ' '+CentPlural;
   Result:=Result + Parte;
  end;

// Se o valor for zero, assume a constante ZERO
 if Valor = 0 then
  Result:=Zero;
end;

procedure TFIN_FM_M_ECH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_M_ECH);
end;

procedure TFIN_FM_M_ECH.FormShow(Sender: TObject);
begin
  inherited;
  dpkData.Date := xDataSis;
end;

function TFIN_FM_M_ECH.MesExt(Mes: Word): string;
const meses : array[0..11] of PChar =
('Janeiro', 'Fevereiro', 'Março', 'Abril',
'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro',
'Outubro', 'Novembro', 'Dezembro');
begin
  result := meses[mes-1];
end;

function TFIN_FM_M_ECH.Repete(Caractere: char; nCaracteres: integer): string;
var n : integer; CadeiaCar : string;
begin
  CadeiaCar := '';
  for n := 1 to nCaracteres do
    CadeiaCar := CadeiaCar + Caractere;
  Result := CadeiaCar;
end;

procedure TFIN_FM_M_ECH.rgImpressaoClick(Sender: TObject);
begin
  inherited;
  if rgimpressao.ItemIndex = 1 then
    Label8.Caption := 'cm'
  else
    Label8.Caption := 'mm';


end;

function TFIN_FM_M_ECH.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (dpkData.Text = '  /  /    ') then
    begin
      mens := mens +  '.A data deve ser preenchida.' + #13;
    end;

  if (txtValor.Text = '') then
    begin
      mens := mens +  '."Valor" deve ser preenchido.' + #13;
    end;

  if (txtNominal.Text = '') then
    begin
     // mens := mens +  '."Nominal a" deve ser preenchido.' + #13;
    end;

  if (txtnumero.Text = '') then
    begin
     // mens := mens +  '."Nº do Cheque" deve ser preenchido.' + #13;
    end;

  if (txtultiliza.Text = '') then
    begin
      //mens := mens +  '."Ultilizado para" deve ser preenchido.' + #13;
    end;

  if (txtBanco.Text = '') then
    begin
     // mens := mens +  '."Nome do Banco" deve ser preenchido.' + #13;
    end;

  if (txtagencia.Text = '') then
    begin
     // mens := mens +  '."Agênci" deve ser preenchida.' + #13;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

end.
