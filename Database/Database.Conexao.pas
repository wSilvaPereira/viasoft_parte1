unit Database.Conexao;

interface

uses
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.Oracle, FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

Type

  iConexao = interface
    ['{47C59606-4B0E-4D9A-9A0B-0819E4A07696}']
    Function GetConexao : TFDConnection;
  end;

  TConexao = class(TInterfacedObject, iConexao)
  private
    fConexao : TFDConnection;

    procedure conectar;
  public
    Constructor Create;
    Destructor Destroy; Override;

    Function GetConexao : TFDConnection;

    Class Function New : iConexao;
  end;

implementation

{ TConexao }

procedure TConexao.conectar;
begin
  fConexao.Params.Database := 'localhost:1521/xe';
  fConexao.Params.UserName := 'system';
  fConexao.Params.Password := '!19william84';
  fConexao.Params.DriverID := 'Ora';
  try
    fConexao.Connected := True;
  except
    on e: exception do
      raise Exception.Create(e.message);
  end;
end;

constructor TConexao.Create;
begin
  fConexao := TFDConnection.Create(nil);
  conectar;
end;

destructor TConexao.Destroy;
begin
  fConexao.Connected := False;
  fConexao.Free;
  inherited;
end;

function TConexao.GetConexao: TFDConnection;
begin
  Result := fConexao;
end;

class function TConexao.New: iConexao;
begin
  Result := Self.Create;
end;

end.
