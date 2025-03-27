
{******************************************************************************}
{** A  uTRidingXmlDataToSql encoding unit                                      }
{******************************************************************************}
{** Written by Marco Salles                                                    }
{** http://www.marcosalles.wordpress.com                                       }
{** Data 04/04/2014                                                            }
{******************************************************************************}
{** Descrição . Esta Unidade sera responsavel por transformar o xmlData vindo
do cliente e decodificar um a um em operações de Insert/deletes/Updates .
A classe é carregada com o TDBXCommand; com um Cds ja Carregado pelo XmlData
Este Cds é Instanciado na Unidade uTAllApplyUpdatesJson e carregado com os
Dados . Esta Unidade criará e adicionara um Campo Calculado . Este campo terá o
Nome de 'UpdateStatus' e servira para Ler o RowState do XML .. Varrerá o RowState
e obtendo o Valor do campo Calculado podemos distinguir entre as operações
de Insertes/Deletes/Updates . Com o dados do ClentDataset e analizando o campo
calculado montamos o Sql correspondente .

ps) Devemos destacar o as Operaçoes de Update e Insertes de campo Blobs
O Update é Implementado utilizando um IF


{******************************************************************************}




unit uTRidingXmlDataToSql;



interface

uses
  Data.DBXCommon , DbClient , Db;

type
 TAddFieldCalculed =class

 public
   const FField_Name='UpdateStatus';
   class procedure  Execute(Cds:TClientDataSet);
 private
  class procedure CalcFields(DataSet: TDataSet);
end;

const
 TUpdateStatus : Array [0..3] of String =('Modified','Inserted','Deleted','UnModified');


implementation

uses
System.SysUtils , System.Classes, System.StrUtils,dialogs ;


{ TRidingXmlDataToSql }



//INSERT INTO



class procedure TAddFieldCalculed.CalcFields(DataSet: TDataSet);
begin
//if DataSet.State = dsInternalCalc then
  with DataSet do
  begin
    case UpdateStatus of
      //   'Modified';
      usModified   : FieldByName(FField_Name).AsString := TUpdateStatus[0];
      //Inserted
      usInserted   : FieldByName(FField_Name).AsString := TUpdateStatus[1];
      // Deleted
      usDeleted    : FieldByName(FField_Name).AsString := TUpdateStatus[2];
      //UnModified
      usUnModified : FieldByName(FField_Name).AsString := TUpdateStatus[3];
    end;
end;
end;

class procedure TAddFieldCalculed.Execute(Cds: TClientDataSet);

var
Field:TStringField;
i:integer;
Memory:TStream; //Aréa de Transfêrencia Memoria . Comento Abaixo
begin
cds.Close;
{ //No FIm da Grid aparecerá o campo UpdateStatus
for i := 0 to cds.FieldDefs.Count - 1 do
begin
  if cds.FindField(cds.FieldDefs[i].Name) = nil then
       cds.FieldDefs[i].CreateField(cds);
end;
}
  Memory:=TMemoryStream.Create; //Instanciação da Variável Strea
  try
  Memory.Position:=0;
 //Salva os Dados do CleinteDataSet na Memória
  cds.SaveToStream(Memory,dfBinary);

  if cds.FindField(FField_Name) = nil then
   begin
    Field := TStringField.Create(cds);
    Field.FieldName := FField_Name;
    Field.FieldKind:=fkInternalCalc;
    Field.DisplayWidth:=20;
    Field.DataSet := cds;
   end;

  //No INICIO da Grid aparecerá o campo UpdateStatus
  for i := 0 to cds.FieldDefs.Count - 1 do
    begin
      if cds.FindField(cds.FieldDefs[i].Name) = nil then
         cds.FieldDefs[i].CreateField(cds);
   end;



  cds.FieldDefs.Update;
  cds.OnCalcFields:=TAddFieldCalculed.CalcFields;
  cds.LoadFromStream(Memory);
  finally
    system.SysUtils.FreeAndNil(Memory);
  end;
end;

end.
