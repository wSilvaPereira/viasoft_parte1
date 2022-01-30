object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'VIASOFT'
  ClientHeight = 553
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 872
    object mnuCadastros: TMenuItem
      Caption = 'Cadastros'
      object mnuItens: TMenuItem
        Caption = 'Itens'
      end
      object mnuPedidos: TMenuItem
        Caption = 'Pedidos'
      end
    end
    object menTemas: TMenuItem
      Caption = 'Temas'
      Visible = False
      object mnuTemaClaro: TMenuItem
        Caption = 'Tema claro'
        OnClick = mnuTemaClaroClick
      end
      object mnuTemaEscuro: TMenuItem
        Caption = 'Tema Escuro'
        OnClick = mnuTemaEscuroClick
      end
    end
  end
end
