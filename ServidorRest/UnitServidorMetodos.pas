unit UnitServidorMetodos;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter;

type
{$METHODINFO ON}
  TServidorMetodos = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function updateEnviarFrutas(const Dados: TJSONArray): TJSONObject;
    function BuscarFrutas: TJSONObject;
  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils;

function TServidorMetodos.BuscarFrutas: TJSONObject;
var
  Resultado: TJSONObject;
  ListaFrutas: TJSONArray;
  Fruta1, Fruta2: TJSONObject;
begin
  Resultado := TJSONObject.Create;
  ListaFrutas := TJSONArray.Create;

  // Fruta 1
  Fruta1 := TJSONObject.Create;
  Fruta1.AddPair('nome', 'Maçã');
  Fruta1.AddPair('cor', 'Vermelha');
  Fruta1.AddPair('quantidade', TJSONNumber.Create(10));
  Fruta1.AddPair('preco', TJSONNumber.Create(2.5));
  ListaFrutas.AddElement(Fruta1);

  // Fruta 2
  Fruta2 := TJSONObject.Create;
  Fruta2.AddPair('nome', 'Banana');
  Fruta2.AddPair('cor', 'Amarela');
  Fruta2.AddPair('quantidade', TJSONNumber.Create(6));
  Fruta2.AddPair('preco', TJSONNumber.Create(1.8));
  ListaFrutas.AddElement(Fruta2);

  // Adiciona a lista ao resultado final
  Resultado.AddPair('frutas', ListaFrutas);
  Result := Resultado;
end;

function TServidorMetodos.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServidorMetodos.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServidorMetodos.updateEnviarFrutas(const Dados: TJSONArray): TJSONObject;
var
  i: Integer;
  Obj, FrutaRetorno: TJSONObject;
  ListaResultado: TJSONArray;
  Nome, Cor: string;
  Quantidade: Integer;
  Preco: Double;
begin
  Result := TJSONObject.Create;
  ListaResultado := TJSONArray.Create;

  for i := 0 to Dados.Count - 1 do
  begin
    if not (Dados.Items[i] is TJSONObject) then
      Continue;

    Obj := Dados.Items[i] as TJSONObject;

    // Captura os campos
    Nome := Obj.GetValue<string>('nome');
    Cor := Obj.GetValue<string>('cor');
    Quantidade := Obj.GetValue<Integer>('quantidade');
    Preco := Obj.GetValue<Double>('preco');

    // Cria objeto de resposta para essa fruta
    FrutaRetorno := TJSONObject.Create;
    FrutaRetorno.AddPair('nome', Nome);
    FrutaRetorno.AddPair('status', 'Recebida com sucesso');

    ListaResultado.AddElement(FrutaRetorno);
  end;

  Result.AddPair('resultado', ListaResultado);
end;

end.

