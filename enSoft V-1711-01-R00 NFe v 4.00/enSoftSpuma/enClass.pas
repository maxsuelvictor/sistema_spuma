unit enClass;


interface
Uses Generics.Collections;

type
  TTipoMovEstoque = class
    Codigo: String;
    Descricao: String;
  end;


implementation
var
  Dictionary: TDictionary<String, TTipoMovEstoque>;
  TipoEstoque, Value: TTipoMovEstoque;
  Key: String;

procedure getTipoEstoque;

begin
  Dictionary := TDictionary<String, TTipoMovEstoque>.Create;

  TipoEstoque := TTipoMovEstoque.Create;
  TipoEstoque.Codigo := 'E';
  TipoEstoque.Descricao := 'Entrada';
  Dictionary.Add('E', TipoEstoque);

  TipoEstoque := TTipoMovEstoque.Create;
  TipoEstoque.Codigo := 'D';
  TipoEstoque.Descricao := 'Devolução de Compra';
  Dictionary.Add('D', TipoEstoque);

  TipoEstoque := TTipoMovEstoque.Create;
  TipoEstoque.Codigo := 'S';
  TipoEstoque.Descricao := 'Saida';
  Dictionary.Add('S', TipoEstoque);

  TipoEstoque := TTipoMovEstoque.Create;
  TipoEstoque.Codigo := 'R';
  TipoEstoque.Descricao := 'Devolução de Venda';
  Dictionary.Add('R', TipoEstoque);

end;




end.
