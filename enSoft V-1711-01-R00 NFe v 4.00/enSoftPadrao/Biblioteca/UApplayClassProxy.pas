unit UApplayClassProxy;

{*******************************************************}
{                                                       }
{               Delphi Runtime Library                  }
{                                                       }
{       Marco Salles . marcosalles.wordpress.br         }
{                                                       }
{                   Licença Livre                       }
{                                                       }
{*******************************************************}
{                TClientApplyUpdates
Objetivo : Encapsular o controle Transacional da Aplicação
Cliente . que consumira apenas um método do Servidor
Requisitos: Que o Servidor exporte e que tenha previamente
definido o metodo ApplyUpdates(Delta: OleVariant)
Tecnologia empregada : Dbexpress , Delphi 2010 / DelphiXe
ps)A utilização da classe é de inteira responsabilidade de
quem a utiliza . Recomendável fazer exaustivos testes em
ambiente crítico de trabalho
{*******************************************************}
{    UApplayClassProxy Utilities Unit  julho/2011       }
{*******************************************************}

interface

uses
  DbClient,SysUtils;

Type
  TDadosMetodo_Code_Nill = Exception ;

Type
   TClientAllApplyUpdates = class
     private
        class function ExecutarApplyUpdates(
             objeto:Tobject;nome:string;delta:OleVariant):boolean;
    public
        class procedure Execute(
            ObjClassProx:TObject;FColectionsCds:Array of TClientDataSet);
end;

implementation

uses
   dialogs,Variants,Rtti,Db;

Type
   TMinhaFuncaoApplyUpdate = function(delta:OleVariant):boolean of object;

const
   cNome_Metodo_Servidor = 'AllApplyUpdates';

{ TClientApplyUpdates }

class function TClientAllApplyUpdates.ExecutarApplyUpdates(
    objeto: Tobject;nome:string;delta: OleVariant): boolean;
var
     //uma estrutura de dados formada por dois ponteiros,
     //uma para o objeto e um para o método
  DadosMetodo: TMethod;
     //variavel do tipo método para podermos chama-lo
  CorpoMetodo:TMinhaFuncaoApplyUpdate;
     //variaveis de RTTI
  Ct:TRttiContext;
  tipo:TRttitype;
  Met:TRttiMethod;
begin
    //objeto convertido para ponteiro genérico é atribuido
    //a sessão de dados sa variável  TMethod
  DadosMetodo.Data := Pointer(objeto);
  DadosMetodo.Code:=nil;
   //capturamos o endereço do método por nome.
 tipo:=Ct.GetType(objeto.ClassType);
    for Met in tipo.GetMethods do
      if Met.Name = nome then
         begin
           DadosMetodo.Code:=Met.CodeAddress;
           Break;
         end;
       //se não existir saimos sem fazer nada
    if not Assigned(DadosMetodo.Code) then
      begin
        raise TDadosMetodo_Code_Nill.Create(
             'Erro Interno Classe . O Método "'+
              cNome_Metodo_Servidor+'"'+sLineBreak+
             'não é um método da instância : '+
              objeto.ToString +sLineBreak+
              'Classe Original da Exceção : TDadosMetodo_Code_Nill');
        Exit;
     end;
       //atribuimos nossa estrutura TMethod, formada por ponteiros para métodos,
      // à nossa variável do tipo método
   CorpoMetodo := TMinhaFuncaoApplyUpdate(DadosMetodo);
    //chamamos o método
   result:=CorpoMetodo(delta);
end;

class procedure TClientAllApplyUpdates.Execute(
        ObjClassProx: TObject;FColectionsCds: array of TClientDataSet);
  var
    Dados:Array of Variant;
    i,j:integer;
    executar:boolean;
    Lem:Integer;
begin
Lem:=length(FColectionsCds);
i:=0;
executar:=false;
  while i < Lem do
    begin
       if FColectionsCds[i].State in [DsEdit,DsInsert] then
          FColectionsCds[i].Post;
     i:=i+1;
    end;
i:=0;
j:=0;
    while J < Lem do
      begin
        if FColectionsCds[j].changecount > 0 then
          begin
            Setlength(Dados, length(Dados)+2);
            Dados[i]:=FColectionsCds[j].ProviderName;
            i:=i+1;
            Dados[i]:=FColectionsCds[j].Delta;
            i:=i+1;
            executar:=true;
         end;
       j:=j+1;
     end;
if not executar then
   exit;
try
   if TClientAllApplyUpdates.ExecutarApplyUpdates(
     ObjClassProx,cNome_Metodo_Servidor,varArrayof(Dados)) then
     begin
      for I := low(FColectionsCds) to High(FColectionsCds) do
      FColectionsCds[i].MergeChangeLog;
      Showmessage('Gravação realizada com sucesso.');
    end
  else
     raise Exception.Create('Error Message');
  except
     on e:exception do
      begin
        raise
      end;
  end;
end;
end.
