unit uClientRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Types, REST.Client,System.JSON, REST.Json,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Buttons,
  REST.Response.Adapter;

type
   TCliente = class
  private
    Fid: integer;
    Fnome: string;
    procedure Setid(const Value: integer);
    procedure Setnome(const Value: string);
  published
     property id: integer read Fid write Setid;
     property nome: string read Fnome write Setnome;
   end;


type
  TForm2 = class(TForm)
    Memo1: TMemo;
    btnGet: TBitBtn;
    btnPost: TBitBtn;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    BitBtn1: TBitBtn;
    procedure btnGetClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarClientRest;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.btnGetClick(Sender: TObject);
var
  VCliente: TCliente;
  VJSONObject: TJSONObject;
  VJSONPair: TJSONPair;
  VJsonArray: TJSONArray;
  texto: string;
  LJsonValue,LItem: TJSONValue;
begin
//  CarregarClientRest;
    RESTRequest1.Resource := 'perfil';
    RESTRequest1.Method := TRESTRequestMethod.rmGET;

  try

  RESTRequest1.Execute;
  except
    on e: exception do
       showmessage(e.Message);

  end;

  // VJSONObject := RESTResponse1.JSONValue as TJSONObject;
  //TJSON.ObjectToJsonObject

  // VJSONObject := RESTResponse1.JSONText as TJSONObject;

  //texto := '{"id":123,"nome":"max"}';
  showmessage(RESTResponse1.JSONText);
  texto := RESTResponse1.JSONText;
//  texto := StringReplace(texto,'[','',[rfReplaceAll]);
//  texto := StringReplace(texto,']','',[rfReplaceAll]);

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(texto),0) as TJSONArray;


  {showmessage(VJSONObject.toString);

  // showmessage(RESTResponse1.JSONText);

  VJSONPair := VJSONObject.Get(0);

  ShowMessage(VJSONPair.ToString);

 // VJsonArray := VJSONPair.JsonValue as TJSONArray;}

  VCliente := TJson.JsonToObject<TCliente>(VJsonArray.Get(0).toJSON);

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
        Memo1.Lines.Add(Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
    end;


  //VCliente := TJson.JsonToObject<TCliente>(VJSONObject,[joDateIsUTC]);

  try
   // showmessage(VCliente.id.ToString + ' - ' + VCliente.Nome);
  finally
    FreeAndNil(VCliente);
  end;

end;

procedure TForm2.btnPostClick(Sender: TObject);
var
  VCliente: TCliente;
  VJSONObject: TJSONObject;
  lista: TJSONArray;
  jso: TJSONObject;

  str: String;
begin

//  str := '{"id_pefil_cli":35,"descricao":"perfil35"}';
  str := '[{"id":"1","descricao":"CONSUMIDOR"},{"id":"2","descricao":"ORGAO PUBLICO"},{"id":"3","descricao":"EMPRESAS"}]';
  lista := TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(str),0) as TJSONArray;

//  RESTRequest1.Resource := 'perfil';
//  RESTRequest1.Method := TRESTRequestMethod.rmPOST;
//  RESTRequest1.AddBody(lista.toString, ContentTypeFromString('application/json'));;
  RESTRequest1.AddBody(lista.ToString(), ContentTypeFromString('application/json'));;
  RESTRequest1.Execute;



{
  RESTRequest1.Method := TRESTRequestMethod.rmPOST;

  VCliente := TCliente.Create;
  try
    VCliente.id := 1;
    VCliente.Nome := 'Teste';

    VJSONObject := TJson.ObjectToJsonObject(VCliente);

    CarregarClientRest;
    RESTRequest1.Resource := '';
    RESTRequest1.Method := TRESTRequestMethod.rmPOST;
//    RESTRequest1.AddBody(VJSONObject.toString, ContentTypeFromString('aplication/json'));;


   {
    RESTRequest1.Execute;

  finally
    FreeAndNil(VCliente);
  end;           }
end;

procedure TForm2.CarregarClientRest;
begin
  {RESTClient1.ResetToDefaults;
  RESTRequest1.ResetToDefaults;
  RESTResponse1.ResetToDefaults;
  RESTClient1.BaseURL := 'http://192.168.254.13:8000/api/v1';}

  Memo1.Text := EmptyStr;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

{ TCliente }

procedure TCliente.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TCliente.Setnome(const Value: string);
begin
  Fnome := Value;
end;

end.
