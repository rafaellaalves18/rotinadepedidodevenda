object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Vendas'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 224
    Top = 88
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cliente1: TMenuItem
        Caption = 'Cadastro de Clientes'
      end
      object CadastrodeProdutos1: TMenuItem
        Caption = 'Cadastro de Produtos'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object PedidodeVenda1: TMenuItem
        Caption = 'Pedido de Venda'
        OnClick = PedidodeVenda1Click
      end
    end
  end
end
