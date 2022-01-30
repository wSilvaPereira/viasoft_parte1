program Venda;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {frmPrincipal},
  Database.Conexao in 'Database\Database.Conexao.pas',
  Vcl.Themes,
  Vcl.Styles,
  Database.Query in 'Database\Database.Query.pas',
  Model.Item in 'Model\Model.Item.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
