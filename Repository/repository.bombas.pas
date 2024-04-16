unit repository.bombas;

interface

uses
  FireDAC.Comp.Client, Data.DB;

type
  TBombasRepository = class
  private
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function GetAll: TFDQuery;
    function GetDistinctAll: TFDQuery;
    function CheckCombinationExists(ATanqueId, ABombaId: Integer): Boolean;
  end;

implementation

constructor TBombasRepository.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

function TBombasRepository.CheckCombinationExists(ATanqueId, ABombaId: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    Query.SQL.Text := 'SELECT COUNT(*) FROM BOMBAS WHERE IDTANQUE = :IDTANQUE AND ID = :ID';
    Query.ParamByName('IDTANQUE').AsInteger := ATanqueId;
    Query.ParamByName('ID').AsInteger := ABombaId;
    Query.Open;

    Result := Query.Fields[0].AsInteger > 0;
  finally
    Query.Free;
  end;
end;

function TBombasRepository.GetAll: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConnection;
  Result.SQL.Text := 'SELECT b.Id as BombaId, b.IdTanque, t.TipoCombustivel ' +
                     'FROM Bombas b ' +
                     'LEFT JOIN Tanques t ON t.Id = b.IdTanque ' +
                     'ORDER BY b.IdTanque';
  Result.Open;
end;

function TBombasRepository.GetDistinctAll: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConnection;
  Result.SQL.Text := 'SELECT Distinct b.Id as BombaId ' +
                     'FROM Bombas b ';
  Result.Open;
end;

end.

