object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  ClientHeight = 419
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 419
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object dxStatusBar1: TdxStatusBar
      Left = 0
      Top = 399
      Width = 742
      Height = 20
      Panels = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Panel2: TPanel
      Left = 0
      Top = 41
      Width = 742
      Height = 358
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      object EdProcura: TEdit
        Left = 32
        Top = 16
        Width = 320
        Height = 21
        TabOrder = 0
      end
      object btnpesquisar: TBitBtn
        Left = 358
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = btnpesquisarClick
      end
      object btnok: TBitBtn
        Left = 447
        Top = 14
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 2
        OnClick = btnokClick
      end
      object gridItens: TDBGrid
        Left = 16
        Top = 56
        Width = 713
        Height = 296
        DataSource = DsLK
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = gridItensDblClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 742
      Height = 41
      Align = alTop
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14449176
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object DsLK: TDataSource
    Left = 544
    Top = 136
  end
end
