unit enFunc;

interface
   Uses Data.DB, SysUtils,StrUtils,Printers,WinSpool,forms,stdctrls,Classes,
        System.Variants,Vcl.Dialogs,DateUtils, System.UITypes, Vcl.Controls,
        IdSMTP, IdMessage,   IdSSLOpenSSL, windows, IdIOHandler,System.Math;

Type
   TEnorth = class
    private
        class function SomaTitulo(DataSet:TDataSet;campo:string):currency;
    public
        class function Soma(DataSet:TDataSet;campo:string):currency;
        class function NomeComputador(): string;
        class function NomeUsuario(): string;
        class function ValidarChaveCTe(Chave:string): real;

end;

function VerCNPJ(Dado : string) : boolean;
function VerCPF(CPF_Text: string): boolean;
function MontaCheveNfe(cuf:string;emissao:TDateTime;cnpj:string;modelo:string;serie:string;nnf:integer;cnf:integer;formaEmis:string):string;
function ValidarChaveNFe(const ChaveNFe: string):boolean;
function Alltrim(Text : string) : string;
function StrZero(Num : Real ; Zeros,Deci: integer): string;
function chInt ( ch: Char ): ShortInt;
function intCh ( int: ShortInt ): Char;
function DvModulo11( str: String ): Char;
function MontaData(Dia: word;Mes:Word; Ano:Word): TDateTime;
Function RetornaAno(Data:TdateTime) : Word;
Function RetornaMes(Data:TdateTime) : Word;
Function RetornaDia(Data:TdateTime) : Word;
Function RemoveChars(const Chrs : array of Char; const aText : string) : string;
function IsValidEmail(const Email: string) : Boolean;
function Rtrim(Text : string) : string;
Function Extenso(Valor: double):string;
Function DiaDaSemana(i: word; tipo: integer): string;
Function NomeDoMes(i: word; tipo: integer): string;
Function DataExtenso(dt: TDateTime):string;
procedure OpenForm(FClass: TFormClass; var Instance);
function GeraEspEsq(Const texto: String; QtdeEsp: Integer):String;
function GeraEspDir(Const texto: String; QtdeEsp: Integer):String;
function Dc_MessageDlgCheck(Msg: string; AType: TMsgDlgType; AButtons:
         TMsgDlgButtons;IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean; Checar:
         Boolean; MsgCheck: string; Funcao: TProcedure): Word;
function Repete(Caractere : char; nCaracteres : integer) : string;



implementation



class function TEnorth.NomeComputador(): string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

class function TEnorth.NomeUsuario(): string;
const
  Max = 254;
var
  Nome: string;
  Tam: DWORD;
begin
  Tam := Max - 1;
  SetLength(Nome,Max);
  GetUserName(PChar(Nome),Tam);
  SetLength(Nome,Tam);
  result := Nome;
end;

