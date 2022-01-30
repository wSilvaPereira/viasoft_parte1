unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastros: TMenuItem;
    mnuItens: TMenuItem;
    mnuPedidos: TMenuItem;
    menTemas: TMenuItem;
    mnuTemaClaro: TMenuItem;
    mnuTemaEscuro: TMenuItem;
    procedure mnuTemaClaroClick(Sender: TObject);
    procedure mnuTemaEscuroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Vcl.Themes;

{$R *.dfm}

procedure TfrmPrincipal.mnuTemaClaroClick(Sender: TObject);
begin
  //TStyleManager.TrySetStyle('Windows10Blue');
end;

procedure TfrmPrincipal.mnuTemaEscuroClick(Sender: TObject);
begin
  //TStyleManager.TrySetStyle('Windows10Dark');
end;

end.
