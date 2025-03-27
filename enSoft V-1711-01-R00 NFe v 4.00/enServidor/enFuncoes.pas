unit enFuncoes;

interface
   Uses SysUtils,StrUtils,Printers,WinSpool,forms,stdctrls,Classes,
        IdSMTP, IdMessage,   IdSSLOpenSSL, windows, IdIOHandler;

function VerCNPJ(Dado : string) : boolean;
function VerCPF(numCPF: string): boolean;
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

implementation


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

function VerCPF(numCPF: string): boolean;
var
    cpf: string;
    x, total, dg1, dg2: Integer;
    ret: boolean;
begin
ret:=True;
for x:=1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
        ret:=False;
if ret then
    begin
    ret:=True;
    cpf:='';
    for x:=1 to Length(numCPF) do
        if numCPF[x] in ['0'..'9'] then
            cpf:=cpf + numCPF[x];
    if Length(cpf) <> 11 then
        ret:=False;
    if ret then
        begin
        //1° dígito
        total:=0;
        for x:=1 to 9 do
            total:=total + (StrToInt(cpf[x]) * x);
        dg1:=total mod 11;
        if dg1 = 10 then
            dg1:=0;
        //2° dígito
        total:=0;
        for x:=1 to 8 do
            total:=total + (StrToInt(cpf[x + 1]) * (x));
        total:=total + (dg1 * 9);
        dg2:=total mod 11;
        if dg2 = 10 then
            dg2:=0;
        //Validação final
        if dg1 = StrToInt(cpf[10]) then
            if dg2 = StrToInt(cpf[11]) then
                ret:=True;
        //Inválidos

        case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',

                               '55555555555','66666666666','77777777777','88888888888','99999999999']) of

            0..9:   ret:=False;

        end;

        end
    else
        begin
        //Se não informado deixa passar
        if cpf = '' then
            ret:=True;
        end;
    end;

 result:=ret;

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
  serie:=strzero(strtoint(Serie),3,0);
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
Result := '1'
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


end.