//Composição da CTe
{Código da UF - Código da UF do emitente do Documento Fiscal (Tamanho 2 caracteres)
 Ano e Mês da Emissão (AAMM) - Ano e Mês de emissão do CT-e (Tamanho 4 caracteres)
 CNPJ - CNPJ do emitente (Tamanho 14 caracteres)
 Modelo - Modelo do Documento Fiscal (Tamanho 2 caracteres)
 Série - Série do Documento Fiscal (Tamanho 3 caracteres)
 Numero do CTe - Número do Documento Fiscal (Tamanho 9 caracteres)
 Código Numérico - Código Numérico que compõe a Chave de Acesso (Tamanho 9 caracteres)
 Digito - Dígito Verificador da Chave de Acesso (Tamanho 1 caractere
}

class function TEnorth.ValidarChaveCTe(Chave:string): real;
Var
 // Essas serão as variáveis responsáveis por armazenar cada numero da chave
 V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40,V41, V42, V43 : Real;
 // as variáveis abaixo serão responsáveis por armazenar os resultados das multiplicações
 R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, R32, R33, R34, R35, R36, R37, R38, R39, R40, R41, R42, R43 : Real;
 //Utilizaremos as variáveis abaixo para formulação do resultado
 Soma, Divisao, Resultado :real;
 SomaI: integer;
begin

  // Através do código abaixo, vamos separar os valores com a “função Copy”da chave de acesso
  V1 := StrToFloat(Copy(Chave,1,1));
  V2 := StrToFloat(Copy(Chave,2,1));
  V3 := StrToFloat(Copy(Chave,3,1));
  V4 := StrToFloat(Copy(Chave,4,1));
  V5 := StrToFloat(Copy(Chave,5,1));
  V6 := StrToFloat(Copy(Chave,6,1));
  V7 := StrToFloat(Copy(Chave,7,1));
  V8 := StrToFloat(Copy(Chave,8,1));
  V9 := StrToFloat(Copy(Chave,9,1));
  V10 := StrToFloat(Copy(Chave,10,1));
  V11 := StrToFloat(Copy(Chave,11,1));
  V12 := StrToFloat(Copy(Chave,12,1));
  V13 := StrToFloat(Copy(Chave,13,1));
  V14 := StrToFloat(Copy(Chave,14,1));
  V15 := StrToFloat(Copy(Chave,15,1));
  V16 := StrToFloat(Copy(Chave,16,1));
  V17 := StrToFloat(Copy(Chave,17,1));
  V18 := StrToFloat(Copy(Chave,18,1));
  V19 := StrToFloat(Copy(Chave,19,1));
  V20 := StrToFloat(Copy(Chave,20,1));
  V21 := StrToFloat(Copy(Chave,21,1));
  V22 := StrToFloat(Copy(Chave,22,1));
  V23 := StrToFloat(Copy(Chave,23,1));
  V24 := StrToFloat(Copy(Chave,24,1));
  V25 := StrToFloat(Copy(Chave,25,1));
  V26 := StrToFloat(Copy(Chave,26,1));
  V27 := StrToFloat(Copy(Chave,27,1));
  V28 := StrToFloat(Copy(Chave,28,1));
  V29 := StrToFloat(Copy(Chave,29,1));
  V30 := StrToFloat(Copy(Chave,30,1));
  V31 := StrToFloat(Copy(Chave,31,1));
  V32 := StrToFloat(Copy(Chave,32,1));
  V33 := StrToFloat(Copy(Chave,33,1));
  V34 := StrToFloat(Copy(Chave,34,1));
  V35 := StrToFloat(Copy(Chave,35,1));
  V36 := StrToFloat(Copy(Chave,36,1));
  V37 := StrToFloat(Copy(Chave,37,1));
  V38 := StrToFloat(Copy(Chave,38,1));
  V39 := StrToFloat(Copy(Chave,39,1));
  V40 := StrToFloat(Copy(Chave,40,1));
  V41 := StrToFloat(Copy(Chave,41,1));
  V42 := StrToFloat(Copy(Chave,42,1));
  V43 := StrToFloat(Copy(Chave,43,1));
  // Conforme explicado anteriormente neste artigo, faremos a multiplicação por  2,3,4,....9
  R43 := V43*2;
  R42 := V42*3;
  R41 := V41*4;
  R40 := V40*5;
  R39 := V39*6;
  R38 := V38*7;
  R37 := V37*8;
  R36 := V36*9;
  R35 := V35*2;
  R34 := V34*3;
  R33 := V33*4;
  R32 := V32*5;
  R31 := V31*6;
  R30 := V30*7;
  R29 := V29*8;
  R28 := V28*9;
  R27 := V27*2;
  R26 := V26*3;
  R25 := V25*4;
  R24 := V24*5;
  R23 := V23*6;
  R22 := V22*7;
  R21 := V21*8;
  R20 := V20*9;
  R19 := V19*2;
  R18 := V18*3;
  R17 := V17*4;
  R16 := V16*5;
  R15 := V15*6;
  R14 := V14*7;
  R13 := V13*8;
  R12 := V12*9;
  R11 := V11*2;
  R10 := V10*3;
  R9 := V9*4;
  R8 := V8*5;
  R7 := V7*6;
  R6 := V6*7;
  R5 := V5*8;
  R4 := V4*9;
  R3 := V3*2;
  R2 := V2*3;
  R1 := V1*4;
  // Somaremos os valores obtidos dos resultados das multiplicações
  Soma := R1+ R2+ R3+ R4+ R5+ R6+ R7+ R8+ R9+ R10+ R11+ R12+ R13+ R14+ R15+ R16+ R17+ R18+ R19+ R20+R21+ R22+ R23+ R24+ R25+ R26+ R27+ R28+ R29+ R30+R31+ R32+ R33+ R34+ R35+ R36+ R37+ R38+ R39+ R40+ R41+ R42+ R43;
  SomaI := Trunc(Soma);
  Divisao := (SomaI mod 11);
  Resultado := 11-Divisao;
  // Compara se o resultado é igual a 1 (Se for deverá ser = 0)
  if  Resultado >= 10 then  // Esaú estava dando error com (Resultado = 1) quando o "resultado" dava 10 ou 11;
     begin
       result := 0;
     end
  else
     begin
       result := Resultado;
     end;
end;


procedure OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;


class function TEnorth.SomaTitulo(DataSet:TDataSet;campo:string): Currency;
Var xSoma:currency;
begin
 xSoma:=0;
 Dataset.First;
 while not Dataset.Eof do
   begin
     xSoma:=xSoma+Dataset.FieldByName(campo).AsCurrency;
     dataset.Next;
   end;
 result:= xSoma;
end;

class function TEnorth.Soma(DataSet:TDataSet;campo:string):currency;
begin
  result :=TEnorth.SomaTitulo(DataSet,campo);
end;



Function Extenso(Valor: double):string;
  const
    Centenas: array[1..9] of string[12]=('CEM','DUZENTOS','TREZENTOS','QUATROCENTOS',
                                         'QUINHENTOS','SEISCENTOS','SETECENTOS',
                                         'OITOCENTOS','NOVECENTOS');
    Dezenas : array[2..9] of string[10]=('VINTE','TRINTA','QUARENTA','CINQUENTA',
                                         'SESSENTA','SETENTA','OITENTA','NOVENTA');
    Dez     : array[0..9] of string[10]=('DEZ','ONZE','DOZE','TREZE','QUATORZE',
                                         'QUINZE','DEZESSEIS','DEZESSETE',
                                         'DEZOITO','DEZENOVE');
    Unidades: array[1..9] of string[10]=('UM','DOIS','TRES','QUATRO','CINCO',
                                         'SEIS','SETE','OITO','NOVE');
    MoedaSingular = 'REAL';
    MoedaPlural   = 'REAIS';
    CentSingular  = 'CENTAVO';
    CentPlural    = 'CENTAVOS';
    Zero          = 'ZERO';

  var
    ComoTexto: string;
    Parte: string;
  Function Ext3(Parte:string):string;
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
begin
  Result:='';
  ComoTexto:=FloatToStrF(Abs(Valor),ffFixed,18,2);
  // Acrescenta zeros a esquerda ate 12 digitos
  while length(ComoTexto) < 15 do Insert('0',ComoTexto,1);
  // Retira caracteres a esquerda para o máximo de 12 digitos
  while length(ComoTexto) > 15 do delete(ComoTexto,1,1);

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

Function NomeDoMes(i: word; tipo: integer): string;
const mes: array[1..12] of string = ('janeiro', 'fevereiro',
  'março', 'abril', 'maio', 'junho', 'julho', 'agosto',
  'setembro', 'outubro', 'novembro', 'dezembro');
begin
  if (tipo = 0) then
    NomeDoMes := mes[i] // extenso
// a função "copy" retorna os 3 primeiros caracteres de "mes[i]"
  else
    NomeDoMes := copy(mes[i], 1, 3); // abreviado end;
end;

function DiaDaSemana(i: word; tipo: integer): string;
const diasem: array[0..6] of string = ('domingo', 'segunda-feira',
  'terça-feira', 'quarta-feira', 'quinta-feira', 'sexta-feira',
  'sábado');
begin
  if (tipo = 0) then
    DiaDaSemana := diasem[i] // extenso
// a função "copy" retorna os 3 primeiros caracteres de "diasem[i]"
  else
    DiaDaSemana := copy(diasem[i], 1, 3);
end;

Function DataExtenso(dt: TDateTime):string;
var
  d,m,a,ds:Word;
begin
  // retorna os valores ano, mês e dia da variável "dt"
  DecodeDate(dt, a, m, d); ds := DayOfTheWeek(dt);
  DataExtenso := IntToStr(d) + ' de ' +
  NomeDoMes(m, 0) + ' de ' + IntToStr(a);

  // implemendado com dia da semana
  {DataExtenso := IntToStr(d) + ' de ' +
  NomeDoMes(m, 0) + ' de ' + IntToStr(a)+ ').'; + ' (' +
  DiaDaSemana(ds, 1) + ').';}
end;

function Rtrim(Text : string) : string;
var n : integer;
begin
for n := length(Text) downto 1 do
    begin
       if Copy(Text,n,1) <> ' ' then break;
       Delete(Text,n,1);
    end;
Result := Text;
end;


function VerCNPJ(Dado : string) : boolean;
var  D1            : array[1..12] of byte;
     I,
     DF1,
     DF2,
     DF3,
     DF4,
     DF5,
     DF6,
     Resto1,
     Resto2,
     PrimeiroDigito,
     SegundoDigito : integer;
begin
     Result := true;
     if Length(Dado) = 14 then
     begin
          for I := 1 to 12 do
               if Dado[I] in ['0'..'9'] then
                    D1[I] := StrToInt(Dado[I])
               else
                    Result := false;
          if Result then
          begin
               DF1 := 0;
               DF2 := 0;
               DF3 := 0;
               DF4 := 0;
               DF5 := 0;
               DF6 := 0;
               Resto1 := 0;
               Resto2 := 0;
               PrimeiroDigito := 0;
               SegundoDigito := 0;
               DF1 := 5*D1[1] + 4*D1[2] + 3*D1[3] + 2*D1[4] + 9*D1[5] + 8*D1[6] +
                      7*D1[7] + 6*D1[8] + 5*D1[9] + 4*D1[10] + 3*D1[11] + 2*D1[12];
               DF2 := DF1 div 11;
               DF3 := DF2 * 11;
               Resto1 := DF1 - DF3;
               if (Resto1 = 0) or (Resto1 = 1) then
                    PrimeiroDigito := 0
               else
                    PrimeiroDigito := 11 - Resto1;
               DF4 := 6*D1[1] + 5*D1[2] + 4*D1[3] + 3*D1[4] + 2*D1[5] + 9*D1[6] +
                      8*D1[7] + 7*D1[8] + 6*D1[9] + 5*D1[10] + 4*D1[11] + 3*D1[12] +
                      2*PrimeiroDigito;
               DF5 := DF4 div 11;
               DF6 := DF5 * 11;
               Resto2 := DF4 - DF6;
               if (Resto2 = 0) or (Resto2 = 1) then
                    SegundoDigito := 0
               else
                    SegundoDigito := 11 - Resto2;
               if (PrimeiroDigito <> StrToInt(Dado[13])) or
                  (SegundoDigito <> StrToInt(Dado[14])) then
                    Result := false;
          end;
     end
     else
          if Length(Dado) <> 0 then
               Result := false;
end; {TESTA_CGC}

function VerCPF(CPF_Text: string): boolean;
var n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
       d1,d2: integer;
       digitado, calculado: string;
begin
   n1:=StrToInt(CPF_Text[1]);
   n2:=StrToInt(CPF_Text[2]);
   n3:=StrToInt(CPF_Text[3]);
   n4:=StrToInt(CPF_Text[4]);
   n5:=StrToInt(CPF_Text[5]);
   n6:=StrToInt(CPF_Text[6]);
   n7:=StrToInt(CPF_Text[7]);
   n8:=StrToInt(CPF_Text[8]);
   n9:=StrToInt(CPF_Text[9]);
   d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1:=11-(d1 mod 11);
   if d1>=10 then d1:=0;
      d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
   d2:=11-(d2 mod 11);
   if d2>=10 then
      d2:=0;
   calculado:=inttostr(d1)+inttostr(d2);
   digitado:=CPF_Text[10]+CPF_Text[11];
   if calculado=digitado then
       result:=true
   else
       result:=false;
   case AnsiIndexStr(cpf_text,['00000000000','11111111111','22222222222','33333333333','44444444444',
                               '55555555555','66666666666','77777777777','88888888888','99999999999']) of
        0..9:   result:=False;
   end;
end;

function MontaCheveNfe(cuf:string;emissao:TDateTime;cnpj:string;modelo:string;serie:string;nnf:integer;cnf:integer;formaEmis:string):string;
Var Mes,Ano,xChave,xnnf,xcnf,xData,xNumero,xDig: String;
begin
  xNnf:=strzero(nnf,9,0);
  xCnf:=strzero(Cnf,8,0);
  cnpj := RemoveChars(['-', '/', '.'], cnpj);
  if Length(cnpj)<14 Then
     cnpj:= '000'+cnpj;
  Mes := strzero(RetornaMes(emissao),2,0);
  Ano := copy(inttostr(RetornaAno(emissao)),3,2);
  xData:=Ano+Mes;
  if Serie <> '' then
    serie:=strzero(strtoint(Serie),3,0)
  else
    begin
      Showmessage('Não foi possivel confirmar a chave da nota fiscal numero: '+ xNnf+', pois o numero de "serie" esta vazio!');
      abort;
    end;
  xNumero:=cuf+xData+cnpj+Modelo+Serie+xNnf+formaEmis+xCnf;
  xDig:=DvModulo11(xNumero);
  xChave:=xNumero+xDig;
  result:=xChave;
end;

function ValidarChaveNFe(const ChaveNFe: string):boolean;
const
  PESO : Array[0..43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno : boolean;
  aChave  : Array[0..43] of Char;
  Soma    : Integer;
  Verif   : Integer;
  I       : Integer;
begin
  Retorno := false;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');

      StrPCopy(aChave,StringReplace(ChaveNFe,' ', '',[rfReplaceAll]));
      Soma := 0;
      for I := Low(aChave) to High(aChave) do
        Soma := Soma + (StrToInt(aChave[i]) * PESO[i]);

      if Soma = 0 then
        raise Exception.Create('');

      Soma := Soma - (11 * (Trunc(Soma / 11)));
      if (Soma = 0) or (Soma = 1) then
        Verif := 0
      else
        Verif := 11 - Soma;

      Retorno := Verif = StrToInt(aChave[43]);
    except
      Retorno := false;
    end;
  finally
    Result := Retorno;
  end;
end;

function Alltrim(Text : string) : string;
begin
while Pos(' ',Text) > 0 do
      Delete(Text,Pos(' ',Text),1);
Result := Text;
end;

function StrZero(Num : Real ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer : string;
begin
   Str(Num:Zeros:Deci, res);
   res := Alltrim(res);
   tam := length(res);
   zer := '';
   for z := 1 to (Zeros-tam) do zer := zer + '0';
   Result := zer+res;
end;

{ chInt - Converte um caracter numérico para o valor inteiro correspondente. }
function chInt ( ch: Char ): ShortInt;
begin
Result := Ord ( ch ) - Ord ( '0' );
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter numérico correspondente. }
function intCh ( int: ShortInt ): Char;
begin
Result := Chr ( int + Ord ( '0' ) );
end;

{ DvModulo11 - Retorna 1 dv calculado pelo método do modulo 11 padrão. }
function DvModulo11( str: String ): Char;
var soma, fator, i: Integer;
begin
soma := 0;
fator := 2;
for i := Length ( str ) downto 1 do
begin
soma := soma + chInt ( str[i] ) * fator;
Inc ( fator );
if fator = 10 then
fator := 2;
end;
soma := 11 - ( soma mod 11 );
if soma >= 10 then
Result := '0'
else
Result := intCh ( soma );
end;

// Retorna o Primeiro dia do mes de uma determinada
function MontaData(Dia: word;Mes:Word; Ano:Word): TDateTime;
Var dt:TDateTime;
begin
dt := EncodeDate(Ano,Mes,Dia);
Result := dt;
end;

Function RetornaAno(Data:TdateTime) : Word;
Var
  Mes,Ano,Dia: Word;

Begin
  DecodeDate(Data, Ano, Mes, Dia);
  result:=Ano;
end;

Function RetornaMes(Data:TdateTime) : Word;
Var
  Mes,Ano,Dia: Word;

Begin
  DecodeDate(Data, Ano, Mes, Dia);
  result:=Mes;
end;

Function RetornaDia(Data:TdateTime) : Word;
Var
  Mes,Ano,Dia: Word;

Begin
  DecodeDate(Data, Ano, Mes, Dia);
  result:=Dia;
end;

function RemoveChars(const Chrs : array of Char; const aText : string) : string;
var
  I : Integer;
begin
  Result := aText;
  for I := Low(Chrs) to High(Chrs) do
    Result := ReplaceStr(Result, Chrs[I], '');
end;

function IsValidEmail(const Email: string) : Boolean;
const
  InvalidChar = 'àâêôûãõáéíóúçüñýÀÂÊÔÛÃÕÁÉÍÓÚÇÜÑÝ*;:⁄\|#$%&*§!()][{}<>˜ˆ´ªº+¹²³';
var
  I: Integer;
  C: Integer;
begin
  // Não existe email com menos de 8 caracteres.
  if Length(Email) < 8 then
  begin
    Result := False;
    Exit;
  end;

  // Verificando se há somente um @
  if ((Pos( '@', Email) = 0) or
  (PosEx( '@', Email, Pos('@', Email) + 1) > 0)) then
  begin
    Result := False;
    Exit;
  end;

  // Verificando se no m�nimo há um ponto
  if (Pos('.', Email) = 0) then
  begin
    Result := False;
    Exit;
  end;

  // Não pode começar ou terminar com @ ou ponto
  if (Email[1] in ['@', '.']) or
  (Email[Length(Email)] in ['@', '.']) then
  begin
    Result := False;
    Exit;
  end;

  // O @ e o ponto não podem estar juntos
  if (Email[Pos( '@', Email) + 1] = '.') or
  (Email[Pos( '@', Email) - 1] = '.') then
  begin
    Result := False;
    Exit;
  end;

  // Testa se tem algum caracter inválido.
  for I := 1 to Length(Email) do
  begin
    for C := 0 to Length(InvalidChar) do
      if (Email[I] = InvalidChar[C]) then
      begin
        Result := False;
        Exit;
      end;
  end;

  // Se não encontrou problemas, retorna verdadeiro
  Result := True;
end;


function GeraEspEsq(const texto: String; QtdeEsp: Integer): String;
var
  i,qtde: integer;
begin

  result := '';
  qtde := QtdeEsp - length(texto);

  if qtde > 0 then
     begin
        for i := 1 to qtde do
          begin
            result := ' ' + texto;
          end;
     end
  else
     begin
       result := texto;
     end;
end;

function GeraEspDir(Const texto: String; QtdeEsp: Integer):String;
var
  i,qtde: integer;
begin

  result := '';
  qtde := QtdeEsp - length(texto);

  if qtde > 0 then
     begin
        result := texto;
        for i := 1 to qtde do
          begin
            result := result + ' ';
          end;
     end
  else
     begin
       result := texto;
     end;
end;

function Dc_MessageDlgCheck(Msg: string; AType: TMsgDlgType; AButtons:
         TMsgDlgButtons;
         IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean; Checar:
         Boolean; MsgCheck: string; Funcao: TProcedure): Word;
var
  I: Integer;
  Mensagem: TForm;
  Check: TCheckBox;
begin
  Check := nil;
  Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
  Mensagem.HelpContext := IndiceHelp;
  with Mensagem do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TButton) then
      begin
        if (TButton(Components[i]).ModalResult = DefButton) then
        begin
          ActiveControl := TWincontrol(Components[i]);
        end;
      end;
    end;
    if Portugues then
    begin
      if Atype = mtConfirmation then
        Caption := 'Confirmação'
      else if AType = mtWarning then
        Caption := 'Aviso'
      else if AType = mtError then
        Caption := 'Erro'
      else if AType = mtInformation then
        Caption := 'Informação';
    end;
  end;
  if Portugues then
  begin
    TButton(Mensagem.FindComponent('YES')).Caption := '&Sim';
    TButton(Mensagem.FindComponent('NO')).Caption := '&Não';
    TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
    TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
    TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
    TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
    TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
    TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
  end;
  if Checar then
  begin
    Mensagem.ClientHeight := Mensagem.ClientHeight + 20;
    Check := TCheckBox.Create(Mensagem);
    Check.Parent := Mensagem;
    Check.Left := 15;
    Check.Top := Mensagem.ClientHeight - 20;
    Check.Visible := True;
    Check.Caption := MsgCheck;
    Check.Width := Mensagem.ClientWidth - 10;
  end;
  Result := Mensagem.ShowModal;
  if Check <> nil then
    if Check.Checked then
      Funcao;
  Mensagem.Free;
end;

function Repete(Caractere : char; nCaracteres : integer) : string;
var n : integer; CadeiaCar : string;
  begin
  CadeiaCar := '';
  for n := 1 to nCaracteres do
      CadeiaCar := CadeiaCar + Caractere;
  Result := CadeiaCar;
end;

end.
