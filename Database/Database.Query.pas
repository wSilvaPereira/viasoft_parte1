unit Database.Query;

interface

uses
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Database.Conexao,
  System.SysUtils;

Type

  IQuery = Interface
    ['{4F20DB69-D033-4ADB-8587-4725D8C144E2}']
    Function ExecSQL(pComando : String) : Boolean;
    Function Open(pComando : String) : TFDQuery;
  End;

  TQuery = Class(TInterfacedObject, IQuery)
  Private
    fQuery : TFDQuery;
  Public
    Constructor Create(OConexao : TFDConnection);
    Destructor Destroy; Override;

    Function ExecSQL(pComando : String) : Boolean;
    Function Open(pComando : String) : TFDQuery;

    Class Function New(OConexao : TFDConnection) : IQuery;
  End;

implementation

{ TQuery }

Constructor TQuery.Create(OConexao : TFDConnection);
begin
  fQuery := TFDQuery.Create(nil);
  fQuery.Connection := OConexao;
end;

destructor TQuery.Destroy;
begin
  fQuery.Close;
  fQuery.Free;
  inherited;
end;

function TQuery.ExecSQL(pComando: String): Boolean;
begin
  Result := False;
  fQuery.SQL.Clear;
  fQuery.SQL.Add(pComando);
  try
    fQuery.ExecSQL;
    Result := True;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TQuery.New(OConexao: TFDConnection): IQuery;
begin
  Result := Self.Create(OConexao);
end;

function TQuery.Open(pComando: String): TFDQuery;
begin
  Result := fQuery;
  fQuery.SQL.Clear;
  fQuery.SQL.Add(pComando);
  try
    fQuery.Open;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

end.
