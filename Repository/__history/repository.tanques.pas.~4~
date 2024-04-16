unit repository.tanques;

interface

uses
  FireDAC.Comp.Client, Data.DB;

type
  TTanquesRepository = class
  private
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function GetAll: TFDQuery;
  end;

implementation

constructor TTanquesRepository.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

function TTanquesRepository.GetAll: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConnection;
  Result.SQL.Add('SELECT * FROM Tanques t ');
  Result.SQL.Add('ORDER BY t.Id');
  Result.Open;
end;
end.

