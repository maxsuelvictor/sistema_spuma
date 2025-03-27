unit uTDataSetHelper;

interface

uses
Data.DB;

type
TDataSetHelper = class helper for TDataSet
private
   class var  FenErro:String;
    function GetFenErro: String;
    procedure SetFenErro(const Value: String);
public
{ Public declarations }
property enErro : String read GetFenErro write SetFenErro;
end;

implementation

function TDataSetHelper.GetFenErro: String;
begin
result := FenErro;
end;

procedure TDataSetHelper.SetFenErro(const Value: String);
begin
   FenErro := Value; //da erro nesta linha!
end;

end.
