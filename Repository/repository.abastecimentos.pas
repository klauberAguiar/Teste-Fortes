unit repository.abastecimentos;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, FireDAC.Stan.Param;

type
  TAbastecimentosRepository = class
  private
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function GetAll: TFDQuery;
    function CheckCombinationExists(AIDBomba, AIDTanque: Integer): Boolean;
    function GetRelatorioAbastecimentos: TFDQuery;
  end;

implementation

{ TAbastecimentosRepository }

constructor TAbastecimentosRepository.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

function TAbastecimentosRepository.GetAll: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConnection;
  Result.SQL.Text := 'SELECT * FROM ABASTECIMENTOS ORDER BY DATA DESC';
  Result.Open;
end;


function TAbastecimentosRepository.CheckCombinationExists(AIDBomba, AIDTanque: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FConnection;
    Query.SQL.Text := 'SELECT COUNT(*) FROM ABASTECIMENTOS WHERE IDBOMBA = :IDBOMBA AND IDTANQUE = :IDTANQUE';
    Query.ParamByName('IDBOMBA').AsInteger := AIDBomba;
    Query.ParamByName('IDTANQUE').AsInteger := AIDTanque;
    Query.Open;
    Result := Query.Fields[0].AsInteger > 0;
  finally
    Query.Free;
  end;
end;

function TAbastecimentosRepository.GetRelatorioAbastecimentos: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  try
    Result.Connection := FConnection;
    Result.SQL.Text :=
      'SELECT ' +
      '  A.DATA, ' +
      '  A.IDBOMBA, ' +
      '  A.IDTANQUE,'+
      '  (SELECT T.TIPOCOMBUSTIVEL FROM TANQUES T WHERE T.ID = A.IDTANQUE) AS TIPOCOMBUSTIVEL, ' +
      '  SUM(A.LITROS) AS TOTAL_LITROS, ' +
      '  (SUM(A.VALOR) * SUM(A.LITROS)) + SUM(A.VALORIMPOSTO) AS VALOR_TOTAL, ' +
      '  SUM(A.VALORIMPOSTO) AS VALOR_IMPOSTO_TOTAL ' +
      'FROM ' +
      '  ABASTECIMENTOS A ' +
      'GROUP BY ' +
      '  A.DATA, A.IDTANQUE, A.IDBOMBA ' +
      'ORDER BY ' +
      '  A.DATA, A.IDTANQUE, A.IDBOMBA';
    Result.Open;
  except
    Result.Free;
    raise;
  end;
end;


end.

